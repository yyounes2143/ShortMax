package com.facebook.drawee.generic;

import androidx.annotation.ColorInt;
import java.util.Arrays;
import k2.h;
/* loaded from: classes3.dex */
public class RoundingParams {

    /* renamed from: a  reason: collision with root package name */
    private RoundingMethod f15468a = RoundingMethod.BITMAP_ONLY;

    /* renamed from: b  reason: collision with root package name */
    private boolean f15469b = false;

    /* renamed from: c  reason: collision with root package name */
    private float[] f15470c = null;

    /* renamed from: d  reason: collision with root package name */
    private int f15471d = 0;

    /* renamed from: e  reason: collision with root package name */
    private float f15472e = 0.0f;

    /* renamed from: f  reason: collision with root package name */
    private int f15473f = 0;

    /* renamed from: g  reason: collision with root package name */
    private float f15474g = 0.0f;

    /* renamed from: h  reason: collision with root package name */
    private boolean f15475h = false;

    /* renamed from: i  reason: collision with root package name */
    private boolean f15476i = false;

    /* renamed from: j  reason: collision with root package name */
    private boolean f15477j = false;

    /* loaded from: classes3.dex */
    public enum RoundingMethod {
        OVERLAY_COLOR,
        BITMAP_ONLY
    }

    public static RoundingParams a() {
        return new RoundingParams().t(true);
    }

    public static RoundingParams b(float f10) {
        return new RoundingParams().q(f10);
    }

    private float[] f() {
        if (this.f15470c == null) {
            this.f15470c = new float[8];
        }
        return this.f15470c;
    }

    public int c() {
        return this.f15473f;
    }

    public float d() {
        return this.f15472e;
    }

    public float[] e() {
        return this.f15470c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        RoundingParams roundingParams = (RoundingParams) obj;
        if (this.f15469b != roundingParams.f15469b || this.f15471d != roundingParams.f15471d || Float.compare(roundingParams.f15472e, this.f15472e) != 0 || this.f15473f != roundingParams.f15473f || Float.compare(roundingParams.f15474g, this.f15474g) != 0 || this.f15468a != roundingParams.f15468a || this.f15475h != roundingParams.f15475h || this.f15476i != roundingParams.f15476i) {
            return false;
        }
        return Arrays.equals(this.f15470c, roundingParams.f15470c);
    }

    public int g() {
        return this.f15471d;
    }

    public float h() {
        return this.f15474g;
    }

    public int hashCode() {
        int i10;
        int i11;
        int i12;
        RoundingMethod roundingMethod = this.f15468a;
        int i13 = 0;
        if (roundingMethod != null) {
            i10 = roundingMethod.hashCode();
        } else {
            i10 = 0;
        }
        int i14 = ((i10 * 31) + (this.f15469b ? 1 : 0)) * 31;
        float[] fArr = this.f15470c;
        if (fArr != null) {
            i11 = Arrays.hashCode(fArr);
        } else {
            i11 = 0;
        }
        int i15 = (((i14 + i11) * 31) + this.f15471d) * 31;
        float f10 = this.f15472e;
        if (f10 != 0.0f) {
            i12 = Float.floatToIntBits(f10);
        } else {
            i12 = 0;
        }
        int i16 = (((i15 + i12) * 31) + this.f15473f) * 31;
        float f11 = this.f15474g;
        if (f11 != 0.0f) {
            i13 = Float.floatToIntBits(f11);
        }
        return ((((i16 + i13) * 31) + (this.f15475h ? 1 : 0)) * 31) + (this.f15476i ? 1 : 0);
    }

    public boolean i() {
        return this.f15476i;
    }

    public boolean j() {
        return this.f15477j;
    }

    public boolean k() {
        return this.f15469b;
    }

    public RoundingMethod l() {
        return this.f15468a;
    }

    public boolean m() {
        return this.f15475h;
    }

    public RoundingParams n(@ColorInt int i10) {
        this.f15473f = i10;
        return this;
    }

    public RoundingParams o(float f10) {
        boolean z10;
        if (f10 >= 0.0f) {
            z10 = true;
        } else {
            z10 = false;
        }
        h.c(z10, "the border width cannot be < 0");
        this.f15472e = f10;
        return this;
    }

    public RoundingParams p(float f10, float f11, float f12, float f13) {
        float[] f14 = f();
        f14[1] = f10;
        f14[0] = f10;
        f14[3] = f11;
        f14[2] = f11;
        f14[5] = f12;
        f14[4] = f12;
        f14[7] = f13;
        f14[6] = f13;
        return this;
    }

    public RoundingParams q(float f10) {
        Arrays.fill(f(), f10);
        return this;
    }

    public RoundingParams r(@ColorInt int i10) {
        this.f15471d = i10;
        this.f15468a = RoundingMethod.OVERLAY_COLOR;
        return this;
    }

    public RoundingParams s(float f10) {
        boolean z10;
        if (f10 >= 0.0f) {
            z10 = true;
        } else {
            z10 = false;
        }
        h.c(z10, "the padding cannot be < 0");
        this.f15474g = f10;
        return this;
    }

    public RoundingParams t(boolean z10) {
        this.f15469b = z10;
        return this;
    }
}
