package com.startshorts.androidplayer.bean.task;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TaskModuleList.kt */
@Metadata
/* loaded from: classes6.dex */
public final class TaskModuleList {
    @Nullable
    private final List<TaskModule> taskModuleResponseList;

    public TaskModuleList(@Nullable List<TaskModule> list) {
        this.taskModuleResponseList = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TaskModuleList copy$default(TaskModuleList taskModuleList, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = taskModuleList.taskModuleResponseList;
        }
        return taskModuleList.copy(list);
    }

    @Nullable
    public final List<TaskModule> component1() {
        return this.taskModuleResponseList;
    }

    @NotNull
    public final TaskModuleList copy(@Nullable List<TaskModule> list) {
        return new TaskModuleList(list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof TaskModuleList) && Intrinsics.areEqual(this.taskModuleResponseList, ((TaskModuleList) obj).taskModuleResponseList)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final List<TaskModule> getTaskModuleResponseList() {
        return this.taskModuleResponseList;
    }

    public int hashCode() {
        List<TaskModule> list = this.taskModuleResponseList;
        if (list == null) {
            return 0;
        }
        return list.hashCode();
    }

    @NotNull
    public String toString() {
        return "TaskModuleList(taskModuleResponseList=" + this.taskModuleResponseList + ')';
    }
}
