package io.bidmachine.media3.exoplayer.video.spherical;
/* compiled from: Projection.java */
/* loaded from: classes8.dex */
final class c {

    /* renamed from: a  reason: collision with root package name */
    public final a f57355a;

    /* renamed from: b  reason: collision with root package name */
    public final a f57356b;

    /* renamed from: c  reason: collision with root package name */
    public final int f57357c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f57358d;

    /* compiled from: Projection.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final b[] f57359a;

        public a(b... bVarArr) {
            this.f57359a = bVarArr;
        }

        public b a(int i10) {
            return this.f57359a[i10];
        }

        public int b() {
            return this.f57359a.length;
        }
    }

    /* compiled from: Projection.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f57360a;

        /* renamed from: b  reason: collision with root package name */
        public final int f57361b;

        /* renamed from: c  reason: collision with root package name */
        public final float[] f57362c;

        /* renamed from: d  reason: collision with root package name */
        public final float[] f57363d;

        public b(int i10, float[] fArr, float[] fArr2, int i11) {
            boolean z10;
            this.f57360a = i10;
            if (fArr.length * 2 == fArr2.length * 3) {
                z10 = true;
            } else {
                z10 = false;
            }
            cn.a.a(z10);
            this.f57362c = fArr;
            this.f57363d = fArr2;
            this.f57361b = i11;
        }

        public int a() {
            return this.f57362c.length / 3;
        }
    }

    public c(a aVar, int i10) {
        this(aVar, aVar, i10);
    }

    public static c a(float f10, int i10, int i11, float f11, float f12, int i12) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        int i13;
        float f13;
        int i14;
        int i15;
        int i16;
        float[] fArr;
        int i17;
        int i18 = i10;
        int i19 = i11;
        if (f10 > 0.0f) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.a(z10);
        if (i18 >= 1) {
            z11 = true;
        } else {
            z11 = false;
        }
        cn.a.a(z11);
        if (i19 >= 1) {
            z12 = true;
        } else {
            z12 = false;
        }
        cn.a.a(z12);
        if (f11 > 0.0f && f11 <= 180.0f) {
            z13 = true;
        } else {
            z13 = false;
        }
        cn.a.a(z13);
        if (f12 > 0.0f && f12 <= 360.0f) {
            z14 = true;
        } else {
            z14 = false;
        }
        cn.a.a(z14);
        float radians = (float) Math.toRadians(f11);
        float radians2 = (float) Math.toRadians(f12);
        float f14 = radians / i18;
        float f15 = radians2 / i19;
        int i20 = i19 + 1;
        int i21 = ((i20 * 2) + 2) * i18;
        float[] fArr2 = new float[i21 * 3];
        float[] fArr3 = new float[i21 * 2];
        int i22 = 0;
        int i23 = 0;
        int i24 = 0;
        while (i22 < i18) {
            float f16 = radians / 2.0f;
            float f17 = (i22 * f14) - f16;
            int i25 = i22 + 1;
            float f18 = (i25 * f14) - f16;
            int i26 = 0;
            while (i26 < i20) {
                float f19 = f17;
                int i27 = i25;
                int i28 = 2;
                int i29 = 0;
                while (i29 < i28) {
                    if (i29 == 0) {
                        f13 = f19;
                        i13 = i20;
                    } else {
                        i13 = i20;
                        f13 = f18;
                    }
                    float f20 = i26 * f15;
                    float f21 = f15;
                    int i30 = i26;
                    double d10 = f10;
                    float f22 = f14;
                    double d11 = (f20 + 3.1415927f) - (radians2 / 2.0f);
                    int i31 = i29;
                    double d12 = f13;
                    float[] fArr4 = fArr3;
                    float f23 = f18;
                    fArr2[i23] = -((float) (Math.sin(d11) * d10 * Math.cos(d12)));
                    float f24 = radians;
                    float f25 = radians2;
                    fArr2[i23 + 1] = (float) (d10 * Math.sin(d12));
                    int i32 = i23 + 3;
                    fArr2[i23 + 2] = (float) (d10 * Math.cos(d11) * Math.cos(d12));
                    fArr4[i24] = f20 / f25;
                    int i33 = i24 + 2;
                    fArr4[i24 + 1] = ((i22 + i31) * f22) / f24;
                    if (i30 != 0 || i31 != 0) {
                        i14 = i11;
                        i15 = i30;
                        i16 = i31;
                        if (i15 != i14 || i16 != 1) {
                            fArr = fArr4;
                            i17 = 2;
                            i24 = i33;
                            i23 = i32;
                            i29 = i16 + 1;
                            i19 = i14;
                            i26 = i15;
                            fArr3 = fArr;
                            radians = f24;
                            i20 = i13;
                            f15 = f21;
                            radians2 = f25;
                            f18 = f23;
                            i28 = i17;
                            f14 = f22;
                        }
                    } else {
                        i14 = i11;
                        i15 = i30;
                        i16 = i31;
                    }
                    System.arraycopy(fArr2, i23, fArr2, i32, 3);
                    i23 += 6;
                    fArr = fArr4;
                    i17 = 2;
                    System.arraycopy(fArr, i24, fArr, i33, 2);
                    i24 += 4;
                    i29 = i16 + 1;
                    i19 = i14;
                    i26 = i15;
                    fArr3 = fArr;
                    radians = f24;
                    i20 = i13;
                    f15 = f21;
                    radians2 = f25;
                    f18 = f23;
                    i28 = i17;
                    f14 = f22;
                }
                float f26 = radians2;
                int i34 = i26;
                int i35 = i19;
                int i36 = i34 + 1;
                i25 = i27;
                f14 = f14;
                radians2 = f26;
                f18 = f18;
                f17 = f19;
                i19 = i35;
                i26 = i36;
            }
            i18 = i10;
            i22 = i25;
        }
        return new c(new a(new b(0, fArr2, fArr3, 1)), i12);
    }

    public static c b(int i10) {
        return a(50.0f, 36, 72, 180.0f, 360.0f, i10);
    }

    public c(a aVar, a aVar2, int i10) {
        this.f57355a = aVar;
        this.f57356b = aVar2;
        this.f57357c = i10;
        this.f57358d = aVar == aVar2;
    }
}
