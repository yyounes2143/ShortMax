package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Brush.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public abstract class Brush {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private final long intrinsicSize;

    /* compiled from: Brush.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: horizontalGradient-8A-3gB4$default  reason: not valid java name */
        public static /* synthetic */ Brush m1791horizontalGradient8A3gB4$default(Companion companion, List list, float f10, float f11, int i10, int i11, Object obj) {
            if ((i11 & 2) != 0) {
                f10 = 0.0f;
            }
            if ((i11 & 4) != 0) {
                f11 = Float.POSITIVE_INFINITY;
            }
            if ((i11 & 8) != 0) {
                i10 = TileMode.Companion.m2166getClamp3opZhB0();
            }
            return companion.m1801horizontalGradient8A3gB4(list, f10, f11, i10);
        }

        /* renamed from: linearGradient-mHitzGk$default  reason: not valid java name */
        public static /* synthetic */ Brush m1794linearGradientmHitzGk$default(Companion companion, Pair[] pairArr, long j10, long j11, int i10, int i11, Object obj) {
            if ((i11 & 2) != 0) {
                j10 = Offset.Companion.m1622getZeroF1C5BW0();
            }
            long j12 = j10;
            if ((i11 & 4) != 0) {
                j11 = Offset.Companion.m1620getInfiniteF1C5BW0();
            }
            long j13 = j11;
            if ((i11 & 8) != 0) {
                i10 = TileMode.Companion.m2166getClamp3opZhB0();
            }
            return companion.m1804linearGradientmHitzGk(pairArr, j12, j13, i10);
        }

        /* renamed from: radialGradient-P_Vx-Ks$default  reason: not valid java name */
        public static /* synthetic */ Brush m1796radialGradientP_VxKs$default(Companion companion, Pair[] pairArr, long j10, float f10, int i10, int i11, Object obj) {
            if ((i11 & 2) != 0) {
                j10 = Offset.Companion.m1621getUnspecifiedF1C5BW0();
            }
            long j11 = j10;
            if ((i11 & 4) != 0) {
                f10 = Float.POSITIVE_INFINITY;
            }
            float f11 = f10;
            if ((i11 & 8) != 0) {
                i10 = TileMode.Companion.m2166getClamp3opZhB0();
            }
            return companion.m1806radialGradientP_VxKs(pairArr, j11, f11, i10);
        }

        /* renamed from: sweepGradient-Uv8p0NA$default  reason: not valid java name */
        public static /* synthetic */ Brush m1798sweepGradientUv8p0NA$default(Companion companion, Pair[] pairArr, long j10, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                j10 = Offset.Companion.m1621getUnspecifiedF1C5BW0();
            }
            return companion.m1808sweepGradientUv8p0NA(pairArr, j10);
        }

        /* renamed from: verticalGradient-8A-3gB4$default  reason: not valid java name */
        public static /* synthetic */ Brush m1799verticalGradient8A3gB4$default(Companion companion, List list, float f10, float f11, int i10, int i11, Object obj) {
            if ((i11 & 2) != 0) {
                f10 = 0.0f;
            }
            if ((i11 & 4) != 0) {
                f11 = Float.POSITIVE_INFINITY;
            }
            if ((i11 & 8) != 0) {
                i10 = TileMode.Companion.m2166getClamp3opZhB0();
            }
            return companion.m1809verticalGradient8A3gB4(list, f10, f11, i10);
        }

        @Stable
        @NotNull
        /* renamed from: horizontalGradient-8A-3gB4  reason: not valid java name */
        public final Brush m1801horizontalGradient8A3gB4(@NotNull List<Color> colors, float f10, float f11, int i10) {
            Intrinsics.checkNotNullParameter(colors, "colors");
            return m1803linearGradientmHitzGk(colors, OffsetKt.Offset(f10, 0.0f), OffsetKt.Offset(f11, 0.0f), i10);
        }

        @Stable
        @NotNull
        /* renamed from: linearGradient-mHitzGk  reason: not valid java name */
        public final Brush m1804linearGradientmHitzGk(@NotNull Pair<Float, Color>[] colorStops, long j10, long j11, int i10) {
            Intrinsics.checkNotNullParameter(colorStops, "colorStops");
            ArrayList arrayList = new ArrayList(colorStops.length);
            for (Pair<Float, Color> pair : colorStops) {
                arrayList.add(Color.m1832boximpl(pair.f().m1852unboximpl()));
            }
            ArrayList arrayList2 = new ArrayList(colorStops.length);
            for (Pair<Float, Color> pair2 : colorStops) {
                arrayList2.add(Float.valueOf(pair2.e().floatValue()));
            }
            return new LinearGradient(arrayList, arrayList2, j10, j11, i10, null);
        }

        @Stable
        @NotNull
        /* renamed from: radialGradient-P_Vx-Ks  reason: not valid java name */
        public final Brush m1806radialGradientP_VxKs(@NotNull Pair<Float, Color>[] colorStops, long j10, float f10, int i10) {
            Intrinsics.checkNotNullParameter(colorStops, "colorStops");
            ArrayList arrayList = new ArrayList(colorStops.length);
            for (Pair<Float, Color> pair : colorStops) {
                arrayList.add(Color.m1832boximpl(pair.f().m1852unboximpl()));
            }
            ArrayList arrayList2 = new ArrayList(colorStops.length);
            for (Pair<Float, Color> pair2 : colorStops) {
                arrayList2.add(Float.valueOf(pair2.e().floatValue()));
            }
            return new RadialGradient(arrayList, arrayList2, j10, f10, i10, null);
        }

        @Stable
        @NotNull
        /* renamed from: sweepGradient-Uv8p0NA  reason: not valid java name */
        public final Brush m1808sweepGradientUv8p0NA(@NotNull Pair<Float, Color>[] colorStops, long j10) {
            Intrinsics.checkNotNullParameter(colorStops, "colorStops");
            ArrayList arrayList = new ArrayList(colorStops.length);
            for (Pair<Float, Color> pair : colorStops) {
                arrayList.add(Color.m1832boximpl(pair.f().m1852unboximpl()));
            }
            ArrayList arrayList2 = new ArrayList(colorStops.length);
            for (Pair<Float, Color> pair2 : colorStops) {
                arrayList2.add(Float.valueOf(pair2.e().floatValue()));
            }
            return new SweepGradient(j10, arrayList, arrayList2, null);
        }

        @Stable
        @NotNull
        /* renamed from: verticalGradient-8A-3gB4  reason: not valid java name */
        public final Brush m1809verticalGradient8A3gB4(@NotNull List<Color> colors, float f10, float f11, int i10) {
            Intrinsics.checkNotNullParameter(colors, "colors");
            return m1803linearGradientmHitzGk(colors, OffsetKt.Offset(0.0f, f10), OffsetKt.Offset(0.0f, f11), i10);
        }

        private Companion() {
        }

        @Stable
        @NotNull
        /* renamed from: horizontalGradient-8A-3gB4  reason: not valid java name */
        public final Brush m1802horizontalGradient8A3gB4(@NotNull Pair<Float, Color>[] colorStops, float f10, float f11, int i10) {
            Intrinsics.checkNotNullParameter(colorStops, "colorStops");
            return m1804linearGradientmHitzGk((Pair[]) Arrays.copyOf(colorStops, colorStops.length), OffsetKt.Offset(f10, 0.0f), OffsetKt.Offset(f11, 0.0f), i10);
        }

        @Stable
        @NotNull
        /* renamed from: verticalGradient-8A-3gB4  reason: not valid java name */
        public final Brush m1810verticalGradient8A3gB4(@NotNull Pair<Float, Color>[] colorStops, float f10, float f11, int i10) {
            Intrinsics.checkNotNullParameter(colorStops, "colorStops");
            return m1804linearGradientmHitzGk((Pair[]) Arrays.copyOf(colorStops, colorStops.length), OffsetKt.Offset(0.0f, f10), OffsetKt.Offset(0.0f, f11), i10);
        }

        /* renamed from: horizontalGradient-8A-3gB4$default  reason: not valid java name */
        public static /* synthetic */ Brush m1792horizontalGradient8A3gB4$default(Companion companion, Pair[] pairArr, float f10, float f11, int i10, int i11, Object obj) {
            if ((i11 & 2) != 0) {
                f10 = 0.0f;
            }
            if ((i11 & 4) != 0) {
                f11 = Float.POSITIVE_INFINITY;
            }
            if ((i11 & 8) != 0) {
                i10 = TileMode.Companion.m2166getClamp3opZhB0();
            }
            return companion.m1802horizontalGradient8A3gB4(pairArr, f10, f11, i10);
        }

        /* renamed from: sweepGradient-Uv8p0NA$default  reason: not valid java name */
        public static /* synthetic */ Brush m1797sweepGradientUv8p0NA$default(Companion companion, List list, long j10, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                j10 = Offset.Companion.m1621getUnspecifiedF1C5BW0();
            }
            return companion.m1807sweepGradientUv8p0NA(list, j10);
        }

        /* renamed from: verticalGradient-8A-3gB4$default  reason: not valid java name */
        public static /* synthetic */ Brush m1800verticalGradient8A3gB4$default(Companion companion, Pair[] pairArr, float f10, float f11, int i10, int i11, Object obj) {
            if ((i11 & 2) != 0) {
                f10 = 0.0f;
            }
            if ((i11 & 4) != 0) {
                f11 = Float.POSITIVE_INFINITY;
            }
            if ((i11 & 8) != 0) {
                i10 = TileMode.Companion.m2166getClamp3opZhB0();
            }
            return companion.m1810verticalGradient8A3gB4(pairArr, f10, f11, i10);
        }

        /* renamed from: radialGradient-P_Vx-Ks$default  reason: not valid java name */
        public static /* synthetic */ Brush m1795radialGradientP_VxKs$default(Companion companion, List list, long j10, float f10, int i10, int i11, Object obj) {
            if ((i11 & 2) != 0) {
                j10 = Offset.Companion.m1621getUnspecifiedF1C5BW0();
            }
            long j11 = j10;
            if ((i11 & 4) != 0) {
                f10 = Float.POSITIVE_INFINITY;
            }
            float f11 = f10;
            if ((i11 & 8) != 0) {
                i10 = TileMode.Companion.m2166getClamp3opZhB0();
            }
            return companion.m1805radialGradientP_VxKs(list, j11, f11, i10);
        }

        @Stable
        @NotNull
        /* renamed from: linearGradient-mHitzGk  reason: not valid java name */
        public final Brush m1803linearGradientmHitzGk(@NotNull List<Color> colors, long j10, long j11, int i10) {
            Intrinsics.checkNotNullParameter(colors, "colors");
            return new LinearGradient(colors, null, j10, j11, i10, null);
        }

        @Stable
        @NotNull
        /* renamed from: radialGradient-P_Vx-Ks  reason: not valid java name */
        public final Brush m1805radialGradientP_VxKs(@NotNull List<Color> colors, long j10, float f10, int i10) {
            Intrinsics.checkNotNullParameter(colors, "colors");
            return new RadialGradient(colors, null, j10, f10, i10, null);
        }

        @Stable
        @NotNull
        /* renamed from: sweepGradient-Uv8p0NA  reason: not valid java name */
        public final Brush m1807sweepGradientUv8p0NA(@NotNull List<Color> colors, long j10) {
            Intrinsics.checkNotNullParameter(colors, "colors");
            return new SweepGradient(j10, colors, null, null);
        }

        /* renamed from: linearGradient-mHitzGk$default  reason: not valid java name */
        public static /* synthetic */ Brush m1793linearGradientmHitzGk$default(Companion companion, List list, long j10, long j11, int i10, int i11, Object obj) {
            if ((i11 & 2) != 0) {
                j10 = Offset.Companion.m1622getZeroF1C5BW0();
            }
            long j12 = j10;
            if ((i11 & 4) != 0) {
                j11 = Offset.Companion.m1620getInfiniteF1C5BW0();
            }
            long j13 = j11;
            if ((i11 & 8) != 0) {
                i10 = TileMode.Companion.m2166getClamp3opZhB0();
            }
            return companion.m1803linearGradientmHitzGk(list, j12, j13, i10);
        }
    }

    public /* synthetic */ Brush(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* renamed from: applyTo-Pq9zytI  reason: not valid java name */
    public abstract void mo1789applyToPq9zytI(long j10, @NotNull Paint paint, float f10);

    /* renamed from: getIntrinsicSize-NH-jbRc  reason: not valid java name */
    public long mo1790getIntrinsicSizeNHjbRc() {
        return this.intrinsicSize;
    }

    private Brush() {
        this.intrinsicSize = Size.Companion.m1683getUnspecifiedNHjbRc();
    }
}
