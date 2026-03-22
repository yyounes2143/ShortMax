package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Path.kt */
@Metadata
/* loaded from: classes.dex */
public interface Path {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: Path.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        @NotNull
        /* renamed from: combine-xh6zSI8  reason: not valid java name */
        public final Path m2075combinexh6zSI8(int i10, @NotNull Path path1, @NotNull Path path2) {
            Intrinsics.checkNotNullParameter(path1, "path1");
            Intrinsics.checkNotNullParameter(path2, "path2");
            Path Path = AndroidPath_androidKt.Path();
            if (Path.mo1739opN5in7k0(path1, path2, i10)) {
                return Path;
            }
            throw new IllegalArgumentException("Path.combine() failed.  This may be due an invalid path; in particular, check for NaN values.");
        }
    }

    /* compiled from: Path.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        public static void arcToRad(@NotNull Path path, @NotNull Rect rect, float f10, float f11, boolean z10) {
            Intrinsics.checkNotNullParameter(rect, "rect");
            Path.super.arcToRad(rect, f10, f11, z10);
        }
    }

    /* renamed from: addPath-Uv8p0NA$default  reason: not valid java name */
    static /* synthetic */ void m2074addPathUv8p0NA$default(Path path, Path path2, long j10, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 2) != 0) {
                j10 = Offset.Companion.m1622getZeroF1C5BW0();
            }
            path.mo1737addPathUv8p0NA(path2, j10);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addPath-Uv8p0NA");
    }

    void addArc(@NotNull Rect rect, float f10, float f11);

    void addArcRad(@NotNull Rect rect, float f10, float f11);

    void addOval(@NotNull Rect rect);

    /* renamed from: addPath-Uv8p0NA */
    void mo1737addPathUv8p0NA(@NotNull Path path, long j10);

    void addRect(@NotNull Rect rect);

    void addRoundRect(@NotNull RoundRect roundRect);

    void arcTo(@NotNull Rect rect, float f10, float f11, boolean z10);

    default void arcToRad(@NotNull Rect rect, float f10, float f11, boolean z10) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        arcTo(rect, DegreesKt.degrees(f10), DegreesKt.degrees(f11), z10);
    }

    void close();

    void cubicTo(float f10, float f11, float f12, float f13, float f14, float f15);

    @NotNull
    Rect getBounds();

    /* renamed from: getFillType-Rg-k1Os */
    int mo1738getFillTypeRgk1Os();

    boolean isConvex();

    boolean isEmpty();

    void lineTo(float f10, float f11);

    void moveTo(float f10, float f11);

    /* renamed from: op-N5in7k0 */
    boolean mo1739opN5in7k0(@NotNull Path path, @NotNull Path path2, int i10);

    void quadraticBezierTo(float f10, float f11, float f12, float f13);

    void relativeCubicTo(float f10, float f11, float f12, float f13, float f14, float f15);

    void relativeLineTo(float f10, float f11);

    void relativeMoveTo(float f10, float f11);

    void relativeQuadraticBezierTo(float f10, float f11, float f12, float f13);

    void reset();

    /* renamed from: setFillType-oQ8Xj4U */
    void mo1740setFillTypeoQ8Xj4U(int i10);

    /* renamed from: translate-k-4lQ0M */
    void mo1741translatek4lQ0M(long j10);
}
