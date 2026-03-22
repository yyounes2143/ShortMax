package androidx.collection.internal;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Lock.jvm.kt */
@Metadata
/* loaded from: classes.dex */
public final class Lock {
    public final <T> T synchronizedImpl(@NotNull Function0<? extends T> block) {
        T invoke;
        Intrinsics.checkNotNullParameter(block, "block");
        synchronized (this) {
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
