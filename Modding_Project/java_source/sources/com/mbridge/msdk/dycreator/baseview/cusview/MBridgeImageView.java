package com.mbridge.msdk.dycreator.baseview.cusview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Xfermode;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.mbridge.msdk.foundation.tools.p0;
/* loaded from: classes5.dex */
public class MBridgeImageView extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private Xfermode f26300a;

    /* renamed from: b  reason: collision with root package name */
    private int f26301b;

    /* renamed from: c  reason: collision with root package name */
    private int f26302c;

    /* renamed from: d  reason: collision with root package name */
    private int f26303d;

    /* renamed from: e  reason: collision with root package name */
    private int f26304e;

    /* renamed from: f  reason: collision with root package name */
    private int f26305f;

    /* renamed from: g  reason: collision with root package name */
    private int f26306g;

    /* renamed from: h  reason: collision with root package name */
    private int f26307h;

    /* renamed from: i  reason: collision with root package name */
    private int f26308i;

    /* renamed from: j  reason: collision with root package name */
    private int f26309j;

    /* renamed from: k  reason: collision with root package name */
    private float[] f26310k;

    /* renamed from: l  reason: collision with root package name */
    private float[] f26311l;

    /* renamed from: m  reason: collision with root package name */
    private RectF f26312m;

    /* renamed from: n  reason: collision with root package name */
    private RectF f26313n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f26314o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f26315p;

    /* renamed from: q  reason: collision with root package name */
    private Path f26316q;

    /* renamed from: r  reason: collision with root package name */
    private Paint f26317r;

    public MBridgeImageView(Context context) {
        this(context, null);
    }

    private void a(Canvas canvas) {
        a(canvas, this.f26308i, this.f26309j, this.f26313n, this.f26310k);
    }

    private void b() {
        int i10;
        int i11;
        int i12;
        try {
            if (this.f26310k != null && this.f26311l != null) {
                int i13 = 0;
                while (true) {
                    i10 = 2;
                    if (i13 >= 2) {
                        break;
                    }
                    float[] fArr = this.f26310k;
                    float f10 = this.f26304e;
                    fArr[i13] = f10;
                    this.f26311l[i13] = f10 - (this.f26308i / 2.0f);
                    i13++;
                }
                while (true) {
                    i11 = 4;
                    if (i10 >= 4) {
                        break;
                    }
                    float[] fArr2 = this.f26310k;
                    float f11 = this.f26305f;
                    fArr2[i10] = f11;
                    this.f26311l[i10] = f11 - (this.f26308i / 2.0f);
                    i10++;
                }
                while (true) {
                    if (i11 >= 6) {
                        break;
                    }
                    float[] fArr3 = this.f26310k;
                    float f12 = this.f26306g;
                    fArr3[i11] = f12;
                    this.f26311l[i11] = f12 - (this.f26308i / 2.0f);
                    i11++;
                }
                for (i12 = 6; i12 < 8; i12++) {
                    float[] fArr4 = this.f26310k;
                    float f13 = this.f26307h;
                    fArr4[i12] = f13;
                    this.f26311l[i12] = f13 - (this.f26308i / 2.0f);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void c() {
        RectF rectF = this.f26313n;
        if (rectF != null) {
            float f10 = this.f26308i / 2.0f;
            rectF.set(f10, f10, this.f26301b - f10, this.f26302c - f10);
        }
    }

    private void d() {
        RectF rectF = this.f26312m;
        if (rectF != null) {
            rectF.set(0.0f, 0.0f, this.f26301b, this.f26302c);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        int i10;
        if (canvas == null) {
            return;
        }
        try {
            canvas.saveLayer(this.f26312m, null, 31);
            int i11 = this.f26301b;
            int i12 = this.f26308i * 2;
            float f10 = i11;
            float f11 = this.f26302c;
            canvas.scale(((i11 - i12) * 1.0f) / f10, ((i10 - i12) * 1.0f) / f11, f10 / 2.0f, f11 / 2.0f);
            super.onDraw(canvas);
            Paint paint = this.f26317r;
            if (paint != null) {
                paint.reset();
                this.f26317r.setAntiAlias(true);
                this.f26317r.setStyle(Paint.Style.FILL);
                this.f26317r.setXfermode(this.f26300a);
            }
            Path path = this.f26316q;
            if (path != null) {
                path.reset();
                this.f26316q.addRoundRect(this.f26312m, this.f26311l, Path.Direction.CCW);
            }
            canvas.drawPath(this.f26316q, this.f26317r);
            Paint paint2 = this.f26317r;
            if (paint2 != null) {
                paint2.setXfermode(null);
            }
            canvas.restore();
            if (this.f26314o) {
                a(canvas);
            }
        } catch (Exception e10) {
            p0.a("MBridgeImageView", e10.getMessage());
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.f26301b = i10;
        this.f26302c = i11;
        if (this.f26315p) {
            b();
        } else {
            a();
        }
        c();
        d();
    }

    public void setBorder(int i10, int i11, int i12) {
        this.f26314o = true;
        this.f26308i = i11;
        this.f26309j = i12;
        this.f26303d = i10;
    }

    public void setCornerRadius(int i10) {
        this.f26303d = i10;
    }

    public void setCustomBorder(int i10, int i11, int i12, int i13, int i14, int i15) {
        this.f26314o = true;
        this.f26315p = true;
        this.f26308i = i14;
        this.f26309j = i15;
        this.f26304e = i10;
        this.f26306g = i12;
        this.f26305f = i11;
        this.f26307h = i13;
    }

    public MBridgeImageView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void a(Canvas canvas, int i10, int i11, RectF rectF, float[] fArr) {
        try {
            a(i10, i11);
            Path path = this.f26316q;
            if (path != null) {
                path.addRoundRect(rectF, fArr, Path.Direction.CCW);
            }
            if (canvas != null) {
                canvas.drawPath(this.f26316q, this.f26317r);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public MBridgeImageView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f26316q = new Path();
        this.f26317r = new Paint();
        this.f26310k = new float[8];
        this.f26311l = new float[8];
        this.f26313n = new RectF();
        this.f26312m = new RectF();
        this.f26300a = new PorterDuffXfermode(PorterDuff.Mode.DST_IN);
    }

    private void a(int i10, int i11) {
        Path path = this.f26316q;
        if (path != null) {
            path.reset();
        }
        Paint paint = this.f26317r;
        if (paint != null) {
            paint.setStrokeWidth(i10);
            this.f26317r.setColor(i11);
            this.f26317r.setStyle(Paint.Style.STROKE);
        }
    }

    private void a() {
        if (this.f26310k == null || this.f26311l == null) {
            return;
        }
        int i10 = 0;
        while (true) {
            try {
                float[] fArr = this.f26310k;
                if (i10 >= fArr.length) {
                    return;
                }
                float f10 = this.f26303d;
                fArr[i10] = f10;
                this.f26311l[i10] = f10 - (this.f26308i / 2.0f);
                i10++;
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
    }
}
