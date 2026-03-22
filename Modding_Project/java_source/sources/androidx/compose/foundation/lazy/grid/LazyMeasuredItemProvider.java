package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: LazyMeasuredItemProvider.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyMeasuredItemProvider {
    private final int defaultMainAxisSpacing;
    @NotNull
    private final LazyGridItemProvider itemProvider;
    @NotNull
    private final LazyLayoutMeasureScope measureScope;
    @NotNull
    private final MeasuredItemFactory measuredItemFactory;

    @ExperimentalFoundationApi
    public LazyMeasuredItemProvider(@NotNull LazyGridItemProvider itemProvider, @NotNull LazyLayoutMeasureScope measureScope, int i10, @NotNull MeasuredItemFactory measuredItemFactory) {
        Intrinsics.checkNotNullParameter(itemProvider, "itemProvider");
        Intrinsics.checkNotNullParameter(measureScope, "measureScope");
        Intrinsics.checkNotNullParameter(measuredItemFactory, "measuredItemFactory");
        this.itemProvider = itemProvider;
        this.measureScope = measureScope;
        this.defaultMainAxisSpacing = i10;
        this.measuredItemFactory = measuredItemFactory;
    }

    /* renamed from: getAndMeasure-ednRnyU$default  reason: not valid java name */
    public static /* synthetic */ LazyMeasuredItem m637getAndMeasureednRnyU$default(LazyMeasuredItemProvider lazyMeasuredItemProvider, int i10, int i11, long j10, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = lazyMeasuredItemProvider.defaultMainAxisSpacing;
        }
        return lazyMeasuredItemProvider.m638getAndMeasureednRnyU(i10, i11, j10);
    }

    @NotNull
    /* renamed from: getAndMeasure-ednRnyU  reason: not valid java name */
    public final LazyMeasuredItem m638getAndMeasureednRnyU(int i10, int i11, long j10) {
        int m4006getMinHeightimpl;
        Object key = this.itemProvider.getKey(i10);
        Placeable[] mo659measure0kLqBqw = this.measureScope.mo659measure0kLqBqw(i10, j10);
        if (Constraints.m4003getHasFixedWidthimpl(j10)) {
            m4006getMinHeightimpl = Constraints.m4007getMinWidthimpl(j10);
        } else if (Constraints.m4002getHasFixedHeightimpl(j10)) {
            m4006getMinHeightimpl = Constraints.m4006getMinHeightimpl(j10);
        } else {
            throw new IllegalArgumentException("Failed requirement.");
        }
        return this.measuredItemFactory.mo620createItemPU_OBEw(i10, key, m4006getMinHeightimpl, i11, mo659measure0kLqBqw);
    }

    @NotNull
    public final Map<Object, Integer> getKeyToIndexMap() {
        return this.itemProvider.getKeyToIndexMap();
    }
}
