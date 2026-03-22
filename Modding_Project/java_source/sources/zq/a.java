package zq;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BaseTypeConversion.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class a<T> implements h<T> {
    @Override // zq.h
    @Nullable
    public T a(@Nullable String str, @Nullable T t10) {
        if (str == null) {
            return t10;
        }
        T d10 = d(str);
        if (d10 != null) {
            return d10;
        }
        return t10;
    }

    @Nullable
    protected abstract T c(@NotNull Object obj);

    @Nullable
    protected abstract T d(@NotNull String str);

    @Nullable
    public T e(@Nullable Object obj, @Nullable T t10) {
        if (obj == null) {
            return t10;
        }
        T c10 = c(obj);
        if (c10 != null) {
            return c10;
        }
        return t10;
    }
}
