package androidx.navigation;

import androidx.annotation.IdRes;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ActivityNavigatorDestinationBuilder.kt */
@Metadata
/* loaded from: classes2.dex */
public final class ActivityNavigatorDestinationBuilderKt {
    public static final void activity(@NotNull NavGraphBuilder activity, @IdRes int i10, @NotNull Function1<? super ActivityNavigatorDestinationBuilder, Unit> builder) {
        Intrinsics.checkParameterIsNotNull(activity, "$this$activity");
        Intrinsics.checkParameterIsNotNull(builder, "builder");
        Navigator navigator = activity.getProvider().getNavigator(ActivityNavigator.class);
        Intrinsics.checkExpressionValueIsNotNull(navigator, "getNavigator(clazz.java)");
        ActivityNavigatorDestinationBuilder activityNavigatorDestinationBuilder = new ActivityNavigatorDestinationBuilder((ActivityNavigator) navigator, i10);
        builder.invoke(activityNavigatorDestinationBuilder);
        activity.destination(activityNavigatorDestinationBuilder);
    }
}
