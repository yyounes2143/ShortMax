package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes3.dex */
public class so extends View {
    private static final int[] oJ = {Color.parseColor("#1AFFFFFF"), Color.parseColor("#4DFFFFFF"), Color.parseColor("#99FFFFFF")};
    private final Paint Pfn;
    private final RectF ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private final Paint f13322ba;
    private int cFZ;
    private final ArrayList<oJ> ex;
    private int jFA;

    /* renamed from: so  reason: collision with root package name */
    private int f13323so;
    private final RectF tB;

    /* loaded from: classes3.dex */
    private static final class oJ {
        public float ZYk;
        float ex;
        public Paint oJ;
        float tB;

        public oJ(Paint paint, float f10, float f11, float f12) {
            this.oJ = paint;
            this.ZYk = f10;
            this.tB = f11;
            this.ex = f12;
        }
    }

    public so(Context context) {
        super(context);
        this.ZYk = new RectF();
        this.tB = new RectF();
        this.ex = new ArrayList<>();
        this.f13322ba = new Paint();
        Paint paint = new Paint();
        this.Pfn = paint;
        paint.setColor(Color.parseColor("#D9D9D9"));
    }

    private void oJ() {
        if (this.cFZ <= 0) {
            return;
        }
        int width = (int) (((this.f13323so * 1.0f) / 100.0f) * getWidth());
        this.tB.right = Math.max(this.jFA, width);
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        RectF rectF = this.ZYk;
        int i10 = this.cFZ;
        canvas.drawRoundRect(rectF, i10, i10, this.Pfn);
        RectF rectF2 = this.tB;
        int i11 = this.cFZ;
        canvas.drawRoundRect(rectF2, i11, i11, this.f13322ba);
        int save = canvas.save();
        canvas.translate(this.tB.right - this.jFA, 0.0f);
        Iterator<oJ> it = this.ex.iterator();
        while (it.hasNext()) {
            oJ next = it.next();
            canvas.drawCircle(next.tB, next.ex, next.ZYk, next.oJ);
        }
        canvas.restoreToCount(save);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        int[] iArr;
        super.onSizeChanged(i10, i11, i12, i13);
        int i14 = i11 / 2;
        this.cFZ = i14;
        this.jFA = i14 * 5;
        float f10 = i10;
        float f11 = i11;
        this.ZYk.set(0.0f, 0.0f, f10, f11);
        this.tB.set(0.0f, 0.0f, 0.0f, f11);
        this.f13322ba.setShader(new LinearGradient(0.0f, 0.0f, f10, f11, new int[]{Color.parseColor("#90C0FF"), Color.parseColor("#196BE4")}, (float[]) null, Shader.TileMode.CLAMP));
        this.ex.clear();
        float f12 = this.cFZ / 4.0f;
        for (int i15 : oJ) {
            Paint paint = new Paint();
            paint.setColor(i15);
            this.ex.add(new oJ(paint, this.cFZ / 2.0f, f12, f11 / 2.0f));
            f12 += (this.cFZ / 2.0f) * 3.0f;
        }
        oJ();
    }

    public void setProgress(int i10) {
        int i11 = this.f13323so;
        if (i11 == i10) {
            return;
        }
        if (i10 < 0) {
            i10 = 0;
        } else if (i10 > 100) {
            i10 = 100;
        }
        if (i11 == i10) {
            return;
        }
        this.f13323so = i10;
        oJ();
    }
}
