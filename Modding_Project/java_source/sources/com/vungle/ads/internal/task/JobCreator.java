package com.vungle.ads.internal.task;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: JobCreator.kt */
@Metadata
/* loaded from: classes7.dex */
public interface JobCreator {
    @NotNull
    Job create(@NotNull String str) throws UnknownTagException;
}
