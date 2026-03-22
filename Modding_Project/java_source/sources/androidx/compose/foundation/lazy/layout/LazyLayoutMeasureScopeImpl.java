package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.DpRect;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: LazyLayoutMeasureScope.kt */
@ExperimentalFoundationApi
@Metadata
/* loaded from: classes.dex */
public final class LazyLayoutMeasureScopeImpl implements LazyLayoutMeasureScope, MeasureScope {
    @NotNull
    private final LazyLayoutItemContentFactory itemContentFactory;
    @NotNull
    private final HashMap<Integer, Placeable[]> placeablesCache;
    @NotNull
    private final SubcomposeMeasureScope subcomposeMeasureScope;

    public LazyLayoutMeasureScopeImpl(@NotNull LazyLayoutItemContentFactory itemContentFactory, @NotNull SubcomposeMeasureScope subcomposeMeasureScope) {
        Intrinsics.checkNotNullParameter(itemContentFactory, "itemContentFactory");
        Intrinsics.checkNotNullParameter(subcomposeMeasureScope, "subcomposeMeasureScope");
        this.itemContentFactory = itemContentFactory;
        this.subcomposeMeasureScope = subcomposeMeasureScope;
        this.placeablesCache = new HashMap<>();
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.subcomposeMeasureScope.getDensity();
    }

    @Override // androidx.compose.ui.unit.Density
    public float getFontScale() {
        return this.subcomposeMeasureScope.getFontScale();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    @NotNull
    public LayoutDirection getLayoutDirection() {
        return this.subcomposeMeasureScope.getLayoutDirection();
    }

    @Override // androidx.compose.ui.layout.MeasureScope
    @NotNull
    public MeasureResult layout(int i10, int i11, @NotNull Map<AlignmentLine, Integer> alignmentLines, @NotNull Function1<? super Placeable.PlacementScope, Unit> placementBlock) {
        Intrinsics.checkNotNullParameter(alignmentLines, "alignmentLines");
        Intrinsics.checkNotNullParameter(placementBlock, "placementBlock");
        return this.subcomposeMeasureScope.layout(i10, i11, alignmentLines, placementBlock);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope
    @NotNull
    /* renamed from: measure-0kLqBqw */
    public Placeable[] mo659measure0kLqBqw(int i10, long j10) {
        Placeable[] placeableArr = this.placeablesCache.get(Integer.valueOf(i10));
        if (placeableArr == null) {
            Object key = this.itemContentFactory.getItemProvider().invoke().getKey(i10);
            List<Measurable> subcompose = this.subcomposeMeasureScope.subcompose(key, this.itemContentFactory.getContent(i10, key));
            int size = subcompose.size();
            Placeable[] placeableArr2 = new Placeable[size];
            for (int i11 = 0; i11 < size; i11++) {
                placeableArr2[i11] = subcompose.get(i11).mo3335measureBRTryo0(j10);
            }
            this.placeablesCache.put(Integer.valueOf(i10), placeableArr2);
            return placeableArr2;
        }
        return placeableArr;
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: roundToPx--R2X_6o */
    public int mo335roundToPxR2X_6o(long j10) {
        return this.subcomposeMeasureScope.mo335roundToPxR2X_6o(j10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: roundToPx-0680j_4 */
    public int mo336roundToPx0680j_4(float f10) {
        return this.subcomposeMeasureScope.mo336roundToPx0680j_4(f10);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope, androidx.compose.ui.unit.Density
    /* renamed from: toDp-GaN1DYA */
    public float mo337toDpGaN1DYA(long j10) {
        return this.subcomposeMeasureScope.mo337toDpGaN1DYA(j10);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope, androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public float mo339toDpu2uoSUM(int i10) {
        return this.subcomposeMeasureScope.mo339toDpu2uoSUM(i10);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope, androidx.compose.ui.unit.Density
    /* renamed from: toDpSize-k-rfVVM */
    public long mo340toDpSizekrfVVM(long j10) {
        return this.subcomposeMeasureScope.mo340toDpSizekrfVVM(j10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toPx--R2X_6o */
    public float mo341toPxR2X_6o(long j10) {
        return this.subcomposeMeasureScope.mo341toPxR2X_6o(j10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toPx-0680j_4 */
    public float mo342toPx0680j_4(float f10) {
        return this.subcomposeMeasureScope.mo342toPx0680j_4(f10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    @NotNull
    public Rect toRect(@NotNull DpRect dpRect) {
        Intrinsics.checkNotNullParameter(dpRect, "<this>");
        return this.subcomposeMeasureScope.toRect(dpRect);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope, androidx.compose.ui.unit.Density
    /* renamed from: toSize-XkaWNTQ */
    public long mo343toSizeXkaWNTQ(long j10) {
        return this.subcomposeMeasureScope.mo343toSizeXkaWNTQ(j10);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope, androidx.compose.ui.unit.Density
    /* renamed from: toSp-0xMU5do */
    public long mo344toSp0xMU5do(float f10) {
        return this.subcomposeMeasureScope.mo344toSp0xMU5do(f10);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope, androidx.compose.ui.unit.Density
    /* renamed from: toSp-kPz2Gy4 */
    public long mo345toSpkPz2Gy4(float f10) {
        return this.subcomposeMeasureScope.mo345toSpkPz2Gy4(f10);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope, androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public float mo338toDpu2uoSUM(float f10) {
        return this.subcomposeMeasureScope.mo338toDpu2uoSUM(f10);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope, androidx.compose.ui.unit.Density
    /* renamed from: toSp-kPz2Gy4 */
    public long mo346toSpkPz2Gy4(int i10) {
        return this.subcomposeMeasureScope.mo346toSpkPz2Gy4(i10);
    }
}
