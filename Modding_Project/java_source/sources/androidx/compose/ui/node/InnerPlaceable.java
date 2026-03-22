package androidx.compose.ui.node;

import androidx.compose.runtime.Stable;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.AndroidPaint_androidKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.graphics.PaintingStyle;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpRect;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: InnerPlaceable.kt */
@Metadata
/* loaded from: classes.dex */
public final class InnerPlaceable extends LayoutNodeWrapper implements Density {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Paint innerBoundsPaint;
    private final /* synthetic */ MeasureScope $$delegate_0;

    /* compiled from: InnerPlaceable.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Paint getInnerBoundsPaint() {
            return InnerPlaceable.innerBoundsPaint;
        }

        private Companion() {
        }
    }

    static {
        Paint Paint = AndroidPaint_androidKt.Paint();
        Paint.mo1726setColor8_81llA(Color.Companion.m1876getRed0d7_KjU());
        Paint.setStrokeWidth(1.0f);
        Paint.mo1730setStylek9PVt8s(PaintingStyle.Companion.m2073getStrokeTiuSbCo());
        innerBoundsPaint = Paint;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InnerPlaceable(@NotNull LayoutNode layoutNode) {
        super(layoutNode);
        Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
        this.$$delegate_0 = layoutNode.getMeasureScope$ui_release();
    }

    @Override // androidx.compose.ui.node.LayoutNodeWrapper
    public int calculateAlignmentLine(@NotNull AlignmentLine alignmentLine) {
        Intrinsics.checkNotNullParameter(alignmentLine, "alignmentLine");
        Integer num = getLayoutNode$ui_release().calculateAlignmentLines$ui_release().get(alignmentLine);
        if (num != null) {
            return num.intValue();
        }
        return Integer.MIN_VALUE;
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.$$delegate_0.getDensity();
    }

    @Override // androidx.compose.ui.unit.Density
    public float getFontScale() {
        return this.$$delegate_0.getFontScale();
    }

    @Override // androidx.compose.ui.node.LayoutNodeWrapper
    @NotNull
    public MeasureScope getMeasureScope() {
        return getLayoutNode$ui_release().getMeasureScope$ui_release();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    @Override // androidx.compose.ui.node.LayoutNodeWrapper
    /* renamed from: hitTestChild-YqVAtuI  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T extends androidx.compose.ui.node.LayoutNodeEntity<T, M>, C, M extends androidx.compose.ui.Modifier> void mo3455hitTestChildYqVAtuI(@org.jetbrains.annotations.NotNull androidx.compose.ui.node.LayoutNodeWrapper.HitTestSource<T, C, M> r18, long r19, @org.jetbrains.annotations.NotNull androidx.compose.ui.node.HitTestResult<C> r21, boolean r22, boolean r23) {
        /*
            r17 = this;
            r0 = r17
            r8 = r18
            r9 = r19
            r11 = r21
            java.lang.String r1 = "hitTestSource"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r1)
            java.lang.String r1 = "hitTestResult"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r1)
            androidx.compose.ui.node.LayoutNode r1 = r17.getLayoutNode$ui_release()
            boolean r1 = r8.shouldHitTestChildren(r1)
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L40
            boolean r1 = r0.m3492withinLayerBoundsk4lQ0M(r9)
            if (r1 == 0) goto L28
            r12 = r23
        L26:
            r3 = r2
            goto L42
        L28:
            if (r22 == 0) goto L40
            long r4 = r17.m3486getMinimumTouchTargetSizeNHjbRc()
            float r1 = r0.m3483distanceInMinimumTouchTargettz77jQw(r9, r4)
            boolean r4 = java.lang.Float.isInfinite(r1)
            if (r4 != 0) goto L40
            boolean r1 = java.lang.Float.isNaN(r1)
            if (r1 != 0) goto L40
            r12 = r3
            goto L26
        L40:
            r12 = r23
        L42:
            if (r3 == 0) goto L91
            int r13 = androidx.compose.ui.node.HitTestResult.access$getHitDepth$p(r21)
            androidx.compose.ui.node.LayoutNode r1 = r17.getLayoutNode$ui_release()
            androidx.compose.runtime.collection.MutableVector r1 = r1.getZSortedChildren()
            int r3 = r1.getSize()
            if (r3 <= 0) goto L8e
            int r3 = r3 - r2
            java.lang.Object[] r14 = r1.getContent()
            r15 = r3
        L5c:
            r1 = r14[r15]
            r16 = r1
            androidx.compose.ui.node.LayoutNode r16 = (androidx.compose.ui.node.LayoutNode) r16
            boolean r1 = r16.isPlaced()
            if (r1 == 0) goto L8a
            r1 = r18
            r2 = r16
            r3 = r19
            r5 = r21
            r6 = r22
            r7 = r12
            r1.mo3493childHitTestYqVAtuI(r2, r3, r5, r6, r7)
            boolean r1 = r21.hasHit()
            if (r1 != 0) goto L7d
            goto L8a
        L7d:
            androidx.compose.ui.node.LayoutNodeWrapper r1 = r16.getOuterLayoutNodeWrapper$ui_release()
            boolean r1 = r1.shouldSharePointerInputWithSiblings()
            if (r1 == 0) goto L8e
            r21.acceptHits()
        L8a:
            int r15 = r15 + (-1)
            if (r15 >= 0) goto L5c
        L8e:
            androidx.compose.ui.node.HitTestResult.access$setHitDepth$p(r11, r13)
        L91:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.InnerPlaceable.mo3455hitTestChildYqVAtuI(androidx.compose.ui.node.LayoutNodeWrapper$HitTestSource, long, androidx.compose.ui.node.HitTestResult, boolean, boolean):void");
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int maxIntrinsicHeight(int i10) {
        return getLayoutNode$ui_release().getIntrinsicsPolicy$ui_release().maxIntrinsicHeight(i10);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int maxIntrinsicWidth(int i10) {
        return getLayoutNode$ui_release().getIntrinsicsPolicy$ui_release().maxIntrinsicWidth(i10);
    }

    @Override // androidx.compose.ui.layout.Measurable
    @NotNull
    /* renamed from: measure-BRTryo0 */
    public Placeable mo3335measureBRTryo0(long j10) {
        m3376setMeasurementConstraintsBRTryo0(j10);
        MutableVector<LayoutNode> mutableVector = getLayoutNode$ui_release().get_children$ui_release();
        int size = mutableVector.getSize();
        if (size > 0) {
            LayoutNode[] content = mutableVector.getContent();
            int i10 = 0;
            do {
                content[i10].setMeasuredByParent$ui_release(LayoutNode.UsageByParent.NotUsed);
                i10++;
            } while (i10 < size);
            getLayoutNode$ui_release().handleMeasureResult$ui_release(getLayoutNode$ui_release().getMeasurePolicy().mo42measure3p2s80s(getLayoutNode$ui_release().getMeasureScope$ui_release(), getLayoutNode$ui_release().getChildren$ui_release(), j10));
            onMeasured();
            return this;
        }
        getLayoutNode$ui_release().handleMeasureResult$ui_release(getLayoutNode$ui_release().getMeasurePolicy().mo42measure3p2s80s(getLayoutNode$ui_release().getMeasureScope$ui_release(), getLayoutNode$ui_release().getChildren$ui_release(), j10));
        onMeasured();
        return this;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int minIntrinsicHeight(int i10) {
        return getLayoutNode$ui_release().getIntrinsicsPolicy$ui_release().minIntrinsicHeight(i10);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int minIntrinsicWidth(int i10) {
        return getLayoutNode$ui_release().getIntrinsicsPolicy$ui_release().minIntrinsicWidth(i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    @Override // androidx.compose.ui.node.LayoutNodeWrapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void performDraw(@org.jetbrains.annotations.NotNull androidx.compose.ui.graphics.Canvas r7) {
        /*
            r6 = this;
            java.lang.String r0 = "canvas"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            androidx.compose.ui.node.LayoutNode r0 = r6.getLayoutNode$ui_release()
            androidx.compose.ui.node.Owner r0 = androidx.compose.ui.node.LayoutNodeKt.requireOwner(r0)
            androidx.compose.ui.node.LayoutNode r1 = r6.getLayoutNode$ui_release()
            androidx.compose.runtime.collection.MutableVector r1 = r1.getZSortedChildren()
            int r2 = r1.getSize()
            if (r2 <= 0) goto L31
            java.lang.Object[] r1 = r1.getContent()
            r3 = 0
        L20:
            r4 = r1[r3]
            androidx.compose.ui.node.LayoutNode r4 = (androidx.compose.ui.node.LayoutNode) r4
            boolean r5 = r4.isPlaced()
            if (r5 == 0) goto L2d
            r4.draw$ui_release(r7)
        L2d:
            int r3 = r3 + 1
            if (r3 < r2) goto L20
        L31:
            boolean r0 = r0.getShowLayoutBounds()
            if (r0 == 0) goto L3c
            androidx.compose.ui.graphics.Paint r0 = androidx.compose.ui.node.InnerPlaceable.innerBoundsPaint
            r6.drawBorder(r7, r0)
        L3c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.InnerPlaceable.performDraw(androidx.compose.ui.graphics.Canvas):void");
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
        getLayoutNode$ui_release().onNodePlaced$ui_release();
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: roundToPx--R2X_6o */
    public int mo335roundToPxR2X_6o(long j10) {
        return this.$$delegate_0.mo335roundToPxR2X_6o(j10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: roundToPx-0680j_4 */
    public int mo336roundToPx0680j_4(float f10) {
        return this.$$delegate_0.mo336roundToPx0680j_4(f10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toDp-GaN1DYA */
    public float mo337toDpGaN1DYA(long j10) {
        return this.$$delegate_0.mo337toDpGaN1DYA(j10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toDp-u2uoSUM */
    public float mo338toDpu2uoSUM(float f10) {
        return this.$$delegate_0.mo338toDpu2uoSUM(f10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toDpSize-k-rfVVM */
    public long mo340toDpSizekrfVVM(long j10) {
        return this.$$delegate_0.mo340toDpSizekrfVVM(j10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toPx--R2X_6o */
    public float mo341toPxR2X_6o(long j10) {
        return this.$$delegate_0.mo341toPxR2X_6o(j10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toPx-0680j_4 */
    public float mo342toPx0680j_4(float f10) {
        return this.$$delegate_0.mo342toPx0680j_4(f10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    @NotNull
    public Rect toRect(@NotNull DpRect dpRect) {
        Intrinsics.checkNotNullParameter(dpRect, "<this>");
        return this.$$delegate_0.toRect(dpRect);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toSize-XkaWNTQ */
    public long mo343toSizeXkaWNTQ(long j10) {
        return this.$$delegate_0.mo343toSizeXkaWNTQ(j10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toSp-0xMU5do */
    public long mo344toSp0xMU5do(float f10) {
        return this.$$delegate_0.mo344toSp0xMU5do(f10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toSp-kPz2Gy4 */
    public long mo345toSpkPz2Gy4(float f10) {
        return this.$$delegate_0.mo345toSpkPz2Gy4(f10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toDp-u2uoSUM */
    public float mo339toDpu2uoSUM(int i10) {
        return this.$$delegate_0.mo339toDpu2uoSUM(i10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    /* renamed from: toSp-kPz2Gy4 */
    public long mo346toSpkPz2Gy4(int i10) {
        return this.$$delegate_0.mo346toSpkPz2Gy4(i10);
    }
}
