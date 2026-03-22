package c7;

import android.os.Bundle;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.g;
import com.google.android.material.transformation.FabTransformationScrimBehavior;
/* compiled from: VideoSize.java */
/* loaded from: classes4.dex */
public final class z implements com.google.android.exoplayer2.g {

    /* renamed from: e  reason: collision with root package name */
    public static final z f3329e = new z(0, 0);

    /* renamed from: f  reason: collision with root package name */
    public static final g.a<z> f3330f = new g.a() { // from class: c7.y
        @Override // com.google.android.exoplayer2.g.a
        public final com.google.android.exoplayer2.g fromBundle(Bundle bundle) {
            z c10;
            c10 = z.c(bundle);
            return c10;
        }
    };
    @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY)

    /* renamed from: a  reason: collision with root package name */
    public final int f3331a;
    @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY)

    /* renamed from: b  reason: collision with root package name */
    public final int f3332b;
    @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY, to = 359)

    /* renamed from: c  reason: collision with root package name */
    public final int f3333c;
    @FloatRange(from = 0.0d, fromInclusive = false)

    /* renamed from: d  reason: collision with root package name */
    public final float f3334d;

    public z(@IntRange(from = 0) int i10, @IntRange(from = 0) int i11) {
        this(i10, i11, 0, 1.0f);
    }

    private static String b(int i10) {
        return Integer.toString(i10, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ z c(Bundle bundle) {
        return new z(bundle.getInt(b(0), 0), bundle.getInt(b(1), 0), bundle.getInt(b(2), 0), bundle.getFloat(b(3), 1.0f));
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z)) {
            return false;
        }
        z zVar = (z) obj;
        if (this.f3331a == zVar.f3331a && this.f3332b == zVar.f3332b && this.f3333c == zVar.f3333c && this.f3334d == zVar.f3334d) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((217 + this.f3331a) * 31) + this.f3332b) * 31) + this.f3333c) * 31) + Float.floatToRawIntBits(this.f3334d);
    }

    @Override // com.google.android.exoplayer2.g
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(b(0), this.f3331a);
        bundle.putInt(b(1), this.f3332b);
        bundle.putInt(b(2), this.f3333c);
        bundle.putFloat(b(3), this.f3334d);
        return bundle;
    }

    public z(@IntRange(from = 0) int i10, @IntRange(from = 0) int i11, @IntRange(from = 0, to = 359) int i12, @FloatRange(from = 0.0d, fromInclusive = false) float f10) {
        this.f3331a = i10;
        this.f3332b = i11;
        this.f3333c = i12;
        this.f3334d = f10;
    }
}
