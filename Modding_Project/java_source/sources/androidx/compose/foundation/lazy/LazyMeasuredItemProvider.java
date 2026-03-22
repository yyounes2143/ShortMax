package androidx.compose.foundation.lazy;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: LazyMeasuredItemProvider.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyMeasuredItemProvider {
    private final long childConstraints;
    @NotNull
    private final LazyListItemProvider itemProvider;
    @NotNull
    private final LazyLayoutMeasureScope measureScope;
    @NotNull
    private final MeasuredItemFactory measuredItemFactory;

    @ExperimentalFoundationApi
    public /* synthetic */ LazyMeasuredItemProvider(long j10, boolean z10, LazyListItemProvider lazyListItemProvider, LazyLayoutMeasureScope lazyLayoutMeasureScope, MeasuredItemFactory measuredItemFactory, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, z10, lazyListItemProvider, lazyLayoutMeasureScope, measuredItemFactory);
    }

    @NotNull
    /* renamed from: getAndMeasure-ZjPyQlc  reason: not valid java name */
    public final LazyMeasuredItem m577getAndMeasureZjPyQlc(int i10) {
        return this.measuredItemFactory.mo563createItemHK0c1C0(i10, this.itemProvider.getKey(i10), this.measureScope.mo659measure0kLqBqw(i10, this.childConstraints));
    }

    /* renamed from: getChildConstraints-msEJaDk  reason: not valid java name */
    public final long m578getChildConstraintsmsEJaDk() {
        return this.childConstraints;
    }

    @NotNull
    public final Map<Object, Integer> getKeyToIndexMap() {
        return this.itemProvider.getKeyToIndexMap();
    }

    private LazyMeasuredItemProvider(long j10, boolean z10, LazyListItemProvider lazyListItemProvider, LazyLayoutMeasureScope lazyLayoutMeasureScope, MeasuredItemFactory measuredItemFactory) {
        this.itemProvider = lazyListItemProvider;
        this.measureScope = lazyLayoutMeasureScope;
        this.measuredItemFactory = measuredItemFactory;
        this.childConstraints = ConstraintsKt.Constraints$default(0, z10 ? Constraints.m4005getMaxWidthimpl(j10) : Integer.MAX_VALUE, 0, z10 ? Integer.MAX_VALUE : Constraints.m4004getMaxHeightimpl(j10), 5, null);
    }
}
