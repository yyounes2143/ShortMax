package com.applovin.shadow.okhttp3.internal.concurrent;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
/* compiled from: TaskQueue.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTaskQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskQueue.kt\nokhttp3/internal/concurrent/TaskQueue$schedule$2\n*L\n1#1,218:1\n*E\n"})
/* loaded from: classes2.dex */
public final class TaskQueue$schedule$2 extends Task {
    final /* synthetic */ Function0<Long> $block;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TaskQueue$schedule$2(String str, Function0<Long> function0) {
        super(str, false, 2, null);
        this.$block = function0;
    }

    @Override // com.applovin.shadow.okhttp3.internal.concurrent.Task
    public long runOnce() {
        return this.$block.invoke().longValue();
    }
}
