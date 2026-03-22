package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.i;
import com.airbnb.lottie.q0;
import java.util.Collections;
import java.util.List;
import z0.k;
/* compiled from: ShapeLayer.java */
/* loaded from: classes2.dex */
public class e extends a {
    private final t0.d E;
    private final b F;
    @Nullable
    private u0.c G;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(LottieDrawable lottieDrawable, Layer layer, b bVar, i iVar) {
        super(lottieDrawable, layer);
        this.F = bVar;
        t0.d dVar = new t0.d(lottieDrawable, this, new k("__container", layer.o(), false), iVar);
        this.E = dVar;
        dVar.g(Collections.emptyList(), Collections.emptyList());
        if (z() != null) {
            this.G = new u0.c(this, this, z());
        }
    }

    @Override // com.airbnb.lottie.model.layer.a
    protected void J(x0.d dVar, int i10, List<x0.d> list, x0.d dVar2) {
        this.E.b(dVar, i10, list, dVar2);
    }

    @Override // com.airbnb.lottie.model.layer.a, t0.e
    public void c(RectF rectF, Matrix matrix, boolean z10) {
        super.c(rectF, matrix, z10);
        this.E.c(rectF, this.f4640o, z10);
    }

    @Override // com.airbnb.lottie.model.layer.a, x0.e
    @CallSuper
    public <T> void e(T t10, @Nullable e1.c<T> cVar) {
        u0.c cVar2;
        u0.c cVar3;
        u0.c cVar4;
        u0.c cVar5;
        u0.c cVar6;
        super.e(t10, cVar);
        if (t10 == q0.f4700e && (cVar6 = this.G) != null) {
            cVar6.b(cVar);
        } else if (t10 == q0.J && (cVar5 = this.G) != null) {
            cVar5.e(cVar);
        } else if (t10 == q0.K && (cVar4 = this.G) != null) {
            cVar4.c(cVar);
        } else if (t10 == q0.L && (cVar3 = this.G) != null) {
            cVar3.d(cVar);
        } else if (t10 == q0.M && (cVar2 = this.G) != null) {
            cVar2.g(cVar);
        }
    }

    @Override // com.airbnb.lottie.model.layer.a
    void u(@NonNull Canvas canvas, Matrix matrix, int i10, @Nullable com.airbnb.lottie.utils.a aVar) {
        u0.c cVar = this.G;
        if (cVar != null) {
            aVar = cVar.a(matrix, i10);
        }
        this.E.i(canvas, matrix, i10, aVar);
    }

    @Override // com.airbnb.lottie.model.layer.a
    @Nullable
    public z0.a x() {
        z0.a x10 = super.x();
        if (x10 != null) {
            return x10;
        }
        return this.F.x();
    }
}
