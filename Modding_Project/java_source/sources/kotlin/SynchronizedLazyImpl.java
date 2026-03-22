package kotlin;

import java.io.Serializable;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import ms.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LazyJVM.kt */
@Metadata
/* loaded from: classes8.dex */
public final class SynchronizedLazyImpl<T> implements i<T>, Serializable {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private Function0<? extends T> f60909a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private volatile Object f60910b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Object f60911c;

    public SynchronizedLazyImpl(@NotNull Function0<? extends T> initializer, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(initializer, "initializer");
        this.f60909a = initializer;
        this.f60910b = r.f62648a;
        this.f60911c = obj == null ? this : obj;
    }

    private final Object writeReplace() {
        return new InitializedLazyImpl(getValue());
    }

    @Override // ms.i
    public T getValue() {
        T t10;
        T t11 = (T) this.f60910b;
        r rVar = r.f62648a;
        if (t11 != rVar) {
            return t11;
        }
        synchronized (this.f60911c) {
            t10 = (T) this.f60910b;
            if (t10 == rVar) {
                Function0<? extends T> function0 = this.f60909a;
                Intrinsics.checkNotNull(function0);
                t10 = function0.invoke();
                this.f60910b = t10;
                this.f60909a = null;
            }
        }
        return t10;
    }

    @Override // ms.i
    public boolean isInitialized() {
        if (this.f60910b != r.f62648a) {
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

    public /* synthetic */ SynchronizedLazyImpl(Function0 function0, Object obj, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(function0, (i10 & 2) != 0 ? null : obj);
    }
}
