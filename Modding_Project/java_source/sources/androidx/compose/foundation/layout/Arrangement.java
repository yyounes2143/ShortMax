package androidx.compose.foundation.layout;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Arrangement.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class Arrangement {
    @NotNull
    public static final Arrangement INSTANCE = new Arrangement();
    @NotNull
    private static final Horizontal Start = new Horizontal() { // from class: androidx.compose.foundation.layout.Arrangement$Start$1
        @Override // androidx.compose.foundation.layout.Arrangement.Horizontal
        public void arrange(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull LayoutDirection layoutDirection, @NotNull int[] outPositions) {
            Intrinsics.checkNotNullParameter(density, "<this>");
            Intrinsics.checkNotNullParameter(sizes, "sizes");
            Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
            Intrinsics.checkNotNullParameter(outPositions, "outPositions");
            if (layoutDirection == LayoutDirection.Ltr) {
                Arrangement.INSTANCE.placeLeftOrTop$foundation_layout_release(sizes, outPositions, false);
            } else {
                Arrangement.INSTANCE.placeRightOrBottom$foundation_layout_release(i10, sizes, outPositions, true);
            }
        }

        @NotNull
        public String toString() {
            return "Arrangement#Start";
        }
    };
    @NotNull
    private static final Horizontal End = new Horizontal() { // from class: androidx.compose.foundation.layout.Arrangement$End$1
        @Override // androidx.compose.foundation.layout.Arrangement.Horizontal
        public void arrange(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull LayoutDirection layoutDirection, @NotNull int[] outPositions) {
            Intrinsics.checkNotNullParameter(density, "<this>");
            Intrinsics.checkNotNullParameter(sizes, "sizes");
            Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
            Intrinsics.checkNotNullParameter(outPositions, "outPositions");
            if (layoutDirection == LayoutDirection.Ltr) {
                Arrangement.INSTANCE.placeRightOrBottom$foundation_layout_release(i10, sizes, outPositions, false);
            } else {
                Arrangement.INSTANCE.placeLeftOrTop$foundation_layout_release(sizes, outPositions, true);
            }
        }

        @NotNull
        public String toString() {
            return "Arrangement#End";
        }
    };
    @NotNull
    private static final Vertical Top = new Vertical() { // from class: androidx.compose.foundation.layout.Arrangement$Top$1
        @Override // androidx.compose.foundation.layout.Arrangement.Vertical
        public void arrange(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull int[] outPositions) {
            Intrinsics.checkNotNullParameter(density, "<this>");
            Intrinsics.checkNotNullParameter(sizes, "sizes");
            Intrinsics.checkNotNullParameter(outPositions, "outPositions");
            Arrangement.INSTANCE.placeLeftOrTop$foundation_layout_release(sizes, outPositions, false);
        }

        @NotNull
        public String toString() {
            return "Arrangement#Top";
        }
    };
    @NotNull
    private static final Vertical Bottom = new Vertical() { // from class: androidx.compose.foundation.layout.Arrangement$Bottom$1
        @Override // androidx.compose.foundation.layout.Arrangement.Vertical
        public void arrange(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull int[] outPositions) {
            Intrinsics.checkNotNullParameter(density, "<this>");
            Intrinsics.checkNotNullParameter(sizes, "sizes");
            Intrinsics.checkNotNullParameter(outPositions, "outPositions");
            Arrangement.INSTANCE.placeRightOrBottom$foundation_layout_release(i10, sizes, outPositions, false);
        }

        @NotNull
        public String toString() {
            return "Arrangement#Bottom";
        }
    };
    @NotNull
    private static final HorizontalOrVertical Center = new HorizontalOrVertical() { // from class: androidx.compose.foundation.layout.Arrangement$Center$1
        private final float spacing = Dp.m4049constructorimpl(0);

        @Override // androidx.compose.foundation.layout.Arrangement.Horizontal
        public void arrange(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull LayoutDirection layoutDirection, @NotNull int[] outPositions) {
            Intrinsics.checkNotNullParameter(density, "<this>");
            Intrinsics.checkNotNullParameter(sizes, "sizes");
            Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
            Intrinsics.checkNotNullParameter(outPositions, "outPositions");
            if (layoutDirection == LayoutDirection.Ltr) {
                Arrangement.INSTANCE.placeCenter$foundation_layout_release(i10, sizes, outPositions, false);
            } else {
                Arrangement.INSTANCE.placeCenter$foundation_layout_release(i10, sizes, outPositions, true);
            }
        }

        @Override // androidx.compose.foundation.layout.Arrangement.HorizontalOrVertical, androidx.compose.foundation.layout.Arrangement.Horizontal, androidx.compose.foundation.layout.Arrangement.Vertical
        /* renamed from: getSpacing-D9Ej5fM  reason: not valid java name */
        public float mo398getSpacingD9Ej5fM() {
            return this.spacing;
        }

        @NotNull
        public String toString() {
            return "Arrangement#Center";
        }

        @Override // androidx.compose.foundation.layout.Arrangement.Vertical
        public void arrange(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull int[] outPositions) {
            Intrinsics.checkNotNullParameter(density, "<this>");
            Intrinsics.checkNotNullParameter(sizes, "sizes");
            Intrinsics.checkNotNullParameter(outPositions, "outPositions");
            Arrangement.INSTANCE.placeCenter$foundation_layout_release(i10, sizes, outPositions, false);
        }
    };
    @NotNull
    private static final HorizontalOrVertical SpaceEvenly = new HorizontalOrVertical() { // from class: androidx.compose.foundation.layout.Arrangement$SpaceEvenly$1
        private final float spacing = Dp.m4049constructorimpl(0);

        @Override // androidx.compose.foundation.layout.Arrangement.Horizontal
        public void arrange(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull LayoutDirection layoutDirection, @NotNull int[] outPositions) {
            Intrinsics.checkNotNullParameter(density, "<this>");
            Intrinsics.checkNotNullParameter(sizes, "sizes");
            Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
            Intrinsics.checkNotNullParameter(outPositions, "outPositions");
            if (layoutDirection == LayoutDirection.Ltr) {
                Arrangement.INSTANCE.placeSpaceEvenly$foundation_layout_release(i10, sizes, outPositions, false);
            } else {
                Arrangement.INSTANCE.placeSpaceEvenly$foundation_layout_release(i10, sizes, outPositions, true);
            }
        }

        @Override // androidx.compose.foundation.layout.Arrangement.HorizontalOrVertical, androidx.compose.foundation.layout.Arrangement.Horizontal, androidx.compose.foundation.layout.Arrangement.Vertical
        /* renamed from: getSpacing-D9Ej5fM */
        public float mo398getSpacingD9Ej5fM() {
            return this.spacing;
        }

        @NotNull
        public String toString() {
            return "Arrangement#SpaceEvenly";
        }

        @Override // androidx.compose.foundation.layout.Arrangement.Vertical
        public void arrange(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull int[] outPositions) {
            Intrinsics.checkNotNullParameter(density, "<this>");
            Intrinsics.checkNotNullParameter(sizes, "sizes");
            Intrinsics.checkNotNullParameter(outPositions, "outPositions");
            Arrangement.INSTANCE.placeSpaceEvenly$foundation_layout_release(i10, sizes, outPositions, false);
        }
    };
    @NotNull
    private static final HorizontalOrVertical SpaceBetween = new HorizontalOrVertical() { // from class: androidx.compose.foundation.layout.Arrangement$SpaceBetween$1
        private final float spacing = Dp.m4049constructorimpl(0);

        @Override // androidx.compose.foundation.layout.Arrangement.Horizontal
        public void arrange(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull LayoutDirection layoutDirection, @NotNull int[] outPositions) {
            Intrinsics.checkNotNullParameter(density, "<this>");
            Intrinsics.checkNotNullParameter(sizes, "sizes");
            Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
            Intrinsics.checkNotNullParameter(outPositions, "outPositions");
            if (layoutDirection == LayoutDirection.Ltr) {
                Arrangement.INSTANCE.placeSpaceBetween$foundation_layout_release(i10, sizes, outPositions, false);
            } else {
                Arrangement.INSTANCE.placeSpaceBetween$foundation_layout_release(i10, sizes, outPositions, true);
            }
        }

        @Override // androidx.compose.foundation.layout.Arrangement.HorizontalOrVertical, androidx.compose.foundation.layout.Arrangement.Horizontal, androidx.compose.foundation.layout.Arrangement.Vertical
        /* renamed from: getSpacing-D9Ej5fM */
        public float mo398getSpacingD9Ej5fM() {
            return this.spacing;
        }

        @NotNull
        public String toString() {
            return "Arrangement#SpaceBetween";
        }

        @Override // androidx.compose.foundation.layout.Arrangement.Vertical
        public void arrange(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull int[] outPositions) {
            Intrinsics.checkNotNullParameter(density, "<this>");
            Intrinsics.checkNotNullParameter(sizes, "sizes");
            Intrinsics.checkNotNullParameter(outPositions, "outPositions");
            Arrangement.INSTANCE.placeSpaceBetween$foundation_layout_release(i10, sizes, outPositions, false);
        }
    };
    @NotNull
    private static final HorizontalOrVertical SpaceAround = new HorizontalOrVertical() { // from class: androidx.compose.foundation.layout.Arrangement$SpaceAround$1
        private final float spacing = Dp.m4049constructorimpl(0);

        @Override // androidx.compose.foundation.layout.Arrangement.Horizontal
        public void arrange(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull LayoutDirection layoutDirection, @NotNull int[] outPositions) {
            Intrinsics.checkNotNullParameter(density, "<this>");
            Intrinsics.checkNotNullParameter(sizes, "sizes");
            Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
            Intrinsics.checkNotNullParameter(outPositions, "outPositions");
            if (layoutDirection == LayoutDirection.Ltr) {
                Arrangement.INSTANCE.placeSpaceAround$foundation_layout_release(i10, sizes, outPositions, false);
            } else {
                Arrangement.INSTANCE.placeSpaceAround$foundation_layout_release(i10, sizes, outPositions, true);
            }
        }

        @Override // androidx.compose.foundation.layout.Arrangement.HorizontalOrVertical, androidx.compose.foundation.layout.Arrangement.Horizontal, androidx.compose.foundation.layout.Arrangement.Vertical
        /* renamed from: getSpacing-D9Ej5fM */
        public float mo398getSpacingD9Ej5fM() {
            return this.spacing;
        }

        @NotNull
        public String toString() {
            return "Arrangement#SpaceAround";
        }

        @Override // androidx.compose.foundation.layout.Arrangement.Vertical
        public void arrange(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull int[] outPositions) {
            Intrinsics.checkNotNullParameter(density, "<this>");
            Intrinsics.checkNotNullParameter(sizes, "sizes");
            Intrinsics.checkNotNullParameter(outPositions, "outPositions");
            Arrangement.INSTANCE.placeSpaceAround$foundation_layout_release(i10, sizes, outPositions, false);
        }
    };

    /* compiled from: Arrangement.kt */
    @Immutable
    @Metadata
    /* loaded from: classes.dex */
    public static final class Absolute {
        @NotNull
        public static final Absolute INSTANCE = new Absolute();
        @NotNull
        private static final Horizontal Left = new Horizontal() { // from class: androidx.compose.foundation.layout.Arrangement$Absolute$Left$1
            @Override // androidx.compose.foundation.layout.Arrangement.Horizontal
            public void arrange(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull LayoutDirection layoutDirection, @NotNull int[] outPositions) {
                Intrinsics.checkNotNullParameter(density, "<this>");
                Intrinsics.checkNotNullParameter(sizes, "sizes");
                Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
                Intrinsics.checkNotNullParameter(outPositions, "outPositions");
                Arrangement.INSTANCE.placeLeftOrTop$foundation_layout_release(sizes, outPositions, false);
            }

            @NotNull
            public String toString() {
                return "AbsoluteArrangement#Left";
            }
        };
        @NotNull
        private static final Horizontal Center = new Horizontal() { // from class: androidx.compose.foundation.layout.Arrangement$Absolute$Center$1
            @Override // androidx.compose.foundation.layout.Arrangement.Horizontal
            public void arrange(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull LayoutDirection layoutDirection, @NotNull int[] outPositions) {
                Intrinsics.checkNotNullParameter(density, "<this>");
                Intrinsics.checkNotNullParameter(sizes, "sizes");
                Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
                Intrinsics.checkNotNullParameter(outPositions, "outPositions");
                Arrangement.INSTANCE.placeCenter$foundation_layout_release(i10, sizes, outPositions, false);
            }

            @NotNull
            public String toString() {
                return "AbsoluteArrangement#Center";
            }
        };
        @NotNull
        private static final Horizontal Right = new Horizontal() { // from class: androidx.compose.foundation.layout.Arrangement$Absolute$Right$1
            @Override // androidx.compose.foundation.layout.Arrangement.Horizontal
            public void arrange(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull LayoutDirection layoutDirection, @NotNull int[] outPositions) {
                Intrinsics.checkNotNullParameter(density, "<this>");
                Intrinsics.checkNotNullParameter(sizes, "sizes");
                Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
                Intrinsics.checkNotNullParameter(outPositions, "outPositions");
                Arrangement.INSTANCE.placeRightOrBottom$foundation_layout_release(i10, sizes, outPositions, false);
            }

            @NotNull
            public String toString() {
                return "AbsoluteArrangement#Right";
            }
        };
        @NotNull
        private static final Horizontal SpaceBetween = new Horizontal() { // from class: androidx.compose.foundation.layout.Arrangement$Absolute$SpaceBetween$1
            @Override // androidx.compose.foundation.layout.Arrangement.Horizontal
            public void arrange(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull LayoutDirection layoutDirection, @NotNull int[] outPositions) {
                Intrinsics.checkNotNullParameter(density, "<this>");
                Intrinsics.checkNotNullParameter(sizes, "sizes");
                Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
                Intrinsics.checkNotNullParameter(outPositions, "outPositions");
                Arrangement.INSTANCE.placeSpaceBetween$foundation_layout_release(i10, sizes, outPositions, false);
            }

            @NotNull
            public String toString() {
                return "AbsoluteArrangement#SpaceBetween";
            }
        };
        @NotNull
        private static final Horizontal SpaceEvenly = new Horizontal() { // from class: androidx.compose.foundation.layout.Arrangement$Absolute$SpaceEvenly$1
            @Override // androidx.compose.foundation.layout.Arrangement.Horizontal
            public void arrange(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull LayoutDirection layoutDirection, @NotNull int[] outPositions) {
                Intrinsics.checkNotNullParameter(density, "<this>");
                Intrinsics.checkNotNullParameter(sizes, "sizes");
                Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
                Intrinsics.checkNotNullParameter(outPositions, "outPositions");
                Arrangement.INSTANCE.placeSpaceEvenly$foundation_layout_release(i10, sizes, outPositions, false);
            }

            @NotNull
            public String toString() {
                return "AbsoluteArrangement#SpaceEvenly";
            }
        };
        @NotNull
        private static final Horizontal SpaceAround = new Horizontal() { // from class: androidx.compose.foundation.layout.Arrangement$Absolute$SpaceAround$1
            @Override // androidx.compose.foundation.layout.Arrangement.Horizontal
            public void arrange(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull LayoutDirection layoutDirection, @NotNull int[] outPositions) {
                Intrinsics.checkNotNullParameter(density, "<this>");
                Intrinsics.checkNotNullParameter(sizes, "sizes");
                Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
                Intrinsics.checkNotNullParameter(outPositions, "outPositions");
                Arrangement.INSTANCE.placeSpaceAround$foundation_layout_release(i10, sizes, outPositions, false);
            }

            @NotNull
            public String toString() {
                return "AbsoluteArrangement#SpaceAround";
            }
        };

        private Absolute() {
        }

        @Stable
        @NotNull
        public final Horizontal aligned(@NotNull final Alignment.Horizontal alignment) {
            Intrinsics.checkNotNullParameter(alignment, "alignment");
            return new SpacedAligned(Dp.m4049constructorimpl(0), false, new Function2<Integer, LayoutDirection, Integer>() { // from class: androidx.compose.foundation.layout.Arrangement$Absolute$aligned$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(Integer num, LayoutDirection layoutDirection) {
                    return invoke(num.intValue(), layoutDirection);
                }

                @NotNull
                public final Integer invoke(int i10, @NotNull LayoutDirection layoutDirection) {
                    Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
                    return Integer.valueOf(Alignment.Horizontal.this.align(0, i10, layoutDirection));
                }
            }, null);
        }

        @NotNull
        public final Horizontal getCenter() {
            return Center;
        }

        @NotNull
        public final Horizontal getLeft() {
            return Left;
        }

        @NotNull
        public final Horizontal getRight() {
            return Right;
        }

        @NotNull
        public final Horizontal getSpaceAround() {
            return SpaceAround;
        }

        @NotNull
        public final Horizontal getSpaceBetween() {
            return SpaceBetween;
        }

        @NotNull
        public final Horizontal getSpaceEvenly() {
            return SpaceEvenly;
        }

        @Stable
        @NotNull
        /* renamed from: spacedBy-0680j_4  reason: not valid java name */
        public final HorizontalOrVertical m395spacedBy0680j_4(float f10) {
            return new SpacedAligned(f10, false, null, null);
        }

        @Stable
        @NotNull
        /* renamed from: spacedBy-D5KLDUw  reason: not valid java name */
        public final Horizontal m396spacedByD5KLDUw(float f10, @NotNull final Alignment.Horizontal alignment) {
            Intrinsics.checkNotNullParameter(alignment, "alignment");
            return new SpacedAligned(f10, false, new Function2<Integer, LayoutDirection, Integer>() { // from class: androidx.compose.foundation.layout.Arrangement$Absolute$spacedBy$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(Integer num, LayoutDirection layoutDirection) {
                    return invoke(num.intValue(), layoutDirection);
                }

                @NotNull
                public final Integer invoke(int i10, @NotNull LayoutDirection layoutDirection) {
                    Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
                    return Integer.valueOf(Alignment.Horizontal.this.align(0, i10, layoutDirection));
                }
            }, null);
        }

        @Stable
        @NotNull
        /* renamed from: spacedBy-D5KLDUw  reason: not valid java name */
        public final Vertical m397spacedByD5KLDUw(float f10, @NotNull final Alignment.Vertical alignment) {
            Intrinsics.checkNotNullParameter(alignment, "alignment");
            return new SpacedAligned(f10, false, new Function2<Integer, LayoutDirection, Integer>() { // from class: androidx.compose.foundation.layout.Arrangement$Absolute$spacedBy$2
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(2);
                }

                @NotNull
                public final Integer invoke(int i10, @NotNull LayoutDirection layoutDirection) {
                    Intrinsics.checkNotNullParameter(layoutDirection, "<anonymous parameter 1>");
                    return Integer.valueOf(Alignment.Vertical.this.align(0, i10));
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(Integer num, LayoutDirection layoutDirection) {
                    return invoke(num.intValue(), layoutDirection);
                }
            }, null);
        }

        @Stable
        public static /* synthetic */ void getCenter$annotations() {
        }

        @Stable
        public static /* synthetic */ void getLeft$annotations() {
        }

        @Stable
        public static /* synthetic */ void getRight$annotations() {
        }

        @Stable
        public static /* synthetic */ void getSpaceAround$annotations() {
        }

        @Stable
        public static /* synthetic */ void getSpaceBetween$annotations() {
        }

        @Stable
        public static /* synthetic */ void getSpaceEvenly$annotations() {
        }
    }

    /* compiled from: Arrangement.kt */
    @Metadata
    @Stable
    /* loaded from: classes.dex */
    public interface Horizontal {

        /* compiled from: Arrangement.kt */
        @Metadata
        /* loaded from: classes.dex */
        public static final class DefaultImpls {
            @Deprecated
            /* renamed from: getSpacing-D9Ej5fM  reason: not valid java name */
            public static float m400getSpacingD9Ej5fM(@NotNull Horizontal horizontal) {
                return Horizontal.super.mo398getSpacingD9Ej5fM();
            }
        }

        void arrange(@NotNull Density density, int i10, @NotNull int[] iArr, @NotNull LayoutDirection layoutDirection, @NotNull int[] iArr2);

        /* renamed from: getSpacing-D9Ej5fM */
        default float mo398getSpacingD9Ej5fM() {
            return Dp.m4049constructorimpl(0);
        }
    }

    /* compiled from: Arrangement.kt */
    @Metadata
    @Stable
    /* loaded from: classes.dex */
    public interface HorizontalOrVertical extends Horizontal, Vertical {

        /* compiled from: Arrangement.kt */
        @Metadata
        /* loaded from: classes.dex */
        public static final class DefaultImpls {
            @Deprecated
            /* renamed from: getSpacing-D9Ej5fM  reason: not valid java name */
            public static float m402getSpacingD9Ej5fM(@NotNull HorizontalOrVertical horizontalOrVertical) {
                return HorizontalOrVertical.super.mo398getSpacingD9Ej5fM();
            }
        }

        @Override // androidx.compose.foundation.layout.Arrangement.Horizontal, androidx.compose.foundation.layout.Arrangement.Vertical
        /* renamed from: getSpacing-D9Ej5fM */
        default float mo398getSpacingD9Ej5fM() {
            return Dp.m4049constructorimpl(0);
        }
    }

    /* compiled from: Arrangement.kt */
    @Immutable
    @Metadata
    /* loaded from: classes.dex */
    public static final class SpacedAligned implements HorizontalOrVertical {
        @Nullable
        private final Function2<Integer, LayoutDirection, Integer> alignment;
        private final boolean rtlMirror;
        private final float space;
        private final float spacing;

        public /* synthetic */ SpacedAligned(float f10, boolean z10, Function2 function2, DefaultConstructorMarker defaultConstructorMarker) {
            this(f10, z10, function2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: copy-8Feqmps$default  reason: not valid java name */
        public static /* synthetic */ SpacedAligned m403copy8Feqmps$default(SpacedAligned spacedAligned, float f10, boolean z10, Function2 function2, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                f10 = spacedAligned.space;
            }
            if ((i10 & 2) != 0) {
                z10 = spacedAligned.rtlMirror;
            }
            if ((i10 & 4) != 0) {
                function2 = spacedAligned.alignment;
            }
            return spacedAligned.m405copy8Feqmps(f10, z10, function2);
        }

        @Override // androidx.compose.foundation.layout.Arrangement.Horizontal
        public void arrange(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull LayoutDirection layoutDirection, @NotNull int[] outPositions) {
            int i11;
            int i12;
            Intrinsics.checkNotNullParameter(density, "<this>");
            Intrinsics.checkNotNullParameter(sizes, "sizes");
            Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
            Intrinsics.checkNotNullParameter(outPositions, "outPositions");
            if (sizes.length == 0) {
                return;
            }
            int mo336roundToPx0680j_4 = density.mo336roundToPx0680j_4(this.space);
            boolean z10 = this.rtlMirror && layoutDirection == LayoutDirection.Rtl;
            Arrangement arrangement = Arrangement.INSTANCE;
            if (!z10) {
                int length = sizes.length;
                int i13 = 0;
                i11 = 0;
                i12 = 0;
                int i14 = 0;
                while (i13 < length) {
                    int i15 = sizes[i13];
                    int min = Math.min(i11, i10 - i15);
                    outPositions[i14] = min;
                    int min2 = Math.min(mo336roundToPx0680j_4, (i10 - min) - i15);
                    int i16 = outPositions[i14] + i15 + min2;
                    i13++;
                    i14++;
                    i12 = min2;
                    i11 = i16;
                }
            } else {
                int length2 = sizes.length - 1;
                i11 = 0;
                i12 = 0;
                while (-1 < length2) {
                    int i17 = sizes[length2];
                    int min3 = Math.min(i11, i10 - i17);
                    outPositions[length2] = min3;
                    int min4 = Math.min(mo336roundToPx0680j_4, (i10 - min3) - i17);
                    length2--;
                    i12 = min4;
                    i11 = outPositions[length2] + i17 + min4;
                }
            }
            int i18 = i11 - i12;
            Function2<Integer, LayoutDirection, Integer> function2 = this.alignment;
            if (function2 == null || i18 >= i10) {
                return;
            }
            int intValue = function2.invoke(Integer.valueOf(i10 - i18), layoutDirection).intValue();
            int length3 = outPositions.length;
            for (int i19 = 0; i19 < length3; i19++) {
                outPositions[i19] = outPositions[i19] + intValue;
            }
        }

        /* renamed from: component1-D9Ej5fM  reason: not valid java name */
        public final float m404component1D9Ej5fM() {
            return this.space;
        }

        public final boolean component2() {
            return this.rtlMirror;
        }

        @Nullable
        public final Function2<Integer, LayoutDirection, Integer> component3() {
            return this.alignment;
        }

        @NotNull
        /* renamed from: copy-8Feqmps  reason: not valid java name */
        public final SpacedAligned m405copy8Feqmps(float f10, boolean z10, @Nullable Function2<? super Integer, ? super LayoutDirection, Integer> function2) {
            return new SpacedAligned(f10, z10, function2, null);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SpacedAligned)) {
                return false;
            }
            SpacedAligned spacedAligned = (SpacedAligned) obj;
            if (Dp.m4054equalsimpl0(this.space, spacedAligned.space) && this.rtlMirror == spacedAligned.rtlMirror && Intrinsics.areEqual(this.alignment, spacedAligned.alignment)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final Function2<Integer, LayoutDirection, Integer> getAlignment() {
            return this.alignment;
        }

        public final boolean getRtlMirror() {
            return this.rtlMirror;
        }

        /* renamed from: getSpace-D9Ej5fM  reason: not valid java name */
        public final float m406getSpaceD9Ej5fM() {
            return this.space;
        }

        @Override // androidx.compose.foundation.layout.Arrangement.HorizontalOrVertical, androidx.compose.foundation.layout.Arrangement.Horizontal, androidx.compose.foundation.layout.Arrangement.Vertical
        /* renamed from: getSpacing-D9Ej5fM */
        public float mo398getSpacingD9Ej5fM() {
            return this.spacing;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            int hashCode;
            int m4055hashCodeimpl = Dp.m4055hashCodeimpl(this.space) * 31;
            boolean z10 = this.rtlMirror;
            int i10 = z10;
            if (z10 != 0) {
                i10 = 1;
            }
            int i11 = (m4055hashCodeimpl + i10) * 31;
            Function2<Integer, LayoutDirection, Integer> function2 = this.alignment;
            if (function2 == null) {
                hashCode = 0;
            } else {
                hashCode = function2.hashCode();
            }
            return i11 + hashCode;
        }

        @NotNull
        public String toString() {
            String str;
            StringBuilder sb2 = new StringBuilder();
            if (this.rtlMirror) {
                str = "";
            } else {
                str = "Absolute";
            }
            sb2.append(str);
            sb2.append("Arrangement#spacedAligned(");
            sb2.append((Object) Dp.m4060toStringimpl(this.space));
            sb2.append(", ");
            sb2.append(this.alignment);
            sb2.append(')');
            return sb2.toString();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private SpacedAligned(float f10, boolean z10, Function2<? super Integer, ? super LayoutDirection, Integer> function2) {
            this.space = f10;
            this.rtlMirror = z10;
            this.alignment = function2;
            this.spacing = f10;
        }

        @Override // androidx.compose.foundation.layout.Arrangement.Vertical
        public void arrange(@NotNull Density density, int i10, @NotNull int[] sizes, @NotNull int[] outPositions) {
            Intrinsics.checkNotNullParameter(density, "<this>");
            Intrinsics.checkNotNullParameter(sizes, "sizes");
            Intrinsics.checkNotNullParameter(outPositions, "outPositions");
            arrange(density, i10, sizes, LayoutDirection.Ltr, outPositions);
        }
    }

    /* compiled from: Arrangement.kt */
    @Metadata
    @Stable
    /* loaded from: classes.dex */
    public interface Vertical {

        /* compiled from: Arrangement.kt */
        @Metadata
        /* loaded from: classes.dex */
        public static final class DefaultImpls {
            @Deprecated
            /* renamed from: getSpacing-D9Ej5fM  reason: not valid java name */
            public static float m408getSpacingD9Ej5fM(@NotNull Vertical vertical) {
                return Vertical.super.mo398getSpacingD9Ej5fM();
            }
        }

        void arrange(@NotNull Density density, int i10, @NotNull int[] iArr, @NotNull int[] iArr2);

        /* renamed from: getSpacing-D9Ej5fM */
        default float mo398getSpacingD9Ej5fM() {
            return Dp.m4049constructorimpl(0);
        }
    }

    private Arrangement() {
    }

    private final void forEachIndexed(int[] iArr, boolean z10, Function2<? super Integer, ? super Integer, Unit> function2) {
        if (!z10) {
            int length = iArr.length;
            int i10 = 0;
            int i11 = 0;
            while (i10 < length) {
                function2.invoke(Integer.valueOf(i11), Integer.valueOf(iArr[i10]));
                i10++;
                i11++;
            }
            return;
        }
        int length2 = iArr.length;
        while (true) {
            length2--;
            if (-1 < length2) {
                function2.invoke(Integer.valueOf(length2), Integer.valueOf(iArr[length2]));
            } else {
                return;
            }
        }
    }

    @Stable
    @NotNull
    public final Horizontal aligned(@NotNull final Alignment.Horizontal alignment) {
        Intrinsics.checkNotNullParameter(alignment, "alignment");
        return new SpacedAligned(Dp.m4049constructorimpl(0), true, new Function2<Integer, LayoutDirection, Integer>() { // from class: androidx.compose.foundation.layout.Arrangement$aligned$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Integer invoke(Integer num, LayoutDirection layoutDirection) {
                return invoke(num.intValue(), layoutDirection);
            }

            @NotNull
            public final Integer invoke(int i10, @NotNull LayoutDirection layoutDirection) {
                Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
                return Integer.valueOf(Alignment.Horizontal.this.align(0, i10, layoutDirection));
            }
        }, null);
    }

    @NotNull
    public final Vertical getBottom() {
        return Bottom;
    }

    @NotNull
    public final HorizontalOrVertical getCenter() {
        return Center;
    }

    @NotNull
    public final Horizontal getEnd() {
        return End;
    }

    @NotNull
    public final HorizontalOrVertical getSpaceAround() {
        return SpaceAround;
    }

    @NotNull
    public final HorizontalOrVertical getSpaceBetween() {
        return SpaceBetween;
    }

    @NotNull
    public final HorizontalOrVertical getSpaceEvenly() {
        return SpaceEvenly;
    }

    @NotNull
    public final Horizontal getStart() {
        return Start;
    }

    @NotNull
    public final Vertical getTop() {
        return Top;
    }

    public final void placeCenter$foundation_layout_release(int i10, @NotNull int[] size, @NotNull int[] outPosition, boolean z10) {
        Intrinsics.checkNotNullParameter(size, "size");
        Intrinsics.checkNotNullParameter(outPosition, "outPosition");
        int i11 = 0;
        int i12 = 0;
        for (int i13 : size) {
            i12 += i13;
        }
        float f10 = (i10 - i12) / 2;
        if (!z10) {
            int length = size.length;
            int i14 = 0;
            while (i11 < length) {
                int i15 = size[i11];
                outPosition[i14] = bt.a.c(f10);
                f10 += i15;
                i11++;
                i14++;
            }
            return;
        }
        int length2 = size.length;
        while (true) {
            length2--;
            if (-1 < length2) {
                int i16 = size[length2];
                outPosition[length2] = bt.a.c(f10);
                f10 += i16;
            } else {
                return;
            }
        }
    }

    public final void placeLeftOrTop$foundation_layout_release(@NotNull int[] size, @NotNull int[] outPosition, boolean z10) {
        Intrinsics.checkNotNullParameter(size, "size");
        Intrinsics.checkNotNullParameter(outPosition, "outPosition");
        int i10 = 0;
        if (!z10) {
            int length = size.length;
            int i11 = 0;
            int i12 = 0;
            while (i10 < length) {
                int i13 = size[i10];
                outPosition[i11] = i12;
                i12 += i13;
                i10++;
                i11++;
            }
            return;
        }
        int length2 = size.length;
        while (true) {
            length2--;
            if (-1 < length2) {
                int i14 = size[length2];
                outPosition[length2] = i10;
                i10 += i14;
            } else {
                return;
            }
        }
    }

    public final void placeRightOrBottom$foundation_layout_release(int i10, @NotNull int[] size, @NotNull int[] outPosition, boolean z10) {
        Intrinsics.checkNotNullParameter(size, "size");
        Intrinsics.checkNotNullParameter(outPosition, "outPosition");
        int i11 = 0;
        int i12 = 0;
        for (int i13 : size) {
            i12 += i13;
        }
        int i14 = i10 - i12;
        if (!z10) {
            int length = size.length;
            int i15 = 0;
            while (i11 < length) {
                int i16 = size[i11];
                outPosition[i15] = i14;
                i14 += i16;
                i11++;
                i15++;
            }
            return;
        }
        int length2 = size.length;
        while (true) {
            length2--;
            if (-1 < length2) {
                int i17 = size[length2];
                outPosition[length2] = i14;
                i14 += i17;
            } else {
                return;
            }
        }
    }

    public final void placeSpaceAround$foundation_layout_release(int i10, @NotNull int[] size, @NotNull int[] outPosition, boolean z10) {
        boolean z11;
        float f10;
        Intrinsics.checkNotNullParameter(size, "size");
        Intrinsics.checkNotNullParameter(outPosition, "outPosition");
        int i11 = 0;
        int i12 = 0;
        for (int i13 : size) {
            i12 += i13;
        }
        if (size.length == 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (!z11) {
            f10 = (i10 - i12) / size.length;
        } else {
            f10 = 0.0f;
        }
        float f11 = f10 / 2;
        if (!z10) {
            int length = size.length;
            int i14 = 0;
            while (i11 < length) {
                int i15 = size[i11];
                outPosition[i14] = bt.a.c(f11);
                f11 += i15 + f10;
                i11++;
                i14++;
            }
            return;
        }
        for (int length2 = size.length - 1; -1 < length2; length2--) {
            int i16 = size[length2];
            outPosition[length2] = bt.a.c(f11);
            f11 += i16 + f10;
        }
    }

    public final void placeSpaceBetween$foundation_layout_release(int i10, @NotNull int[] size, @NotNull int[] outPosition, boolean z10) {
        float f10;
        Intrinsics.checkNotNullParameter(size, "size");
        Intrinsics.checkNotNullParameter(outPosition, "outPosition");
        int i11 = 0;
        int i12 = 0;
        for (int i13 : size) {
            i12 += i13;
        }
        float f11 = 0.0f;
        if (size.length > 1) {
            f10 = (i10 - i12) / (size.length - 1);
        } else {
            f10 = 0.0f;
        }
        if (!z10) {
            int length = size.length;
            int i14 = 0;
            while (i11 < length) {
                int i15 = size[i11];
                outPosition[i14] = bt.a.c(f11);
                f11 += i15 + f10;
                i11++;
                i14++;
            }
            return;
        }
        for (int length2 = size.length - 1; -1 < length2; length2--) {
            int i16 = size[length2];
            outPosition[length2] = bt.a.c(f11);
            f11 += i16 + f10;
        }
    }

    public final void placeSpaceEvenly$foundation_layout_release(int i10, @NotNull int[] size, @NotNull int[] outPosition, boolean z10) {
        Intrinsics.checkNotNullParameter(size, "size");
        Intrinsics.checkNotNullParameter(outPosition, "outPosition");
        int i11 = 0;
        int i12 = 0;
        for (int i13 : size) {
            i12 += i13;
        }
        float length = (i10 - i12) / (size.length + 1);
        if (!z10) {
            int length2 = size.length;
            float f10 = length;
            int i14 = 0;
            while (i11 < length2) {
                int i15 = size[i11];
                outPosition[i14] = bt.a.c(f10);
                f10 += i15 + length;
                i11++;
                i14++;
            }
            return;
        }
        float f11 = length;
        for (int length3 = size.length - 1; -1 < length3; length3--) {
            int i16 = size[length3];
            outPosition[length3] = bt.a.c(f11);
            f11 += i16 + length;
        }
    }

    @Stable
    @NotNull
    /* renamed from: spacedBy-0680j_4  reason: not valid java name */
    public final HorizontalOrVertical m392spacedBy0680j_4(float f10) {
        return new SpacedAligned(f10, true, new Function2<Integer, LayoutDirection, Integer>() { // from class: androidx.compose.foundation.layout.Arrangement$spacedBy$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Integer invoke(Integer num, LayoutDirection layoutDirection) {
                return invoke(num.intValue(), layoutDirection);
            }

            @NotNull
            public final Integer invoke(int i10, @NotNull LayoutDirection layoutDirection) {
                Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
                return Integer.valueOf(Alignment.Companion.getStart().align(0, i10, layoutDirection));
            }
        }, null);
    }

    @Stable
    @NotNull
    /* renamed from: spacedBy-D5KLDUw  reason: not valid java name */
    public final Horizontal m393spacedByD5KLDUw(float f10, @NotNull final Alignment.Horizontal alignment) {
        Intrinsics.checkNotNullParameter(alignment, "alignment");
        return new SpacedAligned(f10, true, new Function2<Integer, LayoutDirection, Integer>() { // from class: androidx.compose.foundation.layout.Arrangement$spacedBy$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Integer invoke(Integer num, LayoutDirection layoutDirection) {
                return invoke(num.intValue(), layoutDirection);
            }

            @NotNull
            public final Integer invoke(int i10, @NotNull LayoutDirection layoutDirection) {
                Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
                return Integer.valueOf(Alignment.Horizontal.this.align(0, i10, layoutDirection));
            }
        }, null);
    }

    @Stable
    @NotNull
    /* renamed from: spacedBy-D5KLDUw  reason: not valid java name */
    public final Vertical m394spacedByD5KLDUw(float f10, @NotNull final Alignment.Vertical alignment) {
        Intrinsics.checkNotNullParameter(alignment, "alignment");
        return new SpacedAligned(f10, false, new Function2<Integer, LayoutDirection, Integer>() { // from class: androidx.compose.foundation.layout.Arrangement$spacedBy$3
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(2);
            }

            @NotNull
            public final Integer invoke(int i10, @NotNull LayoutDirection layoutDirection) {
                Intrinsics.checkNotNullParameter(layoutDirection, "<anonymous parameter 1>");
                return Integer.valueOf(Alignment.Vertical.this.align(0, i10));
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Integer invoke(Integer num, LayoutDirection layoutDirection) {
                return invoke(num.intValue(), layoutDirection);
            }
        }, null);
    }

    @Stable
    @NotNull
    public final Vertical aligned(@NotNull final Alignment.Vertical alignment) {
        Intrinsics.checkNotNullParameter(alignment, "alignment");
        return new SpacedAligned(Dp.m4049constructorimpl(0), false, new Function2<Integer, LayoutDirection, Integer>() { // from class: androidx.compose.foundation.layout.Arrangement$aligned$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(2);
            }

            @NotNull
            public final Integer invoke(int i10, @NotNull LayoutDirection layoutDirection) {
                Intrinsics.checkNotNullParameter(layoutDirection, "<anonymous parameter 1>");
                return Integer.valueOf(Alignment.Vertical.this.align(0, i10));
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Integer invoke(Integer num, LayoutDirection layoutDirection) {
                return invoke(num.intValue(), layoutDirection);
            }
        }, null);
    }

    @Stable
    public static /* synthetic */ void getBottom$annotations() {
    }

    @Stable
    public static /* synthetic */ void getCenter$annotations() {
    }

    @Stable
    public static /* synthetic */ void getEnd$annotations() {
    }

    @Stable
    public static /* synthetic */ void getSpaceAround$annotations() {
    }

    @Stable
    public static /* synthetic */ void getSpaceBetween$annotations() {
    }

    @Stable
    public static /* synthetic */ void getSpaceEvenly$annotations() {
    }

    @Stable
    public static /* synthetic */ void getStart$annotations() {
    }

    @Stable
    public static /* synthetic */ void getTop$annotations() {
    }
}
