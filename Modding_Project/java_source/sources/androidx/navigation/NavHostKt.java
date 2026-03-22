package androidx.navigation;

import androidx.annotation.IdRes;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: NavHost.kt */
@Metadata
/* loaded from: classes2.dex */
public final class NavHostKt {
    @NotNull
    public static final NavGraph createGraph(@NotNull NavHost createGraph, @IdRes int i10, @IdRes int i11, @NotNull Function1<? super NavGraphBuilder, Unit> builder) {
        Intrinsics.checkParameterIsNotNull(createGraph, "$this$createGraph");
        Intrinsics.checkParameterIsNotNull(builder, "builder");
        NavController navController = createGraph.getNavController();
        Intrinsics.checkExpressionValueIsNotNull(navController, "navController");
        NavigatorProvider navigatorProvider = navController.getNavigatorProvider();
        Intrinsics.checkExpressionValueIsNotNull(navigatorProvider, "navigatorProvider");
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navigatorProvider, i10, i11);
        builder.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static /* synthetic */ NavGraph createGraph$default(NavHost createGraph, int i10, int i11, Function1 builder, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        Intrinsics.checkParameterIsNotNull(createGraph, "$this$createGraph");
        Intrinsics.checkParameterIsNotNull(builder, "builder");
        NavController navController = createGraph.getNavController();
        Intrinsics.checkExpressionValueIsNotNull(navController, "navController");
        NavigatorProvider navigatorProvider = navController.getNavigatorProvider();
        Intrinsics.checkExpressionValueIsNotNull(navigatorProvider, "navigatorProvider");
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navigatorProvider, i10, i11);
        builder.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }
}
