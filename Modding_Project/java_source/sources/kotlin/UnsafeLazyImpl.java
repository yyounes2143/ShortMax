package kotlin;

import java.io.Serializable;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import ms.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Lazy.kt */
@Metadata
/* loaded from: classes8.dex */
public final class UnsafeLazyImpl<T> implements i<T>, Serializable {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private Function0<? extends T> f60916a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private Object f60917b;

    public UnsafeLazyImpl(@NotNull Function0<? extends T> initializer) {
        Intrinsics.checkNotNullParameter(initializer, "initializer");
        this.f60916a = initializer;
        this.f60917b = r.f62648a;
    }

    private final Object writeReplace() {
        return new InitializedLazyImpl(getValue());
    }

    @Override // ms.i
    public T getValue() {
        if (this.f60917b == r.f62648a) {
            Function0<? extends T> function0 = this.f60916a;
            Intrinsics.checkNotNull(function0);
            this.f60917b = function0.invoke();
            this.f60916a = null;
        }
        return (T) this.f60917b;
    }

    @Override // ms.i
    public boolean isInitialized() {
        if (this.f60917b != r.f62648a) {
            return true;
        }
        return false;
    }

    @NotNull
    public String toString() {
        if (isInitialized()) {
            return String.valueOf(getValue());
        }
        return "Lazy value not initialized yet.";
    }
}
