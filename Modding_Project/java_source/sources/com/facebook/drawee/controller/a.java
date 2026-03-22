package com.facebook.drawee.controller;

import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.MotionEvent;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.drawee.components.DraweeEventTracker;
import com.facebook.fresco.middleware.MiddlewareUtils;
import com.facebook.fresco.ui.common.ControllerListener2;
import com.facebook.fresco.ui.common.ForwardingControllerListener2;
import com.facebook.fresco.ui.common.LegacyOnFadeListener;
import com.facebook.fresco.ui.common.OnFadeListener;
import e3.a;
import java.util.Map;
import java.util.concurrent.Executor;
import k2.f;
import k2.h;
import y2.a;
import z2.d;
/* compiled from: AbstractDraweeController.java */
/* loaded from: classes3.dex */
public abstract class a<T, INFO> implements f3.a, a.InterfaceC0973a, a.InterfaceC0712a {

    /* renamed from: x  reason: collision with root package name */
    private static final Map<String, Object> f15420x = ImmutableMap.of("component_tag", "drawee");

    /* renamed from: y  reason: collision with root package name */
    private static final Map<String, Object> f15421y = ImmutableMap.of("origin", "memory_bitmap", "origin_sub", "shortcut");

    /* renamed from: z  reason: collision with root package name */
    private static final Class<?> f15422z = a.class;

    /* renamed from: b  reason: collision with root package name */
    private final y2.a f15424b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f15425c;

    /* renamed from: d  reason: collision with root package name */
    private y2.c f15426d;

    /* renamed from: e  reason: collision with root package name */
    private e3.a f15427e;

    /* renamed from: f  reason: collision with root package name */
    protected z2.b<INFO> f15428f;

    /* renamed from: h  reason: collision with root package name */
    protected LegacyOnFadeListener f15430h;

    /* renamed from: i  reason: collision with root package name */
    private f3.c f15431i;

    /* renamed from: j  reason: collision with root package name */
    private Drawable f15432j;

    /* renamed from: k  reason: collision with root package name */
    private String f15433k;

    /* renamed from: l  reason: collision with root package name */
    private Object f15434l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f15435m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f15436n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f15437o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f15438p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f15439q;

    /* renamed from: r  reason: collision with root package name */
    private String f15440r;

    /* renamed from: s  reason: collision with root package name */
    private com.facebook.datasource.b<T> f15441s;

    /* renamed from: t  reason: collision with root package name */
    private T f15442t;

    /* renamed from: w  reason: collision with root package name */
    protected Drawable f15445w;

    /* renamed from: a  reason: collision with root package name */
    private final DraweeEventTracker f15423a = DraweeEventTracker.a();

    /* renamed from: g  reason: collision with root package name */
    protected ForwardingControllerListener2<INFO> f15429g = new ForwardingControllerListener2<>();

    /* renamed from: u  reason: collision with root package name */
    private boolean f15443u = true;

    /* renamed from: v  reason: collision with root package name */
    private boolean f15444v = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractDraweeController.java */
    /* loaded from: classes3.dex */
    public class b extends com.facebook.datasource.a<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f15447a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f15448b;

        b(String str, boolean z10) {
            this.f15447a = str;
            this.f15448b = z10;
        }

        @Override // com.facebook.datasource.a, com.facebook.datasource.d
        public void b(com.facebook.datasource.b<T> bVar) {
            boolean e10 = bVar.e();
            a.this.O(this.f15447a, bVar, bVar.getProgress(), e10);
        }

        @Override // com.facebook.datasource.a
        public void e(com.facebook.datasource.b<T> bVar) {
            a.this.L(this.f15447a, bVar, bVar.b(), true);
        }

        @Override // com.facebook.datasource.a
        public void f(com.facebook.datasource.b<T> bVar) {
            boolean e10 = bVar.e();
            boolean d10 = bVar.d();
            float progress = bVar.getProgress();
            T result = bVar.getResult();
            if (result != null) {
                a.this.N(this.f15447a, bVar, result, progress, e10, this.f15448b, d10);
            } else if (e10) {
                a.this.L(this.f15447a, bVar, new NullPointerException(), true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AbstractDraweeController.java */
    /* loaded from: classes3.dex */
    public static class c<INFO> extends d<INFO> {
        private c() {
        }

        public static <INFO> c<INFO> i(z2.b<? super INFO> bVar, z2.b<? super INFO> bVar2) {
            if (f4.b.d()) {
                f4.b.a("AbstractDraweeController#createInternal");
            }
            c<INFO> cVar = new c<>();
            cVar.f(bVar);
            cVar.f(bVar2);
            if (f4.b.d()) {
                f4.b.b();
            }
            return cVar;
        }
    }

    public a(y2.a aVar, Executor executor, String str, Object obj) {
        this.f15424b = aVar;
        this.f15425c = executor;
        C(str, obj);
    }

    private f3.c B() {
        f3.c cVar = this.f15431i;
        if (cVar != null) {
            return cVar;
        }
        throw new IllegalStateException("mSettableDraweeHierarchy is null; Caller context: " + this.f15434l);
    }

    private synchronized void C(String str, Object obj) {
        y2.a aVar;
        try {
            if (f4.b.d()) {
                f4.b.a("AbstractDraweeController#init");
            }
            this.f15423a.b(DraweeEventTracker.Event.ON_INIT_CONTROLLER);
            if (!this.f15443u && (aVar = this.f15424b) != null) {
                aVar.a(this);
            }
            this.f15435m = false;
            this.f15437o = false;
            Q();
            this.f15439q = false;
            y2.c cVar = this.f15426d;
            if (cVar != null) {
                cVar.a();
            }
            e3.a aVar2 = this.f15427e;
            if (aVar2 != null) {
                aVar2.a();
                this.f15427e.f(this);
            }
            z2.b<INFO> bVar = this.f15428f;
            if (bVar instanceof c) {
                ((c) bVar).g();
            } else {
                this.f15428f = null;
            }
            f3.c cVar2 = this.f15431i;
            if (cVar2 != null) {
                cVar2.reset();
                this.f15431i.c(null);
                this.f15431i = null;
            }
            this.f15432j = null;
            if (l2.a.n(2)) {
                l2.a.r(f15422z, "controller %x %s -> %s: initialize", Integer.valueOf(System.identityHashCode(this)), this.f15433k, str);
            }
            this.f15433k = str;
            this.f15434l = obj;
            if (f4.b.d()) {
                f4.b.b();
            }
            if (this.f15430h != null) {
                f0();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private boolean E(String str, com.facebook.datasource.b<T> bVar) {
        if (bVar == null && this.f15441s == null) {
            return true;
        }
        if (str.equals(this.f15433k) && bVar == this.f15441s && this.f15436n) {
            return true;
        }
        return false;
    }

    private void G(String str, Throwable th2) {
        if (l2.a.n(2)) {
            l2.a.s(f15422z, "controller %x %s: %s: failure: %s", Integer.valueOf(System.identityHashCode(this)), this.f15433k, str, th2);
        }
    }

    private void H(String str, T t10) {
        if (l2.a.n(2)) {
            l2.a.t(f15422z, "controller %x %s: %s: image: %s %x", Integer.valueOf(System.identityHashCode(this)), this.f15433k, str, w(t10), Integer.valueOf(x(t10)));
        }
    }

    private ControllerListener2.Extras I(com.facebook.datasource.b<T> bVar, INFO info, Uri uri) {
        Map<String, Object> extras;
        if (bVar == null) {
            extras = null;
        } else {
            extras = bVar.getExtras();
        }
        return J(extras, K(info), uri);
    }

    private ControllerListener2.Extras J(Map<String, Object> map, Map<String, Object> map2, Uri uri) {
        String str;
        PointF pointF;
        f3.c cVar = this.f15431i;
        if (cVar instanceof com.facebook.drawee.generic.a) {
            com.facebook.drawee.generic.a aVar = (com.facebook.drawee.generic.a) cVar;
            String valueOf = String.valueOf(aVar.m());
            pointF = aVar.l();
            str = valueOf;
        } else {
            str = null;
            pointF = null;
        }
        return MiddlewareUtils.obtainExtras(f15420x, f15421y, map, null, t(), str, pointF, map2, o(), F(), uri);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L(String str, com.facebook.datasource.b<T> bVar, Throwable th2, boolean z10) {
        DraweeEventTracker.Event event;
        Drawable drawable;
        if (f4.b.d()) {
            f4.b.a("AbstractDraweeController#onFailureInternal");
        }
        if (!E(str, bVar)) {
            G("ignore_old_datasource @ onFailure", th2);
            bVar.close();
            if (f4.b.d()) {
                f4.b.b();
                return;
            }
            return;
        }
        DraweeEventTracker draweeEventTracker = this.f15423a;
        if (z10) {
            event = DraweeEventTracker.Event.ON_DATASOURCE_FAILURE;
        } else {
            event = DraweeEventTracker.Event.ON_DATASOURCE_FAILURE_INT;
        }
        draweeEventTracker.b(event);
        if (z10) {
            G("final_failed @ onFailure", th2);
            this.f15441s = null;
            this.f15438p = true;
            f3.c cVar = this.f15431i;
            if (cVar != null) {
                if (this.f15439q && (drawable = this.f15445w) != null) {
                    cVar.f(drawable, 1.0f, true);
                } else if (h0()) {
                    cVar.a(th2);
                } else {
                    cVar.d(th2);
                }
            }
            T(th2, bVar);
        } else {
            G("intermediate_failed @ onFailure", th2);
            U(th2);
        }
        if (f4.b.d()) {
            f4.b.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N(String str, com.facebook.datasource.b<T> bVar, T t10, float f10, boolean z10, boolean z11, boolean z12) {
        DraweeEventTracker.Event event;
        try {
            if (f4.b.d()) {
                f4.b.a("AbstractDraweeController#onNewResultInternal");
            }
            if (!E(str, bVar)) {
                H("ignore_old_datasource @ onNewResult", t10);
                R(t10);
                bVar.close();
                if (f4.b.d()) {
                    f4.b.b();
                    return;
                }
                return;
            }
            DraweeEventTracker draweeEventTracker = this.f15423a;
            if (z10) {
                event = DraweeEventTracker.Event.ON_DATASOURCE_RESULT;
            } else {
                event = DraweeEventTracker.Event.ON_DATASOURCE_RESULT_INT;
            }
            draweeEventTracker.b(event);
            try {
                Drawable m10 = m(t10);
                T t11 = this.f15442t;
                Drawable drawable = this.f15445w;
                this.f15442t = t10;
                this.f15445w = m10;
                if (z10) {
                    H("set_final_result @ onNewResult", t10);
                    this.f15441s = null;
                    B().f(m10, 1.0f, z11);
                    Y(str, t10, bVar);
                } else if (z12) {
                    H("set_temporary_result @ onNewResult", t10);
                    B().f(m10, 1.0f, z11);
                    Y(str, t10, bVar);
                } else {
                    H("set_intermediate_result @ onNewResult", t10);
                    B().f(m10, f10, z11);
                    V(str, t10);
                }
                if (drawable != null && drawable != m10) {
                    P(drawable);
                }
                if (t11 != null && t11 != t10) {
                    H("release_previous_result @ onNewResult", t11);
                    R(t11);
                }
                if (f4.b.d()) {
                    f4.b.b();
                }
            } catch (Exception e10) {
                H("drawable_failed @ onNewResult", t10);
                R(t10);
                L(str, bVar, e10, z10);
                if (f4.b.d()) {
                    f4.b.b();
                }
            }
        } catch (Throwable th2) {
            if (f4.b.d()) {
                f4.b.b();
            }
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O(String str, com.facebook.datasource.b<T> bVar, float f10, boolean z10) {
        if (!E(str, bVar)) {
            G("ignore_old_datasource @ onProgress", null);
            bVar.close();
        } else if (!z10) {
            this.f15431i.e(f10, false);
        }
    }

    private void Q() {
        Map<String, Object> map;
        boolean z10 = this.f15436n;
        this.f15436n = false;
        this.f15438p = false;
        com.facebook.datasource.b<T> bVar = this.f15441s;
        Map<String, Object> map2 = null;
        if (bVar != null) {
            map = bVar.getExtras();
            this.f15441s.close();
            this.f15441s = null;
        } else {
            map = null;
        }
        Drawable drawable = this.f15445w;
        if (drawable != null) {
            P(drawable);
        }
        if (this.f15440r != null) {
            this.f15440r = null;
        }
        this.f15445w = null;
        T t10 = this.f15442t;
        if (t10 != null) {
            Map<String, Object> K = K(y(t10));
            H("release", this.f15442t);
            R(this.f15442t);
            this.f15442t = null;
            map2 = K;
        }
        if (z10) {
            W(map, map2);
        }
    }

    private void T(Throwable th2, com.facebook.datasource.b<T> bVar) {
        ControllerListener2.Extras I = I(bVar, null, null);
        p().c(this.f15433k, th2);
        q().onFailure(this.f15433k, th2, I);
    }

    private void U(Throwable th2) {
        p().e(this.f15433k, th2);
        q().onIntermediateImageFailed(this.f15433k);
    }

    private void V(String str, T t10) {
        INFO y10 = y(t10);
        p().onIntermediateImageSet(str, y10);
        q().onIntermediateImageSet(str, y10);
    }

    private void W(Map<String, Object> map, Map<String, Object> map2) {
        p().a(this.f15433k);
        q().onRelease(this.f15433k, J(map, map2, null));
    }

    private void Y(String str, T t10, com.facebook.datasource.b<T> bVar) {
        INFO y10 = y(t10);
        p().d(str, y10, f());
        q().onFinalImageSet(str, y10, I(bVar, y10, null));
    }

    private void f0() {
        f3.c cVar = this.f15431i;
        if (cVar instanceof com.facebook.drawee.generic.a) {
            ((com.facebook.drawee.generic.a) cVar).x(new C0262a());
        }
    }

    private boolean h0() {
        y2.c cVar;
        if (this.f15438p && (cVar = this.f15426d) != null && cVar.e()) {
            return true;
        }
        return false;
    }

    private Rect t() {
        f3.c cVar = this.f15431i;
        if (cVar == null) {
            return null;
        }
        return cVar.getBounds();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public y2.c A() {
        if (this.f15426d == null) {
            this.f15426d = new y2.c();
        }
        return this.f15426d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void D(String str, Object obj) {
        C(str, obj);
        this.f15443u = false;
        this.f15444v = false;
    }

    protected boolean F() {
        return this.f15444v;
    }

    public abstract Map<String, Object> K(INFO info);

    protected abstract void P(Drawable drawable);

    protected abstract void R(T t10);

    public void S(ControllerListener2<INFO> controllerListener2) {
        this.f15429g.removeListener(controllerListener2);
    }

    protected void X(com.facebook.datasource.b<T> bVar, INFO info) {
        p().b(this.f15433k, this.f15434l);
        q().onSubmit(this.f15433k, this.f15434l, I(bVar, info, z()));
    }

    public void Z(String str) {
        this.f15440r = str;
    }

    @Override // e3.a.InterfaceC0712a
    public boolean a() {
        if (l2.a.n(2)) {
            l2.a.q(f15422z, "controller %x %s: onClick", Integer.valueOf(System.identityHashCode(this)), this.f15433k);
        }
        if (h0()) {
            this.f15426d.b();
            this.f15431i.reset();
            i0();
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a0(Drawable drawable) {
        this.f15432j = drawable;
        f3.c cVar = this.f15431i;
        if (cVar != null) {
            cVar.c(drawable);
        }
    }

    @Override // f3.a
    public void b() {
        String str;
        if (f4.b.d()) {
            f4.b.a("AbstractDraweeController#onAttach");
        }
        if (l2.a.n(2)) {
            Class<?> cls = f15422z;
            Integer valueOf = Integer.valueOf(System.identityHashCode(this));
            String str2 = this.f15433k;
            if (this.f15436n) {
                str = "request already submitted";
            } else {
                str = "request needs submit";
            }
            l2.a.r(cls, "controller %x %s: onAttach: %s", valueOf, str2, str);
        }
        this.f15423a.b(DraweeEventTracker.Event.ON_ATTACH_CONTROLLER);
        h.g(this.f15431i);
        this.f15424b.a(this);
        this.f15435m = true;
        if (!this.f15436n) {
            i0();
        }
        if (f4.b.d()) {
            f4.b.b();
        }
    }

    @Override // f3.a
    public void c() {
        if (f4.b.d()) {
            f4.b.a("AbstractDraweeController#onDetach");
        }
        if (l2.a.n(2)) {
            l2.a.q(f15422z, "controller %x %s: onDetach", Integer.valueOf(System.identityHashCode(this)), this.f15433k);
        }
        this.f15423a.b(DraweeEventTracker.Event.ON_DETACH_CONTROLLER);
        this.f15435m = false;
        this.f15424b.d(this);
        if (f4.b.d()) {
            f4.b.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c0(e3.a aVar) {
        this.f15427e = aVar;
        if (aVar != null) {
            aVar.f(this);
        }
    }

    @Override // f3.a
    public void d(f3.b bVar) {
        DraweeEventTracker.Event event;
        if (l2.a.n(2)) {
            l2.a.r(f15422z, "controller %x %s: setHierarchy: %s", Integer.valueOf(System.identityHashCode(this)), this.f15433k, bVar);
        }
        DraweeEventTracker draweeEventTracker = this.f15423a;
        if (bVar != null) {
            event = DraweeEventTracker.Event.ON_SET_HIERARCHY;
        } else {
            event = DraweeEventTracker.Event.ON_CLEAR_HIERARCHY;
        }
        draweeEventTracker.b(event);
        if (this.f15436n) {
            this.f15424b.a(this);
            release();
        }
        f3.c cVar = this.f15431i;
        if (cVar != null) {
            cVar.c(null);
            this.f15431i = null;
        }
        if (bVar != null) {
            h.b(Boolean.valueOf(bVar instanceof f3.c));
            f3.c cVar2 = (f3.c) bVar;
            this.f15431i = cVar2;
            cVar2.c(this.f15432j);
        }
        if (this.f15430h != null) {
            f0();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d0(boolean z10) {
        this.f15444v = z10;
    }

    @Override // f3.a
    public f3.b e() {
        return this.f15431i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e0(boolean z10) {
        this.f15439q = z10;
    }

    @Override // f3.a
    public Animatable f() {
        Drawable drawable = this.f15445w;
        if (drawable instanceof Animatable) {
            return (Animatable) drawable;
        }
        return null;
    }

    protected boolean g0() {
        return h0();
    }

    protected void i0() {
        if (f4.b.d()) {
            f4.b.a("AbstractDraweeController#submitRequest");
        }
        T n10 = n();
        if (n10 != null) {
            if (f4.b.d()) {
                f4.b.a("AbstractDraweeController#submitRequest->cache");
            }
            this.f15441s = null;
            this.f15436n = true;
            this.f15438p = false;
            this.f15423a.b(DraweeEventTracker.Event.ON_SUBMIT_CACHE_HIT);
            X(this.f15441s, y(n10));
            M(this.f15433k, n10);
            N(this.f15433k, this.f15441s, n10, 1.0f, true, true, true);
            if (f4.b.d()) {
                f4.b.b();
            }
            if (f4.b.d()) {
                f4.b.b();
                return;
            }
            return;
        }
        this.f15423a.b(DraweeEventTracker.Event.ON_DATASOURCE_SUBMIT);
        this.f15431i.e(0.0f, true);
        this.f15436n = true;
        this.f15438p = false;
        com.facebook.datasource.b<T> s10 = s();
        this.f15441s = s10;
        X(s10, null);
        if (l2.a.n(2)) {
            l2.a.r(f15422z, "controller %x %s: submitRequest: dataSource: %x", Integer.valueOf(System.identityHashCode(this)), this.f15433k, Integer.valueOf(System.identityHashCode(this.f15441s)));
        }
        this.f15441s.c(new b(this.f15433k, this.f15441s.a()), this.f15425c);
        if (f4.b.d()) {
            f4.b.b();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void k(z2.b<? super INFO> bVar) {
        h.g(bVar);
        z2.b<INFO> bVar2 = this.f15428f;
        if (bVar2 instanceof c) {
            ((c) bVar2).f(bVar);
        } else if (bVar2 != null) {
            this.f15428f = c.i(bVar2, bVar);
        } else {
            this.f15428f = bVar;
        }
    }

    public void l(ControllerListener2<INFO> controllerListener2) {
        this.f15429g.addListener(controllerListener2);
    }

    protected abstract Drawable m(T t10);

    protected T n() {
        return null;
    }

    public Object o() {
        return this.f15434l;
    }

    @Override // f3.a
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (l2.a.n(2)) {
            l2.a.r(f15422z, "controller %x %s: onTouchEvent %s", Integer.valueOf(System.identityHashCode(this)), this.f15433k, motionEvent);
        }
        e3.a aVar = this.f15427e;
        if (aVar == null) {
            return false;
        }
        if (!aVar.b() && !g0()) {
            return false;
        }
        this.f15427e.d(motionEvent);
        return true;
    }

    protected z2.b<INFO> p() {
        z2.b<INFO> bVar = this.f15428f;
        if (bVar == null) {
            return z2.a.f();
        }
        return bVar;
    }

    protected ControllerListener2<INFO> q() {
        return this.f15429g;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Drawable r() {
        return this.f15432j;
    }

    @Override // y2.a.InterfaceC0973a
    public void release() {
        this.f15423a.b(DraweeEventTracker.Event.ON_RELEASE_CONTROLLER);
        y2.c cVar = this.f15426d;
        if (cVar != null) {
            cVar.c();
        }
        e3.a aVar = this.f15427e;
        if (aVar != null) {
            aVar.e();
        }
        f3.c cVar2 = this.f15431i;
        if (cVar2 != null) {
            cVar2.reset();
        }
        Q();
    }

    protected abstract com.facebook.datasource.b<T> s();

    public String toString() {
        return f.b(this).d("isAttached", this.f15435m).d("isRequestSubmitted", this.f15436n).d("hasFetchFailed", this.f15438p).a("fetchedImage", x(this.f15442t)).c("events", this.f15423a.toString()).toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public e3.a u() {
        return this.f15427e;
    }

    public String v() {
        return this.f15433k;
    }

    protected String w(T t10) {
        if (t10 != null) {
            return t10.getClass().getSimpleName();
        }
        return "<null>";
    }

    protected int x(T t10) {
        return System.identityHashCode(t10);
    }

    protected abstract INFO y(T t10);

    protected Uri z() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AbstractDraweeController.java */
    /* renamed from: com.facebook.drawee.controller.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0262a implements OnFadeListener {
        C0262a() {
        }

        @Override // com.facebook.fresco.ui.common.OnFadeListener
        public void onFadeFinished() {
            a aVar = a.this;
            LegacyOnFadeListener legacyOnFadeListener = aVar.f15430h;
            if (legacyOnFadeListener != null) {
                legacyOnFadeListener.onFadeFinished(aVar.f15433k);
            }
        }

        @Override // com.facebook.fresco.ui.common.OnFadeListener
        public void onFadeStarted() {
            a aVar = a.this;
            LegacyOnFadeListener legacyOnFadeListener = aVar.f15430h;
            if (legacyOnFadeListener != null) {
                legacyOnFadeListener.onFadeStarted(aVar.f15433k);
            }
        }

        @Override // com.facebook.fresco.ui.common.OnFadeListener
        public void onShownImmediately() {
        }
    }

    public void b0(z2.c cVar) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void M(String str, T t10) {
    }
}
