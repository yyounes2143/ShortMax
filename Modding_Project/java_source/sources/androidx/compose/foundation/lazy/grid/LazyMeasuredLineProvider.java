package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.lazy.grid.LazyGridSpanLayoutProvider;
import androidx.compose.ui.unit.Constraints;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: LazyMeasuredLineProvider.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyMeasuredLineProvider {
    @NotNull
    private final Function2<Integer, Integer, Constraints> childConstraints;
    private final int gridItemsCount;
    private final boolean isVertical;
    @NotNull
    private final LazyMeasuredItemProvider measuredItemProvider;
    @NotNull
    private final MeasuredLineFactory measuredLineFactory;
    private final int spaceBetweenLines;
    @NotNull
    private final LazyGridSpanLayoutProvider spanLayoutProvider;

    public LazyMeasuredLineProvider(boolean z10, @NotNull final List<Integer> slotSizesSums, final int i10, int i11, int i12, @NotNull LazyMeasuredItemProvider measuredItemProvider, @NotNull LazyGridSpanLayoutProvider spanLayoutProvider, @NotNull MeasuredLineFactory measuredLineFactory) {
        Intrinsics.checkNotNullParameter(slotSizesSums, "slotSizesSums");
        Intrinsics.checkNotNullParameter(measuredItemProvider, "measuredItemProvider");
        Intrinsics.checkNotNullParameter(spanLayoutProvider, "spanLayoutProvider");
        Intrinsics.checkNotNullParameter(measuredLineFactory, "measuredLineFactory");
        this.isVertical = z10;
        this.gridItemsCount = i11;
        this.spaceBetweenLines = i12;
        this.measuredItemProvider = measuredItemProvider;
        this.spanLayoutProvider = spanLayoutProvider;
        this.measuredLineFactory = measuredLineFactory;
        this.childConstraints = new Function2<Integer, Integer, Constraints>() { // from class: androidx.compose.foundation.lazy.grid.LazyMeasuredLineProvider$childConstraints$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Constraints invoke(Integer num, Integer num2) {
                return Constraints.m3993boximpl(m641invokeJhjzzOo(num.intValue(), num2.intValue()));
            }

            /* renamed from: invoke-JhjzzOo  reason: not valid java name */
            public final long m641invokeJhjzzOo(int i13, int i14) {
                int intValue;
                boolean z11;
                int intValue2 = slotSizesSums.get((i13 + i14) - 1).intValue();
                if (i13 == 0) {
                    intValue = 0;
                } else {
                    intValue = slotSizesSums.get(i13 - 1).intValue();
                }
                int i15 = (intValue2 - intValue) + (i10 * (i14 - 1));
                z11 = this.isVertical;
                if (z11) {
                    return Constraints.Companion.m4015fixedWidthOenEA2s(i15);
                }
                return Constraints.Companion.m4014fixedHeightOenEA2s(i15);
            }
        };
    }

    @NotNull
    /* renamed from: getAndMeasure-bKFJvoY  reason: not valid java name */
    public final LazyMeasuredLine m640getAndMeasurebKFJvoY(int i10) {
        int i11;
        LazyGridSpanLayoutProvider.LineConfiguration lineConfiguration = this.spanLayoutProvider.getLineConfiguration(i10);
        int size = lineConfiguration.getSpans().size();
        if (size != 0 && lineConfiguration.getFirstItemIndex() + size != this.gridItemsCount) {
            i11 = this.spaceBetweenLines;
        } else {
            i11 = 0;
        }
        LazyMeasuredItem[] lazyMeasuredItemArr = new LazyMeasuredItem[size];
        int i12 = 0;
        for (int i13 = 0; i13 < size; i13++) {
            int m586getCurrentLineSpanimpl = GridItemSpan.m586getCurrentLineSpanimpl(lineConfiguration.getSpans().get(i13).m589unboximpl());
            LazyMeasuredItem m638getAndMeasureednRnyU = this.measuredItemProvider.m638getAndMeasureednRnyU(ItemIndex.m592constructorimpl(lineConfiguration.getFirstItemIndex() + i13), i11, this.childConstraints.invoke(Integer.valueOf(i12), Integer.valueOf(m586getCurrentLineSpanimpl)).m4011unboximpl());
            i12 += m586getCurrentLineSpanimpl;
            Unit unit = Unit.f60915a;
            lazyMeasuredItemArr[i13] = m638getAndMeasureednRnyU;
        }
        return this.measuredLineFactory.mo621createLineH9FfpSk(i10, lazyMeasuredItemArr, lineConfiguration.getSpans(), i11);
    }

    @NotNull
    public final Function2<Integer, Integer, Constraints> getChildConstraints$foundation_release() {
        return this.childConstraints;
    }

    @NotNull
    public final Map<Object, Integer> getKeyToIndexMap() {
        return this.measuredItemProvider.getKeyToIndexMap();
    }
}
