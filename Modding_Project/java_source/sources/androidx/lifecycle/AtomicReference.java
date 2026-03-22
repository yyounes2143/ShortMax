package androidx.lifecycle;

import androidx.annotation.RestrictTo;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Lifecycle.jvm.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public final class AtomicReference<V> {
    @NotNull
    private final java.util.concurrent.atomic.AtomicReference<V> base;

    public AtomicReference(V v10) {
        this.base = new java.util.concurrent.atomic.AtomicReference<>(v10);
    }

    public final boolean compareAndSet(V v10, V v11) {
        return androidx.compose.animation.core.a.a(this.base, v10, v11);
    }

    public final V get() {
        return this.base.get();
    }
}
