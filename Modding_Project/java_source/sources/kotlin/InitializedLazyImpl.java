package kotlin;

import java.io.Serializable;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: Lazy.kt */
@Metadata
/* loaded from: classes8.dex */
public final class InitializedLazyImpl<T> implements i<T>, Serializable {

    /* renamed from: a  reason: collision with root package name */
    private final T f60898a;

    public InitializedLazyImpl(T t10) {
        this.f60898a = t10;
    }

    @Override // ms.i
    public T getValue() {
        return this.f60898a;
    }

    @Override // ms.i
    public boolean isInitialized() {
        return true;
    }

    @NotNull
    public String toString() {
        return String.valueOf(getValue());
    }
}
