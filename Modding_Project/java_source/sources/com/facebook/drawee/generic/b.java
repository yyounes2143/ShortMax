package com.facebook.drawee.generic;

import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import c3.q;
import java.util.Arrays;
import java.util.List;
import k2.h;
/* compiled from: GenericDraweeHierarchyBuilder.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: t  reason: collision with root package name */
    public static final q f15484t = q.f3026h;

    /* renamed from: u  reason: collision with root package name */
    public static final q f15485u = q.f3027i;

    /* renamed from: a  reason: collision with root package name */
    private Resources f15486a;

    /* renamed from: b  reason: collision with root package name */
    private int f15487b;

    /* renamed from: c  reason: collision with root package name */
    private float f15488c;

    /* renamed from: d  reason: collision with root package name */
    private Drawable f15489d;

    /* renamed from: e  reason: collision with root package name */
    private q f15490e;

    /* renamed from: f  reason: collision with root package name */
    private Drawable f15491f;

    /* renamed from: g  reason: collision with root package name */
    private q f15492g;

    /* renamed from: h  reason: collision with root package name */
    private Drawable f15493h;

    /* renamed from: i  reason: collision with root package name */
    private q f15494i;

    /* renamed from: j  reason: collision with root package name */
    private Drawable f15495j;

    /* renamed from: k  reason: collision with root package name */
    private q f15496k;

    /* renamed from: l  reason: collision with root package name */
    private q f15497l;

    /* renamed from: m  reason: collision with root package name */
    private Matrix f15498m;

    /* renamed from: n  reason: collision with root package name */
    private PointF f15499n;

    /* renamed from: o  reason: collision with root package name */
    private ColorFilter f15500o;

    /* renamed from: p  reason: collision with root package name */
    private Drawable f15501p;

    /* renamed from: q  reason: collision with root package name */
    private List<Drawable> f15502q;

    /* renamed from: r  reason: collision with root package name */
    private Drawable f15503r;

    /* renamed from: s  reason: collision with root package name */
    private RoundingParams f15504s;

    public b(Resources resources) {
        this.f15486a = resources;
        t();
    }

    private void J() {
        List<Drawable> list = this.f15502q;
        if (list != null) {
            for (Drawable drawable : list) {
                h.g(drawable);
            }
        }
    }

    private void t() {
        this.f15487b = 300;
        this.f15488c = 0.0f;
        this.f15489d = null;
        q qVar = f15484t;
        this.f15490e = qVar;
        this.f15491f = null;
        this.f15492g = qVar;
        this.f15493h = null;
        this.f15494i = qVar;
        this.f15495j = null;
        this.f15496k = qVar;
        this.f15497l = f15485u;
        this.f15498m = null;
        this.f15499n = null;
        this.f15500o = null;
        this.f15501p = null;
        this.f15502q = null;
        this.f15503r = null;
        this.f15504s = null;
    }

    public b A(Drawable drawable) {
        if (drawable == null) {
            this.f15502q = null;
        } else {
            this.f15502q = Arrays.asList(drawable);
        }
        return this;
    }

    public b B(Drawable drawable) {
        this.f15489d = drawable;
        return this;
    }

    public b C(q qVar) {
        this.f15490e = qVar;
        return this;
    }

    public b D(Drawable drawable) {
        if (drawable == null) {
            this.f15503r = null;
        } else {
            StateListDrawable stateListDrawable = new StateListDrawable();
            stateListDrawable.addState(new int[]{16842919}, drawable);
            this.f15503r = stateListDrawable;
        }
        return this;
    }

    public b E(Drawable drawable) {
        this.f15495j = drawable;
        return this;
    }

    public b F(q qVar) {
        this.f15496k = qVar;
        return this;
    }

    public b G(Drawable drawable) {
        this.f15491f = drawable;
        return this;
    }

    public b H(q qVar) {
        this.f15492g = qVar;
        return this;
    }

    public b I(RoundingParams roundingParams) {
        this.f15504s = roundingParams;
        return this;
    }

    public a a() {
        J();
        return new a(this);
    }

    public ColorFilter b() {
        return this.f15500o;
    }

    public PointF c() {
        return this.f15499n;
    }

    public q d() {
        return this.f15497l;
    }

    public Drawable e() {
        return this.f15501p;
    }

    public float f() {
        return this.f15488c;
    }

    public int g() {
        return this.f15487b;
    }

    public Drawable h() {
        return this.f15493h;
    }

    public q i() {
        return this.f15494i;
    }

    public List<Drawable> j() {
        return this.f15502q;
    }

    public Drawable k() {
        return this.f15489d;
    }

    public q l() {
        return this.f15490e;
    }

    public Drawable m() {
        return this.f15503r;
    }

    public Drawable n() {
        return this.f15495j;
    }

    public q o() {
        return this.f15496k;
    }

    public Resources p() {
        return this.f15486a;
    }

    public Drawable q() {
        return this.f15491f;
    }

    public q r() {
        return this.f15492g;
    }

    public RoundingParams s() {
        return this.f15504s;
    }

    public b u(q qVar) {
        this.f15497l = qVar;
        this.f15498m = null;
        return this;
    }

    public b v(Drawable drawable) {
        this.f15501p = drawable;
        return this;
    }

    public b w(float f10) {
        this.f15488c = f10;
        return this;
    }

    public b x(int i10) {
        this.f15487b = i10;
        return this;
    }

    public b y(Drawable drawable) {
        this.f15493h = drawable;
        return this;
    }

    public b z(q qVar) {
        this.f15494i = qVar;
        return this;
    }
}
