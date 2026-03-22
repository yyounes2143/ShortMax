package androidx.navigation.fragment;

import androidx.annotation.IdRes;
import androidx.fragment.app.Fragment;
import androidx.navigation.NavGraphBuilder;
import androidx.navigation.Navigator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.jetbrains.annotations.NotNull;
/* compiled from: FragmentNavigatorDestinationBuilder.kt */
@Metadata
/* loaded from: classes2.dex */
public final class FragmentNavigatorDestinationBuilderKt {
    public static final /* synthetic */ <F extends Fragment> void fragment(@NotNull NavGraphBuilder fragment, @IdRes int i10, @NotNull Function1<? super FragmentNavigatorDestinationBuilder, Unit> builder) {
        Intrinsics.checkParameterIsNotNull(fragment, "$this$fragment");
        Intrinsics.checkParameterIsNotNull(builder, "builder");
        Navigator navigator = fragment.getProvider().getNavigator(FragmentNavigator.class);
        Intrinsics.checkExpressionValueIsNotNull(navigator, "getNavigator(clazz.java)");
        Intrinsics.reifiedOperationMarker(4, "F");
        FragmentNavigatorDestinationBuilder fragmentNavigatorDestinationBuilder = new FragmentNavigatorDestinationBuilder((FragmentNavigator) navigator, i10, Reflection.getOrCreateKotlinClass(Fragment.class));
        builder.invoke(fragmentNavigatorDestinationBuilder);
        fragment.destination(fragmentNavigatorDestinationBuilder);
    }

    public static final /* synthetic */ <F extends Fragment> void fragment(@NotNull NavGraphBuilder fragment, @IdRes int i10) {
        Intrinsics.checkParameterIsNotNull(fragment, "$this$fragment");
        Navigator navigator = fragment.getProvider().getNavigator(FragmentNavigator.class);
        Intrinsics.checkExpressionValueIsNotNull(navigator, "getNavigator(clazz.java)");
        Intrinsics.reifiedOperationMarker(4, "F");
        fragment.destination(new FragmentNavigatorDestinationBuilder((FragmentNavigator) navigator, i10, Reflection.getOrCreateKotlinClass(Fragment.class)));
    }
}
