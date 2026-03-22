package g4;

import android.graphics.Matrix;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.ImmutableList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import y3.k;
/* compiled from: JpegTranscoderUtils.kt */
@Metadata
@SourceDebugExtension({"SMAP\nJpegTranscoderUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JpegTranscoderUtils.kt\ncom/facebook/imagepipeline/transcoder/JpegTranscoderUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,233:1\n1#2:234\n*E\n"})
/* loaded from: classes3.dex */
public final class e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final e f52201a = new e();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final ImmutableList<Integer> f52202b;

    static {
        ImmutableList<Integer> e10 = ImmutableList.e(2, 7, 4, 5);
        Intrinsics.checkNotNullExpressionValue(e10, "of(...)");
        f52202b = e10;
    }

    private e() {
    }

    @VisibleForTesting
    public static final int a(int i10) {
        return Math.max(1, 8 / i10);
    }

    @VisibleForTesting
    public static final float b(@Nullable s3.f fVar, int i10, int i11) {
        if (fVar == null) {
            return 1.0f;
        }
        float f10 = i10;
        float f11 = i11;
        float max = Math.max(fVar.f66291a / f10, fVar.f66292b / f11);
        float f12 = fVar.f66293c;
        if (f10 * max > f12) {
            max = f12 / f10;
        }
        if (f11 * max > f12) {
            return f12 / f11;
        }
        return max;
    }

    private final int c(k kVar) {
        int q02 = kVar.q0();
        if (q02 != 90 && q02 != 180 && q02 != 270) {
            return 0;
        }
        return kVar.q0();
    }

    public static final int d(@NotNull s3.g rotationOptions, @NotNull k encodedImage) {
        int i10;
        Intrinsics.checkNotNullParameter(rotationOptions, "rotationOptions");
        Intrinsics.checkNotNullParameter(encodedImage, "encodedImage");
        int H = encodedImage.H();
        ImmutableList<Integer> immutableList = f52202b;
        int indexOf = immutableList.indexOf(Integer.valueOf(H));
        if (indexOf >= 0) {
            if (!rotationOptions.h()) {
                i10 = rotationOptions.f();
            } else {
                i10 = 0;
            }
            Integer num = immutableList.get((indexOf + (i10 / 90)) % immutableList.size());
            Intrinsics.checkNotNullExpressionValue(num, "get(...)");
            return num.intValue();
        }
        throw new IllegalArgumentException("Only accepts inverted exif orientations");
    }

    public static final int e(@NotNull s3.g rotationOptions, @NotNull k encodedImage) {
        Intrinsics.checkNotNullParameter(rotationOptions, "rotationOptions");
        Intrinsics.checkNotNullParameter(encodedImage, "encodedImage");
        if (!rotationOptions.g()) {
            return 0;
        }
        int c10 = f52201a.c(encodedImage);
        if (!rotationOptions.h()) {
            return (c10 + rotationOptions.f()) % 360;
        }
        return c10;
    }

    public static final int f(@NotNull s3.g rotationOptions, @Nullable s3.f fVar, @NotNull k encodedImage, boolean z10) {
        int i10;
        int width;
        int height;
        Intrinsics.checkNotNullParameter(rotationOptions, "rotationOptions");
        Intrinsics.checkNotNullParameter(encodedImage, "encodedImage");
        if (!z10 || fVar == null) {
            return 8;
        }
        int e10 = e(rotationOptions, encodedImage);
        boolean z11 = false;
        if (f52202b.contains(Integer.valueOf(encodedImage.H()))) {
            i10 = d(rotationOptions, encodedImage);
        } else {
            i10 = 0;
        }
        if (e10 == 90 || e10 == 270 || i10 == 5 || i10 == 7) {
            z11 = true;
        }
        if (z11) {
            width = encodedImage.getHeight();
        } else {
            width = encodedImage.getWidth();
        }
        if (z11) {
            height = encodedImage.getWidth();
        } else {
            height = encodedImage.getHeight();
        }
        int k10 = k(b(fVar, width, height), fVar.f66294d);
        if (k10 > 8) {
            return 8;
        }
        if (k10 < 1) {
            return 1;
        }
        return k10;
    }

    @Nullable
    public static final Matrix g(@NotNull k encodedImage, @NotNull s3.g rotationOptions) {
        Intrinsics.checkNotNullParameter(encodedImage, "encodedImage");
        Intrinsics.checkNotNullParameter(rotationOptions, "rotationOptions");
        if (f52202b.contains(Integer.valueOf(encodedImage.H()))) {
            return f52201a.h(d(rotationOptions, encodedImage));
        }
        int e10 = e(rotationOptions, encodedImage);
        if (e10 != 0) {
            Matrix matrix = new Matrix();
            matrix.setRotate(e10);
            return matrix;
        }
        return null;
    }

    private final Matrix h(int i10) {
        Matrix matrix = new Matrix();
        if (i10 != 2) {
            if (i10 != 7) {
                if (i10 != 4) {
                    if (i10 != 5) {
                        return null;
                    }
                    matrix.setRotate(90.0f);
                    matrix.postScale(-1.0f, 1.0f);
                } else {
                    matrix.setRotate(180.0f);
                    matrix.postScale(-1.0f, 1.0f);
                }
            } else {
                matrix.setRotate(-90.0f);
                matrix.postScale(-1.0f, 1.0f);
            }
        } else {
            matrix.setScale(-1.0f, 1.0f);
        }
        return matrix;
    }

    public static final boolean i(int i10) {
        switch (i10) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            default:
                return false;
        }
    }

    public static final boolean j(int i10) {
        if (i10 >= 0 && i10 <= 270 && i10 % 90 == 0) {
            return true;
        }
        return false;
    }

    @VisibleForTesting
    public static final int k(float f10, float f11) {
        return (int) (f11 + (f10 * 8));
    }
}
