package com.airbnb.lottie.model.layer;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.m0;
import com.airbnb.lottie.q0;
import com.airbnb.lottie.utils.OffscreenLayer;
import d1.p;
import u0.t;
/* compiled from: ImageLayer.java */
/* loaded from: classes2.dex */
public class c extends a {
    private final Paint E;
    private final Rect F;
    private final Rect G;
    private final RectF H;
    @Nullable
    private final m0 I;
    @Nullable
    private u0.a<ColorFilter, ColorFilter> J;
    @Nullable
    private u0.a<Bitmap, Bitmap> K;
    @Nullable
    private u0.c L;
    @Nullable
    private OffscreenLayer M;
    @Nullable
    private OffscreenLayer.b N;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(LottieDrawable lottieDrawable, Layer layer) {
        super(lottieDrawable, layer);
        this.E = new s0.a(3);
        this.F = new Rect();
        this.G = new Rect();
        this.H = new RectF();
        this.I = lottieDrawable.Q(layer.n());
        if (z() != null) {
            this.L = new u0.c(this, this, z());
        }
    }

    @Nullable
    private Bitmap Q() {
        Bitmap h10;
        u0.a<Bitmap, Bitmap> aVar = this.K;
        if (aVar != null && (h10 = aVar.h()) != null) {
            return h10;
        }
        Bitmap H = this.f4641p.H(this.f4642q.n());
        if (H != null) {
            return H;
        }
        m0 m0Var = this.I;
        if (m0Var != null) {
            return m0Var.b();
        }
        return null;
    }

    @Override // com.airbnb.lottie.model.layer.a, t0.e
    public void c(RectF rectF, Matrix matrix, boolean z10) {
        super.c(rectF, matrix, z10);
        if (this.I != null) {
            float e10 = p.e();
            if (this.f4641p.R()) {
                rectF.set(0.0f, 0.0f, this.I.f() * e10, this.I.d() * e10);
            } else {
                Bitmap Q = Q();
                if (Q != null) {
                    rectF.set(0.0f, 0.0f, Q.getWidth() * e10, Q.getHeight() * e10);
                } else {
                    rectF.set(0.0f, 0.0f, this.I.f() * e10, this.I.d() * e10);
                }
            }
            this.f4640o.mapRect(rectF);
        }
    }

    @Override // com.airbnb.lottie.model.layer.a, x0.e
    public <T> void e(T t10, @Nullable e1.c<T> cVar) {
        u0.c cVar2;
        u0.c cVar3;
        u0.c cVar4;
        u0.c cVar5;
        u0.c cVar6;
        super.e(t10, cVar);
        if (t10 == q0.N) {
            if (cVar == null) {
                this.J = null;
            } else {
                this.J = new t(cVar);
            }
        } else if (t10 == q0.Q) {
            if (cVar == null) {
                this.K = null;
            } else {
                this.K = new t(cVar);
            }
        } else if (t10 == q0.f4700e && (cVar6 = this.L) != null) {
            cVar6.b(cVar);
        } else if (t10 == q0.J && (cVar5 = this.L) != null) {
            cVar5.e(cVar);
        } else if (t10 == q0.K && (cVar4 = this.L) != null) {
            cVar4.c(cVar);
        } else if (t10 == q0.L && (cVar3 = this.L) != null) {
            cVar3.d(cVar);
        } else if (t10 == q0.M && (cVar2 = this.L) != null) {
            cVar2.g(cVar);
        }
    }

    @Override // com.airbnb.lottie.model.layer.a
    public void u(@NonNull Canvas canvas, Matrix matrix, int i10, @Nullable com.airbnb.lottie.utils.a aVar) {
        Bitmap Q = Q();
        if (Q != null && !Q.isRecycled() && this.I != null) {
            float e10 = p.e();
            this.E.setAlpha(i10);
            u0.a<ColorFilter, ColorFilter> aVar2 = this.J;
            if (aVar2 != null) {
                this.E.setColorFilter(aVar2.h());
            }
            u0.c cVar = this.L;
            if (cVar != null) {
                aVar = cVar.a(matrix, i10);
            }
            boolean z10 = false;
            this.F.set(0, 0, Q.getWidth(), Q.getHeight());
            if (this.f4641p.R()) {
                this.G.set(0, 0, (int) (this.I.f() * e10), (int) (this.I.d() * e10));
            } else {
                this.G.set(0, 0, (int) (Q.getWidth() * e10), (int) (Q.getHeight() * e10));
            }
            if (aVar != null) {
                z10 = true;
            }
            if (z10) {
                if (this.M == null) {
                    this.M = new OffscreenLayer();
                }
                if (this.N == null) {
                    this.N = new OffscreenLayer.b();
                }
                this.N.f();
                aVar.d(i10, this.N);
                RectF rectF = this.H;
                Rect rect = this.G;
                rectF.set(rect.left, rect.top, rect.right, rect.bottom);
                matrix.mapRect(this.H);
                canvas = this.M.j(canvas, this.H, this.N);
            }
            canvas.save();
            canvas.concat(matrix);
            canvas.drawBitmap(Q, this.F, this.G, this.E);
            if (z10) {
                this.M.e();
                if (this.M.f()) {
                    return;
                }
            }
            canvas.restore();
        }
    }
}
