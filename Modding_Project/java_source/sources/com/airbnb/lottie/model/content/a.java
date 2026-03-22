package com.airbnb.lottie.model.content;

import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.i;
import com.airbnb.lottie.model.content.ShapeStroke;
import java.util.List;
import y0.b;
import y0.d;
import y0.f;
import z0.c;
/* compiled from: GradientStroke.java */
/* loaded from: classes2.dex */
public class a implements c {

    /* renamed from: a  reason: collision with root package name */
    private final String f4588a;

    /* renamed from: b  reason: collision with root package name */
    private final GradientType f4589b;

    /* renamed from: c  reason: collision with root package name */
    private final y0.c f4590c;

    /* renamed from: d  reason: collision with root package name */
    private final d f4591d;

    /* renamed from: e  reason: collision with root package name */
    private final f f4592e;

    /* renamed from: f  reason: collision with root package name */
    private final f f4593f;

    /* renamed from: g  reason: collision with root package name */
    private final b f4594g;

    /* renamed from: h  reason: collision with root package name */
    private final ShapeStroke.LineCapType f4595h;

    /* renamed from: i  reason: collision with root package name */
    private final ShapeStroke.LineJoinType f4596i;

    /* renamed from: j  reason: collision with root package name */
    private final float f4597j;

    /* renamed from: k  reason: collision with root package name */
    private final List<b> f4598k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private final b f4599l;

    /* renamed from: m  reason: collision with root package name */
    private final boolean f4600m;

    public a(String str, GradientType gradientType, y0.c cVar, d dVar, f fVar, f fVar2, b bVar, ShapeStroke.LineCapType lineCapType, ShapeStroke.LineJoinType lineJoinType, float f10, List<b> list, @Nullable b bVar2, boolean z10) {
        this.f4588a = str;
        this.f4589b = gradientType;
        this.f4590c = cVar;
        this.f4591d = dVar;
        this.f4592e = fVar;
        this.f4593f = fVar2;
        this.f4594g = bVar;
        this.f4595h = lineCapType;
        this.f4596i = lineJoinType;
        this.f4597j = f10;
        this.f4598k = list;
        this.f4599l = bVar2;
        this.f4600m = z10;
    }

    @Override // z0.c
    public t0.c a(LottieDrawable lottieDrawable, i iVar, com.airbnb.lottie.model.layer.a aVar) {
        return new t0.i(lottieDrawable, aVar, this);
    }

    public ShapeStroke.LineCapType b() {
        return this.f4595h;
    }

    @Nullable
    public b c() {
        return this.f4599l;
    }

    public f d() {
        return this.f4593f;
    }

    public y0.c e() {
        return this.f4590c;
    }

    public GradientType f() {
        return this.f4589b;
    }

    public ShapeStroke.LineJoinType g() {
        return this.f4596i;
    }

    public List<b> h() {
        return this.f4598k;
    }

    public float i() {
        return this.f4597j;
    }

    public String j() {
        return this.f4588a;
    }

    public d k() {
        return this.f4591d;
    }

    public f l() {
        return this.f4592e;
    }

    public b m() {
        return this.f4594g;
    }

    public boolean n() {
        return this.f4600m;
    }
}
