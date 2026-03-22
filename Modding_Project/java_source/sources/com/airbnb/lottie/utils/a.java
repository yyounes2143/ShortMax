package com.airbnb.lottie.utils;

import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import androidx.annotation.Nullable;
import com.airbnb.lottie.utils.OffscreenLayer;
import d1.k;
import d1.p;
/* compiled from: DropShadow.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private float f4774a;

    /* renamed from: b  reason: collision with root package name */
    private float f4775b;

    /* renamed from: c  reason: collision with root package name */
    private float f4776c;

    /* renamed from: d  reason: collision with root package name */
    private int f4777d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private float[] f4778e = null;

    public a(float f10, float f11, float f12, int i10) {
        this.f4774a = f10;
        this.f4775b = f11;
        this.f4776c = f12;
        this.f4777d = i10;
    }

    public void a(Paint paint) {
        if (Color.alpha(this.f4777d) > 0) {
            paint.setShadowLayer(Math.max(this.f4774a, Float.MIN_VALUE), this.f4775b, this.f4776c, this.f4777d);
        } else {
            paint.clearShadowLayer();
        }
    }

    public void b(OffscreenLayer.b bVar) {
        if (Color.alpha(this.f4777d) > 0) {
            bVar.f4773d = this;
        } else {
            bVar.f4773d = null;
        }
    }

    public void c(int i10, Paint paint) {
        int l10 = p.l(Color.alpha(this.f4777d), k.c(i10, 0, 255));
        if (l10 > 0) {
            paint.setShadowLayer(Math.max(this.f4774a, Float.MIN_VALUE), this.f4775b, this.f4776c, Color.argb(l10, Color.red(this.f4777d), Color.green(this.f4777d), Color.blue(this.f4777d)));
            return;
        }
        paint.clearShadowLayer();
    }

    public void d(int i10, OffscreenLayer.b bVar) {
        a aVar = new a(this);
        bVar.f4773d = aVar;
        aVar.i(i10);
    }

    public int e() {
        return this.f4777d;
    }

    public float f() {
        return this.f4775b;
    }

    public float g() {
        return this.f4776c;
    }

    public float h() {
        return this.f4774a;
    }

    public void i(int i10) {
        this.f4777d = Color.argb(Math.round((Color.alpha(this.f4777d) * k.c(i10, 0, 255)) / 255.0f), Color.red(this.f4777d), Color.green(this.f4777d), Color.blue(this.f4777d));
    }

    public boolean j(a aVar) {
        if (this.f4774a == aVar.f4774a && this.f4775b == aVar.f4775b && this.f4776c == aVar.f4776c && this.f4777d == aVar.f4777d) {
            return true;
        }
        return false;
    }

    public void k(Matrix matrix) {
        if (this.f4778e == null) {
            this.f4778e = new float[2];
        }
        float[] fArr = this.f4778e;
        fArr[0] = this.f4775b;
        fArr[1] = this.f4776c;
        matrix.mapVectors(fArr);
        float[] fArr2 = this.f4778e;
        this.f4775b = fArr2[0];
        this.f4776c = fArr2[1];
        this.f4774a = matrix.mapRadius(this.f4774a);
    }

    public a(a aVar) {
        this.f4774a = 0.0f;
        this.f4775b = 0.0f;
        this.f4776c = 0.0f;
        this.f4777d = 0;
        this.f4774a = aVar.f4774a;
        this.f4775b = aVar.f4775b;
        this.f4776c = aVar.f4776c;
        this.f4777d = aVar.f4777d;
    }
}
