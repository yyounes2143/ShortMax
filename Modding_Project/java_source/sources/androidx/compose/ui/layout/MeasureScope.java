package androidx.compose.ui.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.DpRect;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: MeasureScope.kt */
@Metadata
/* loaded from: classes.dex */
public interface MeasureScope extends IntrinsicMeasureScope {

    /* compiled from: MeasureScope.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        @NotNull
        public static MeasureResult layout(@NotNull MeasureScope measureScope, int i10, int i11, @NotNull Map<AlignmentLine, Integer> alignmentLines, @NotNull Function1<? super Placeable.PlacementScope, Unit> placementBlock) {
            Intrinsics.checkNotNullParameter(alignmentLines, "alignmentLines");
            Intrinsics.checkNotNullParameter(placementBlock, "placementBlock");
            return MeasureScope.super.layout(i10, i11, alignmentLines, placementBlock);
        }

        @Stable
        @Deprecated
        /* renamed from: roundToPx--R2X_6o  reason: not valid java name */
        public static int m3357roundToPxR2X_6o(@NotNull MeasureScope measureScope, long j10) {
            return MeasureScope.super.mo335roundToPxR2X_6o(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: roundToPx-0680j_4  reason: not valid java name */
        public static int m3358roundToPx0680j_4(@NotNull MeasureScope measureScope, float f10) {
            return MeasureScope.super.mo336roundToPx0680j_4(f10);
        }

        @Stable
        @Deprecated
        /* renamed from: toDp-GaN1DYA  reason: not valid java name */
        public static float m3359toDpGaN1DYA(@NotNull MeasureScope measureScope, long j10) {
            return MeasureScope.super.mo337toDpGaN1DYA(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: toDp-u2uoSUM  reason: not valid java name */
        public static float m3360toDpu2uoSUM(@NotNull MeasureScope measureScope, float f10) {
            return MeasureScope.super.mo338toDpu2uoSUM(f10);
        }

        @Stable
        @Deprecated
        /* renamed from: toDpSize-k-rfVVM  reason: not valid java name */
        public static long m3362toDpSizekrfVVM(@NotNull MeasureScope measureScope, long j10) {
            return MeasureScope.super.mo340toDpSizekrfVVM(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: toPx--R2X_6o  reason: not valid java name */
        public static float m3363toPxR2X_6o(@NotNull MeasureScope measureScope, long j10) {
            return MeasureScope.super.mo341toPxR2X_6o(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: toPx-0680j_4  reason: not valid java name */
        public static float m3364toPx0680j_4(@NotNull MeasureScope measureScope, float f10) {
            return MeasureScope.super.mo342toPx0680j_4(f10);
        }

        @Stable
        @Deprecated
        @NotNull
        public static Rect toRect(@NotNull MeasureScope measureScope, @NotNull DpRect receiver) {
            Intrinsics.checkNotNullParameter(receiver, "receiver");
            return MeasureScope.super.toRect(receiver);
        }

        @Stable
        @Deprecated
        /* renamed from: toSize-XkaWNTQ  reason: not valid java name */
        public static long m3365toSizeXkaWNTQ(@NotNull MeasureScope measureScope, long j10) {
            return MeasureScope.super.mo343toSizeXkaWNTQ(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: toSp-0xMU5do  reason: not valid java name */
        public static long m3366toSp0xMU5do(@NotNull MeasureScope measureScope, float f10) {
            return MeasureScope.super.mo344toSp0xMU5do(f10);
        }

        @Stable
        @Deprecated
        /* renamed from: toSp-kPz2Gy4  reason: not valid java name */
        public static long m3367toSpkPz2Gy4(@NotNull MeasureScope measureScope, float f10) {
            return MeasureScope.super.mo345toSpkPz2Gy4(f10);
        }

        @Stable
        @Deprecated
        /* renamed from: toDp-u2uoSUM  reason: not valid java name */
        public static float m3361toDpu2uoSUM(@NotNull MeasureScope measureScope, int i10) {
            return MeasureScope.super.mo339toDpu2uoSUM(i10);
        }

        @Stable
        @Deprecated
        /* renamed from: toSp-kPz2Gy4  reason: not valid java name */
        public static long m3368toSpkPz2Gy4(@NotNull MeasureScope measureScope, int i10) {
            return MeasureScope.super.mo346toSpkPz2Gy4(i10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ MeasureResult layout$default(MeasureScope measureScope, int i10, int i11, Map map, Function1 function1, int i12, Object obj) {
        if (obj == null) {
            if ((i12 & 4) != 0) {
                map = p0.i();
            }
            return measureScope.layout(i10, i11, map, function1);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: layout");
    }

    @NotNull
    default MeasureResult layout(final int i10, final int i11, @NotNull final Map<AlignmentLine, Integer> alignmentLines, @NotNull final Function1<? super Placeable.PlacementScope, Unit> placementBlock) {
        Intrinsics.checkNotNullParameter(alignmentLines, "alignmentLines");
        Intrinsics.checkNotNullParameter(placementBlock, "placementBlock");
        return new MeasureResult(i10, i11, alignmentLines, this, placementBlock) { // from class: androidx.compose.ui.layout.MeasureScope$layout$1
            final /* synthetic */ Function1<Placeable.PlacementScope, Unit> $placementBlock;
            final /* synthetic */ int $width;
            @NotNull
            private final Map<AlignmentLine, Integer> alignmentLines;
            private final int height;
            final /* synthetic */ MeasureScope this$0;
            private final int width;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: Multi-variable type inference failed */
            {
                this.$width = i10;
                this.this$0 = this;
                this.$placementBlock = placementBlock;
                this.width = i10;
                this.height = i11;
                this.alignmentLines = alignmentLines;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            @NotNull
            public Map<AlignmentLine, Integer> getAlignmentLines() {
                return this.alignmentLines;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public int getHeight() {
                return this.height;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public int getWidth() {
                return this.width;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public void placeChildren() {
                Placeable.PlacementScope.Companion companion = Placeable.PlacementScope.Companion;
                int i12 = this.$width;
                LayoutDirection layoutDirection = this.this$0.getLayoutDirection();
                Function1<Placeable.PlacementScope, Unit> function1 = this.$placementBlock;
                int parentWidth = companion.getParentWidth();
                LayoutDirection parentLayoutDirection = companion.getParentLayoutDirection();
                Placeable.PlacementScope.parentWidth = i12;
                Placeable.PlacementScope.parentLayoutDirection = layoutDirection;
                function1.invoke(companion);
                Placeable.PlacementScope.parentWidth = parentWidth;
                Placeable.PlacementScope.parentLayoutDirection = parentLayoutDirection;
            }
        };
    }
}
