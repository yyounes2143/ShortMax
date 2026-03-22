package g4;

import androidx.annotation.VisibleForTesting;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import y3.k;
/* compiled from: DownsampleUtil.kt */
@Metadata
/* loaded from: classes3.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f52199a = new a();

    private a() {
    }

    @VisibleForTesting
    public static final float a(@NotNull s3.g rotationOptions, @Nullable s3.f fVar, @NotNull k encodedImage) {
        boolean z10;
        int width;
        int height;
        Intrinsics.checkNotNullParameter(rotationOptions, "rotationOptions");
        Intrinsics.checkNotNullParameter(encodedImage, "encodedImage");
        if (k.P(encodedImage)) {
            if (fVar != null && fVar.f66292b > 0 && fVar.f66291a > 0 && encodedImage.getWidth() != 0 && encodedImage.getHeight() != 0) {
                int d10 = f52199a.d(rotationOptions, encodedImage);
                if (d10 != 90 && d10 != 270) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                if (z10) {
                    width = encodedImage.getHeight();
                } else {
                    width = encodedImage.getWidth();
                }
                if (z10) {
                    height = encodedImage.getWidth();
                } else {
                    height = encodedImage.getHeight();
                }
                float f10 = fVar.f66291a / width;
                float f11 = fVar.f66292b / height;
                float d11 = kotlin.ranges.e.d(f10, f11);
                l2.a.u("DownsampleUtil", "Downsample - Specified size: %dx%d, image size: %dx%d ratio: %.1f x %.1f, ratio: %.3f", Integer.valueOf(fVar.f66291a), Integer.valueOf(fVar.f66292b), Integer.valueOf(width), Integer.valueOf(height), Float.valueOf(f10), Float.valueOf(f11), Float.valueOf(d11));
                return d11;
            }
            return 1.0f;
        }
        throw new IllegalStateException("Check failed.");
    }

    public static final int b(@NotNull s3.g rotationOptions, @Nullable s3.f fVar, @NotNull k encodedImage, int i10) {
        int e10;
        float f10;
        Intrinsics.checkNotNullParameter(rotationOptions, "rotationOptions");
        Intrinsics.checkNotNullParameter(encodedImage, "encodedImage");
        if (!k.P(encodedImage)) {
            return 1;
        }
        float a10 = a(rotationOptions, fVar, encodedImage);
        if (encodedImage.q() == com.facebook.imageformat.b.f15604b) {
            e10 = f(a10);
        } else {
            e10 = e(a10);
        }
        int max = Math.max(encodedImage.getHeight(), encodedImage.getWidth());
        if (fVar != null) {
            f10 = fVar.f66293c;
        } else {
            f10 = i10;
        }
        while (max / e10 > f10) {
            if (encodedImage.q() == com.facebook.imageformat.b.f15604b) {
                e10 *= 2;
            } else {
                e10++;
            }
        }
        return e10;
    }

    public static final int c(@NotNull k encodedImage, int i10, int i11) {
        Intrinsics.checkNotNullParameter(encodedImage, "encodedImage");
        int t10 = encodedImage.t();
        while ((((encodedImage.getWidth() * encodedImage.getHeight()) * i10) / t10) / t10 > i11) {
            t10 *= 2;
        }
        return t10;
    }

    private final int d(s3.g gVar, k kVar) {
        if (!gVar.h()) {
            return 0;
        }
        int q02 = kVar.q0();
        if (q02 != 0 && q02 != 90 && q02 != 180 && q02 != 270) {
            throw new IllegalStateException("Check failed.");
        }
        return q02;
    }

    @VisibleForTesting
    public static final int e(float f10) {
        if (f10 > 0.6666667f) {
            return 1;
        }
        int i10 = 2;
        while (true) {
            double d10 = i10;
            if ((1.0d / d10) + ((1.0d / (Math.pow(d10, 2.0d) - d10)) * 0.33333334f) <= f10) {
                return i10 - 1;
            }
            i10++;
        }
    }

    @VisibleForTesting
    public static final int f(float f10) {
        if (f10 > 0.6666667f) {
            return 1;
        }
        int i10 = 2;
        while (true) {
            int i11 = i10 * 2;
            double d10 = 1.0d / i11;
            if (d10 + (0.33333334f * d10) <= f10) {
                return i10;
            }
            i10 = i11;
        }
    }
}
