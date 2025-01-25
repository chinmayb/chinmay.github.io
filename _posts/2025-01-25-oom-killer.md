---
layout: post
title: "OOM Killer"
date: 2025-01-25 12:00:00 +0530
categories: general
tags: [OS, learning, OOMKill]
---

## Linux OOM Killer

The kernel has a mechanism called oomkiller (out-of-memory killer) to allows killing a single process. killer is summoned when the system runs short of free memory and is unable to proceed without killing one or more processes. [Kernel Doc](https://www.kernel.org/doc/gorman/html/understand/understand016.html)

This can be controlled by the flag called `/proc/sys/vm/panic_on_oom`. Set it to 1, the kernel will panic instead of killing the process. Otherwise, it will call the OOM  killer.

So for every PID there's a score maintained. Below are the two files that control the score of the process.
  
* `/proc/[pid]/oom_score` : OOM-killer score

* `/proc/[pid]/oom_score_adj` : adjust the badness heuristic used to select which process gets killed in out-of-memory conditions A higher score means that the process is more likely to be selected by the OOM-killer. (oom_adj in older versions)

The function [select_bad_process()](https://github.com/torvalds/linux/blob/master/mm/oom_kill.c#L364) is responsible for choosing a process to kill. When the OOM killer is invoked, it tries to pick the process whose demise will free the most memory while causing the least misery for users of the system.

Processes which have been running a long time are unlikely to be the cause of memory shortage so this calculation is likely to select a process that uses a lot of memory but has not been running long. There are of course un-killable processes like init, PF_KTHREAD, etc.


OOM badness calculation was widely discussed, and it was rewritten in 2010 & modified later in 2020.

When user A runs a large process & B runs 100 small processes, it'd target the userA's process, even if B is using far more.
So for environments where the processes are grouped into cgroups, they introduced control-group aware OOM killers to solve this problem.


- Find the largest memory consuming cgroup

- Find the largest process runing within the group is killed

- `memory.oom_group`, kill all the process inside the cgroup

### Kubernetes OOM Kill

You might have seen pods getting restarted due to  oomkills, This is done by the Kubelet agent that monitors the container's memory usage , a metric called `container_memory_working_set_bytes` is used to determine a container memory usage and if it goes beyond its defined limits, the container is oomKilled. Pods in fact are not oomkilled.

This is a nice [long article](https://mihai-albert.com/2022/02/13/out-of-memory-oom-in-kubernetes-part-4-pod-evictions-oom-scenarios-and-flows-leading-to-them/#oom-scenario-3-node-available-memory-drops-below-the-eviction-hard-flag-value) that talks about K8s `oomKill` in detail.


Related long reads
 - [Out of memory killer](https://lwn.net/Articles/391222/)
