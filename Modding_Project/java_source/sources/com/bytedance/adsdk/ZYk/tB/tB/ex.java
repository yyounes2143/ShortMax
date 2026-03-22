package com.bytedance.adsdk.ZYk.tB.tB;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
/* loaded from: classes3.dex */
public class ex extends oJ {
    private com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Bitmap, Bitmap> BTZ;
    protected final com.bytedance.adsdk.ZYk.kkU cFZ;
    private com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<ColorFilter, ColorFilter> dLZ;
    private final Rect jFA;
    private final Rect kkU;

    /* renamed from: so  reason: collision with root package name */
    private final Paint f11584so;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ex(com.bytedance.adsdk.ZYk.jFA jfa, Pfn pfn) {
        super(jfa, pfn);
        this.f11584so = new com.bytedance.adsdk.ZYk.oJ.oJ(3);
        this.jFA = new Rect();
        this.kkU = new Rect();
        this.cFZ = jfa.ba(pfn.cFZ());
    }

    private Bitmap BTZ() {
        Bitmap cFZ;
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Bitmap, Bitmap> oJVar = this.BTZ;
        if (oJVar != null && (cFZ = oJVar.cFZ()) != null) {
            return cFZ;
        }
        Bitmap Pfn = this.ZYk.Pfn(this.tB.cFZ());
        if (Pfn != null) {
            return Pfn;
        }
        com.bytedance.adsdk.ZYk.kkU kku = this.cFZ;
        if (kku != null) {
            return kku.dLZ();
        }
        return null;
    }

    @Override // com.bytedance.adsdk.ZYk.tB.tB.oJ
    public void ZYk(Canvas canvas, Matrix matrix, int i10) {
        super.ZYk(canvas, matrix, i10);
        Bitmap BTZ = BTZ();
        if (BTZ != null && !BTZ.isRecycled() && this.cFZ != null) {
            float oJ = com.bytedance.adsdk.ZYk.ba.ba.oJ();
            this.f11584so.setAlpha(i10);
            com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<ColorFilter, ColorFilter> oJVar = this.dLZ;
            if (oJVar != null) {
                this.f11584so.setColorFilter(oJVar.cFZ());
            }
            canvas.save();
            canvas.concat(matrix);
            this.jFA.set(0, 0, BTZ.getWidth(), BTZ.getHeight());
            if (this.ZYk.Pfn()) {
                this.kkU.set(0, 0, (int) (this.cFZ.oJ() * oJ), (int) (this.cFZ.ZYk() * oJ));
            } else {
                this.kkU.set(0, 0, (int) (BTZ.getWidth() * oJ), (int) (BTZ.getHeight() * oJ));
            }
            canvas.drawBitmap(BTZ, this.jFA, this.kkU, this.f11584so);
            canvas.restore();
        }
    }

    @Override // com.bytedance.adsdk.ZYk.tB.tB.oJ, com.bytedance.adsdk.ZYk.oJ.oJ.Pfn
    public void oJ(RectF rectF, Matrix matrix, boolean z10) {
        super.oJ(rectF, matrix, z10);
        if (this.cFZ != null) {
            float oJ = com.bytedance.adsdk.ZYk.ba.ba.oJ();
            rectF.set(0.0f, 0.0f, this.cFZ.oJ() * oJ, this.cFZ.ZYk() * oJ);
            this.oJ.mapRect(rectF);
        }
    }
}
