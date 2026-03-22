package jk;

import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GsonExt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class l {
    @Nullable
    public static final <T> T a(@Nullable String str, @NotNull dd.e impl) {
        Intrinsics.checkNotNullParameter(impl, "impl");
        return (T) lk.b.f62233a.b(str, impl);
    }

    @Nullable
    public static final <T> T b(@Nullable String str, @NotNull Class<T> classOfT) {
        Intrinsics.checkNotNullParameter(classOfT, "classOfT");
        return (T) lk.b.f62233a.c(str, classOfT);
    }

    @Nullable
    public static final <T> T c(@Nullable String str, @NotNull Type type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return (T) lk.b.f62233a.d(str, type);
    }

    @NotNull
    public static final String d(@Nullable Object obj) {
        return lk.b.f62233a.h(obj);
    }
}
