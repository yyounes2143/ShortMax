package com.bytedance.adsdk.ZYk.oJ.oJ;

import android.graphics.Path;
import android.graphics.PointF;
import com.bytedance.adsdk.ZYk.oJ.ZYk.oJ;
import com.bytedance.adsdk.ZYk.tB.ZYk.RZ;
import com.bytedance.adsdk.ZYk.tB.ZYk.kkU;
import java.util.List;
/* loaded from: classes3.dex */
public class WcQ implements oJ.InterfaceC0139oJ, PiB, dLZ {
    private final com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<?, Float> BTZ;
    private final boolean Pfn;
    private final com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<?, Float> PiB;
    private final String ZYk;
    private boolean awB;

    /* renamed from: ba  reason: collision with root package name */
    private final boolean f11536ba;
    private final com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<?, Float> cFZ;
    private final com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<?, Float> dLZ;
    private final kkU.oJ ex;
    private final com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<?, Float> jFA;
    private final com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<?, Float> kkU;

    /* renamed from: so  reason: collision with root package name */
    private final com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<?, PointF> f11537so;
    private final com.bytedance.adsdk.ZYk.jFA tB;
    private final Path oJ = new Path();
    private final ZYk WcQ = new ZYk();

    /* renamed from: com.bytedance.adsdk.ZYk.oJ.oJ.WcQ$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] oJ;

        static {
            int[] iArr = new int[kkU.oJ.values().length];
            oJ = iArr;
            try {
                iArr[kkU.oJ.STAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                oJ[kkU.oJ.POLYGON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public WcQ(com.bytedance.adsdk.ZYk.jFA jfa, com.bytedance.adsdk.ZYk.tB.tB.oJ oJVar, com.bytedance.adsdk.ZYk.tB.ZYk.kkU kku) {
        this.tB = jfa;
        this.ZYk = kku.oJ();
        kkU.oJ ZYk = kku.ZYk();
        this.ex = ZYk;
        this.Pfn = kku.kkU();
        this.f11536ba = kku.dLZ();
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> oJ = kku.tB().oJ();
        this.cFZ = oJ;
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<PointF, PointF> oJ2 = kku.ex().oJ();
        this.f11537so = oJ2;
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> oJ3 = kku.Pfn().oJ();
        this.jFA = oJ3;
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> oJ4 = kku.cFZ().oJ();
        this.dLZ = oJ4;
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> oJ5 = kku.jFA().oJ();
        this.PiB = oJ5;
        kkU.oJ oJVar2 = kkU.oJ.STAR;
        if (ZYk == oJVar2) {
            this.kkU = kku.ba().oJ();
            this.BTZ = kku.so().oJ();
        } else {
            this.kkU = null;
            this.BTZ = null;
        }
        oJVar.oJ(oJ);
        oJVar.oJ(oJ2);
        oJVar.oJ(oJ3);
        oJVar.oJ(oJ4);
        oJVar.oJ(oJ5);
        if (ZYk == oJVar2) {
            oJVar.oJ(this.kkU);
            oJVar.oJ(this.BTZ);
        }
        oJ.oJ(this);
        oJ2.oJ(this);
        oJ3.oJ(this);
        oJ4.oJ(this);
        oJ5.oJ(this);
        if (ZYk == oJVar2) {
            this.kkU.oJ(this);
            this.BTZ.oJ(this);
        }
    }

    private void Pfn() {
        double floatValue;
        int i10;
        double d10;
        double d11;
        double d12;
        int floor = (int) Math.floor(this.cFZ.cFZ().floatValue());
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<?, Float> oJVar = this.jFA;
        if (oJVar == null) {
            floatValue = 0.0d;
        } else {
            floatValue = oJVar.cFZ().floatValue();
        }
        double radians = Math.toRadians(floatValue - 90.0d);
        double d13 = floor;
        float floatValue2 = this.PiB.cFZ().floatValue() / 100.0f;
        float floatValue3 = this.dLZ.cFZ().floatValue();
        double d14 = floatValue3;
        float cos = (float) (Math.cos(radians) * d14);
        float sin = (float) (Math.sin(radians) * d14);
        this.oJ.moveTo(cos, sin);
        double d15 = (float) (6.283185307179586d / d13);
        double d16 = radians + d15;
        double ceil = Math.ceil(d13);
        int i11 = 0;
        while (i11 < ceil) {
            float cos2 = (float) (Math.cos(d16) * d14);
            double d17 = ceil;
            float sin2 = (float) (d14 * Math.sin(d16));
            if (floatValue2 != 0.0f) {
                d11 = d14;
                i10 = i11;
                d10 = d16;
                double atan2 = (float) (Math.atan2(sin, cos) - 1.5707963267948966d);
                float cos3 = (float) Math.cos(atan2);
                d12 = d15;
                double atan22 = (float) (Math.atan2(sin2, cos2) - 1.5707963267948966d);
                float f10 = floatValue3 * floatValue2 * 0.25f;
                this.oJ.cubicTo(cos - (cos3 * f10), sin - (((float) Math.sin(atan2)) * f10), cos2 + (((float) Math.cos(atan22)) * f10), sin2 + (f10 * ((float) Math.sin(atan22))), cos2, sin2);
            } else {
                i10 = i11;
                d10 = d16;
                d11 = d14;
                d12 = d15;
                this.oJ.lineTo(cos2, sin2);
            }
            d16 = d10 + d12;
            i11 = i10 + 1;
            sin = sin2;
            cos = cos2;
            ceil = d17;
            d14 = d11;
            d15 = d12;
        }
        PointF cFZ = this.f11537so.cFZ();
        this.oJ.offset(cFZ.x, cFZ.y);
        this.oJ.close();
    }

    private void ZYk() {
        this.awB = false;
        this.tB.invalidateSelf();
    }

    private void tB() {
        double floatValue;
        float f10;
        float f11;
        int i10;
        float f12;
        float f13;
        double d10;
        float f14;
        float f15;
        float f16;
        float f17;
        float f18;
        double d11;
        float f19;
        float f20;
        float f21;
        double d12;
        float f22;
        float f23;
        float f24;
        float f25;
        float floatValue2 = this.cFZ.cFZ().floatValue();
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<?, Float> oJVar = this.jFA;
        if (oJVar == null) {
            floatValue = 0.0d;
        } else {
            floatValue = oJVar.cFZ().floatValue();
        }
        double radians = Math.toRadians(floatValue - 90.0d);
        double d13 = floatValue2;
        float f26 = (float) (6.283185307179586d / d13);
        if (this.f11536ba) {
            f26 *= -1.0f;
        }
        float f27 = f26 / 2.0f;
        float f28 = floatValue2 - ((int) floatValue2);
        int i11 = (f28 > 0.0f ? 1 : (f28 == 0.0f ? 0 : -1));
        if (i11 != 0) {
            radians += (1.0f - f28) * f27;
        }
        float floatValue3 = this.dLZ.cFZ().floatValue();
        float floatValue4 = this.kkU.cFZ().floatValue();
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<?, Float> oJVar2 = this.BTZ;
        if (oJVar2 != null) {
            f10 = oJVar2.cFZ().floatValue() / 100.0f;
        } else {
            f10 = 0.0f;
        }
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<?, Float> oJVar3 = this.PiB;
        if (oJVar3 != null) {
            f11 = oJVar3.cFZ().floatValue() / 100.0f;
        } else {
            f11 = 0.0f;
        }
        if (i11 != 0) {
            f15 = ((floatValue3 - floatValue4) * f28) + floatValue4;
            i10 = i11;
            double d14 = f15;
            float cos = (float) (d14 * Math.cos(radians));
            f14 = (float) (d14 * Math.sin(radians));
            this.oJ.moveTo(cos, f14);
            d10 = radians + ((f26 * f28) / 2.0f);
            f12 = cos;
            f13 = f27;
        } else {
            i10 = i11;
            double d15 = floatValue3;
            float cos2 = (float) (Math.cos(radians) * d15);
            float sin = (float) (d15 * Math.sin(radians));
            this.oJ.moveTo(cos2, sin);
            f12 = cos2;
            f13 = f27;
            d10 = radians + f13;
            f14 = sin;
            f15 = 0.0f;
        }
        double ceil = Math.ceil(d13) * 2.0d;
        int i12 = 0;
        float f29 = f13;
        float f30 = f12;
        boolean z10 = false;
        while (true) {
            double d16 = i12;
            if (d16 < ceil) {
                if (z10) {
                    f16 = floatValue3;
                } else {
                    f16 = floatValue4;
                }
                int i13 = (f15 > 0.0f ? 1 : (f15 == 0.0f ? 0 : -1));
                if (i13 != 0 && d16 == ceil - 2.0d) {
                    f17 = f26;
                    f18 = (f26 * f28) / 2.0f;
                } else {
                    f17 = f26;
                    f18 = f29;
                }
                if (i13 != 0 && d16 == ceil - 1.0d) {
                    d11 = d16;
                    f19 = f15;
                } else {
                    d11 = d16;
                    f19 = f15;
                    f15 = f16;
                }
                double d17 = f15;
                double d18 = ceil;
                float cos3 = (float) (d17 * Math.cos(d10));
                float sin2 = (float) (d17 * Math.sin(d10));
                if (f10 == 0.0f && f11 == 0.0f) {
                    this.oJ.lineTo(cos3, sin2);
                    d12 = d10;
                    f20 = f10;
                    f21 = f11;
                } else {
                    f20 = f10;
                    double atan2 = (float) (Math.atan2(f14, f30) - 1.5707963267948966d);
                    float cos4 = (float) Math.cos(atan2);
                    float sin3 = (float) Math.sin(atan2);
                    f21 = f11;
                    d12 = d10;
                    double atan22 = (float) (Math.atan2(sin2, cos3) - 1.5707963267948966d);
                    float cos5 = (float) Math.cos(atan22);
                    float sin4 = (float) Math.sin(atan22);
                    if (z10) {
                        f22 = f20;
                    } else {
                        f22 = f21;
                    }
                    if (z10) {
                        f23 = f21;
                    } else {
                        f23 = f20;
                    }
                    if (z10) {
                        f24 = floatValue4;
                    } else {
                        f24 = floatValue3;
                    }
                    if (z10) {
                        f25 = floatValue3;
                    } else {
                        f25 = floatValue4;
                    }
                    float f31 = f24 * f22 * 0.47829f;
                    float f32 = cos4 * f31;
                    float f33 = f31 * sin3;
                    float f34 = f25 * f23 * 0.47829f;
                    float f35 = cos5 * f34;
                    float f36 = f34 * sin4;
                    if (i10 != 0) {
                        if (i12 == 0) {
                            f32 *= f28;
                            f33 *= f28;
                        } else if (d11 == d18 - 1.0d) {
                            f35 *= f28;
                            f36 *= f28;
                        }
                    }
                    this.oJ.cubicTo(f30 - f32, f14 - f33, cos3 + f35, sin2 + f36, cos3, sin2);
                }
                d10 = d12 + f18;
                z10 = !z10;
                i12++;
                f30 = cos3;
                f14 = sin2;
                f11 = f21;
                f10 = f20;
                f15 = f19;
                f26 = f17;
                ceil = d18;
            } else {
                PointF cFZ = this.f11537so.cFZ();
                this.oJ.offset(cFZ.x, cFZ.y);
                this.oJ.close();
                return;
            }
        }
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.oJ.PiB
    public Path ex() {
        if (this.awB) {
            return this.oJ;
        }
        this.oJ.reset();
        if (this.Pfn) {
            this.awB = true;
            return this.oJ;
        }
        int i10 = AnonymousClass1.oJ[this.ex.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                Pfn();
            }
        } else {
            tB();
        }
        this.oJ.close();
        this.WcQ.oJ(this.oJ);
        this.awB = true;
        return this.oJ;
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ.InterfaceC0139oJ
    public void oJ() {
        ZYk();
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.oJ.tB
    public void oJ(List<tB> list, List<tB> list2) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            tB tBVar = list.get(i10);
            if (tBVar instanceof oq) {
                oq oqVar = (oq) tBVar;
                if (oqVar.ZYk() == RZ.oJ.SIMULTANEOUSLY) {
                    this.WcQ.oJ(oqVar);
                    oqVar.oJ(this);
                }
            }
        }
    }
}
