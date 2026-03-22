package com.facebook.imagepipeline.producers;

import com.facebook.common.internal.ImmutableSet;
import com.facebook.imagepipeline.common.Priority;
import com.facebook.imagepipeline.request.ImageRequest;
import com.ss.ttvideoengine.DataLoaderHelper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* compiled from: BaseProducerContext.java */
/* loaded from: classes3.dex */
public class e implements c1 {

    /* renamed from: n  reason: collision with root package name */
    public static final Set<String> f15757n = ImmutableSet.e("id", "uri_source");

    /* renamed from: o  reason: collision with root package name */
    public static final Object f15758o = new Object();

    /* renamed from: a  reason: collision with root package name */
    private final ImageRequest f15759a;

    /* renamed from: b  reason: collision with root package name */
    private final String f15760b;

    /* renamed from: c  reason: collision with root package name */
    private final String f15761c;

    /* renamed from: d  reason: collision with root package name */
    private final e1 f15762d;

    /* renamed from: e  reason: collision with root package name */
    private final Object f15763e;

    /* renamed from: f  reason: collision with root package name */
    private final ImageRequest.RequestLevel f15764f;

    /* renamed from: g  reason: collision with root package name */
    private final Map<String, Object> f15765g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f15766h;

    /* renamed from: i  reason: collision with root package name */
    private Priority f15767i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f15768j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f15769k;

    /* renamed from: l  reason: collision with root package name */
    private final List<d1> f15770l;

    /* renamed from: m  reason: collision with root package name */
    private final t3.t f15771m;

    public e(ImageRequest imageRequest, String str, e1 e1Var, Object obj, ImageRequest.RequestLevel requestLevel, boolean z10, boolean z11, Priority priority, t3.t tVar) {
        this(imageRequest, str, null, null, e1Var, obj, requestLevel, z10, z11, priority, tVar);
    }

    public static void a(List<d1> list) {
        if (list == null) {
            return;
        }
        for (d1 d1Var : list) {
            d1Var.b();
        }
    }

    public static void b(List<d1> list) {
        if (list == null) {
            return;
        }
        for (d1 d1Var : list) {
            d1Var.a();
        }
    }

    public static void c(List<d1> list) {
        if (list == null) {
            return;
        }
        for (d1 d1Var : list) {
            d1Var.c();
        }
    }

    public static void e(List<d1> list) {
        if (list == null) {
            return;
        }
        for (d1 d1Var : list) {
            d1Var.d();
        }
    }

    @Override // com.facebook.imagepipeline.producers.c1
    public Object d() {
        return this.f15763e;
    }

    public void g() {
        a(h());
    }

    @Override // com.facebook.fresco.middleware.HasExtraData
    public <T> T getExtra(String str) {
        return (T) this.f15765g.get(str);
    }

    @Override // com.facebook.fresco.middleware.HasExtraData
    public Map<String, Object> getExtras() {
        return this.f15765g;
    }

    @Override // com.facebook.imagepipeline.producers.c1
    public String getId() {
        return this.f15760b;
    }

    public synchronized List<d1> h() {
        if (this.f15769k) {
            return null;
        }
        this.f15769k = true;
        return new ArrayList(this.f15770l);
    }

    public synchronized List<d1> i(boolean z10) {
        if (z10 == this.f15768j) {
            return null;
        }
        this.f15768j = z10;
        return new ArrayList(this.f15770l);
    }

    public synchronized List<d1> j(boolean z10) {
        if (z10 == this.f15766h) {
            return null;
        }
        this.f15766h = z10;
        return new ArrayList(this.f15770l);
    }

    @Override // com.facebook.imagepipeline.producers.c1
    public t3.t k() {
        return this.f15771m;
    }

    @Override // com.facebook.imagepipeline.producers.c1
    public e1 l() {
        return this.f15762d;
    }

    @Override // com.facebook.imagepipeline.producers.c1
    public synchronized Priority m() {
        return this.f15767i;
    }

    public synchronized List<d1> n(Priority priority) {
        if (priority == this.f15767i) {
            return null;
        }
        this.f15767i = priority;
        return new ArrayList(this.f15770l);
    }

    @Override // com.facebook.imagepipeline.producers.c1
    public ImageRequest o() {
        return this.f15759a;
    }

    @Override // com.facebook.imagepipeline.producers.c1
    public void p(d1 d1Var) {
        boolean z10;
        synchronized (this) {
            this.f15770l.add(d1Var);
            z10 = this.f15769k;
        }
        if (z10) {
            d1Var.b();
        }
    }

    @Override // com.facebook.fresco.middleware.HasExtraData
    public void putExtra(String str, Object obj) {
        if (f15757n.contains(str)) {
            return;
        }
        this.f15765g.put(str, obj);
    }

    @Override // com.facebook.fresco.middleware.HasExtraData
    public void putExtras(Map<String, ?> map) {
        if (map == null) {
            return;
        }
        for (Map.Entry<String, ?> entry : map.entrySet()) {
            putExtra(entry.getKey(), entry.getValue());
        }
    }

    @Override // com.facebook.imagepipeline.producers.c1
    public void q(String str, String str2) {
        this.f15765g.put("origin", str);
        this.f15765g.put("origin_sub", str2);
    }

    @Override // com.facebook.imagepipeline.producers.c1
    public String r() {
        return this.f15761c;
    }

    @Override // com.facebook.imagepipeline.producers.c1
    public void s(String str) {
        q(str, DataLoaderHelper.PRELOAD_DEFAULT_SCENE);
    }

    @Override // com.facebook.imagepipeline.producers.c1
    public synchronized boolean t() {
        return this.f15768j;
    }

    @Override // com.facebook.imagepipeline.producers.c1
    public synchronized boolean u() {
        return this.f15766h;
    }

    @Override // com.facebook.imagepipeline.producers.c1
    public ImageRequest.RequestLevel v() {
        return this.f15764f;
    }

    public e(ImageRequest imageRequest, String str, String str2, Map<String, ?> map, e1 e1Var, Object obj, ImageRequest.RequestLevel requestLevel, boolean z10, boolean z11, Priority priority, t3.t tVar) {
        this.f15759a = imageRequest;
        this.f15760b = str;
        HashMap hashMap = new HashMap();
        this.f15765g = hashMap;
        hashMap.put("id", str);
        hashMap.put("uri_source", imageRequest == null ? "null-request" : imageRequest.w());
        putExtras(map);
        this.f15761c = str2;
        this.f15762d = e1Var;
        this.f15763e = obj == null ? f15758o : obj;
        this.f15764f = requestLevel;
        this.f15766h = z10;
        this.f15767i = priority;
        this.f15768j = z11;
        this.f15769k = false;
        this.f15770l = new ArrayList();
        this.f15771m = tVar;
    }

    @Override // com.facebook.fresco.middleware.HasExtraData
    public <E> E getExtra(String str, E e10) {
        E e11 = (E) this.f15765g.get(str);
        return e11 == null ? e10 : e11;
    }
}
