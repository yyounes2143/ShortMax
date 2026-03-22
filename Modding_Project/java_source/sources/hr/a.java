package hr;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
/* compiled from: LazyCachedValue.java */
/* loaded from: classes8.dex */
public class a<T> implements b<T> {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final b<T> f53222a;
    @Nullable
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    volatile T f53223b;

    public a(@NonNull b<T> bVar) {
        this.f53222a = bVar;
    }

    @Override // hr.b
    @NonNull
    public T get() {
        T t10 = this.f53223b;
        if (t10 == null) {
            T t11 = this.f53222a.get();
            this.f53223b = t11;
            return t11;
        }
        return t10;
    }
}
