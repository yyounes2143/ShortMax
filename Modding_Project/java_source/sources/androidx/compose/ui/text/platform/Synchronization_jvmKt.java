package androidx.compose.ui.text.platform;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Synchronization.jvm.kt */
@Metadata
/* loaded from: classes.dex */
public final class Synchronization_jvmKt {
    @NotNull
    public static final SynchronizedObject createSynchronizedObject() {
        return new SynchronizedObject();
    }

    /* renamed from: synchronized  reason: not valid java name */
    public static final <R> R m3891synchronized(@NotNull SynchronizedObject lock, @NotNull Function0<? extends R> block) {
        R invoke;
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
