package vt;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
/* compiled from: Caching.kt */
@Metadata
/* loaded from: classes8.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f69482a;

    static {
        boolean z10;
        try {
            Class.forName("java.lang.ClassValue");
            z10 = true;
        } catch (Throwable unused) {
            z10 = false;
        }
        f69482a = z10;
    }

    @NotNull
    public static final <T> s2<T> a(@NotNull Function1<? super KClass<?>, ? extends KSerializer<T>> factory) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        if (f69482a) {
            return new t(factory);
        }
        return new y(factory);
    }

    @NotNull
    public static final <T> z1<T> b(@NotNull Function2<? super KClass<Object>, ? super List<? extends KType>, ? extends KSerializer<T>> factory) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        if (f69482a) {
            return new u(factory);
        }
        return new z(factory);
    }
}
