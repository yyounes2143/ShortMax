package androidx.savedstate.internal;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: SynchronizedObject.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSynchronizedObject.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SynchronizedObject.kt\nandroidx/savedstate/internal/SynchronizedObjectKt\n+ 2 SynchronizedObject.jvm.kt\nandroidx/savedstate/internal/SynchronizedObject_jvmKt\n*L\n1#1,61:1\n23#2:62\n*S KotlinDebug\n*F\n+ 1 SynchronizedObject.kt\nandroidx/savedstate/internal/SynchronizedObjectKt\n*L\n41#1:62\n*E\n"})
/* loaded from: classes2.dex */
public final class SynchronizedObjectKt {
    /* renamed from: synchronized  reason: not valid java name */
    public static final <T> T m4463synchronized(@NotNull SynchronizedObject lock, @NotNull Function0<? extends T> action) {
        T invoke;
        Intrinsics.checkNotNullParameter(lock, "lock");
        Intrinsics.checkNotNullParameter(action, "action");
        synchronized (lock) {
            try {
                invoke = action.invoke();
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
