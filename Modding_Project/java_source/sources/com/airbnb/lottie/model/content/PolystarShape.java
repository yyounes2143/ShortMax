package com.airbnb.lottie.model.content;

import android.graphics.PointF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.i;
import t0.n;
import y0.b;
import y0.o;
import z0.c;
/* loaded from: classes2.dex */
public class PolystarShape implements c {

    /* renamed from: a  reason: collision with root package name */
    private final String f4559a;

    /* renamed from: b  reason: collision with root package name */
    private final Type f4560b;

    /* renamed from: c  reason: collision with root package name */
    private final b f4561c;

    /* renamed from: d  reason: collision with root package name */
    private final o<PointF, PointF> f4562d;

    /* renamed from: e  reason: collision with root package name */
    private final b f4563e;

    /* renamed from: f  reason: collision with root package name */
    private final b f4564f;

    /* renamed from: g  reason: collision with root package name */
    private final b f4565g;

    /* renamed from: h  reason: collision with root package name */
    private final b f4566h;

    /* renamed from: i  reason: collision with root package name */
    private final b f4567i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f4568j;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f4569k;

    /* loaded from: classes2.dex */
    public enum Type {
        STAR(1),
        POLYGON(2);
        
        private final int value;

        Type(int i10) {
            this.value = i10;
        }

        public static Type forValue(int i10) {
            Type[] values;
            for (Type type : values()) {
                if (type.value == i10) {
                    return type;
                }
            }
            return null;
        }
    }

    public PolystarShape(String str, Type type, b bVar, o<PointF, PointF> oVar, b bVar2, b bVar3, b bVar4, b bVar5, b bVar6, boolean z10, boolean z11) {
        this.f4559a = str;
        this.f4560b = type;
        this.f4561c = bVar;
        this.f4562d = oVar;
        this.f4563e = bVar2;
        this.f4564f = bVar3;
        this.f4565g = bVar4;
        this.f4566h = bVar5;
        this.f4567i = bVar6;
        this.f4568j = z10;
        this.f4569k = z11;
    }

    @Override // z0.c
    public t0.c a(LottieDrawable lottieDrawable, i iVar, com.airbnb.lottie.model.layer.a aVar) {
        return new n(lottieDrawable, aVar, this);
    }

    public b b() {
        return this.f4564f;
    }

    public b c() {
        return this.f4566h;
    }

    public String d() {
        return this.f4559a;
    }

    public b e() {
        return this.f4565g;
    }

    public b f() {
        return this.f4567i;
    }

    public b g() {
        return this.f4561c;
    }

    public o<PointF, PointF> h() {
        return this.f4562d;
    }

    public b i() {
        return this.f4563e;
    }

    public Type j() {
        return this.f4560b;
    }

    public boolean k() {
        return this.f4568j;
    }

    public boolean l() {
        return this.f4569k;
    }
}
