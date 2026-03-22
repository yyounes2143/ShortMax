package androidx.navigation;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import zs.a;
/* compiled from: NavigatorProvider.kt */
@Metadata
/* loaded from: classes2.dex */
public final class NavigatorProviderKt {
    @NotNull
    public static final <T extends Navigator<? extends NavDestination>> T get(@NotNull NavigatorProvider get, @NotNull String name) {
        Intrinsics.checkParameterIsNotNull(get, "$this$get");
        Intrinsics.checkParameterIsNotNull(name, "name");
        T t10 = (T) get.getNavigator(name);
        Intrinsics.checkExpressionValueIsNotNull(t10, "getNavigator(name)");
        return t10;
    }

    public static final void plusAssign(@NotNull NavigatorProvider plusAssign, @NotNull Navigator<? extends NavDestination> navigator) {
        Intrinsics.checkParameterIsNotNull(plusAssign, "$this$plusAssign");
        Intrinsics.checkParameterIsNotNull(navigator, "navigator");
        plusAssign.addNavigator(navigator);
    }

    @Nullable
    public static final Navigator<? extends NavDestination> set(@NotNull NavigatorProvider set, @NotNull String name, @NotNull Navigator<? extends NavDestination> navigator) {
        Intrinsics.checkParameterIsNotNull(set, "$this$set");
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(navigator, "navigator");
        return set.addNavigator(name, navigator);
    }

    @NotNull
    public static final <T extends Navigator<? extends NavDestination>> T get(@NotNull NavigatorProvider get, @NotNull KClass<T> clazz) {
        Intrinsics.checkParameterIsNotNull(get, "$this$get");
        Intrinsics.checkParameterIsNotNull(clazz, "clazz");
        T t10 = (T) get.getNavigator(a.b(clazz));
        Intrinsics.checkExpressionValueIsNotNull(t10, "getNavigator(clazz.java)");
        return t10;
    }
}
