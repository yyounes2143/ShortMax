package com.facebook.drawee.controller;

import android.content.Context;
import android.graphics.drawable.Animatable;
import com.facebook.datasource.e;
import com.facebook.datasource.g;
import com.facebook.drawee.controller.AbstractDraweeControllerBuilder;
import com.facebook.fresco.ui.common.ControllerListener2;
import com.facebook.fresco.ui.common.LegacyOnFadeListener;
import com.vungle.ads.internal.ui.AdActivity;
import f3.d;
import java.util.ArrayList;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;
import k2.f;
import k2.h;
import k2.k;
import z2.c;
/* loaded from: classes3.dex */
public abstract class AbstractDraweeControllerBuilder<BUILDER extends AbstractDraweeControllerBuilder<BUILDER, REQUEST, IMAGE, INFO>, REQUEST, IMAGE, INFO> implements d {

    /* renamed from: r  reason: collision with root package name */
    private static final z2.b<Object> f15394r = new a();

    /* renamed from: s  reason: collision with root package name */
    private static final NullPointerException f15395s = new NullPointerException("No image request was specified!");

    /* renamed from: t  reason: collision with root package name */
    private static final AtomicLong f15396t = new AtomicLong();

    /* renamed from: a  reason: collision with root package name */
    private final Context f15397a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<z2.b> f15398b;

    /* renamed from: c  reason: collision with root package name */
    private final Set<ControllerListener2> f15399c;

    /* renamed from: d  reason: collision with root package name */
    private Object f15400d;

    /* renamed from: e  reason: collision with root package name */
    private REQUEST f15401e;

    /* renamed from: f  reason: collision with root package name */
    private REQUEST f15402f;

    /* renamed from: g  reason: collision with root package name */
    private REQUEST[] f15403g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f15404h;

    /* renamed from: i  reason: collision with root package name */
    private k<com.facebook.datasource.b<IMAGE>> f15405i;

    /* renamed from: j  reason: collision with root package name */
    private z2.b<? super INFO> f15406j;

    /* renamed from: k  reason: collision with root package name */
    private LegacyOnFadeListener f15407k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f15408l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f15409m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f15410n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f15411o = false;

    /* renamed from: p  reason: collision with root package name */
    private String f15412p;

    /* renamed from: q  reason: collision with root package name */
    private f3.a f15413q;

    /* loaded from: classes3.dex */
    public enum CacheLevel {
        FULL_FETCH,
        DISK_CACHE,
        BITMAP_MEMORY_CACHE
    }

    /* loaded from: classes3.dex */
    class a extends z2.a<Object> {
        a() {
        }

        @Override // z2.a, z2.b
        public void d(String str, Object obj, Animatable animatable) {
            if (animatable != null) {
                animatable.start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements k<com.facebook.datasource.b<IMAGE>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f3.a f15414a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f15415b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Object f15416c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Object f15417d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ CacheLevel f15418e;

        b(f3.a aVar, String str, Object obj, Object obj2, CacheLevel cacheLevel) {
            this.f15414a = aVar;
            this.f15415b = str;
            this.f15416c = obj;
            this.f15417d = obj2;
            this.f15418e = cacheLevel;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // k2.k
        /* renamed from: a */
        public com.facebook.datasource.b<IMAGE> get() {
            return AbstractDraweeControllerBuilder.this.i(this.f15414a, this.f15415b, this.f15416c, this.f15417d, this.f15418e);
        }

        public String toString() {
            return f.b(this).c(AdActivity.REQUEST_KEY_EXTRA, this.f15416c.toString()).toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractDraweeControllerBuilder(Context context, Set<z2.b> set, Set<ControllerListener2> set2) {
        this.f15397a = context;
        this.f15398b = set;
        this.f15399c = set2;
        s();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String e() {
        return String.valueOf(f15396t.getAndIncrement());
    }

    private void s() {
        this.f15400d = null;
        this.f15401e = null;
        this.f15402f = null;
        this.f15403g = null;
        this.f15404h = true;
        this.f15406j = null;
        this.f15407k = null;
        this.f15408l = false;
        this.f15409m = false;
        this.f15411o = false;
        this.f15413q = null;
        this.f15412p = null;
    }

    public BUILDER A(Object obj) {
        this.f15400d = obj;
        return r();
    }

    public BUILDER B(z2.b<? super INFO> bVar) {
        this.f15406j = bVar;
        return r();
    }

    public BUILDER C(REQUEST request) {
        this.f15401e = request;
        return r();
    }

    @Override // f3.d
    /* renamed from: D */
    public BUILDER b(f3.a aVar) {
        this.f15413q = aVar;
        return r();
    }

    public BUILDER E(boolean z10) {
        this.f15408l = z10;
        return r();
    }

    protected void F() {
        boolean z10;
        boolean z11 = true;
        if (this.f15403g != null && this.f15401e != null) {
            z10 = false;
        } else {
            z10 = true;
        }
        h.j(z10, "Cannot specify both ImageRequest and FirstAvailableImageRequests!");
        if (this.f15405i != null && (this.f15403g != null || this.f15401e != null || this.f15402f != null)) {
            z11 = false;
        }
        h.j(z11, "Cannot specify DataSourceSupplier with other ImageRequests! Use one or the other.");
    }

    @Override // f3.d
    /* renamed from: c */
    public com.facebook.drawee.controller.a build() {
        REQUEST request;
        F();
        if (this.f15401e == null && this.f15403g == null && (request = this.f15402f) != null) {
            this.f15401e = request;
            this.f15402f = null;
        }
        return d();
    }

    protected com.facebook.drawee.controller.a d() {
        if (f4.b.d()) {
            f4.b.a("AbstractDraweeControllerBuilder#buildController");
        }
        com.facebook.drawee.controller.a x10 = x();
        x10.d0(t());
        x10.e0(q());
        x10.Z(g());
        h();
        x10.b0(null);
        w(x10);
        u(x10);
        if (f4.b.d()) {
            f4.b.b();
        }
        return x10;
    }

    public Object f() {
        return this.f15400d;
    }

    public String g() {
        return this.f15412p;
    }

    public c h() {
        return null;
    }

    protected abstract com.facebook.datasource.b<IMAGE> i(f3.a aVar, String str, REQUEST request, Object obj, CacheLevel cacheLevel);

    protected k<com.facebook.datasource.b<IMAGE>> j(f3.a aVar, String str, REQUEST request) {
        return k(aVar, str, request, CacheLevel.FULL_FETCH);
    }

    protected k<com.facebook.datasource.b<IMAGE>> k(f3.a aVar, String str, REQUEST request, CacheLevel cacheLevel) {
        return new b(aVar, str, request, f(), cacheLevel);
    }

    protected k<com.facebook.datasource.b<IMAGE>> l(f3.a aVar, String str, REQUEST[] requestArr, boolean z10) {
        ArrayList arrayList = new ArrayList(requestArr.length * 2);
        if (z10) {
            for (REQUEST request : requestArr) {
                arrayList.add(k(aVar, str, request, CacheLevel.BITMAP_MEMORY_CACHE));
            }
        }
        for (REQUEST request2 : requestArr) {
            arrayList.add(j(aVar, str, request2));
        }
        return e.b(arrayList);
    }

    public REQUEST[] m() {
        return this.f15403g;
    }

    public REQUEST n() {
        return this.f15401e;
    }

    public REQUEST o() {
        return this.f15402f;
    }

    public f3.a p() {
        return this.f15413q;
    }

    public boolean q() {
        return this.f15410n;
    }

    public boolean t() {
        return this.f15411o;
    }

    protected void u(com.facebook.drawee.controller.a aVar) {
        Set<z2.b> set = this.f15398b;
        if (set != null) {
            for (z2.b bVar : set) {
                aVar.k(bVar);
            }
        }
        Set<ControllerListener2> set2 = this.f15399c;
        if (set2 != null) {
            for (ControllerListener2 controllerListener2 : set2) {
                aVar.l(controllerListener2);
            }
        }
        z2.b<? super INFO> bVar2 = this.f15406j;
        if (bVar2 != null) {
            aVar.k(bVar2);
        }
        if (this.f15409m) {
            aVar.k(f15394r);
        }
    }

    protected void v(com.facebook.drawee.controller.a aVar) {
        if (aVar.u() == null) {
            aVar.c0(e3.a.c(this.f15397a));
        }
    }

    protected void w(com.facebook.drawee.controller.a aVar) {
        if (!this.f15408l) {
            return;
        }
        aVar.A().d(this.f15408l);
        v(aVar);
    }

    protected abstract com.facebook.drawee.controller.a x();

    /* JADX INFO: Access modifiers changed from: protected */
    public k<com.facebook.datasource.b<IMAGE>> y(f3.a aVar, String str) {
        k<com.facebook.datasource.b<IMAGE>> kVar;
        k<com.facebook.datasource.b<IMAGE>> kVar2 = this.f15405i;
        if (kVar2 != null) {
            return kVar2;
        }
        REQUEST request = this.f15401e;
        if (request != null) {
            kVar = j(aVar, str, request);
        } else {
            REQUEST[] requestArr = this.f15403g;
            if (requestArr != null) {
                kVar = l(aVar, str, requestArr, this.f15404h);
            } else {
                kVar = null;
            }
        }
        if (kVar != null && this.f15402f != null) {
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(kVar);
            arrayList.add(j(aVar, str, this.f15402f));
            kVar = g.c(arrayList, false);
        }
        if (kVar == null) {
            return com.facebook.datasource.c.a(f15395s);
        }
        return kVar;
    }

    public BUILDER z(boolean z10) {
        this.f15409m = z10;
        return r();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final BUILDER r() {
        return this;
    }
}
