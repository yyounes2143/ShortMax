package com.startshorts.androidplayer.bean.task;

import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TaskModule.kt */
@Metadata
/* loaded from: classes6.dex */
public final class TaskModule {
    @Nullable
    private final List<Task> appTaskReponseList;
    @Nullable
    private final String modelName;
    @Nullable
    private final String remark;

    @Nullable
    public final List<Task> getAppTaskReponseList() {
        return this.appTaskReponseList;
    }

    @Nullable
    public final String getModelName() {
        return this.modelName;
    }

    @Nullable
    public final String getRemark() {
        return this.remark;
    }

    @NotNull
    public String toString() {
        return "TaskModule(modelName=" + this.modelName + ", remark=" + this.remark + ", appTaskReponseList=" + this.appTaskReponseList + ')';
    }
}
