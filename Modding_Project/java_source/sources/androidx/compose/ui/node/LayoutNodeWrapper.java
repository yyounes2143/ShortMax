package androidx.compose.ui.node;

import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.MutableRect;
import androidx.compose.ui.geometry.MutableRectKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.input.pointer.PointerInputFilter;
import androidx.compose.ui.input.pointer.PointerInputModifier;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.OnPlacedModifier;
import androidx.compose.ui.layout.OnRemeasuredModifier;
import androidx.compose.ui.layout.ParentDataModifier;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.VerticalAlignmentLine;
import androidx.compose.ui.node.EntityList;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsEntity;
import androidx.compose.ui.semantics.SemanticsModifier;
import androidx.compose.ui.semantics.SemanticsNodeKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.y0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: LayoutNodeWrapper.kt */
@Metadata
/* loaded from: classes.dex */
public abstract class LayoutNodeWrapper extends Placeable implements Measurable, LayoutCoordinates, OwnerScope, Function1<Canvas, Unit> {
    @NotNull
    public static final String ExpectAttachedLayoutCoordinates = "LayoutCoordinate operations are only valid when isAttached is true";
    @NotNull
    public static final String UnmeasuredError = "Asking for measurement result of unmeasured layout modifier";
    private boolean _isAttached;
    @Nullable
    private MeasureResult _measureResult;
    @Nullable
    private MutableRect _rectCache;
    @NotNull
    private final LayoutNodeEntity<?, ?>[] entities;
    @NotNull
    private final Function0<Unit> invalidateParentLayer;
    private boolean isClipping;
    private boolean isShallowPlacing;
    private float lastLayerAlpha;
    private boolean lastLayerDrawingWasSkipped;
    @Nullable
    private OwnedLayer layer;
    @Nullable
    private Function1<? super GraphicsLayerScope, Unit> layerBlock;
    @NotNull
    private Density layerDensity;
    @NotNull
    private LayoutDirection layerLayoutDirection;
    @NotNull
    private final LayoutNode layoutNode;
    @Nullable
    private Map<AlignmentLine, Integer> oldAlignmentLines;
    private long position;
    @Nullable
    private LayoutNodeWrapper wrappedBy;
    private float zIndex;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Function1<LayoutNodeWrapper, Unit> onCommitAffectingLayerParams = new Function1<LayoutNodeWrapper, Unit>() { // from class: androidx.compose.ui.node.LayoutNodeWrapper$Companion$onCommitAffectingLayerParams$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(LayoutNodeWrapper layoutNodeWrapper) {
            invoke2(layoutNodeWrapper);
            return Unit.f60915a;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull LayoutNodeWrapper wrapper) {
            Intrinsics.checkNotNullParameter(wrapper, "wrapper");
            if (wrapper.isValid()) {
                wrapper.updateLayerParameters();
            }
        }
    };
    @NotNull
    private static final Function1<LayoutNodeWrapper, Unit> onCommitAffectingLayer = new Function1<LayoutNodeWrapper, Unit>() { // from class: androidx.compose.ui.node.LayoutNodeWrapper$Companion$onCommitAffectingLayer$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(LayoutNodeWrapper layoutNodeWrapper) {
            invoke2(layoutNodeWrapper);
            return Unit.f60915a;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull LayoutNodeWrapper wrapper) {
            Intrinsics.checkNotNullParameter(wrapper, "wrapper");
            OwnedLayer layer = wrapper.getLayer();
            if (layer != null) {
                layer.invalidate();
            }
        }
    };
    @NotNull
    private static final ReusableGraphicsLayerScope graphicsLayerScope = new ReusableGraphicsLayerScope();
    @NotNull
    private static final HitTestSource<PointerInputEntity, PointerInputFilter, PointerInputModifier> PointerInputSource = new HitTestSource<PointerInputEntity, PointerInputFilter, PointerInputModifier>() { // from class: androidx.compose.ui.node.LayoutNodeWrapper$Companion$PointerInputSource$1
        @Override // androidx.compose.ui.node.LayoutNodeWrapper.HitTestSource
        /* renamed from: childHitTest-YqVAtuI  reason: not valid java name */
        public void mo3493childHitTestYqVAtuI(@NotNull LayoutNode layoutNode, long j10, @NotNull HitTestResult<PointerInputFilter> hitTestResult, boolean z10, boolean z11) {
            Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
            Intrinsics.checkNotNullParameter(hitTestResult, "hitTestResult");
            layoutNode.m3460hitTestM_7yMNQ$ui_release(j10, hitTestResult, z10, z11);
        }

        @Override // androidx.compose.ui.node.LayoutNodeWrapper.HitTestSource
        /* renamed from: entityType-EEbPh1w  reason: not valid java name */
        public int mo3494entityTypeEEbPh1w() {
            return EntityList.Companion.m3444getPointerInputEntityTypeEEbPh1w();
        }

        @Override // androidx.compose.ui.node.LayoutNodeWrapper.HitTestSource
        public boolean shouldHitTestChildren(@NotNull LayoutNode parentLayoutNode) {
            Intrinsics.checkNotNullParameter(parentLayoutNode, "parentLayoutNode");
            return true;
        }

        @Override // androidx.compose.ui.node.LayoutNodeWrapper.HitTestSource
        @NotNull
        public PointerInputFilter contentFrom(@NotNull PointerInputEntity entity) {
            Intrinsics.checkNotNullParameter(entity, "entity");
            return entity.getModifier().getPointerInputFilter();
        }

        @Override // androidx.compose.ui.node.LayoutNodeWrapper.HitTestSource
        public boolean interceptOutOfBoundsChildEvents(@NotNull PointerInputEntity entity) {
            Intrinsics.checkNotNullParameter(entity, "entity");
            return entity.getModifier().getPointerInputFilter().getInterceptOutOfBoundsChildEvents();
        }
    };
    @NotNull
    private static final HitTestSource<SemanticsEntity, SemanticsEntity, SemanticsModifier> SemanticsSource = new HitTestSource<SemanticsEntity, SemanticsEntity, SemanticsModifier>() { // from class: androidx.compose.ui.node.LayoutNodeWrapper$Companion$SemanticsSource$1
        @Override // androidx.compose.ui.node.LayoutNodeWrapper.HitTestSource
        /* renamed from: childHitTest-YqVAtuI */
        public void mo3493childHitTestYqVAtuI(@NotNull LayoutNode layoutNode, long j10, @NotNull HitTestResult<SemanticsEntity> hitTestResult, boolean z10, boolean z11) {
            Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
            Intrinsics.checkNotNullParameter(hitTestResult, "hitTestResult");
            layoutNode.m3461hitTestSemanticsM_7yMNQ$ui_release(j10, hitTestResult, z10, z11);
        }

        @Override // androidx.compose.ui.node.LayoutNodeWrapper.HitTestSource
        @NotNull
        public SemanticsEntity contentFrom(@NotNull SemanticsEntity entity) {
            Intrinsics.checkNotNullParameter(entity, "entity");
            return entity;
        }

        @Override // androidx.compose.ui.node.LayoutNodeWrapper.HitTestSource
        /* renamed from: entityType-EEbPh1w */
        public int mo3494entityTypeEEbPh1w() {
            return EntityList.Companion.m3446getSemanticsEntityTypeEEbPh1w();
        }

        @Override // androidx.compose.ui.node.LayoutNodeWrapper.HitTestSource
        public boolean interceptOutOfBoundsChildEvents(@NotNull SemanticsEntity entity) {
            Intrinsics.checkNotNullParameter(entity, "entity");
            return false;
        }

        @Override // androidx.compose.ui.node.LayoutNodeWrapper.HitTestSource
        public boolean shouldHitTestChildren(@NotNull LayoutNode parentLayoutNode) {
            SemanticsConfiguration collapsedSemanticsConfiguration;
            Intrinsics.checkNotNullParameter(parentLayoutNode, "parentLayoutNode");
            SemanticsEntity outerSemantics = SemanticsNodeKt.getOuterSemantics(parentLayoutNode);
            boolean z10 = false;
            if (outerSemantics != null && (collapsedSemanticsConfiguration = outerSemantics.collapsedSemanticsConfiguration()) != null && collapsedSemanticsConfiguration.isClearingSemantics()) {
                z10 = true;
            }
            return !z10;
        }
    };

    /* compiled from: LayoutNodeWrapper.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final HitTestSource<PointerInputEntity, PointerInputFilter, PointerInputModifier> getPointerInputSource() {
            return LayoutNodeWrapper.PointerInputSource;
        }

        @NotNull
        public final HitTestSource<SemanticsEntity, SemanticsEntity, SemanticsModifier> getSemanticsSource() {
            return LayoutNodeWrapper.SemanticsSource;
        }

        private Companion() {
        }
    }

    /* compiled from: LayoutNodeWrapper.kt */
    @Metadata
    /* loaded from: classes.dex */
    public interface HitTestSource<T extends LayoutNodeEntity<T, M>, C, M extends Modifier> {
        /* renamed from: childHitTest-YqVAtuI */
        void mo3493childHitTestYqVAtuI(@NotNull LayoutNode layoutNode, long j10, @NotNull HitTestResult<C> hitTestResult, boolean z10, boolean z11);

        C contentFrom(@NotNull T t10);

        /* renamed from: entityType-EEbPh1w */
        int mo3494entityTypeEEbPh1w();

        boolean interceptOutOfBoundsChildEvents(@NotNull T t10);

        boolean shouldHitTestChildren(@NotNull LayoutNode layoutNode);
    }

    public LayoutNodeWrapper(@NotNull LayoutNode layoutNode) {
        Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
        this.layoutNode = layoutNode;
        this.layerDensity = layoutNode.getDensity();
        this.layerLayoutDirection = layoutNode.getLayoutDirection();
        this.lastLayerAlpha = 0.8f;
        this.position = IntOffset.Companion.m4177getZeronOccac();
        this.entities = EntityList.m3429constructorimpl$default(null, 1, null);
        this.invalidateParentLayer = new Function0<Unit>() { // from class: androidx.compose.ui.node.LayoutNodeWrapper$invalidateParentLayer$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                LayoutNodeWrapper wrappedBy$ui_release = LayoutNodeWrapper.this.getWrappedBy$ui_release();
                if (wrappedBy$ui_release != null) {
                    wrappedBy$ui_release.invalidateLayer();
                }
            }
        };
    }

    private final void ancestorToLocal(LayoutNodeWrapper layoutNodeWrapper, MutableRect mutableRect, boolean z10) {
        if (layoutNodeWrapper == this) {
            return;
        }
        LayoutNodeWrapper layoutNodeWrapper2 = this.wrappedBy;
        if (layoutNodeWrapper2 != null) {
            layoutNodeWrapper2.ancestorToLocal(layoutNodeWrapper, mutableRect, z10);
        }
        fromParentRect(mutableRect, z10);
    }

    /* renamed from: ancestorToLocal-R5De75A  reason: not valid java name */
    private final long m3477ancestorToLocalR5De75A(LayoutNodeWrapper layoutNodeWrapper, long j10) {
        if (layoutNodeWrapper == this) {
            return j10;
        }
        LayoutNodeWrapper layoutNodeWrapper2 = this.wrappedBy;
        if (layoutNodeWrapper2 != null && !Intrinsics.areEqual(layoutNodeWrapper, layoutNodeWrapper2)) {
            return m3484fromParentPositionMKHz9U(layoutNodeWrapper2.m3477ancestorToLocalR5De75A(layoutNodeWrapper, j10));
        }
        return m3484fromParentPositionMKHz9U(j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void drawContainedDrawModifiers(Canvas canvas) {
        DrawEntity drawEntity = (DrawEntity) EntityList.m3437head0OSVbXo(this.entities, EntityList.Companion.m3441getDrawEntityTypeEEbPh1w());
        if (drawEntity == null) {
            performDraw(canvas);
        } else {
            drawEntity.draw(canvas);
        }
    }

    private final void fromParentRect(MutableRect mutableRect, boolean z10) {
        float m4167getXimpl = IntOffset.m4167getXimpl(this.position);
        mutableRect.setLeft(mutableRect.getLeft() - m4167getXimpl);
        mutableRect.setRight(mutableRect.getRight() - m4167getXimpl);
        float m4168getYimpl = IntOffset.m4168getYimpl(this.position);
        mutableRect.setTop(mutableRect.getTop() - m4168getYimpl);
        mutableRect.setBottom(mutableRect.getBottom() - m4168getYimpl);
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            ownedLayer.mapBounds(mutableRect, true);
            if (this.isClipping && z10) {
                mutableRect.intersect(0.0f, 0.0f, IntSize.m4209getWidthimpl(mo3337getSizeYbymL2g()), IntSize.m4208getHeightimpl(mo3337getSizeYbymL2g()));
                mutableRect.isEmpty();
            }
        }
    }

    private final boolean getHasMeasureResult() {
        if (this._measureResult != null) {
            return true;
        }
        return false;
    }

    private final OwnerSnapshotObserver getSnapshotObserver() {
        return LayoutNodeKt.requireOwner(this.layoutNode).getSnapshotObserver();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: hit-1hIXUjU  reason: not valid java name */
    public final <T extends LayoutNodeEntity<T, M>, C, M extends Modifier> void m3478hit1hIXUjU(final T t10, final HitTestSource<T, C, M> hitTestSource, final long j10, final HitTestResult<C> hitTestResult, final boolean z10, final boolean z11) {
        if (t10 == null) {
            mo3455hitTestChildYqVAtuI(hitTestSource, j10, hitTestResult, z10, z11);
        } else {
            hitTestResult.hit(hitTestSource.contentFrom(t10), z11, new Function0<Unit>() { // from class: androidx.compose.ui.node.LayoutNodeWrapper$hit$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Incorrect types in method signature: (Landroidx/compose/ui/node/LayoutNodeWrapper;TT;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource<TT;TC;TM;>;JLandroidx/compose/ui/node/HitTestResult<TC;>;ZZ)V */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    LayoutNodeWrapper.this.m3478hit1hIXUjU(t10.getNext(), hitTestSource, j10, hitTestResult, z10, z11);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: hitNear-JHbHoSQ  reason: not valid java name */
    public final <T extends LayoutNodeEntity<T, M>, C, M extends Modifier> void m3479hitNearJHbHoSQ(final T t10, final HitTestSource<T, C, M> hitTestSource, final long j10, final HitTestResult<C> hitTestResult, final boolean z10, final boolean z11, final float f10) {
        if (t10 == null) {
            mo3455hitTestChildYqVAtuI(hitTestSource, j10, hitTestResult, z10, z11);
        } else {
            hitTestResult.hitInMinimumTouchTarget(hitTestSource.contentFrom(t10), f10, z11, new Function0<Unit>() { // from class: androidx.compose.ui.node.LayoutNodeWrapper$hitNear$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Incorrect types in method signature: (Landroidx/compose/ui/node/LayoutNodeWrapper;TT;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource<TT;TC;TM;>;JLandroidx/compose/ui/node/HitTestResult<TC;>;ZZF)V */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    LayoutNodeWrapper.this.m3479hitNearJHbHoSQ(t10.getNext(), hitTestSource, j10, hitTestResult, z10, z11, f10);
                }
            });
        }
    }

    /* renamed from: offsetFromEdge-MK-Hz9U  reason: not valid java name */
    private final long m3480offsetFromEdgeMKHz9U(long j10) {
        float measuredWidth;
        float measuredHeight;
        float m1606getXimpl = Offset.m1606getXimpl(j10);
        if (m1606getXimpl < 0.0f) {
            measuredWidth = -m1606getXimpl;
        } else {
            measuredWidth = m1606getXimpl - getMeasuredWidth();
        }
        float max = Math.max(0.0f, measuredWidth);
        float m1607getYimpl = Offset.m1607getYimpl(j10);
        if (m1607getYimpl < 0.0f) {
            measuredHeight = -m1607getYimpl;
        } else {
            measuredHeight = m1607getYimpl - getMeasuredHeight();
        }
        return OffsetKt.Offset(max, Math.max(0.0f, measuredHeight));
    }

    static /* synthetic */ Object propagateRelocationRequest$suspendImpl(LayoutNodeWrapper layoutNodeWrapper, Rect rect, c cVar) {
        LayoutNodeWrapper layoutNodeWrapper2 = layoutNodeWrapper.wrappedBy;
        if (layoutNodeWrapper2 == null) {
            return Unit.f60915a;
        }
        Object propagateRelocationRequest = layoutNodeWrapper2.propagateRelocationRequest(rect.m1643translatek4lQ0M(layoutNodeWrapper2.localBoundingBoxOf(layoutNodeWrapper, false).m1641getTopLeftF1C5BW0()), cVar);
        if (propagateRelocationRequest == kotlin.coroutines.intrinsics.a.f()) {
            return propagateRelocationRequest;
        }
        return Unit.f60915a;
    }

    public static /* synthetic */ void rectInParent$ui_release$default(LayoutNodeWrapper layoutNodeWrapper, MutableRect mutableRect, boolean z10, boolean z11, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 4) != 0) {
                z11 = false;
            }
            layoutNodeWrapper.rectInParent$ui_release(mutableRect, z10, z11);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: rectInParent");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: speculativeHit-JHbHoSQ  reason: not valid java name */
    public final <T extends LayoutNodeEntity<T, M>, C, M extends Modifier> void m3481speculativeHitJHbHoSQ(final T t10, final HitTestSource<T, C, M> hitTestSource, final long j10, final HitTestResult<C> hitTestResult, final boolean z10, final boolean z11, final float f10) {
        if (t10 == null) {
            mo3455hitTestChildYqVAtuI(hitTestSource, j10, hitTestResult, z10, z11);
        } else if (hitTestSource.interceptOutOfBoundsChildEvents(t10)) {
            hitTestResult.speculativeHit(hitTestSource.contentFrom(t10), f10, z11, new Function0<Unit>() { // from class: androidx.compose.ui.node.LayoutNodeWrapper$speculativeHit$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Incorrect types in method signature: (Landroidx/compose/ui/node/LayoutNodeWrapper;TT;Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource<TT;TC;TM;>;JLandroidx/compose/ui/node/HitTestResult<TC;>;ZZF)V */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    LayoutNodeWrapper.this.m3481speculativeHitJHbHoSQ(t10.getNext(), hitTestSource, j10, hitTestResult, z10, z11, f10);
                }
            });
        } else {
            m3481speculativeHitJHbHoSQ(t10.getNext(), hitTestSource, j10, hitTestResult, z10, z11, f10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateLayerParameters() {
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            final Function1<? super GraphicsLayerScope, Unit> function1 = this.layerBlock;
            if (function1 != null) {
                ReusableGraphicsLayerScope reusableGraphicsLayerScope = graphicsLayerScope;
                reusableGraphicsLayerScope.reset();
                reusableGraphicsLayerScope.setGraphicsDensity$ui_release(this.layoutNode.getDensity());
                getSnapshotObserver().observeReads$ui_release(this, onCommitAffectingLayerParams, new Function0<Unit>() { // from class: androidx.compose.ui.node.LayoutNodeWrapper$updateLayerParameters$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.f60915a;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        ReusableGraphicsLayerScope reusableGraphicsLayerScope2;
                        Function1<GraphicsLayerScope, Unit> function12 = function1;
                        reusableGraphicsLayerScope2 = LayoutNodeWrapper.graphicsLayerScope;
                        function12.invoke(reusableGraphicsLayerScope2);
                    }
                });
                ownedLayer.mo3506updateLayerPropertiesNHXXZp8(reusableGraphicsLayerScope.getScaleX(), reusableGraphicsLayerScope.getScaleY(), reusableGraphicsLayerScope.getAlpha(), reusableGraphicsLayerScope.getTranslationX(), reusableGraphicsLayerScope.getTranslationY(), reusableGraphicsLayerScope.getShadowElevation(), reusableGraphicsLayerScope.getRotationX(), reusableGraphicsLayerScope.getRotationY(), reusableGraphicsLayerScope.getRotationZ(), reusableGraphicsLayerScope.getCameraDistance(), reusableGraphicsLayerScope.mo2000getTransformOriginSzJe1aQ(), reusableGraphicsLayerScope.getShape(), reusableGraphicsLayerScope.getClip(), reusableGraphicsLayerScope.getRenderEffect(), reusableGraphicsLayerScope.mo1998getAmbientShadowColor0d7_KjU(), reusableGraphicsLayerScope.mo1999getSpotShadowColor0d7_KjU(), this.layoutNode.getLayoutDirection(), this.layoutNode.getDensity());
                this.isClipping = reusableGraphicsLayerScope.getClip();
            } else {
                throw new IllegalArgumentException("Required value was null.");
            }
        } else if (this.layerBlock != null) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        this.lastLayerAlpha = graphicsLayerScope.getAlpha();
        Owner owner$ui_release = this.layoutNode.getOwner$ui_release();
        if (owner$ui_release != null) {
            owner$ui_release.onLayoutChange(this.layoutNode);
        }
    }

    public void attach() {
        LayoutNodeEntity<?, ?>[] layoutNodeEntityArr;
        this._isAttached = true;
        onLayerBlockUpdated(this.layerBlock);
        for (LayoutNodeEntity<?, ?> layoutNodeEntity : this.entities) {
            for (; layoutNodeEntity != null; layoutNodeEntity = layoutNodeEntity.getNext()) {
                layoutNodeEntity.onAttach();
            }
        }
    }

    public abstract int calculateAlignmentLine(@NotNull AlignmentLine alignmentLine);

    /* renamed from: calculateMinimumTouchTargetPadding-E7KxVPU  reason: not valid java name */
    protected final long m3482calculateMinimumTouchTargetPaddingE7KxVPU(long j10) {
        return SizeKt.Size(Math.max(0.0f, (Size.m1675getWidthimpl(j10) - getMeasuredWidth()) / 2.0f), Math.max(0.0f, (Size.m1672getHeightimpl(j10) - getMeasuredHeight()) / 2.0f));
    }

    public void detach() {
        LayoutNodeEntity<?, ?>[] layoutNodeEntityArr;
        for (LayoutNodeEntity<?, ?> layoutNodeEntity : this.entities) {
            for (; layoutNodeEntity != null; layoutNodeEntity = layoutNodeEntity.getNext()) {
                layoutNodeEntity.onDetach();
            }
        }
        this._isAttached = false;
        onLayerBlockUpdated(this.layerBlock);
        LayoutNode parent$ui_release = this.layoutNode.getParent$ui_release();
        if (parent$ui_release != null) {
            parent$ui_release.invalidateLayer$ui_release();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: distanceInMinimumTouchTarget-tz77jQw  reason: not valid java name */
    public final float m3483distanceInMinimumTouchTargettz77jQw(long j10, long j11) {
        if (getMeasuredWidth() >= Size.m1675getWidthimpl(j11) && getMeasuredHeight() >= Size.m1672getHeightimpl(j11)) {
            return Float.POSITIVE_INFINITY;
        }
        long m3482calculateMinimumTouchTargetPaddingE7KxVPU = m3482calculateMinimumTouchTargetPaddingE7KxVPU(j11);
        float m1675getWidthimpl = Size.m1675getWidthimpl(m3482calculateMinimumTouchTargetPaddingE7KxVPU);
        float m1672getHeightimpl = Size.m1672getHeightimpl(m3482calculateMinimumTouchTargetPaddingE7KxVPU);
        long m3480offsetFromEdgeMKHz9U = m3480offsetFromEdgeMKHz9U(j10);
        if ((m1675getWidthimpl <= 0.0f && m1672getHeightimpl <= 0.0f) || Offset.m1606getXimpl(m3480offsetFromEdgeMKHz9U) > m1675getWidthimpl || Offset.m1607getYimpl(m3480offsetFromEdgeMKHz9U) > m1672getHeightimpl) {
            return Float.POSITIVE_INFINITY;
        }
        return Offset.m1605getDistanceSquaredimpl(m3480offsetFromEdgeMKHz9U);
    }

    public final void draw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            ownedLayer.drawLayer(canvas);
            return;
        }
        float m4167getXimpl = IntOffset.m4167getXimpl(this.position);
        float m4168getYimpl = IntOffset.m4168getYimpl(this.position);
        canvas.translate(m4167getXimpl, m4168getYimpl);
        drawContainedDrawModifiers(canvas);
        canvas.translate(-m4167getXimpl, -m4168getYimpl);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void drawBorder(@NotNull Canvas canvas, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(paint, "paint");
        canvas.drawRect(new Rect(0.5f, 0.5f, IntSize.m4209getWidthimpl(m3373getMeasuredSizeYbymL2g()) - 0.5f, IntSize.m4208getHeightimpl(m3373getMeasuredSizeYbymL2g()) - 0.5f), paint);
    }

    @NotNull
    public final LayoutNodeWrapper findCommonAncestor$ui_release(@NotNull LayoutNodeWrapper other) {
        Intrinsics.checkNotNullParameter(other, "other");
        LayoutNode layoutNode = other.layoutNode;
        LayoutNode layoutNode2 = this.layoutNode;
        if (layoutNode == layoutNode2) {
            LayoutNodeWrapper outerLayoutNodeWrapper$ui_release = layoutNode2.getOuterLayoutNodeWrapper$ui_release();
            LayoutNodeWrapper layoutNodeWrapper = this;
            while (layoutNodeWrapper != outerLayoutNodeWrapper$ui_release && layoutNodeWrapper != other) {
                layoutNodeWrapper = layoutNodeWrapper.wrappedBy;
                Intrinsics.checkNotNull(layoutNodeWrapper);
            }
            if (layoutNodeWrapper == other) {
                return other;
            }
            return this;
        }
        while (layoutNode.getDepth$ui_release() > layoutNode2.getDepth$ui_release()) {
            layoutNode = layoutNode.getParent$ui_release();
            Intrinsics.checkNotNull(layoutNode);
        }
        while (layoutNode2.getDepth$ui_release() > layoutNode.getDepth$ui_release()) {
            layoutNode2 = layoutNode2.getParent$ui_release();
            Intrinsics.checkNotNull(layoutNode2);
        }
        while (layoutNode != layoutNode2) {
            layoutNode = layoutNode.getParent$ui_release();
            layoutNode2 = layoutNode2.getParent$ui_release();
            if (layoutNode != null) {
                if (layoutNode2 == null) {
                }
            }
            throw new IllegalArgumentException("layouts are not part of the same hierarchy");
        }
        if (layoutNode2 == this.layoutNode) {
            return this;
        }
        if (layoutNode != other.layoutNode) {
            return layoutNode.getInnerLayoutNodeWrapper$ui_release();
        }
        return other;
    }

    /* renamed from: fromParentPosition-MK-Hz9U  reason: not valid java name */
    public long m3484fromParentPositionMKHz9U(long j10) {
        long m4179minusNvtHpc = IntOffsetKt.m4179minusNvtHpc(j10, this.position);
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            return ownedLayer.mo3503mapOffset8S9VItk(m4179minusNvtHpc, true);
        }
        return m4179minusNvtHpc;
    }

    @Override // androidx.compose.ui.layout.Measured
    public final int get(@NotNull AlignmentLine alignmentLine) {
        int calculateAlignmentLine;
        int m4168getYimpl;
        Intrinsics.checkNotNullParameter(alignmentLine, "alignmentLine");
        if (!getHasMeasureResult() || (calculateAlignmentLine = calculateAlignmentLine(alignmentLine)) == Integer.MIN_VALUE) {
            return Integer.MIN_VALUE;
        }
        if (alignmentLine instanceof VerticalAlignmentLine) {
            m4168getYimpl = IntOffset.m4167getXimpl(m3372getApparentToRealOffsetnOccac());
        } else {
            m4168getYimpl = IntOffset.m4168getYimpl(m3372getApparentToRealOffsetnOccac());
        }
        return calculateAlignmentLine + m4168getYimpl;
    }

    @NotNull
    /* renamed from: getEntities-CHwCgZE  reason: not valid java name */
    public final LayoutNodeEntity<?, ?>[] m3485getEntitiesCHwCgZE() {
        return this.entities;
    }

    public final boolean getLastLayerDrawingWasSkipped$ui_release() {
        return this.lastLayerDrawingWasSkipped;
    }

    @Nullable
    public final OwnedLayer getLayer() {
        return this.layer;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final Function1<GraphicsLayerScope, Unit> getLayerBlock() {
        return this.layerBlock;
    }

    @NotNull
    public final LayoutNode getLayoutNode$ui_release() {
        return this.layoutNode;
    }

    @NotNull
    public final MeasureResult getMeasureResult() {
        MeasureResult measureResult = this._measureResult;
        if (measureResult != null) {
            return measureResult;
        }
        throw new IllegalStateException(UnmeasuredError);
    }

    @NotNull
    public abstract MeasureScope getMeasureScope();

    /* renamed from: getMinimumTouchTargetSize-NH-jbRc  reason: not valid java name */
    public final long m3486getMinimumTouchTargetSizeNHjbRc() {
        return this.layerDensity.mo343toSizeXkaWNTQ(this.layoutNode.getViewConfiguration().mo3464getMinimumTouchTargetSizeMYxV2XQ());
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    @Nullable
    public final LayoutCoordinates getParentCoordinates() {
        if (isAttached()) {
            return this.wrappedBy;
        }
        throw new IllegalStateException(ExpectAttachedLayoutCoordinates);
    }

    @Override // androidx.compose.ui.layout.Measured, androidx.compose.ui.layout.IntrinsicMeasurable
    @Nullable
    public Object getParentData() {
        return getParentData((SimpleEntity) EntityList.m3437head0OSVbXo(this.entities, EntityList.Companion.m3443getParentDataEntityTypeEEbPh1w()));
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    @Nullable
    public final LayoutCoordinates getParentLayoutCoordinates() {
        if (isAttached()) {
            return this.layoutNode.getOuterLayoutNodeWrapper$ui_release().wrappedBy;
        }
        throw new IllegalStateException(ExpectAttachedLayoutCoordinates);
    }

    /* renamed from: getPosition-nOcc-ac  reason: not valid java name */
    public final long m3487getPositionnOccac() {
        return this.position;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    @NotNull
    public Set<AlignmentLine> getProvidedAlignmentLines() {
        Map<AlignmentLine, Integer> map;
        LinkedHashSet linkedHashSet = null;
        for (LayoutNodeWrapper layoutNodeWrapper = this; layoutNodeWrapper != null; layoutNodeWrapper = layoutNodeWrapper.getWrapped$ui_release()) {
            MeasureResult measureResult = layoutNodeWrapper._measureResult;
            if (measureResult != null) {
                map = measureResult.getAlignmentLines();
            } else {
                map = null;
            }
            if (map != null && (!map.isEmpty())) {
                if (linkedHashSet == null) {
                    linkedHashSet = new LinkedHashSet();
                }
                linkedHashSet.addAll(map.keySet());
            }
        }
        if (linkedHashSet == null) {
            return y0.f();
        }
        return linkedHashSet;
    }

    @NotNull
    protected final MutableRect getRectCache() {
        MutableRect mutableRect = this._rectCache;
        if (mutableRect == null) {
            MutableRect mutableRect2 = new MutableRect(0.0f, 0.0f, 0.0f, 0.0f);
            this._rectCache = mutableRect2;
            return mutableRect2;
        }
        return mutableRect;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: getSize-YbymL2g */
    public final long mo3337getSizeYbymL2g() {
        return m3373getMeasuredSizeYbymL2g();
    }

    @Nullable
    public LayoutNodeWrapper getWrapped$ui_release() {
        return null;
    }

    @Nullable
    public final LayoutNodeWrapper getWrappedBy$ui_release() {
        return this.wrappedBy;
    }

    public final float getZIndex() {
        return this.zIndex;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: hitTest-YqVAtuI  reason: not valid java name */
    public final <T extends LayoutNodeEntity<T, M>, C, M extends Modifier> void m3488hitTestYqVAtuI(@NotNull HitTestSource<T, C, M> hitTestSource, long j10, @NotNull HitTestResult<C> hitTestResult, boolean z10, boolean z11) {
        float m3483distanceInMinimumTouchTargettz77jQw;
        Intrinsics.checkNotNullParameter(hitTestSource, "hitTestSource");
        Intrinsics.checkNotNullParameter(hitTestResult, "hitTestResult");
        LayoutNodeEntity m3437head0OSVbXo = EntityList.m3437head0OSVbXo(this.entities, hitTestSource.mo3494entityTypeEEbPh1w());
        if (!m3492withinLayerBoundsk4lQ0M(j10)) {
            if (z10) {
                float m3483distanceInMinimumTouchTargettz77jQw2 = m3483distanceInMinimumTouchTargettz77jQw(j10, m3486getMinimumTouchTargetSizeNHjbRc());
                if (!Float.isInfinite(m3483distanceInMinimumTouchTargettz77jQw2) && !Float.isNaN(m3483distanceInMinimumTouchTargettz77jQw2) && hitTestResult.isHitInMinimumTouchTargetBetter(m3483distanceInMinimumTouchTargettz77jQw2, false)) {
                    m3479hitNearJHbHoSQ(m3437head0OSVbXo, hitTestSource, j10, hitTestResult, z10, false, m3483distanceInMinimumTouchTargettz77jQw2);
                }
            }
        } else if (m3437head0OSVbXo == null) {
            mo3455hitTestChildYqVAtuI(hitTestSource, j10, hitTestResult, z10, z11);
        } else if (m3489isPointerInBoundsk4lQ0M(j10)) {
            m3478hit1hIXUjU(m3437head0OSVbXo, hitTestSource, j10, hitTestResult, z10, z11);
        } else {
            if (!z10) {
                m3483distanceInMinimumTouchTargettz77jQw = Float.POSITIVE_INFINITY;
            } else {
                m3483distanceInMinimumTouchTargettz77jQw = m3483distanceInMinimumTouchTargettz77jQw(j10, m3486getMinimumTouchTargetSizeNHjbRc());
            }
            float f10 = m3483distanceInMinimumTouchTargettz77jQw;
            if (!Float.isInfinite(f10) && !Float.isNaN(f10)) {
                if (hitTestResult.isHitInMinimumTouchTargetBetter(f10, z11)) {
                    m3479hitNearJHbHoSQ(m3437head0OSVbXo, hitTestSource, j10, hitTestResult, z10, z11, f10);
                    return;
                }
            }
            m3481speculativeHitJHbHoSQ(m3437head0OSVbXo, hitTestSource, j10, hitTestResult, z10, z11, f10);
        }
    }

    /* renamed from: hitTestChild-YqVAtuI */
    public <T extends LayoutNodeEntity<T, M>, C, M extends Modifier> void mo3455hitTestChildYqVAtuI(@NotNull HitTestSource<T, C, M> hitTestSource, long j10, @NotNull HitTestResult<C> hitTestResult, boolean z10, boolean z11) {
        Intrinsics.checkNotNullParameter(hitTestSource, "hitTestSource");
        Intrinsics.checkNotNullParameter(hitTestResult, "hitTestResult");
        LayoutNodeWrapper wrapped$ui_release = getWrapped$ui_release();
        if (wrapped$ui_release != null) {
            wrapped$ui_release.m3488hitTestYqVAtuI(hitTestSource, wrapped$ui_release.m3484fromParentPositionMKHz9U(j10), hitTestResult, z10, z11);
        }
    }

    public void invalidateLayer() {
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            ownedLayer.invalidate();
            return;
        }
        LayoutNodeWrapper layoutNodeWrapper = this.wrappedBy;
        if (layoutNodeWrapper != null) {
            layoutNodeWrapper.invalidateLayer();
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Canvas canvas) {
        invoke2(canvas);
        return Unit.f60915a;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    public final boolean isAttached() {
        if (this._isAttached && !this.layoutNode.isAttached()) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        return this._isAttached;
    }

    /* renamed from: isPointerInBounds-k-4lQ0M  reason: not valid java name */
    protected final boolean m3489isPointerInBoundsk4lQ0M(long j10) {
        float m1606getXimpl = Offset.m1606getXimpl(j10);
        float m1607getYimpl = Offset.m1607getYimpl(j10);
        if (m1606getXimpl >= 0.0f && m1607getYimpl >= 0.0f && m1606getXimpl < getMeasuredWidth() && m1607getYimpl < getMeasuredHeight()) {
            return true;
        }
        return false;
    }

    public final boolean isShallowPlacing() {
        return this.isShallowPlacing;
    }

    public final boolean isTransparent() {
        if (this.layer != null && this.lastLayerAlpha <= 0.0f) {
            return true;
        }
        LayoutNodeWrapper layoutNodeWrapper = this.wrappedBy;
        if (layoutNodeWrapper != null) {
            return layoutNodeWrapper.isTransparent();
        }
        return false;
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public boolean isValid() {
        if (this.layer != null) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    @NotNull
    public Rect localBoundingBoxOf(@NotNull LayoutCoordinates sourceCoordinates, boolean z10) {
        Intrinsics.checkNotNullParameter(sourceCoordinates, "sourceCoordinates");
        if (isAttached()) {
            if (sourceCoordinates.isAttached()) {
                LayoutNodeWrapper layoutNodeWrapper = (LayoutNodeWrapper) sourceCoordinates;
                LayoutNodeWrapper findCommonAncestor$ui_release = findCommonAncestor$ui_release(layoutNodeWrapper);
                MutableRect rectCache = getRectCache();
                rectCache.setLeft(0.0f);
                rectCache.setTop(0.0f);
                rectCache.setRight(IntSize.m4209getWidthimpl(sourceCoordinates.mo3337getSizeYbymL2g()));
                rectCache.setBottom(IntSize.m4208getHeightimpl(sourceCoordinates.mo3337getSizeYbymL2g()));
                while (layoutNodeWrapper != findCommonAncestor$ui_release) {
                    rectInParent$ui_release$default(layoutNodeWrapper, rectCache, z10, false, 4, null);
                    if (rectCache.isEmpty()) {
                        return Rect.Companion.getZero();
                    }
                    layoutNodeWrapper = layoutNodeWrapper.wrappedBy;
                    Intrinsics.checkNotNull(layoutNodeWrapper);
                }
                ancestorToLocal(findCommonAncestor$ui_release, rectCache, z10);
                return MutableRectKt.toRect(rectCache);
            }
            throw new IllegalStateException(("LayoutCoordinates " + sourceCoordinates + " is not attached!").toString());
        }
        throw new IllegalStateException(ExpectAttachedLayoutCoordinates);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localPositionOf-R5De75A */
    public long mo3338localPositionOfR5De75A(@NotNull LayoutCoordinates sourceCoordinates, long j10) {
        Intrinsics.checkNotNullParameter(sourceCoordinates, "sourceCoordinates");
        LayoutNodeWrapper layoutNodeWrapper = (LayoutNodeWrapper) sourceCoordinates;
        LayoutNodeWrapper findCommonAncestor$ui_release = findCommonAncestor$ui_release(layoutNodeWrapper);
        while (layoutNodeWrapper != findCommonAncestor$ui_release) {
            j10 = layoutNodeWrapper.m3491toParentPositionMKHz9U(j10);
            layoutNodeWrapper = layoutNodeWrapper.wrappedBy;
            Intrinsics.checkNotNull(layoutNodeWrapper);
        }
        return m3477ancestorToLocalR5De75A(findCommonAncestor$ui_release, j10);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localToRoot-MK-Hz9U */
    public long mo3339localToRootMKHz9U(long j10) {
        if (isAttached()) {
            for (LayoutNodeWrapper layoutNodeWrapper = this; layoutNodeWrapper != null; layoutNodeWrapper = layoutNodeWrapper.wrappedBy) {
                j10 = layoutNodeWrapper.m3491toParentPositionMKHz9U(j10);
            }
            return j10;
        }
        throw new IllegalStateException(ExpectAttachedLayoutCoordinates);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: localToWindow-MK-Hz9U */
    public long mo3340localToWindowMKHz9U(long j10) {
        return LayoutNodeKt.requireOwner(this.layoutNode).mo3508calculatePositionInWindowMKHz9U(mo3339localToRootMKHz9U(j10));
    }

    public void onInitialize() {
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            ownedLayer.invalidate();
        }
    }

    public final void onLayerBlockUpdated(@Nullable Function1<? super GraphicsLayerScope, Unit> function1) {
        boolean z10;
        Owner owner$ui_release;
        if (this.layerBlock == function1 && Intrinsics.areEqual(this.layerDensity, this.layoutNode.getDensity()) && this.layerLayoutDirection == this.layoutNode.getLayoutDirection()) {
            z10 = false;
        } else {
            z10 = true;
        }
        this.layerBlock = function1;
        this.layerDensity = this.layoutNode.getDensity();
        this.layerLayoutDirection = this.layoutNode.getLayoutDirection();
        if (isAttached() && function1 != null) {
            if (this.layer == null) {
                OwnedLayer createLayer = LayoutNodeKt.requireOwner(this.layoutNode).createLayer(this, this.invalidateParentLayer);
                createLayer.mo3505resizeozmzZPI(m3373getMeasuredSizeYbymL2g());
                createLayer.mo3504movegyyYBs(this.position);
                this.layer = createLayer;
                updateLayerParameters();
                this.layoutNode.setInnerLayerWrapperIsDirty$ui_release(true);
                this.invalidateParentLayer.invoke();
                return;
            } else if (z10) {
                updateLayerParameters();
                return;
            } else {
                return;
            }
        }
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            ownedLayer.destroy();
            this.layoutNode.setInnerLayerWrapperIsDirty$ui_release(true);
            this.invalidateParentLayer.invoke();
            if (isAttached() && (owner$ui_release = this.layoutNode.getOwner$ui_release()) != null) {
                owner$ui_release.onLayoutChange(this.layoutNode);
            }
        }
        this.layer = null;
        this.lastLayerDrawingWasSkipped = false;
    }

    protected void onMeasureResultChanged(int i10, int i11) {
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            ownedLayer.mo3505resizeozmzZPI(IntSizeKt.IntSize(i10, i11));
        } else {
            LayoutNodeWrapper layoutNodeWrapper = this.wrappedBy;
            if (layoutNodeWrapper != null) {
                layoutNodeWrapper.invalidateLayer();
            }
        }
        Owner owner$ui_release = this.layoutNode.getOwner$ui_release();
        if (owner$ui_release != null) {
            owner$ui_release.onLayoutChange(this.layoutNode);
        }
        m3375setMeasuredSizeozmzZPI(IntSizeKt.IntSize(i10, i11));
        for (LayoutNodeEntity<?, ?> layoutNodeEntity = this.entities[EntityList.Companion.m3441getDrawEntityTypeEEbPh1w()]; layoutNodeEntity != null; layoutNodeEntity = layoutNodeEntity.getNext()) {
            ((DrawEntity) layoutNodeEntity).onMeasureResultChanged();
        }
    }

    public final void onMeasured() {
        LayoutNodeEntity<?, ?>[] layoutNodeEntityArr = this.entities;
        EntityList.Companion companion = EntityList.Companion;
        if (EntityList.m3435has0OSVbXo(layoutNodeEntityArr, companion.m3445getRemeasureEntityTypeEEbPh1w())) {
            Snapshot createNonObservableSnapshot = Snapshot.Companion.createNonObservableSnapshot();
            try {
                Snapshot makeCurrent = createNonObservableSnapshot.makeCurrent();
                for (LayoutNodeEntity<?, ?> layoutNodeEntity = this.entities[companion.m3445getRemeasureEntityTypeEEbPh1w()]; layoutNodeEntity != null; layoutNodeEntity = layoutNodeEntity.getNext()) {
                    ((OnRemeasuredModifier) ((SimpleEntity) layoutNodeEntity).getModifier()).mo275onRemeasuredozmzZPI(m3373getMeasuredSizeYbymL2g());
                }
                Unit unit = Unit.f60915a;
                createNonObservableSnapshot.restoreCurrent(makeCurrent);
            } finally {
                createNonObservableSnapshot.dispose();
            }
        }
    }

    public void onModifierChanged() {
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            ownedLayer.invalidate();
        }
    }

    public final void onPlaced() {
        for (LayoutNodeEntity<?, ?> layoutNodeEntity = this.entities[EntityList.Companion.m3442getOnPlacedEntityTypeEEbPh1w()]; layoutNodeEntity != null; layoutNodeEntity = layoutNodeEntity.getNext()) {
            ((OnPlacedModifier) ((SimpleEntity) layoutNodeEntity).getModifier()).onPlaced(this);
        }
    }

    public void performDraw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        LayoutNodeWrapper wrapped$ui_release = getWrapped$ui_release();
        if (wrapped$ui_release != null) {
            wrapped$ui_release.draw(canvas);
        }
    }

    @NotNull
    /* renamed from: performingMeasure-K40F9xA  reason: not valid java name */
    protected final Placeable m3490performingMeasureK40F9xA(long j10, @NotNull Function0<? extends Placeable> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        m3376setMeasurementConstraintsBRTryo0(j10);
        Placeable invoke = block.invoke();
        OwnedLayer layer = getLayer();
        if (layer != null) {
            layer.mo3505resizeozmzZPI(m3373getMeasuredSizeYbymL2g());
        }
        return invoke;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.compose.ui.layout.Placeable
    /* renamed from: placeAt-f8xVGno */
    public void mo3336placeAtf8xVGno(long j10, float f10, @Nullable Function1<? super GraphicsLayerScope, Unit> function1) {
        LayoutNode layoutNode;
        onLayerBlockUpdated(function1);
        if (!IntOffset.m4166equalsimpl0(this.position, j10)) {
            this.position = j10;
            OwnedLayer ownedLayer = this.layer;
            if (ownedLayer != null) {
                ownedLayer.mo3504movegyyYBs(j10);
            } else {
                LayoutNodeWrapper layoutNodeWrapper = this.wrappedBy;
                if (layoutNodeWrapper != null) {
                    layoutNodeWrapper.invalidateLayer();
                }
            }
            LayoutNodeWrapper wrapped$ui_release = getWrapped$ui_release();
            if (wrapped$ui_release != null) {
                layoutNode = wrapped$ui_release.layoutNode;
            } else {
                layoutNode = null;
            }
            if (!Intrinsics.areEqual(layoutNode, this.layoutNode)) {
                this.layoutNode.onAlignmentsChanged$ui_release();
            } else {
                LayoutNode parent$ui_release = this.layoutNode.getParent$ui_release();
                if (parent$ui_release != null) {
                    parent$ui_release.onAlignmentsChanged$ui_release();
                }
            }
            Owner owner$ui_release = this.layoutNode.getOwner$ui_release();
            if (owner$ui_release != null) {
                owner$ui_release.onLayoutChange(this.layoutNode);
            }
        }
        this.zIndex = f10;
    }

    @Nullable
    public Object propagateRelocationRequest(@NotNull Rect rect, @NotNull c<? super Unit> cVar) {
        return propagateRelocationRequest$suspendImpl(this, rect, cVar);
    }

    public final void rectInParent$ui_release(@NotNull MutableRect bounds, boolean z10, boolean z11) {
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            if (this.isClipping) {
                if (z11) {
                    long m3486getMinimumTouchTargetSizeNHjbRc = m3486getMinimumTouchTargetSizeNHjbRc();
                    float m1675getWidthimpl = Size.m1675getWidthimpl(m3486getMinimumTouchTargetSizeNHjbRc) / 2.0f;
                    float m1672getHeightimpl = Size.m1672getHeightimpl(m3486getMinimumTouchTargetSizeNHjbRc) / 2.0f;
                    bounds.intersect(-m1675getWidthimpl, -m1672getHeightimpl, IntSize.m4209getWidthimpl(mo3337getSizeYbymL2g()) + m1675getWidthimpl, IntSize.m4208getHeightimpl(mo3337getSizeYbymL2g()) + m1672getHeightimpl);
                } else if (z10) {
                    bounds.intersect(0.0f, 0.0f, IntSize.m4209getWidthimpl(mo3337getSizeYbymL2g()), IntSize.m4208getHeightimpl(mo3337getSizeYbymL2g()));
                }
                if (bounds.isEmpty()) {
                    return;
                }
            }
            ownedLayer.mapBounds(bounds, false);
        }
        float m4167getXimpl = IntOffset.m4167getXimpl(this.position);
        bounds.setLeft(bounds.getLeft() + m4167getXimpl);
        bounds.setRight(bounds.getRight() + m4167getXimpl);
        float m4168getYimpl = IntOffset.m4168getYimpl(this.position);
        bounds.setTop(bounds.getTop() + m4168getYimpl);
        bounds.setBottom(bounds.getBottom() + m4168getYimpl);
    }

    public final void setMeasureResult$ui_release(@NotNull MeasureResult value) {
        LayoutNode layoutNode;
        LayoutNode parent$ui_release;
        Intrinsics.checkNotNullParameter(value, "value");
        MeasureResult measureResult = this._measureResult;
        if (value != measureResult) {
            this._measureResult = value;
            if (measureResult == null || value.getWidth() != measureResult.getWidth() || value.getHeight() != measureResult.getHeight()) {
                onMeasureResultChanged(value.getWidth(), value.getHeight());
            }
            Map<AlignmentLine, Integer> map = this.oldAlignmentLines;
            if (((map != null && !map.isEmpty()) || !value.getAlignmentLines().isEmpty()) && !Intrinsics.areEqual(value.getAlignmentLines(), this.oldAlignmentLines)) {
                LayoutNodeWrapper wrapped$ui_release = getWrapped$ui_release();
                if (wrapped$ui_release != null) {
                    layoutNode = wrapped$ui_release.layoutNode;
                } else {
                    layoutNode = null;
                }
                if (Intrinsics.areEqual(layoutNode, this.layoutNode)) {
                    LayoutNode parent$ui_release2 = this.layoutNode.getParent$ui_release();
                    if (parent$ui_release2 != null) {
                        parent$ui_release2.onAlignmentsChanged$ui_release();
                    }
                    if (this.layoutNode.getAlignmentLines$ui_release().getUsedDuringParentMeasurement$ui_release()) {
                        LayoutNode parent$ui_release3 = this.layoutNode.getParent$ui_release();
                        if (parent$ui_release3 != null) {
                            LayoutNode.requestRemeasure$ui_release$default(parent$ui_release3, false, 1, null);
                        }
                    } else if (this.layoutNode.getAlignmentLines$ui_release().getUsedDuringParentLayout$ui_release() && (parent$ui_release = this.layoutNode.getParent$ui_release()) != null) {
                        LayoutNode.requestRelayout$ui_release$default(parent$ui_release, false, 1, null);
                    }
                } else {
                    this.layoutNode.onAlignmentsChanged$ui_release();
                }
                this.layoutNode.getAlignmentLines$ui_release().setDirty$ui_release(true);
                Map map2 = this.oldAlignmentLines;
                if (map2 == null) {
                    map2 = new LinkedHashMap();
                    this.oldAlignmentLines = map2;
                }
                map2.clear();
                map2.putAll(value.getAlignmentLines());
            }
        }
    }

    public final void setShallowPlacing(boolean z10) {
        this.isShallowPlacing = z10;
    }

    public final void setWrappedBy$ui_release(@Nullable LayoutNodeWrapper layoutNodeWrapper) {
        this.wrappedBy = layoutNodeWrapper;
    }

    protected final void setZIndex(float f10) {
        this.zIndex = f10;
    }

    public final boolean shouldSharePointerInputWithSiblings() {
        PointerInputEntity pointerInputEntity = (PointerInputEntity) EntityList.m3437head0OSVbXo(this.entities, EntityList.Companion.m3444getPointerInputEntityTypeEEbPh1w());
        if (pointerInputEntity != null && pointerInputEntity.shouldSharePointerInputWithSiblings()) {
            return true;
        }
        LayoutNodeWrapper wrapped$ui_release = getWrapped$ui_release();
        if (wrapped$ui_release != null && wrapped$ui_release.shouldSharePointerInputWithSiblings()) {
            return true;
        }
        return false;
    }

    /* renamed from: toParentPosition-MK-Hz9U  reason: not valid java name */
    public long m3491toParentPositionMKHz9U(long j10) {
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null) {
            j10 = ownedLayer.mo3503mapOffset8S9VItk(j10, false);
        }
        return IntOffsetKt.m4181plusNvtHpc(j10, this.position);
    }

    @NotNull
    public final Rect touchBoundsInRoot() {
        if (!isAttached()) {
            return Rect.Companion.getZero();
        }
        LayoutCoordinates findRoot = LayoutCoordinatesKt.findRoot(this);
        MutableRect rectCache = getRectCache();
        long m3482calculateMinimumTouchTargetPaddingE7KxVPU = m3482calculateMinimumTouchTargetPaddingE7KxVPU(m3486getMinimumTouchTargetSizeNHjbRc());
        rectCache.setLeft(-Size.m1675getWidthimpl(m3482calculateMinimumTouchTargetPaddingE7KxVPU));
        rectCache.setTop(-Size.m1672getHeightimpl(m3482calculateMinimumTouchTargetPaddingE7KxVPU));
        rectCache.setRight(getMeasuredWidth() + Size.m1675getWidthimpl(m3482calculateMinimumTouchTargetPaddingE7KxVPU));
        rectCache.setBottom(getMeasuredHeight() + Size.m1672getHeightimpl(m3482calculateMinimumTouchTargetPaddingE7KxVPU));
        LayoutNodeWrapper layoutNodeWrapper = this;
        while (layoutNodeWrapper != findRoot) {
            layoutNodeWrapper.rectInParent$ui_release(rectCache, false, true);
            if (rectCache.isEmpty()) {
                return Rect.Companion.getZero();
            }
            layoutNodeWrapper = layoutNodeWrapper.wrappedBy;
            Intrinsics.checkNotNull(layoutNodeWrapper);
        }
        return MutableRectKt.toRect(rectCache);
    }

    @Override // androidx.compose.ui.layout.LayoutCoordinates
    /* renamed from: windowToLocal-MK-Hz9U */
    public long mo3341windowToLocalMKHz9U(long j10) {
        if (isAttached()) {
            LayoutCoordinates findRoot = LayoutCoordinatesKt.findRoot(this);
            return mo3338localPositionOfR5De75A(findRoot, Offset.m1610minusMKHz9U(LayoutNodeKt.requireOwner(this.layoutNode).mo3507calculateLocalPositionMKHz9U(j10), LayoutCoordinatesKt.positionInRoot(findRoot)));
        }
        throw new IllegalStateException(ExpectAttachedLayoutCoordinates);
    }

    protected final void withPositionTranslation(@NotNull Canvas canvas, @NotNull Function1<? super Canvas, Unit> block) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(block, "block");
        float m4167getXimpl = IntOffset.m4167getXimpl(m3487getPositionnOccac());
        float m4168getYimpl = IntOffset.m4168getYimpl(m3487getPositionnOccac());
        canvas.translate(m4167getXimpl, m4168getYimpl);
        block.invoke(canvas);
        canvas.translate(-m4167getXimpl, -m4168getYimpl);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: withinLayerBounds-k-4lQ0M  reason: not valid java name */
    public final boolean m3492withinLayerBoundsk4lQ0M(long j10) {
        if (!OffsetKt.m1623isFinitek4lQ0M(j10)) {
            return false;
        }
        OwnedLayer ownedLayer = this.layer;
        if (ownedLayer != null && this.isClipping && !ownedLayer.mo3502isInLayerk4lQ0M(j10)) {
            return false;
        }
        return true;
    }

    private final Object getParentData(SimpleEntity<ParentDataModifier> simpleEntity) {
        if (simpleEntity == null) {
            LayoutNodeWrapper wrapped$ui_release = getWrapped$ui_release();
            if (wrapped$ui_release != null) {
                return wrapped$ui_release.getParentData();
            }
            return null;
        }
        return simpleEntity.getModifier().modifyParentData(getMeasureScope(), getParentData((SimpleEntity) simpleEntity.getNext()));
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public void invoke2(@NotNull final Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        if (this.layoutNode.isPlaced()) {
            getSnapshotObserver().observeReads$ui_release(this, onCommitAffectingLayer, new Function0<Unit>() { // from class: androidx.compose.ui.node.LayoutNodeWrapper$invoke$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    LayoutNodeWrapper.this.drawContainedDrawModifiers(canvas);
                }
            });
            this.lastLayerDrawingWasSkipped = false;
            return;
        }
        this.lastLayerDrawingWasSkipped = true;
    }
}
