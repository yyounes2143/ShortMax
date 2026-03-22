package androidx.compose.material;

import androidx.compose.foundation.ScrollState;
import androidx.compose.ui.unit.Density;
import gt.g;
import gt.g0;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TabRow.kt */
@Metadata
/* loaded from: classes.dex */
final class ScrollableTabData {
    @NotNull
    private final g0 coroutineScope;
    @NotNull
    private final ScrollState scrollState;
    @Nullable
    private Integer selectedTab;

    public ScrollableTabData(@NotNull ScrollState scrollState, @NotNull g0 coroutineScope) {
        Intrinsics.checkNotNullParameter(scrollState, "scrollState");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        this.scrollState = scrollState;
        this.coroutineScope = coroutineScope;
    }

    private final int calculateTabOffset(TabPosition tabPosition, Density density, int i10, List<TabPosition> list) {
        int mo336roundToPx0680j_4 = density.mo336roundToPx0680j_4(((TabPosition) CollectionsKt.C0(list)).m1225getRightD9Ej5fM()) + i10;
        int maxValue = mo336roundToPx0680j_4 - this.scrollState.getMaxValue();
        return e.n(density.mo336roundToPx0680j_4(tabPosition.m1224getLeftD9Ej5fM()) - ((maxValue / 2) - (density.mo336roundToPx0680j_4(tabPosition.m1226getWidthD9Ej5fM()) / 2)), 0, e.e(mo336roundToPx0680j_4 - maxValue, 0));
    }

    public final void onLaidOut(@NotNull Density density, int i10, @NotNull List<TabPosition> tabPositions, int i11) {
        int calculateTabOffset;
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(tabPositions, "tabPositions");
        Integer num = this.selectedTab;
        if (num == null || num.intValue() != i11) {
            this.selectedTab = Integer.valueOf(i11);
            TabPosition tabPosition = (TabPosition) CollectionsKt.t0(tabPositions, i11);
            if (tabPosition != null && this.scrollState.getValue() != (calculateTabOffset = calculateTabOffset(tabPosition, density, i10, tabPositions))) {
                g.d(this.coroutineScope, null, null, new ScrollableTabData$onLaidOut$1$1(this, calculateTabOffset, null), 3, null);
            }
        }
    }
}
