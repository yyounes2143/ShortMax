package androidx.navigation;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: NavDestinationBuilder.kt */
@NavDestinationDsl
@Metadata
/* loaded from: classes2.dex */
public final class NavActionBuilder {
    @NotNull
    private final Map<String, Object> defaultArguments = new LinkedHashMap();
    private int destinationId;
    private NavOptions navOptions;

    @NotNull
    public final NavAction build$navigation_common_ktx_release() {
        Bundle bundleOf;
        int i10 = this.destinationId;
        NavOptions navOptions = this.navOptions;
        if (this.defaultArguments.isEmpty()) {
            bundleOf = null;
        } else {
            Object[] array = p0.C(this.defaultArguments).toArray(new Pair[0]);
            if (array != null) {
                Pair[] pairArr = (Pair[]) array;
                bundleOf = BundleKt.bundleOf((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
            } else {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
            }
        }
        return new NavAction(i10, navOptions, bundleOf);
    }

    @NotNull
    public final Map<String, Object> getDefaultArguments() {
        return this.defaultArguments;
    }

    public final int getDestinationId() {
        return this.destinationId;
    }

    public final void navOptions(@NotNull Function1<? super NavOptionsBuilder, Unit> optionsBuilder) {
        Intrinsics.checkParameterIsNotNull(optionsBuilder, "optionsBuilder");
        NavOptionsBuilder navOptionsBuilder = new NavOptionsBuilder();
        optionsBuilder.invoke(navOptionsBuilder);
        this.navOptions = navOptionsBuilder.build$navigation_common_ktx_release();
    }

    public final void setDestinationId(int i10) {
        this.destinationId = i10;
    }
}
