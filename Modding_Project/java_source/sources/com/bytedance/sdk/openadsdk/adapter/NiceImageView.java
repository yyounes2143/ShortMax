package com.bytedance.sdk.openadsdk.adapter;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Xfermode;
import android.os.Build;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.core.Pfn.ex;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class NiceImageView extends ex {
    private int BTZ;
    private final Paint Id;
    private int Pfn;
    private int PiB;
    private RectF QSm;
    private final float[] RZ;
    private final float[] Ry;
    private final Xfermode WcQ;
    private boolean ZYk;
    private int awB;

    /* renamed from: ba  reason: collision with root package name */
    private int f12933ba;
    private int cFZ;
    private final Path cY;
    private int dLZ;
    private int eZI;
    private int ex;
    private int jFA;

    /* renamed from: jr  reason: collision with root package name */
    private Path f12934jr;
    private int kkU;
    private final Context oJ;

    /* renamed from: oq  reason: collision with root package name */
    private final RectF f12935oq;

    /* renamed from: si  reason: collision with root package name */
    private float f12936si;

    /* renamed from: so  reason: collision with root package name */
    private int f12937so;
    private boolean tB;

    public NiceImageView(Context context) {
        this(context, null);
    }

    private void ZYk() {
        if (this.ZYk) {
            float min = Math.min(this.awB, this.eZI) / 2.0f;
            this.f12936si = min;
            RectF rectF = this.QSm;
            int i10 = this.awB;
            int i11 = this.eZI;
            rectF.set((i10 / 2.0f) - min, (i11 / 2.0f) - min, (i10 / 2.0f) + min, (i11 / 2.0f) + min);
            return;
        }
        this.QSm.set(0.0f, 0.0f, this.awB, this.eZI);
        if (this.tB) {
            this.QSm = this.f12935oq;
        }
    }

    private void ex() {
        if (!this.ZYk) {
            this.f12933ba = 0;
        }
    }

    private void oJ(Canvas canvas) {
        if (this.ZYk) {
            int i10 = this.ex;
            if (i10 > 0) {
                oJ(canvas, i10, this.Pfn, this.f12936si - (i10 / 2.0f));
            }
            int i11 = this.f12933ba;
            if (i11 > 0) {
                oJ(canvas, i11, this.cFZ, (this.f12936si - this.ex) - (i11 / 2.0f));
                return;
            }
            return;
        }
        int i12 = this.ex;
        if (i12 > 0) {
            oJ(canvas, i12, this.Pfn, this.f12935oq, this.Ry);
        }
    }

    private void tB() {
        if (this.ZYk) {
            return;
        }
        int i10 = 0;
        if (this.f12937so <= 0) {
            float[] fArr = this.Ry;
            int i11 = this.jFA;
            float f10 = i11;
            fArr[1] = f10;
            fArr[0] = f10;
            int i12 = this.kkU;
            float f11 = i12;
            fArr[3] = f11;
            fArr[2] = f11;
            int i13 = this.BTZ;
            float f12 = i13;
            fArr[5] = f12;
            fArr[4] = f12;
            int i14 = this.dLZ;
            float f13 = i14;
            fArr[7] = f13;
            fArr[6] = f13;
            float[] fArr2 = this.RZ;
            int i15 = this.ex;
            float f14 = i11 - (i15 / 2.0f);
            fArr2[1] = f14;
            fArr2[0] = f14;
            float f15 = i12 - (i15 / 2.0f);
            fArr2[3] = f15;
            fArr2[2] = f15;
            float f16 = i13 - (i15 / 2.0f);
            fArr2[5] = f16;
            fArr2[4] = f16;
            float f17 = i14 - (i15 / 2.0f);
            fArr2[7] = f17;
            fArr2[6] = f17;
            return;
        }
        while (true) {
            float[] fArr3 = this.Ry;
            if (i10 < fArr3.length) {
                int i16 = this.f12937so;
                fArr3[i10] = i16;
                this.RZ[i10] = i16 - (this.ex / 2.0f);
                i10++;
            } else {
                return;
            }
        }
    }

    public void isCircle(boolean z10) {
        this.ZYk = z10;
        ex();
        ZYk();
        invalidate();
    }

    public void isCoverSrc(boolean z10) {
        this.tB = z10;
        ZYk();
        invalidate();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.saveLayer(this.QSm, null, 31);
        if (!this.tB) {
            int i10 = this.awB;
            int i11 = this.ex;
            int i12 = this.f12933ba;
            int i13 = this.eZI;
            canvas.scale((((i10 - (i11 * 2)) - (i12 * 2)) * 1.0f) / i10, (((i13 - (i11 * 2)) - (i12 * 2)) * 1.0f) / i13, i10 / 2.0f, i13 / 2.0f);
        }
        super.onDraw(canvas);
        this.Id.reset();
        this.cY.reset();
        if (this.ZYk) {
            this.cY.addCircle(this.awB / 2.0f, this.eZI / 2.0f, this.f12936si, Path.Direction.CCW);
        } else {
            this.cY.addRoundRect(this.QSm, this.RZ, Path.Direction.CCW);
        }
        this.Id.setAntiAlias(true);
        this.Id.setStyle(Paint.Style.FILL);
        this.Id.setXfermode(this.WcQ);
        if (Build.VERSION.SDK_INT <= 27) {
            canvas.drawPath(this.cY, this.Id);
        } else {
            this.f12934jr.addRect(this.QSm, Path.Direction.CCW);
            this.f12934jr.op(this.cY, Path.Op.DIFFERENCE);
            canvas.drawPath(this.f12934jr, this.Id);
        }
        this.Id.setXfermode(null);
        int i14 = this.PiB;
        if (i14 != 0) {
            this.Id.setColor(i14);
            canvas.drawPath(this.cY, this.Id);
        }
        canvas.restore();
        oJ(canvas);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.awB = i10;
        this.eZI = i11;
        oJ();
        ZYk();
    }

    public void setBorderColor(@ColorInt int i10) {
        this.Pfn = i10;
        invalidate();
    }

    public void setBorderWidth(int i10) {
        this.ex = cdg.ZYk(this.oJ, i10);
        oJ(false);
    }

    public void setCornerBottomLeftRadius(int i10) {
        this.dLZ = cdg.ZYk(this.oJ, i10);
        oJ(true);
    }

    public void setCornerBottomRightRadius(int i10) {
        this.BTZ = cdg.ZYk(this.oJ, i10);
        oJ(true);
    }

    public void setCornerRadius(int i10) {
        this.f12937so = cdg.ZYk(this.oJ, i10);
        oJ(false);
    }

    public void setCornerTopLeftRadius(int i10) {
        this.jFA = cdg.ZYk(this.oJ, i10);
        oJ(true);
    }

    public void setCornerTopRightRadius(int i10) {
        this.kkU = cdg.ZYk(this.oJ, i10);
        oJ(true);
    }

    public void setInnerBorderColor(@ColorInt int i10) {
        this.cFZ = i10;
        invalidate();
    }

    public void setInnerBorderWidth(int i10) {
        this.f12933ba = cdg.ZYk(this.oJ, i10);
        ex();
        invalidate();
    }

    public void setMaskColor(@ColorInt int i10) {
        this.PiB = i10;
        invalidate();
    }

    public NiceImageView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NiceImageView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.Pfn = -1;
        this.cFZ = -1;
        this.oJ = context;
        this.f12937so = cdg.ZYk(context, 10.0f);
        this.Ry = new float[8];
        this.RZ = new float[8];
        this.f12935oq = new RectF();
        this.QSm = new RectF();
        this.Id = new Paint();
        this.cY = new Path();
        if (Build.VERSION.SDK_INT <= 27) {
            this.WcQ = new PorterDuffXfermode(PorterDuff.Mode.DST_IN);
        } else {
            this.WcQ = new PorterDuffXfermode(PorterDuff.Mode.DST_OUT);
            this.f12934jr = new Path();
        }
        tB();
        ex();
    }

    private void oJ(Canvas canvas, int i10, int i11, float f10) {
        oJ(i10, i11);
        this.cY.addCircle(this.awB / 2.0f, this.eZI / 2.0f, f10, Path.Direction.CCW);
        canvas.drawPath(this.cY, this.Id);
    }

    private void oJ(Canvas canvas, int i10, int i11, RectF rectF, float[] fArr) {
        oJ(i10, i11);
        this.cY.addRoundRect(rectF, fArr, Path.Direction.CCW);
        canvas.drawPath(this.cY, this.Id);
    }

    private void oJ(int i10, int i11) {
        this.cY.reset();
        this.Id.setStrokeWidth(i10);
        this.Id.setColor(i11);
        this.Id.setStyle(Paint.Style.STROKE);
    }

    private void oJ() {
        if (this.ZYk) {
            return;
        }
        RectF rectF = this.f12935oq;
        int i10 = this.ex;
        rectF.set(i10 / 2.0f, i10 / 2.0f, this.awB - (i10 / 2.0f), this.eZI - (i10 / 2.0f));
    }

    private void oJ(boolean z10) {
        if (z10) {
            this.f12937so = 0;
        }
        tB();
        oJ();
        invalidate();
    }
}
