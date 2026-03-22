package com.vungle.ads.internal.task;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: JobRunner.kt */
@Metadata
/* loaded from: classes7.dex */
public interface JobRunner {
    void cancelPendingJob(@NotNull String str);

    void execute(@NotNull JobInfo jobInfo);
}
