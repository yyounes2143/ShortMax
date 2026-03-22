package com.bytedance.adsdk.ZYk.tB.tB;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
/* loaded from: classes3.dex */
public class kkU extends ex {
    private int jFA;
    private int kkU;

    /* renamed from: so  reason: collision with root package name */
    private Path f11590so;

    public kkU(com.bytedance.adsdk.ZYk.jFA jfa, Pfn pfn, Context context) {
        super(jfa, pfn);
        this.f11590so = null;
        this.jFA = -1;
        this.kkU = -1;
        if (((ex) this).cFZ != null) {
            float oJ = com.bytedance.adsdk.ZYk.ba.ba.oJ();
            this.jFA = (int) (((ex) this).cFZ.oJ() * oJ);
            this.kkU = (int) (((ex) this).cFZ.ZYk() * oJ);
            RectF rectF = new RectF();
            rectF.set(0.0f, 0.0f, this.jFA, this.kkU);
            Path path = new Path();
            this.f11590so = path;
            float f10 = oJ * 40.0f;
            path.addRoundRect(rectF, f10, f10, Path.Direction.CW);
        }
    }

    private static void oJ(View view, int i10, int i11) {
        view.layout(0, 0, i10, i11);
        view.measure(View.MeasureSpec.makeMeasureSpec(i10, 1073741824), View.MeasureSpec.makeMeasureSpec(i11, 1073741824));
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    @Override // com.bytedance.adsdk.ZYk.tB.tB.ex, com.bytedance.adsdk.ZYk.tB.tB.oJ
    public void ZYk(Canvas canvas, Matrix matrix, int i10) {
        View oJ = this.ZYk.oJ();
        if (this.jFA > 0 && oJ != null) {
            canvas.save();
            canvas.concat(matrix);
            oJ(i10);
            float ba2 = ba();
            oJ(oJ, this.jFA, this.kkU);
            oJ.setAlpha(ba2);
            canvas.clipPath(this.f11590so);
            oJ.draw(canvas);
            canvas.restore();
        }
    }
}
