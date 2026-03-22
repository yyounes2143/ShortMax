package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.q0;
import u0.t;
/* compiled from: SolidLayer.java */
/* loaded from: classes2.dex */
public class f extends a {
    private final RectF E;
    private final Paint F;
    private final float[] G;
    private final Path H;
    private final Layer I;
    @Nullable
    private u0.a<ColorFilter, ColorFilter> J;
    @Nullable
    private u0.a<Integer, Integer> K;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(LottieDrawable lottieDrawable, Layer layer) {
        super(lottieDrawable, layer);
        this.E = new RectF();
        s0.a aVar = new s0.a();
        this.F = aVar;
        this.G = new float[8];
        this.H = new Path();
        this.I = layer;
        aVar.setAlpha(0);
        aVar.setStyle(Paint.Style.FILL);
        aVar.setColor(layer.p());
    }

    @Override // com.airbnb.lottie.model.layer.a, t0.e
    public void c(RectF rectF, Matrix matrix, boolean z10) {
        super.c(rectF, matrix, z10);
        this.E.set(0.0f, 0.0f, this.I.r(), this.I.q());
        this.f4640o.mapRect(this.E);
        rectF.set(this.E);
    }

    @Override // com.airbnb.lottie.model.layer.a, x0.e
    public <T> void e(T t10, @Nullable e1.c<T> cVar) {
        super.e(t10, cVar);
        if (t10 == q0.N) {
            if (cVar == null) {
                this.J = null;
            } else {
                this.J = new t(cVar);
            }
        } else if (t10 == q0.f4696a) {
            if (cVar == null) {
                this.K = null;
                this.F.setColor(this.I.p());
                return;
            }
            this.K = new t(cVar);
        }
    }

    @Override // com.airbnb.lottie.model.layer.a
    public void u(Canvas canvas, Matrix matrix, int i10, @Nullable com.airbnb.lottie.utils.a aVar) {
        Integer h10;
        int intValue;
        int alpha = Color.alpha(this.I.p());
        if (alpha == 0) {
            return;
        }
        u0.a<Integer, Integer> aVar2 = this.K;
        if (aVar2 == null) {
            h10 = null;
        } else {
            h10 = aVar2.h();
        }
        if (h10 != null) {
            this.F.setColor(h10.intValue());
        } else {
            this.F.setColor(this.I.p());
        }
        if (this.f4649x.k() == null) {
            intValue = 100;
        } else {
            intValue = this.f4649x.k().h().intValue();
        }
        int i11 = (int) ((i10 / 255.0f) * (((alpha / 255.0f) * intValue) / 100.0f) * 255.0f);
        this.F.setAlpha(i11);
        if (aVar != null) {
            aVar.a(this.F);
        } else {
            this.F.clearShadowLayer();
        }
        u0.a<ColorFilter, ColorFilter> aVar3 = this.J;
        if (aVar3 != null) {
            this.F.setColorFilter(aVar3.h());
        }
        if (i11 > 0) {
            float[] fArr = this.G;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            fArr[2] = this.I.r();
            float[] fArr2 = this.G;
            fArr2[3] = 0.0f;
            fArr2[4] = this.I.r();
            this.G[5] = this.I.q();
            float[] fArr3 = this.G;
            fArr3[6] = 0.0f;
            fArr3[7] = this.I.q();
            matrix.mapPoints(this.G);
            this.H.reset();
            Path path = this.H;
            float[] fArr4 = this.G;
            path.moveTo(fArr4[0], fArr4[1]);
            Path path2 = this.H;
            float[] fArr5 = this.G;
            path2.lineTo(fArr5[2], fArr5[3]);
            Path path3 = this.H;
            float[] fArr6 = this.G;
            path3.lineTo(fArr6[4], fArr6[5]);
            Path path4 = this.H;
            float[] fArr7 = this.G;
            path4.lineTo(fArr7[6], fArr7[7]);
            Path path5 = this.H;
            float[] fArr8 = this.G;
            path5.lineTo(fArr8[0], fArr8[1]);
            this.H.close();
            canvas.drawPath(this.H, this.F);
        }
    }
}
