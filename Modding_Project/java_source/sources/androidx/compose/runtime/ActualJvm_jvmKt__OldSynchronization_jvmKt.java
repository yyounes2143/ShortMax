package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.SourceDebugExtension;
/* compiled from: OldSynchronization.jvm.kt */
@Metadata
@SourceDebugExtension({"SMAP\nOldSynchronization.jvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OldSynchronization.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt__OldSynchronization_jvmKt\n+ 2 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n*L\n1#1,32:1\n33#2:33\n*S KotlinDebug\n*F\n+ 1 OldSynchronization.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt__OldSynchronization_jvmKt\n*L\n31#1:33\n*E\n"})
/* loaded from: classes.dex */
final /* synthetic */ class ActualJvm_jvmKt__OldSynchronization_jvmKt {
    @ms.c
    /* renamed from: synchronized  reason: not valid java name */
    public static final /* synthetic */ <R> R m1296synchronized(Object obj, Function0<? extends R> function0) {
        R invoke;
        synchronized (obj) {
            try {
                invoke = function0.invoke();
                InlineMarker.finallyStart(1);
            } catch (Throwable th2) {
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                throw th2;
            }
        }
        InlineMarker.finallyEnd(1);
        return invoke;
    }
}
