package gr;

import androidx.annotation.Nullable;
/* compiled from: DataConverter.java */
/* loaded from: classes8.dex */
public interface b {
    @Nullable
    default Double a(@Nullable Object obj) {
        return m(obj, null);
    }

    @Nullable
    default Integer b(@Nullable Object obj) {
        return k(obj, null);
    }

    default float c(@Nullable Object obj, float f10) {
        Float d10 = d(obj);
        if (d10 != null) {
            return d10.floatValue();
        }
        return f10;
    }

    @Nullable
    default Float d(@Nullable Object obj) {
        return l(obj, null);
    }

    @Nullable
    default String e(@Nullable Object obj) {
        return f(obj, null);
    }

    @Nullable
    String f(@Nullable Object obj, @Nullable String str);

    default boolean g(@Nullable Object obj, boolean z10) {
        Boolean i10 = i(obj);
        if (i10 != null) {
            return i10.booleanValue();
        }
        return z10;
    }

    @Nullable
    Boolean h(@Nullable Object obj, @Nullable Boolean bool);

    @Nullable
    default Boolean i(@Nullable Object obj) {
        return h(obj, null);
    }

    default int j(@Nullable Object obj, int i10) {
        Integer b10 = b(obj);
        if (b10 != null) {
            return b10.intValue();
        }
        return i10;
    }

    @Nullable
    Integer k(@Nullable Object obj, @Nullable Integer num);

    @Nullable
    Float l(@Nullable Object obj, @Nullable Float f10);

    @Nullable
    Double m(@Nullable Object obj, @Nullable Double d10);
}
