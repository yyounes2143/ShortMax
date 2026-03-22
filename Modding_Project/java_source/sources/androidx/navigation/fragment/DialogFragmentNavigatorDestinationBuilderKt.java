package androidx.navigation.fragment;

import androidx.annotation.IdRes;
import androidx.fragment.app.DialogFragment;
import androidx.navigation.NavGraphBuilder;
import androidx.navigation.Navigator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.jetbrains.annotations.NotNull;
/* compiled from: DialogFragmentNavigatorDestinationBuilder.kt */
@Metadata
/* loaded from: classes2.dex */
public final class DialogFragmentNavigatorDestinationBuilderKt {
    public static final /* synthetic */ <F extends DialogFragment> void dialog(@NotNull NavGraphBuilder dialog, @IdRes int i10, @NotNull Function1<? super DialogFragmentNavigatorDestinationBuilder, Unit> builder) {
        Intrinsics.checkParameterIsNotNull(dialog, "$this$dialog");
        Intrinsics.checkParameterIsNotNull(builder, "builder");
        Navigator navigator = dialog.getProvider().getNavigator(DialogFragmentNavigator.class);
        Intrinsics.checkExpressionValueIsNotNull(navigator, "getNavigator(clazz.java)");
        Intrinsics.reifiedOperationMarker(4, "F");
        DialogFragmentNavigatorDestinationBuilder dialogFragmentNavigatorDestinationBuilder = new DialogFragmentNavigatorDestinationBuilder((DialogFragmentNavigator) navigator, i10, Reflection.getOrCreateKotlinClass(DialogFragment.class));
        builder.invoke(dialogFragmentNavigatorDestinationBuilder);
        dialog.destination(dialogFragmentNavigatorDestinationBuilder);
    }

    public static final /* synthetic */ <F extends DialogFragment> void dialog(@NotNull NavGraphBuilder dialog, @IdRes int i10) {
        Intrinsics.checkParameterIsNotNull(dialog, "$this$dialog");
        Navigator navigator = dialog.getProvider().getNavigator(DialogFragmentNavigator.class);
        Intrinsics.checkExpressionValueIsNotNull(navigator, "getNavigator(clazz.java)");
        Intrinsics.reifiedOperationMarker(4, "F");
        dialog.destination(new DialogFragmentNavigatorDestinationBuilder((DialogFragmentNavigator) navigator, i10, Reflection.getOrCreateKotlinClass(DialogFragment.class)));
    }
}
