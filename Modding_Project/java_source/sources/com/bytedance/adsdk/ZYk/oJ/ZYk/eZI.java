package com.bytedance.adsdk.ZYk.oJ.ZYk;

import android.graphics.Matrix;
import android.graphics.PointF;
import com.bytedance.adsdk.ZYk.oJ.ZYk.oJ;
/* loaded from: classes3.dex */
public class eZI {
    private ex BTZ;
    private final float[] Pfn;
    private oJ<?, Float> PiB;
    private oJ<?, Float> WcQ;
    private final Matrix ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private oJ<PointF, PointF> f11526ba;
    private oJ<?, PointF> cFZ;
    private ex dLZ;
    private final Matrix ex;
    private oJ<Float, Float> jFA;
    private oJ<Integer, Integer> kkU;
    private final Matrix oJ = new Matrix();

    /* renamed from: so  reason: collision with root package name */
    private oJ<com.bytedance.adsdk.ZYk.cFZ.tB, com.bytedance.adsdk.ZYk.cFZ.tB> f11527so;
    private final Matrix tB;

    public eZI(com.bytedance.adsdk.ZYk.tB.oJ.BTZ btz) {
        oJ<PointF, PointF> oJ;
        oJ<PointF, PointF> oJ2;
        oJ<com.bytedance.adsdk.ZYk.cFZ.tB, com.bytedance.adsdk.ZYk.cFZ.tB> oJ3;
        oJ<Float, Float> oJ4;
        ex exVar;
        ex exVar2;
        if (btz.oJ() == null) {
            oJ = null;
        } else {
            oJ = btz.oJ().oJ();
        }
        this.f11526ba = oJ;
        if (btz.ZYk() == null) {
            oJ2 = null;
        } else {
            oJ2 = btz.ZYk().oJ();
        }
        this.cFZ = oJ2;
        if (btz.tB() == null) {
            oJ3 = null;
        } else {
            oJ3 = btz.tB().oJ();
        }
        this.f11527so = oJ3;
        if (btz.ex() == null) {
            oJ4 = null;
        } else {
            oJ4 = btz.ex().oJ();
        }
        this.jFA = oJ4;
        if (btz.so() == null) {
            exVar = null;
        } else {
            exVar = (ex) btz.so().oJ();
        }
        this.dLZ = exVar;
        if (exVar != null) {
            this.ZYk = new Matrix();
            this.tB = new Matrix();
            this.ex = new Matrix();
            this.Pfn = new float[9];
        } else {
            this.ZYk = null;
            this.tB = null;
            this.ex = null;
            this.Pfn = null;
        }
        if (btz.jFA() == null) {
            exVar2 = null;
        } else {
            exVar2 = (ex) btz.jFA().oJ();
        }
        this.BTZ = exVar2;
        if (btz.Pfn() != null) {
            this.kkU = btz.Pfn().oJ();
        }
        if (btz.ba() != null) {
            this.PiB = btz.ba().oJ();
        } else {
            this.PiB = null;
        }
        if (btz.cFZ() != null) {
            this.WcQ = btz.cFZ().oJ();
        } else {
            this.WcQ = null;
        }
    }

    private void Pfn() {
        for (int i10 = 0; i10 < 9; i10++) {
            this.Pfn[i10] = 0.0f;
        }
    }

    public oJ<?, Float> ZYk() {
        return this.PiB;
    }

    public Matrix ex() {
        ex exVar;
        PointF cFZ;
        ex exVar2;
        float cos;
        ex exVar3;
        float sin;
        float jFA;
        PointF cFZ2;
        this.oJ.reset();
        oJ<?, PointF> oJVar = this.cFZ;
        if (oJVar != null && (cFZ2 = oJVar.cFZ()) != null) {
            float f10 = cFZ2.x;
            if (f10 != 0.0f || cFZ2.y != 0.0f) {
                this.oJ.preTranslate(f10, cFZ2.y);
            }
        }
        oJ<Float, Float> oJVar2 = this.jFA;
        if (oJVar2 != null) {
            if (oJVar2 instanceof si) {
                jFA = oJVar2.cFZ().floatValue();
            } else {
                jFA = ((ex) oJVar2).jFA();
            }
            if (jFA != 0.0f) {
                this.oJ.preRotate(jFA);
            }
        }
        if (this.dLZ != null) {
            if (this.BTZ == null) {
                cos = 0.0f;
            } else {
                cos = (float) Math.cos(Math.toRadians((-exVar2.jFA()) + 90.0f));
            }
            if (this.BTZ == null) {
                sin = 1.0f;
            } else {
                sin = (float) Math.sin(Math.toRadians((-exVar3.jFA()) + 90.0f));
            }
            float tan = (float) Math.tan(Math.toRadians(exVar.jFA()));
            Pfn();
            float[] fArr = this.Pfn;
            fArr[0] = cos;
            fArr[1] = sin;
            float f11 = -sin;
            fArr[3] = f11;
            fArr[4] = cos;
            fArr[8] = 1.0f;
            this.ZYk.setValues(fArr);
            Pfn();
            float[] fArr2 = this.Pfn;
            fArr2[0] = 1.0f;
            fArr2[3] = tan;
            fArr2[4] = 1.0f;
            fArr2[8] = 1.0f;
            this.tB.setValues(fArr2);
            Pfn();
            float[] fArr3 = this.Pfn;
            fArr3[0] = cos;
            fArr3[1] = f11;
            fArr3[3] = sin;
            fArr3[4] = cos;
            fArr3[8] = 1.0f;
            this.ex.setValues(fArr3);
            this.tB.preConcat(this.ZYk);
            this.ex.preConcat(this.tB);
            this.oJ.preConcat(this.ex);
        }
        oJ<com.bytedance.adsdk.ZYk.cFZ.tB, com.bytedance.adsdk.ZYk.cFZ.tB> oJVar3 = this.f11527so;
        if (oJVar3 != null) {
            com.bytedance.adsdk.ZYk.cFZ.tB cFZ3 = oJVar3.cFZ();
            if (cFZ3.oJ() != 1.0f || cFZ3.ZYk() != 1.0f) {
                this.oJ.preScale(cFZ3.oJ(), cFZ3.ZYk());
            }
        }
        oJ<PointF, PointF> oJVar4 = this.f11526ba;
        if (oJVar4 != null && (((cFZ = oJVar4.cFZ()) != null && cFZ.x != 0.0f) || cFZ.y != 0.0f)) {
            this.oJ.preTranslate(-cFZ.x, -cFZ.y);
        }
        return this.oJ;
    }

    public void oJ(com.bytedance.adsdk.ZYk.tB.tB.oJ oJVar) {
        oJVar.oJ(this.kkU);
        oJVar.oJ(this.PiB);
        oJVar.oJ(this.WcQ);
        oJVar.oJ(this.f11526ba);
        oJVar.oJ(this.cFZ);
        oJVar.oJ(this.f11527so);
        oJVar.oJ(this.jFA);
        oJVar.oJ(this.dLZ);
        oJVar.oJ(this.BTZ);
    }

    public oJ<?, Float> tB() {
        return this.WcQ;
    }

    public Matrix ZYk(float f10) {
        oJ<?, PointF> oJVar = this.cFZ;
        PointF cFZ = oJVar == null ? null : oJVar.cFZ();
        oJ<com.bytedance.adsdk.ZYk.cFZ.tB, com.bytedance.adsdk.ZYk.cFZ.tB> oJVar2 = this.f11527so;
        com.bytedance.adsdk.ZYk.cFZ.tB cFZ2 = oJVar2 == null ? null : oJVar2.cFZ();
        this.oJ.reset();
        if (cFZ != null) {
            this.oJ.preTranslate(cFZ.x * f10, cFZ.y * f10);
        }
        if (cFZ2 != null) {
            double d10 = f10;
            this.oJ.preScale((float) Math.pow(cFZ2.oJ(), d10), (float) Math.pow(cFZ2.ZYk(), d10));
        }
        oJ<Float, Float> oJVar3 = this.jFA;
        if (oJVar3 != null) {
            float floatValue = oJVar3.cFZ().floatValue();
            oJ<PointF, PointF> oJVar4 = this.f11526ba;
            PointF cFZ3 = oJVar4 != null ? oJVar4.cFZ() : null;
            this.oJ.preRotate(floatValue * f10, cFZ3 == null ? 0.0f : cFZ3.x, cFZ3 != null ? cFZ3.y : 0.0f);
        }
        return this.oJ;
    }

    public void oJ(oJ.InterfaceC0139oJ interfaceC0139oJ) {
        oJ<Integer, Integer> oJVar = this.kkU;
        if (oJVar != null) {
            oJVar.oJ(interfaceC0139oJ);
        }
        oJ<?, Float> oJVar2 = this.PiB;
        if (oJVar2 != null) {
            oJVar2.oJ(interfaceC0139oJ);
        }
        oJ<?, Float> oJVar3 = this.WcQ;
        if (oJVar3 != null) {
            oJVar3.oJ(interfaceC0139oJ);
        }
        oJ<PointF, PointF> oJVar4 = this.f11526ba;
        if (oJVar4 != null) {
            oJVar4.oJ(interfaceC0139oJ);
        }
        oJ<?, PointF> oJVar5 = this.cFZ;
        if (oJVar5 != null) {
            oJVar5.oJ(interfaceC0139oJ);
        }
        oJ<com.bytedance.adsdk.ZYk.cFZ.tB, com.bytedance.adsdk.ZYk.cFZ.tB> oJVar6 = this.f11527so;
        if (oJVar6 != null) {
            oJVar6.oJ(interfaceC0139oJ);
        }
        oJ<Float, Float> oJVar7 = this.jFA;
        if (oJVar7 != null) {
            oJVar7.oJ(interfaceC0139oJ);
        }
        ex exVar = this.dLZ;
        if (exVar != null) {
            exVar.oJ(interfaceC0139oJ);
        }
        ex exVar2 = this.BTZ;
        if (exVar2 != null) {
            exVar2.oJ(interfaceC0139oJ);
        }
    }

    public void oJ(float f10) {
        oJ<Integer, Integer> oJVar = this.kkU;
        if (oJVar != null) {
            oJVar.oJ(f10);
        }
        oJ<?, Float> oJVar2 = this.PiB;
        if (oJVar2 != null) {
            oJVar2.oJ(f10);
        }
        oJ<?, Float> oJVar3 = this.WcQ;
        if (oJVar3 != null) {
            oJVar3.oJ(f10);
        }
        oJ<PointF, PointF> oJVar4 = this.f11526ba;
        if (oJVar4 != null) {
            oJVar4.oJ(f10);
        }
        oJ<?, PointF> oJVar5 = this.cFZ;
        if (oJVar5 != null) {
            oJVar5.oJ(f10);
        }
        oJ<com.bytedance.adsdk.ZYk.cFZ.tB, com.bytedance.adsdk.ZYk.cFZ.tB> oJVar6 = this.f11527so;
        if (oJVar6 != null) {
            oJVar6.oJ(f10);
        }
        oJ<Float, Float> oJVar7 = this.jFA;
        if (oJVar7 != null) {
            oJVar7.oJ(f10);
        }
        ex exVar = this.dLZ;
        if (exVar != null) {
            exVar.oJ(f10);
        }
        ex exVar2 = this.BTZ;
        if (exVar2 != null) {
            exVar2.oJ(f10);
        }
    }

    public oJ<?, Integer> oJ() {
        return this.kkU;
    }
}
