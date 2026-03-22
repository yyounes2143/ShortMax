package zm;

import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import cn.m0;
import com.google.android.material.transformation.FabTransformationScrimBehavior;
/* compiled from: VideoSize.java */
/* loaded from: classes8.dex */
public final class i0 {

    /* renamed from: e  reason: collision with root package name */
    public static final i0 f71955e = new i0(0, 0);

    /* renamed from: f  reason: collision with root package name */
    private static final String f71956f = m0.C0(0);

    /* renamed from: g  reason: collision with root package name */
    private static final String f71957g = m0.C0(1);

    /* renamed from: h  reason: collision with root package name */
    private static final String f71958h = m0.C0(3);
    @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY)

    /* renamed from: a  reason: collision with root package name */
    public final int f71959a;
    @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY)

    /* renamed from: b  reason: collision with root package name */
    public final int f71960b;
    @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY, to = 359)
    @Deprecated

    /* renamed from: c  reason: collision with root package name */
    public final int f71961c;
    @FloatRange(from = 0.0d, fromInclusive = false)

    /* renamed from: d  reason: collision with root package name */
    public final float f71962d;

    public i0(@IntRange(from = 0) int i10, @IntRange(from = 0) int i11) {
        this(i10, i11, 1.0f);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i0)) {
            return false;
        }
        i0 i0Var = (i0) obj;
        if (this.f71959a == i0Var.f71959a && this.f71960b == i0Var.f71960b && this.f71962d == i0Var.f71962d) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((217 + this.f71959a) * 31) + this.f71960b) * 31) + Float.floatToRawIntBits(this.f71962d);
    }

    public i0(@IntRange(from = 0) int i10, @IntRange(from = 0) int i11, @FloatRange(from = 0.0d, fromInclusive = false) float f10) {
        this.f71959a = i10;
        this.f71960b = i11;
        this.f71961c = 0;
        this.f71962d = f10;
    }
}
