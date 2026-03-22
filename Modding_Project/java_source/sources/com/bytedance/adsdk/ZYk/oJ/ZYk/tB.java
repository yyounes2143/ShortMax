package com.bytedance.adsdk.ZYk.oJ.ZYk;

import android.graphics.Color;
import android.graphics.Paint;
import com.bytedance.adsdk.ZYk.oJ.ZYk.oJ;
/* loaded from: classes3.dex */
public class tB implements oJ.InterfaceC0139oJ {
    private final oJ<Float, Float> Pfn;
    private final oJ<Integer, Integer> ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private final oJ<Float, Float> f11531ba;
    private boolean cFZ = true;
    private final oJ<Float, Float> ex;
    private final oJ.InterfaceC0139oJ oJ;
    private final oJ<Float, Float> tB;

    public tB(oJ.InterfaceC0139oJ interfaceC0139oJ, com.bytedance.adsdk.ZYk.tB.tB.oJ oJVar, com.bytedance.adsdk.ZYk.Pfn.kkU kku) {
        this.oJ = interfaceC0139oJ;
        oJ<Integer, Integer> oJ = kku.oJ().oJ();
        this.ZYk = oJ;
        oJ.oJ(this);
        oJVar.oJ(oJ);
        oJ<Float, Float> oJ2 = kku.ZYk().oJ();
        this.tB = oJ2;
        oJ2.oJ(this);
        oJVar.oJ(oJ2);
        oJ<Float, Float> oJ3 = kku.tB().oJ();
        this.ex = oJ3;
        oJ3.oJ(this);
        oJVar.oJ(oJ3);
        oJ<Float, Float> oJ4 = kku.ex().oJ();
        this.Pfn = oJ4;
        oJ4.oJ(this);
        oJVar.oJ(oJ4);
        oJ<Float, Float> oJ5 = kku.Pfn().oJ();
        this.f11531ba = oJ5;
        oJ5.oJ(this);
        oJVar.oJ(oJ5);
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ.InterfaceC0139oJ
    public void oJ() {
        this.cFZ = true;
        this.oJ.oJ();
    }

    public void oJ(Paint paint) {
        if (this.cFZ) {
            this.cFZ = false;
            double floatValue = this.ex.cFZ().floatValue() * 0.017453292519943295d;
            float floatValue2 = this.Pfn.cFZ().floatValue();
            float sin = ((float) Math.sin(floatValue)) * floatValue2;
            float cos = ((float) Math.cos(floatValue + 3.141592653589793d)) * floatValue2;
            int intValue = this.ZYk.cFZ().intValue();
            paint.setShadowLayer(this.f11531ba.cFZ().floatValue(), sin, cos, Color.argb(Math.round(this.tB.cFZ().floatValue()), Color.red(intValue), Color.green(intValue), Color.blue(intValue)));
        }
    }
}
