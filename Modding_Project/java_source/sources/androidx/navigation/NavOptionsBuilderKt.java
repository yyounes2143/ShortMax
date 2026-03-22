package androidx.navigation;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: NavOptionsBuilder.kt */
@Metadata
/* loaded from: classes2.dex */
public final class NavOptionsBuilderKt {
    @NotNull
    public static final NavOptions navOptions(@NotNull Function1<? super NavOptionsBuilder, Unit> optionsBuilder) {
        Intrinsics.checkParameterIsNotNull(optionsBuilder, "optionsBuilder");
        NavOptionsBuilder navOptionsBuilder = new NavOptionsBuilder();
        optionsBuilder.invoke(navOptionsBuilder);
        return navOptionsBuilder.build$navigation_common_ktx_release();
    }
}
