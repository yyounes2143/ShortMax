package androidx.room.concurrent;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Synchronized.jvmAndroid.kt */
@Metadata
/* loaded from: classes2.dex */
public final class Synchronized_jvmAndroidKt {
    /* renamed from: synchronized  reason: not valid java name */
    public static final <T> T m4325synchronized(@NotNull Object lock, @NotNull Function0<? extends T> block) {
        T invoke;
        Intrinsics.checkNotNullParameter(lock, "lock");
        Intrinsics.checkNotNullParameter(block, "block");
        synchronized (lock) {
            try {
                invoke = block.invoke();
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
