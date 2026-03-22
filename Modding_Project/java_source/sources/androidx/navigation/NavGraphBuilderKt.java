package androidx.navigation;

import androidx.annotation.IdRes;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: NavGraphBuilder.kt */
@Metadata
/* loaded from: classes2.dex */
public final class NavGraphBuilderKt {
    @NotNull
    public static final NavGraph navigation(@NotNull NavigatorProvider navigation, @IdRes int i10, @IdRes int i11, @NotNull Function1<? super NavGraphBuilder, Unit> builder) {
        Intrinsics.checkParameterIsNotNull(navigation, "$this$navigation");
        Intrinsics.checkParameterIsNotNull(builder, "builder");
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navigation, i10, i11);
        builder.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static /* synthetic */ NavGraph navigation$default(NavigatorProvider navigation, int i10, int i11, Function1 builder, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        Intrinsics.checkParameterIsNotNull(navigation, "$this$navigation");
        Intrinsics.checkParameterIsNotNull(builder, "builder");
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navigation, i10, i11);
        builder.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static final void navigation(@NotNull NavGraphBuilder navigation, @IdRes int i10, @IdRes int i11, @NotNull Function1<? super NavGraphBuilder, Unit> builder) {
        Intrinsics.checkParameterIsNotNull(navigation, "$this$navigation");
        Intrinsics.checkParameterIsNotNull(builder, "builder");
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navigation.getProvider(), i10, i11);
        builder.invoke(navGraphBuilder);
        navigation.destination(navGraphBuilder);
    }
}
