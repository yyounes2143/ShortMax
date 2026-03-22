package androidx.compose.ui.node;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.graphics.AndroidPaint_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.graphics.PaintingStyle;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ModifiedLayoutNode.kt */
@Metadata
/* loaded from: classes.dex */
public final class ModifiedLayoutNode extends LayoutNodeWrapper {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Paint modifierBoundsPaint;
    @NotNull
    private LayoutModifier modifier;
    @Nullable
    private MutableState<LayoutModifier> modifierState;
    private boolean toBeReusedForSameModifier;
    @NotNull
    private LayoutNodeWrapper wrapped;

    /* compiled from: ModifiedLayoutNode.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Paint getModifierBoundsPaint() {
            return ModifiedLayoutNode.modifierBoundsPaint;
        }

        private Companion() {
        }
    }

    static {
        Paint Paint = AndroidPaint_androidKt.Paint();
        Paint.mo1726setColor8_81llA(Color.Companion.m1869getBlue0d7_KjU());
        Paint.setStrokeWidth(1.0f);
        Paint.mo1730setStylek9PVt8s(PaintingStyle.Companion.m2073getStrokeTiuSbCo());
        modifierBoundsPaint = Paint;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModifiedLayoutNode(@NotNull LayoutNodeWrapper wrapped, @NotNull LayoutModifier modifier) {
        super(wrapped.getLayoutNode$ui_release());
        Intrinsics.checkNotNullParameter(wrapped, "wrapped");
        Intrinsics.checkNotNullParameter(modifier, "modifier");
        this.wrapped = wrapped;
        this.modifier = modifier;
    }

    private final LayoutModifier modifierFromState() {
        MutableState<LayoutModifier> mutableState = this.modifierState;
        if (mutableState == null) {
            mutableState = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(this.modifier, null, 2, null);
        }
        this.modifierState = mutableState;
        return mutableState.getValue();
    }

    @Override // androidx.compose.ui.node.LayoutNodeWrapper
    public int calculateAlignmentLine(@NotNull AlignmentLine alignmentLine) {
        int m4167getXimpl;
        Intrinsics.checkNotNullParameter(alignmentLine, "alignmentLine");
        if (getMeasureResult().getAlignmentLines().containsKey(alignmentLine)) {
            Integer num = getMeasureResult().getAlignmentLines().get(alignmentLine);
            if (num == null) {
                return Integer.MIN_VALUE;
            }
            return num.intValue();
        }
        int i10 = getWrapped$ui_release().get(alignmentLine);
        if (i10 == Integer.MIN_VALUE) {
            return Integer.MIN_VALUE;
        }
        setShallowPlacing(true);
        mo3336placeAtf8xVGno(m3487getPositionnOccac(), getZIndex(), getLayerBlock());
        setShallowPlacing(false);
        if (alignmentLine instanceof HorizontalAlignmentLine) {
            m4167getXimpl = IntOffset.m4168getYimpl(getWrapped$ui_release().m3487getPositionnOccac());
        } else {
            m4167getXimpl = IntOffset.m4167getXimpl(getWrapped$ui_release().m3487getPositionnOccac());
        }
        return i10 + m4167getXimpl;
    }

    @Override // androidx.compose.ui.node.LayoutNodeWrapper
    @NotNull
    public MeasureScope getMeasureScope() {
        return getWrapped$ui_release().getMeasureScope();
    }

    @NotNull
    public final LayoutModifier getModifier() {
        return this.modifier;
    }

    public final boolean getToBeReusedForSameModifier() {
        return this.toBeReusedForSameModifier;
    }

    @Override // androidx.compose.ui.node.LayoutNodeWrapper
    @NotNull
    public LayoutNodeWrapper getWrapped$ui_release() {
        return this.wrapped;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int maxIntrinsicHeight(int i10) {
        return modifierFromState().maxIntrinsicHeight(getMeasureScope(), getWrapped$ui_release(), i10);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int maxIntrinsicWidth(int i10) {
        return modifierFromState().maxIntrinsicWidth(getMeasureScope(), getWrapped$ui_release(), i10);
    }

    @Override // androidx.compose.ui.layout.Measurable
    @NotNull
    /* renamed from: measure-BRTryo0 */
    public Placeable mo3335measureBRTryo0(long j10) {
        m3376setMeasurementConstraintsBRTryo0(j10);
        setMeasureResult$ui_release(this.modifier.mo57measure3p2s80s(getMeasureScope(), getWrapped$ui_release(), j10));
        OwnedLayer layer = getLayer();
        if (layer != null) {
            layer.mo3505resizeozmzZPI(m3373getMeasuredSizeYbymL2g());
        }
        onMeasured();
        return this;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int minIntrinsicHeight(int i10) {
        return modifierFromState().minIntrinsicHeight(getMeasureScope(), getWrapped$ui_release(), i10);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int minIntrinsicWidth(int i10) {
        return modifierFromState().minIntrinsicWidth(getMeasureScope(), getWrapped$ui_release(), i10);
    }

    @Override // androidx.compose.ui.node.LayoutNodeWrapper
    public void onInitialize() {
        super.onInitialize();
        getWrapped$ui_release().setWrappedBy$ui_release(this);
    }

    @Override // androidx.compose.ui.node.LayoutNodeWrapper
    public void onModifierChanged() {
        super.onModifierChanged();
        MutableState<LayoutModifier> mutableState = this.modifierState;
        if (mutableState != null) {
            mutableState.setValue(this.modifier);
        }
    }

    @Override // androidx.compose.ui.node.LayoutNodeWrapper
    public void performDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        getWrapped$ui_release().draw(canvas);
        if (LayoutNodeKt.requireOwner(getLayoutNode$ui_release()).getShowLayoutBounds()) {
            drawBorder(canvas, modifierBoundsPaint);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.compose.ui.node.LayoutNodeWrapper, androidx.compose.ui.layout.Placeable
    /* renamed from: placeAt-f8xVGno */
    public void mo3336placeAtf8xVGno(long j10, float f10, @Nullable Function1<? super GraphicsLayerScope, Unit> function1) {
        super.mo3336placeAtf8xVGno(j10, f10, function1);
        LayoutNodeWrapper wrappedBy$ui_release = getWrappedBy$ui_release();
        if (wrappedBy$ui_release != null && wrappedBy$ui_release.isShallowPlacing()) {
            return;
        }
        onPlaced();
        Placeable.PlacementScope.Companion companion = Placeable.PlacementScope.Companion;
        int m4209getWidthimpl = IntSize.m4209getWidthimpl(m3373getMeasuredSizeYbymL2g());
        LayoutDirection layoutDirection = getMeasureScope().getLayoutDirection();
        int parentWidth = companion.getParentWidth();
        LayoutDirection parentLayoutDirection = companion.getParentLayoutDirection();
        Placeable.PlacementScope.parentWidth = m4209getWidthimpl;
        Placeable.PlacementScope.parentLayoutDirection = layoutDirection;
        getMeasureResult().placeChildren();
        Placeable.PlacementScope.parentWidth = parentWidth;
        Placeable.PlacementScope.parentLayoutDirection = parentLayoutDirection;
    }

    public final void setModifier(@NotNull LayoutModifier layoutModifier) {
        Intrinsics.checkNotNullParameter(layoutModifier, "<set-?>");
        this.modifier = layoutModifier;
    }

    public final void setToBeReusedForSameModifier(boolean z10) {
        this.toBeReusedForSameModifier = z10;
    }

    public void setWrapped(@NotNull LayoutNodeWrapper layoutNodeWrapper) {
        Intrinsics.checkNotNullParameter(layoutNodeWrapper, "<set-?>");
        this.wrapped = layoutNodeWrapper;
    }
}
