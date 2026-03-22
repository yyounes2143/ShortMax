package com.bytedance.adsdk.ZYk.tB.tB;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
/* loaded from: classes3.dex */
public class so extends oJ {
    private com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<ColorFilter, ColorFilter> BTZ;
    private final RectF cFZ;
    private final Pfn dLZ;
    private final float[] jFA;
    private final Path kkU;

    /* renamed from: so  reason: collision with root package name */
    private final Paint f11597so;

    /* JADX INFO: Access modifiers changed from: package-private */
    public so(com.bytedance.adsdk.ZYk.jFA jfa, Pfn pfn) {
        super(jfa, pfn);
        this.cFZ = new RectF();
        com.bytedance.adsdk.ZYk.oJ.oJ oJVar = new com.bytedance.adsdk.ZYk.oJ.oJ();
        this.f11597so = oJVar;
        this.jFA = new float[8];
        this.kkU = new Path();
        this.dLZ = pfn;
        oJVar.setAlpha(0);
        oJVar.setStyle(Paint.Style.FILL);
        oJVar.setColor(pfn.eZI());
    }

    @Override // com.bytedance.adsdk.ZYk.tB.tB.oJ
    public void ZYk(Canvas canvas, Matrix matrix, int i10) {
        int intValue;
        super.ZYk(canvas, matrix, i10);
        int alpha = Color.alpha(this.dLZ.eZI());
        if (alpha == 0) {
            return;
        }
        if (this.ex.oJ() == null) {
            intValue = 100;
        } else {
            intValue = this.ex.oJ().cFZ().intValue();
        }
        int i11 = (int) ((i10 / 255.0f) * (((alpha / 255.0f) * intValue) / 100.0f) * 255.0f);
        this.f11597so.setAlpha(i11);
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<ColorFilter, ColorFilter> oJVar = this.BTZ;
        if (oJVar != null) {
            this.f11597so.setColorFilter(oJVar.cFZ());
        }
        if (i11 > 0) {
            float[] fArr = this.jFA;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            fArr[2] = this.dLZ.Ry();
            float[] fArr2 = this.jFA;
            fArr2[3] = 0.0f;
            fArr2[4] = this.dLZ.Ry();
            this.jFA[5] = this.dLZ.si();
            float[] fArr3 = this.jFA;
            fArr3[6] = 0.0f;
            fArr3[7] = this.dLZ.si();
            matrix.mapPoints(this.jFA);
            this.kkU.reset();
            Path path = this.kkU;
            float[] fArr4 = this.jFA;
            path.moveTo(fArr4[0], fArr4[1]);
            Path path2 = this.kkU;
            float[] fArr5 = this.jFA;
            path2.lineTo(fArr5[2], fArr5[3]);
            Path path3 = this.kkU;
            float[] fArr6 = this.jFA;
            path3.lineTo(fArr6[4], fArr6[5]);
            Path path4 = this.kkU;
            float[] fArr7 = this.jFA;
            path4.lineTo(fArr7[6], fArr7[7]);
            Path path5 = this.kkU;
            float[] fArr8 = this.jFA;
            path5.lineTo(fArr8[0], fArr8[1]);
            this.kkU.close();
            canvas.drawPath(this.kkU, this.f11597so);
        }
    }

    @Override // com.bytedance.adsdk.ZYk.tB.tB.oJ, com.bytedance.adsdk.ZYk.oJ.oJ.Pfn
    public void oJ(RectF rectF, Matrix matrix, boolean z10) {
        super.oJ(rectF, matrix, z10);
        this.cFZ.set(0.0f, 0.0f, this.dLZ.Ry(), this.dLZ.si());
        this.oJ.mapRect(this.cFZ);
        rectF.set(this.cFZ);
    }
}
