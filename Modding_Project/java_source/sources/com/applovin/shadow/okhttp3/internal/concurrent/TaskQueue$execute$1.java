package com.applovin.shadow.okhttp3.internal.concurrent;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
/* compiled from: TaskQueue.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTaskQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskQueue.kt\nokhttp3/internal/concurrent/TaskQueue$execute$1\n*L\n1#1,218:1\n*E\n"})
/* loaded from: classes2.dex */
public final class TaskQueue$execute$1 extends Task {
    final /* synthetic */ Function0<Unit> $block;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TaskQueue$execute$1(String str, boolean z10, Function0<Unit> function0) {
        super(str, z10);
        this.$block = function0;
    }

    @Override // com.applovin.shadow.okhttp3.internal.concurrent.Task
    public long runOnce() {
        this.$block.invoke();
        return -1L;
    }
}
