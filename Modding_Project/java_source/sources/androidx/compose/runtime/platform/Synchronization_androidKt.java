package androidx.compose.runtime.platform;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Synchronization.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class Synchronization_androidKt {
    @NotNull
    public static final Object makeSynchronizedObject(@Nullable Object obj) {
        if (obj == null) {
            return new Object();
        }
        return obj;
    }

    public static /* synthetic */ Object makeSynchronizedObject$default(Object obj, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            obj = null;
        }
        if (obj == null) {
            return new Object();
        }
        return obj;
    }

    /* renamed from: synchronized  reason: not valid java name */
    public static final <R> R m1491synchronized(@NotNull Object obj, @NotNull Function0<? extends R> function0) {
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
