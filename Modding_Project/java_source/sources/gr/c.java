package gr;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.Function;
/* compiled from: DataRetriever.java */
/* loaded from: classes8.dex */
public interface c<K> {
    @Nullable
    Float a(@NonNull K k10, @Nullable Float f10);

    float b(@NonNull K k10, float f10);

    @Nullable
    default Float c(@NonNull K k10) {
        return a(k10, null);
    }

    default boolean d(@NonNull K k10) {
        return l(k10, false);
    }

    default int e(@NonNull K k10) {
        return f(k10, 0);
    }

    int f(@NonNull K k10, int i10);

    @Nullable
    default <T> T g(@NonNull K k10, @NonNull Function<Object, T> function) {
        return (T) h(k10, null, function);
    }

    @Nullable
    default <T> T h(@NonNull K k10, @Nullable T t10, @NonNull Function<Object, T> function) {
        try {
            Object j10 = j(k10, t10);
            if (j10 == null) {
                return null;
            }
            return function.apply(j10);
        } catch (Exception unused) {
            return t10;
        }
    }

    @Nullable
    String i(@NonNull K k10, @Nullable String str);

    @Nullable
    Object j(@NonNull K k10, @Nullable Object obj);

    @Nullable
    default String k(@NonNull K k10) {
        return i(k10, null);
    }

    boolean l(@NonNull K k10, boolean z10);

    @Nullable
    Boolean m(@NonNull K k10, @Nullable Boolean bool);

    @Nullable
    default Object n(@NonNull K k10) {
        return j(k10, null);
    }

    default float o(@NonNull K k10) {
        return b(k10, 0.0f);
    }

    @Nullable
    default Boolean p(@NonNull K k10) {
        return m(k10, Boolean.FALSE);
    }
}
