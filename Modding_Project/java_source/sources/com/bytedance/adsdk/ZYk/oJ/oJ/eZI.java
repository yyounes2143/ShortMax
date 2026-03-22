package com.bytedance.adsdk.ZYk.oJ.oJ;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import com.bytedance.adsdk.ZYk.oJ.ZYk.oJ;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;
/* loaded from: classes3.dex */
public class eZI implements oJ.InterfaceC0139oJ, Pfn, PiB, dLZ, kkU {
    private final String Pfn;

    /* renamed from: ba  reason: collision with root package name */
    private final boolean f11544ba;
    private final com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> cFZ;
    private final com.bytedance.adsdk.ZYk.tB.tB.oJ ex;
    private final com.bytedance.adsdk.ZYk.oJ.ZYk.eZI jFA;
    private ex kkU;

    /* renamed from: so  reason: collision with root package name */
    private final com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> f11545so;
    private final com.bytedance.adsdk.ZYk.jFA tB;
    private final Matrix oJ = new Matrix();
    private final Path ZYk = new Path();

    public eZI(com.bytedance.adsdk.ZYk.jFA jfa, com.bytedance.adsdk.ZYk.tB.tB.oJ oJVar, com.bytedance.adsdk.ZYk.tB.ZYk.BTZ btz) {
        this.tB = jfa;
        this.ex = oJVar;
        this.Pfn = btz.oJ();
        this.f11544ba = btz.Pfn();
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> oJ = btz.ZYk().oJ();
        this.cFZ = oJ;
        oJVar.oJ(oJ);
        oJ.oJ(this);
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> oJ2 = btz.tB().oJ();
        this.f11545so = oJ2;
        oJVar.oJ(oJ2);
        oJ2.oJ(this);
        com.bytedance.adsdk.ZYk.oJ.ZYk.eZI kkU = btz.ex().kkU();
        this.jFA = kkU;
        kkU.oJ(oJVar);
        kkU.oJ(this);
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.oJ.PiB
    public Path ex() {
        Path ex = this.kkU.ex();
        this.ZYk.reset();
        float floatValue = this.cFZ.cFZ().floatValue();
        float floatValue2 = this.f11545so.cFZ().floatValue();
        for (int i10 = ((int) floatValue) - 1; i10 >= 0; i10--) {
            this.oJ.set(this.jFA.ZYk(i10 + floatValue2));
            this.ZYk.addPath(ex, this.oJ);
        }
        return this.ZYk;
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.oJ.kkU
    public void oJ(ListIterator<tB> listIterator) {
        if (this.kkU != null) {
            return;
        }
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        ArrayList arrayList = new ArrayList();
        while (listIterator.hasPrevious()) {
            arrayList.add(listIterator.previous());
            listIterator.remove();
        }
        Collections.reverse(arrayList);
        this.kkU = new ex(this.tB, this.ex, "Repeater", this.f11544ba, arrayList, null);
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.oJ.tB
    public void oJ(List<tB> list, List<tB> list2) {
        this.kkU.oJ(list, list2);
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.oJ.Pfn
    public void oJ(Canvas canvas, Matrix matrix, int i10) {
        float floatValue = this.cFZ.cFZ().floatValue();
        float floatValue2 = this.f11545so.cFZ().floatValue();
        float floatValue3 = this.jFA.ZYk().cFZ().floatValue() / 100.0f;
        float floatValue4 = this.jFA.tB().cFZ().floatValue() / 100.0f;
        for (int i11 = ((int) floatValue) - 1; i11 >= 0; i11--) {
            this.oJ.set(matrix);
            float f10 = i11;
            this.oJ.preConcat(this.jFA.ZYk(f10 + floatValue2));
            this.kkU.oJ(canvas, this.oJ, (int) (i10 * com.bytedance.adsdk.ZYk.ba.Pfn.oJ(floatValue3, floatValue4, f10 / floatValue)));
        }
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.oJ.Pfn
    public void oJ(RectF rectF, Matrix matrix, boolean z10) {
        this.kkU.oJ(rectF, matrix, z10);
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ.InterfaceC0139oJ
    public void oJ() {
        this.tB.invalidateSelf();
    }
}
