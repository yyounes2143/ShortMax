package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.i;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.q0;
import com.airbnb.lottie.utils.OffscreenLayer;
import java.util.ArrayList;
import java.util.List;
import u0.t;
/* compiled from: CompositionLayer.java */
/* loaded from: classes2.dex */
public class b extends com.airbnb.lottie.model.layer.a {
    @Nullable
    private u0.a<Float, Float> E;
    private final List<com.airbnb.lottie.model.layer.a> F;
    private final RectF G;
    private final RectF H;
    private final RectF I;
    private final OffscreenLayer J;
    private final OffscreenLayer.b K;
    private float L;
    private boolean M;
    @Nullable
    private u0.c N;

    /* compiled from: CompositionLayer.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f4654a;

        static {
            int[] iArr = new int[Layer.MatteType.values().length];
            f4654a = iArr;
            try {
                iArr[Layer.MatteType.ADD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4654a[Layer.MatteType.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public b(LottieDrawable lottieDrawable, Layer layer, List<Layer> list, i iVar) {
        super(lottieDrawable, layer);
        int i10;
        com.airbnb.lottie.model.layer.a aVar;
        this.F = new ArrayList();
        this.G = new RectF();
        this.H = new RectF();
        this.I = new RectF();
        this.J = new OffscreenLayer();
        this.K = new OffscreenLayer.b();
        this.M = true;
        y0.b v10 = layer.v();
        if (v10 != null) {
            u0.d a10 = v10.a();
            this.E = a10;
            j(a10);
            this.E.a(this);
        } else {
            this.E = null;
        }
        LongSparseArray longSparseArray = new LongSparseArray(iVar.k().size());
        int size = list.size() - 1;
        com.airbnb.lottie.model.layer.a aVar2 = null;
        while (true) {
            if (size < 0) {
                break;
            }
            Layer layer2 = list.get(size);
            com.airbnb.lottie.model.layer.a v11 = com.airbnb.lottie.model.layer.a.v(this, layer2, lottieDrawable, iVar);
            if (v11 != null) {
                longSparseArray.put(v11.A().e(), v11);
                if (aVar2 != null) {
                    aVar2.K(v11);
                    aVar2 = null;
                } else {
                    this.F.add(0, v11);
                    int i11 = a.f4654a[layer2.i().ordinal()];
                    if (i11 == 1 || i11 == 2) {
                        aVar2 = v11;
                    }
                }
            }
            size--;
        }
        for (i10 = 0; i10 < longSparseArray.size(); i10++) {
            com.airbnb.lottie.model.layer.a aVar3 = (com.airbnb.lottie.model.layer.a) longSparseArray.get(longSparseArray.keyAt(i10));
            if (aVar3 != null && (aVar = (com.airbnb.lottie.model.layer.a) longSparseArray.get(aVar3.A().k())) != null) {
                aVar3.M(aVar);
            }
        }
        if (z() != null) {
            this.N = new u0.c(this, this, z());
        }
    }

    @Override // com.airbnb.lottie.model.layer.a
    protected void J(x0.d dVar, int i10, List<x0.d> list, x0.d dVar2) {
        for (int i11 = 0; i11 < this.F.size(); i11++) {
            this.F.get(i11).b(dVar, i10, list, dVar2);
        }
    }

    @Override // com.airbnb.lottie.model.layer.a
    public void L(boolean z10) {
        super.L(z10);
        for (com.airbnb.lottie.model.layer.a aVar : this.F) {
            aVar.L(z10);
        }
    }

    @Override // com.airbnb.lottie.model.layer.a
    public void N(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        if (com.airbnb.lottie.d.h()) {
            com.airbnb.lottie.d.b("CompositionLayer#setProgress");
        }
        this.L = f10;
        super.N(f10);
        if (this.E != null) {
            f10 = ((this.E.h().floatValue() * this.f4642q.c().i()) - this.f4642q.c().p()) / (this.f4641p.K().e() + 0.01f);
        }
        if (this.E == null) {
            f10 -= this.f4642q.s();
        }
        if (this.f4642q.w() != 0.0f && !"__container".equals(this.f4642q.j())) {
            f10 /= this.f4642q.w();
        }
        for (int size = this.F.size() - 1; size >= 0; size--) {
            this.F.get(size).N(f10);
        }
        if (com.airbnb.lottie.d.h()) {
            com.airbnb.lottie.d.c("CompositionLayer#setProgress");
        }
    }

    public float Q() {
        return this.L;
    }

    public void R(boolean z10) {
        this.M = z10;
    }

    @Override // com.airbnb.lottie.model.layer.a, t0.e
    public void c(RectF rectF, Matrix matrix, boolean z10) {
        super.c(rectF, matrix, z10);
        for (int size = this.F.size() - 1; size >= 0; size--) {
            this.G.set(0.0f, 0.0f, 0.0f, 0.0f);
            this.F.get(size).c(this.G, this.f4640o, true);
            rectF.union(this.G);
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
        if (t10 == q0.H) {
            if (cVar == null) {
                u0.a<Float, Float> aVar = this.E;
                if (aVar != null) {
                    aVar.o(null);
                    return;
                }
                return;
            }
            t tVar = new t(cVar);
            this.E = tVar;
            tVar.a(this);
            j(this.E);
        } else if (t10 == q0.f4700e && (cVar6 = this.N) != null) {
            cVar6.b(cVar);
        } else if (t10 == q0.J && (cVar5 = this.N) != null) {
            cVar5.e(cVar);
        } else if (t10 == q0.K && (cVar4 = this.N) != null) {
            cVar4.c(cVar);
        } else if (t10 == q0.L && (cVar3 = this.N) != null) {
            cVar3.d(cVar);
        } else if (t10 == q0.M && (cVar2 = this.N) != null) {
            cVar2.g(cVar);
        }
    }

    @Override // com.airbnb.lottie.model.layer.a
    void u(Canvas canvas, Matrix matrix, int i10, @Nullable com.airbnb.lottie.utils.a aVar) {
        boolean z10;
        Canvas canvas2;
        if (com.airbnb.lottie.d.h()) {
            com.airbnb.lottie.d.b("CompositionLayer#draw");
        }
        boolean z11 = false;
        if (aVar == null && this.N == null) {
            z10 = false;
        } else {
            z10 = true;
        }
        int i11 = 255;
        if ((this.f4641p.g0() && this.F.size() > 1 && i10 != 255) || (z10 && this.f4641p.h0())) {
            z11 = true;
        }
        if (!z11) {
            i11 = i10;
        }
        u0.c cVar = this.N;
        if (cVar != null) {
            aVar = cVar.a(matrix, i11);
        }
        if (!this.M && "__container".equals(this.f4642q.j())) {
            this.H.setEmpty();
            for (com.airbnb.lottie.model.layer.a aVar2 : this.F) {
                aVar2.c(this.I, matrix, true);
                this.H.union(this.I);
            }
        } else {
            this.H.set(0.0f, 0.0f, this.f4642q.m(), this.f4642q.l());
            matrix.mapRect(this.H);
        }
        if (z11) {
            this.K.f();
            OffscreenLayer.b bVar = this.K;
            bVar.f4770a = i10;
            if (aVar != null) {
                aVar.b(bVar);
                aVar = null;
            }
            canvas2 = this.J.j(canvas, this.H, this.K);
        } else {
            canvas2 = canvas;
        }
        canvas.save();
        if (canvas.clipRect(this.H)) {
            for (int size = this.F.size() - 1; size >= 0; size--) {
                this.F.get(size).i(canvas2, matrix, i11, aVar);
            }
        }
        if (z11) {
            this.J.e();
        }
        canvas.restore();
        if (com.airbnb.lottie.d.h()) {
            com.airbnb.lottie.d.c("CompositionLayer#draw");
        }
    }
}
