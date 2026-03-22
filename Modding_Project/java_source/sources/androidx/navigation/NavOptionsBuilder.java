package androidx.navigation;

import androidx.annotation.IdRes;
import androidx.navigation.NavOptions;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: NavOptionsBuilder.kt */
@Metadata
@NavOptionsDsl
/* loaded from: classes2.dex */
public final class NavOptionsBuilder {
    private boolean inclusive;
    private boolean launchSingleTop;
    private final NavOptions.Builder builder = new NavOptions.Builder();
    @IdRes
    private int popUpTo = -1;

    public final void anim(@NotNull Function1<? super AnimBuilder, Unit> animBuilder) {
        Intrinsics.checkParameterIsNotNull(animBuilder, "animBuilder");
        AnimBuilder animBuilder2 = new AnimBuilder();
        animBuilder.invoke(animBuilder2);
        this.builder.setEnterAnim(animBuilder2.getEnter()).setExitAnim(animBuilder2.getExit()).setPopEnterAnim(animBuilder2.getPopEnter()).setPopExitAnim(animBuilder2.getPopExit());
    }

    @NotNull
    public final NavOptions build$navigation_common_ktx_release() {
        NavOptions.Builder builder = this.builder;
        builder.setLaunchSingleTop(this.launchSingleTop);
        builder.setPopUpTo(this.popUpTo, this.inclusive);
        NavOptions build = builder.build();
        Intrinsics.checkExpressionValueIsNotNull(build, "builder.apply {\n        … inclusive)\n    }.build()");
        return build;
    }

    public final boolean getLaunchSingleTop() {
        return this.launchSingleTop;
    }

    public final int getPopUpTo() {
        return this.popUpTo;
    }

    public final void popUpTo(@IdRes int i10, @NotNull Function1<? super PopUpToBuilder, Unit> popUpToBuilder) {
        Intrinsics.checkParameterIsNotNull(popUpToBuilder, "popUpToBuilder");
        setPopUpTo(i10);
        PopUpToBuilder popUpToBuilder2 = new PopUpToBuilder();
        popUpToBuilder.invoke(popUpToBuilder2);
        this.inclusive = popUpToBuilder2.getInclusive();
    }

    public final void setLaunchSingleTop(boolean z10) {
        this.launchSingleTop = z10;
    }

    public final void setPopUpTo(int i10) {
        this.popUpTo = i10;
        this.inclusive = false;
    }
}
