package androidx.compose.ui.layout;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Placeable.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public abstract class Placeable implements Measured {
    public static final int $stable = 8;
    private int height;
    private long measuredSize = IntSizeKt.IntSize(0, 0);
    private long measurementConstraints = PlaceableKt.access$getDefaultConstraints$p();
    private int width;

    /* compiled from: Placeable.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes.dex */
    public static abstract class PlacementScope {
        public static final int $stable = 0;
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private static LayoutDirection parentLayoutDirection = LayoutDirection.Ltr;
        private static int parentWidth;

        /* compiled from: Placeable.kt */
        @Metadata
        /* loaded from: classes.dex */
        public static final class Companion extends PlacementScope {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final void executeWithRtlMirroringValues(int i10, @NotNull LayoutDirection parentLayoutDirection, @NotNull Function1<? super PlacementScope, Unit> block) {
                Intrinsics.checkNotNullParameter(parentLayoutDirection, "parentLayoutDirection");
                Intrinsics.checkNotNullParameter(block, "block");
                Companion companion = PlacementScope.Companion;
                int parentWidth = companion.getParentWidth();
                LayoutDirection parentLayoutDirection2 = companion.getParentLayoutDirection();
                PlacementScope.parentWidth = i10;
                PlacementScope.parentLayoutDirection = parentLayoutDirection;
                block.invoke(this);
                PlacementScope.parentWidth = parentWidth;
                PlacementScope.parentLayoutDirection = parentLayoutDirection2;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.compose.ui.layout.Placeable.PlacementScope
            @NotNull
            public LayoutDirection getParentLayoutDirection() {
                return PlacementScope.parentLayoutDirection;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.compose.ui.layout.Placeable.PlacementScope
            public int getParentWidth() {
                return PlacementScope.parentWidth;
            }

            private Companion() {
            }
        }

        public static /* synthetic */ void place$default(PlacementScope placementScope, Placeable placeable, int i10, int i11, float f10, int i12, Object obj) {
            if (obj == null) {
                if ((i12 & 4) != 0) {
                    f10 = 0.0f;
                }
                placementScope.place(placeable, i10, i11, f10);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: place");
        }

        /* renamed from: place-70tqf50$default  reason: not valid java name */
        public static /* synthetic */ void m3377place70tqf50$default(PlacementScope placementScope, Placeable placeable, long j10, float f10, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 2) != 0) {
                    f10 = 0.0f;
                }
                placementScope.m3381place70tqf50(placeable, j10, f10);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: place-70tqf50");
        }

        public static /* synthetic */ void placeRelative$default(PlacementScope placementScope, Placeable placeable, int i10, int i11, float f10, int i12, Object obj) {
            if (obj == null) {
                if ((i12 & 4) != 0) {
                    f10 = 0.0f;
                }
                placementScope.placeRelative(placeable, i10, i11, f10);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: placeRelative");
        }

        /* renamed from: placeRelative-70tqf50$default  reason: not valid java name */
        public static /* synthetic */ void m3378placeRelative70tqf50$default(PlacementScope placementScope, Placeable placeable, long j10, float f10, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 2) != 0) {
                    f10 = 0.0f;
                }
                placementScope.m3384placeRelative70tqf50(placeable, j10, f10);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: placeRelative-70tqf50");
        }

        public static /* synthetic */ void placeRelativeWithLayer$default(PlacementScope placementScope, Placeable placeable, int i10, int i11, float f10, Function1 function1, int i12, Object obj) {
            if (obj == null) {
                if ((i12 & 4) != 0) {
                    f10 = 0.0f;
                }
                float f11 = f10;
                Function1 function12 = function1;
                if ((i12 & 8) != 0) {
                    function12 = PlaceableKt.access$getDefaultLayerBlock$p();
                }
                placementScope.placeRelativeWithLayer(placeable, i10, i11, f11, function12);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: placeRelativeWithLayer");
        }

        /* renamed from: placeRelativeWithLayer-aW-9-wM$default  reason: not valid java name */
        public static /* synthetic */ void m3379placeRelativeWithLayeraW9wM$default(PlacementScope placementScope, Placeable placeable, long j10, float f10, Function1 function1, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 2) != 0) {
                    f10 = 0.0f;
                }
                float f11 = f10;
                Function1 function12 = function1;
                if ((i10 & 4) != 0) {
                    function12 = PlaceableKt.access$getDefaultLayerBlock$p();
                }
                placementScope.m3385placeRelativeWithLayeraW9wM(placeable, j10, f11, function12);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: placeRelativeWithLayer-aW-9-wM");
        }

        public static /* synthetic */ void placeWithLayer$default(PlacementScope placementScope, Placeable placeable, int i10, int i11, float f10, Function1 function1, int i12, Object obj) {
            if (obj == null) {
                if ((i12 & 4) != 0) {
                    f10 = 0.0f;
                }
                float f11 = f10;
                Function1 function12 = function1;
                if ((i12 & 8) != 0) {
                    function12 = PlaceableKt.access$getDefaultLayerBlock$p();
                }
                placementScope.placeWithLayer(placeable, i10, i11, f11, function12);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: placeWithLayer");
        }

        /* renamed from: placeWithLayer-aW-9-wM$default  reason: not valid java name */
        public static /* synthetic */ void m3380placeWithLayeraW9wM$default(PlacementScope placementScope, Placeable placeable, long j10, float f10, Function1 function1, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 2) != 0) {
                    f10 = 0.0f;
                }
                float f11 = f10;
                Function1 function12 = function1;
                if ((i10 & 4) != 0) {
                    function12 = PlaceableKt.access$getDefaultLayerBlock$p();
                }
                placementScope.m3386placeWithLayeraW9wM(placeable, j10, f11, function12);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: placeWithLayer-aW-9-wM");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @NotNull
        public abstract LayoutDirection getParentLayoutDirection();

        /* JADX INFO: Access modifiers changed from: protected */
        public abstract int getParentWidth();

        public final void place(@NotNull Placeable placeable, int i10, int i11, float f10) {
            Intrinsics.checkNotNullParameter(placeable, "<this>");
            long IntOffset = IntOffsetKt.IntOffset(i10, i11);
            long m3372getApparentToRealOffsetnOccac = placeable.m3372getApparentToRealOffsetnOccac();
            placeable.mo3336placeAtf8xVGno(IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(IntOffset) + IntOffset.m4167getXimpl(m3372getApparentToRealOffsetnOccac), IntOffset.m4168getYimpl(IntOffset) + IntOffset.m4168getYimpl(m3372getApparentToRealOffsetnOccac)), f10, null);
        }

        /* renamed from: place-70tqf50  reason: not valid java name */
        public final void m3381place70tqf50(@NotNull Placeable place, long j10, float f10) {
            Intrinsics.checkNotNullParameter(place, "$this$place");
            long m3372getApparentToRealOffsetnOccac = place.m3372getApparentToRealOffsetnOccac();
            place.mo3336placeAtf8xVGno(IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(j10) + IntOffset.m4167getXimpl(m3372getApparentToRealOffsetnOccac), IntOffset.m4168getYimpl(j10) + IntOffset.m4168getYimpl(m3372getApparentToRealOffsetnOccac)), f10, null);
        }

        /* renamed from: placeApparentToRealOffset-aW-9-wM$ui_release  reason: not valid java name */
        public final void m3382placeApparentToRealOffsetaW9wM$ui_release(@NotNull Placeable placeApparentToRealOffset, long j10, float f10, @Nullable Function1<? super GraphicsLayerScope, Unit> function1) {
            Intrinsics.checkNotNullParameter(placeApparentToRealOffset, "$this$placeApparentToRealOffset");
            long m3372getApparentToRealOffsetnOccac = placeApparentToRealOffset.m3372getApparentToRealOffsetnOccac();
            placeApparentToRealOffset.mo3336placeAtf8xVGno(IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(j10) + IntOffset.m4167getXimpl(m3372getApparentToRealOffsetnOccac), IntOffset.m4168getYimpl(j10) + IntOffset.m4168getYimpl(m3372getApparentToRealOffsetnOccac)), f10, function1);
        }

        /* renamed from: placeAutoMirrored-aW-9-wM$ui_release  reason: not valid java name */
        public final void m3383placeAutoMirroredaW9wM$ui_release(@NotNull Placeable placeAutoMirrored, long j10, float f10, @Nullable Function1<? super GraphicsLayerScope, Unit> function1) {
            Intrinsics.checkNotNullParameter(placeAutoMirrored, "$this$placeAutoMirrored");
            if (getParentLayoutDirection() == LayoutDirection.Ltr || getParentWidth() == 0) {
                long m3372getApparentToRealOffsetnOccac = placeAutoMirrored.m3372getApparentToRealOffsetnOccac();
                placeAutoMirrored.mo3336placeAtf8xVGno(IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(j10) + IntOffset.m4167getXimpl(m3372getApparentToRealOffsetnOccac), IntOffset.m4168getYimpl(j10) + IntOffset.m4168getYimpl(m3372getApparentToRealOffsetnOccac)), f10, function1);
                return;
            }
            long IntOffset = IntOffsetKt.IntOffset((getParentWidth() - IntSize.m4209getWidthimpl(placeAutoMirrored.measuredSize)) - IntOffset.m4167getXimpl(j10), IntOffset.m4168getYimpl(j10));
            long m3372getApparentToRealOffsetnOccac2 = placeAutoMirrored.m3372getApparentToRealOffsetnOccac();
            placeAutoMirrored.mo3336placeAtf8xVGno(IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(IntOffset) + IntOffset.m4167getXimpl(m3372getApparentToRealOffsetnOccac2), IntOffset.m4168getYimpl(IntOffset) + IntOffset.m4168getYimpl(m3372getApparentToRealOffsetnOccac2)), f10, function1);
        }

        public final void placeRelative(@NotNull Placeable placeable, int i10, int i11, float f10) {
            Intrinsics.checkNotNullParameter(placeable, "<this>");
            long IntOffset = IntOffsetKt.IntOffset(i10, i11);
            if (getParentLayoutDirection() == LayoutDirection.Ltr || getParentWidth() == 0) {
                long m3372getApparentToRealOffsetnOccac = placeable.m3372getApparentToRealOffsetnOccac();
                placeable.mo3336placeAtf8xVGno(IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(IntOffset) + IntOffset.m4167getXimpl(m3372getApparentToRealOffsetnOccac), IntOffset.m4168getYimpl(IntOffset) + IntOffset.m4168getYimpl(m3372getApparentToRealOffsetnOccac)), f10, null);
                return;
            }
            long IntOffset2 = IntOffsetKt.IntOffset((getParentWidth() - IntSize.m4209getWidthimpl(placeable.measuredSize)) - IntOffset.m4167getXimpl(IntOffset), IntOffset.m4168getYimpl(IntOffset));
            long m3372getApparentToRealOffsetnOccac2 = placeable.m3372getApparentToRealOffsetnOccac();
            placeable.mo3336placeAtf8xVGno(IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(IntOffset2) + IntOffset.m4167getXimpl(m3372getApparentToRealOffsetnOccac2), IntOffset.m4168getYimpl(IntOffset2) + IntOffset.m4168getYimpl(m3372getApparentToRealOffsetnOccac2)), f10, null);
        }

        /* renamed from: placeRelative-70tqf50  reason: not valid java name */
        public final void m3384placeRelative70tqf50(@NotNull Placeable placeRelative, long j10, float f10) {
            Intrinsics.checkNotNullParameter(placeRelative, "$this$placeRelative");
            if (getParentLayoutDirection() == LayoutDirection.Ltr || getParentWidth() == 0) {
                long m3372getApparentToRealOffsetnOccac = placeRelative.m3372getApparentToRealOffsetnOccac();
                placeRelative.mo3336placeAtf8xVGno(IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(j10) + IntOffset.m4167getXimpl(m3372getApparentToRealOffsetnOccac), IntOffset.m4168getYimpl(j10) + IntOffset.m4168getYimpl(m3372getApparentToRealOffsetnOccac)), f10, null);
                return;
            }
            long IntOffset = IntOffsetKt.IntOffset((getParentWidth() - IntSize.m4209getWidthimpl(placeRelative.measuredSize)) - IntOffset.m4167getXimpl(j10), IntOffset.m4168getYimpl(j10));
            long m3372getApparentToRealOffsetnOccac2 = placeRelative.m3372getApparentToRealOffsetnOccac();
            placeRelative.mo3336placeAtf8xVGno(IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(IntOffset) + IntOffset.m4167getXimpl(m3372getApparentToRealOffsetnOccac2), IntOffset.m4168getYimpl(IntOffset) + IntOffset.m4168getYimpl(m3372getApparentToRealOffsetnOccac2)), f10, null);
        }

        public final void placeRelativeWithLayer(@NotNull Placeable placeable, int i10, int i11, float f10, @NotNull Function1<? super GraphicsLayerScope, Unit> layerBlock) {
            Intrinsics.checkNotNullParameter(placeable, "<this>");
            Intrinsics.checkNotNullParameter(layerBlock, "layerBlock");
            long IntOffset = IntOffsetKt.IntOffset(i10, i11);
            if (getParentLayoutDirection() == LayoutDirection.Ltr || getParentWidth() == 0) {
                long m3372getApparentToRealOffsetnOccac = placeable.m3372getApparentToRealOffsetnOccac();
                placeable.mo3336placeAtf8xVGno(IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(IntOffset) + IntOffset.m4167getXimpl(m3372getApparentToRealOffsetnOccac), IntOffset.m4168getYimpl(IntOffset) + IntOffset.m4168getYimpl(m3372getApparentToRealOffsetnOccac)), f10, layerBlock);
                return;
            }
            long IntOffset2 = IntOffsetKt.IntOffset((getParentWidth() - IntSize.m4209getWidthimpl(placeable.measuredSize)) - IntOffset.m4167getXimpl(IntOffset), IntOffset.m4168getYimpl(IntOffset));
            long m3372getApparentToRealOffsetnOccac2 = placeable.m3372getApparentToRealOffsetnOccac();
            placeable.mo3336placeAtf8xVGno(IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(IntOffset2) + IntOffset.m4167getXimpl(m3372getApparentToRealOffsetnOccac2), IntOffset.m4168getYimpl(IntOffset2) + IntOffset.m4168getYimpl(m3372getApparentToRealOffsetnOccac2)), f10, layerBlock);
        }

        /* renamed from: placeRelativeWithLayer-aW-9-wM  reason: not valid java name */
        public final void m3385placeRelativeWithLayeraW9wM(@NotNull Placeable placeRelativeWithLayer, long j10, float f10, @NotNull Function1<? super GraphicsLayerScope, Unit> layerBlock) {
            Intrinsics.checkNotNullParameter(placeRelativeWithLayer, "$this$placeRelativeWithLayer");
            Intrinsics.checkNotNullParameter(layerBlock, "layerBlock");
            if (getParentLayoutDirection() == LayoutDirection.Ltr || getParentWidth() == 0) {
                long m3372getApparentToRealOffsetnOccac = placeRelativeWithLayer.m3372getApparentToRealOffsetnOccac();
                placeRelativeWithLayer.mo3336placeAtf8xVGno(IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(j10) + IntOffset.m4167getXimpl(m3372getApparentToRealOffsetnOccac), IntOffset.m4168getYimpl(j10) + IntOffset.m4168getYimpl(m3372getApparentToRealOffsetnOccac)), f10, layerBlock);
                return;
            }
            long IntOffset = IntOffsetKt.IntOffset((getParentWidth() - IntSize.m4209getWidthimpl(placeRelativeWithLayer.measuredSize)) - IntOffset.m4167getXimpl(j10), IntOffset.m4168getYimpl(j10));
            long m3372getApparentToRealOffsetnOccac2 = placeRelativeWithLayer.m3372getApparentToRealOffsetnOccac();
            placeRelativeWithLayer.mo3336placeAtf8xVGno(IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(IntOffset) + IntOffset.m4167getXimpl(m3372getApparentToRealOffsetnOccac2), IntOffset.m4168getYimpl(IntOffset) + IntOffset.m4168getYimpl(m3372getApparentToRealOffsetnOccac2)), f10, layerBlock);
        }

        public final void placeWithLayer(@NotNull Placeable placeable, int i10, int i11, float f10, @NotNull Function1<? super GraphicsLayerScope, Unit> layerBlock) {
            Intrinsics.checkNotNullParameter(placeable, "<this>");
            Intrinsics.checkNotNullParameter(layerBlock, "layerBlock");
            long IntOffset = IntOffsetKt.IntOffset(i10, i11);
            long m3372getApparentToRealOffsetnOccac = placeable.m3372getApparentToRealOffsetnOccac();
            placeable.mo3336placeAtf8xVGno(IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(IntOffset) + IntOffset.m4167getXimpl(m3372getApparentToRealOffsetnOccac), IntOffset.m4168getYimpl(IntOffset) + IntOffset.m4168getYimpl(m3372getApparentToRealOffsetnOccac)), f10, layerBlock);
        }

        /* renamed from: placeWithLayer-aW-9-wM  reason: not valid java name */
        public final void m3386placeWithLayeraW9wM(@NotNull Placeable placeWithLayer, long j10, float f10, @NotNull Function1<? super GraphicsLayerScope, Unit> layerBlock) {
            Intrinsics.checkNotNullParameter(placeWithLayer, "$this$placeWithLayer");
            Intrinsics.checkNotNullParameter(layerBlock, "layerBlock");
            long m3372getApparentToRealOffsetnOccac = placeWithLayer.m3372getApparentToRealOffsetnOccac();
            placeWithLayer.mo3336placeAtf8xVGno(IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(j10) + IntOffset.m4167getXimpl(m3372getApparentToRealOffsetnOccac), IntOffset.m4168getYimpl(j10) + IntOffset.m4168getYimpl(m3372getApparentToRealOffsetnOccac)), f10, layerBlock);
        }
    }

    private final void recalculateWidthAndHeight() {
        this.width = e.n(IntSize.m4209getWidthimpl(this.measuredSize), Constraints.m4007getMinWidthimpl(this.measurementConstraints), Constraints.m4005getMaxWidthimpl(this.measurementConstraints));
        this.height = e.n(IntSize.m4208getHeightimpl(this.measuredSize), Constraints.m4006getMinHeightimpl(this.measurementConstraints), Constraints.m4004getMaxHeightimpl(this.measurementConstraints));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: getApparentToRealOffset-nOcc-ac  reason: not valid java name */
    public final long m3372getApparentToRealOffsetnOccac() {
        return IntOffsetKt.IntOffset((this.width - IntSize.m4209getWidthimpl(this.measuredSize)) / 2, (this.height - IntSize.m4208getHeightimpl(this.measuredSize)) / 2);
    }

    public final int getHeight() {
        return this.height;
    }

    @Override // androidx.compose.ui.layout.Measured
    public int getMeasuredHeight() {
        return IntSize.m4208getHeightimpl(this.measuredSize);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: getMeasuredSize-YbymL2g  reason: not valid java name */
    public final long m3373getMeasuredSizeYbymL2g() {
        return this.measuredSize;
    }

    @Override // androidx.compose.ui.layout.Measured
    public int getMeasuredWidth() {
        return IntSize.m4209getWidthimpl(this.measuredSize);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: getMeasurementConstraints-msEJaDk  reason: not valid java name */
    public final long m3374getMeasurementConstraintsmsEJaDk() {
        return this.measurementConstraints;
    }

    public final int getWidth() {
        return this.width;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: placeAt-f8xVGno */
    public abstract void mo3336placeAtf8xVGno(long j10, float f10, @Nullable Function1<? super GraphicsLayerScope, Unit> function1);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: setMeasuredSize-ozmzZPI  reason: not valid java name */
    public final void m3375setMeasuredSizeozmzZPI(long j10) {
        if (!IntSize.m4207equalsimpl0(this.measuredSize, j10)) {
            this.measuredSize = j10;
            recalculateWidthAndHeight();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: setMeasurementConstraints-BRTryo0  reason: not valid java name */
    public final void m3376setMeasurementConstraintsBRTryo0(long j10) {
        if (!Constraints.m3998equalsimpl0(this.measurementConstraints, j10)) {
            this.measurementConstraints = j10;
            recalculateWidthAndHeight();
        }
    }
}
