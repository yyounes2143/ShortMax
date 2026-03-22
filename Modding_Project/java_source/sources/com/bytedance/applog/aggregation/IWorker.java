package com.bytedance.applog.aggregation;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
/* compiled from: Defines.kt */
@Metadata
/* loaded from: classes3.dex */
public interface IWorker {
    void post(@NotNull Function0<Unit> function0);
}
