package au;

import au.f;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* compiled from: EventBusBuilder.java */
/* loaded from: classes8.dex */
public class d {

    /* renamed from: m  reason: collision with root package name */
    private static final ExecutorService f2079m = Executors.newCachedThreadPool();

    /* renamed from: e  reason: collision with root package name */
    boolean f2084e;

    /* renamed from: g  reason: collision with root package name */
    boolean f2086g;

    /* renamed from: h  reason: collision with root package name */
    boolean f2087h;

    /* renamed from: j  reason: collision with root package name */
    List<cu.b> f2089j;

    /* renamed from: k  reason: collision with root package name */
    f f2090k;

    /* renamed from: l  reason: collision with root package name */
    g f2091l;

    /* renamed from: a  reason: collision with root package name */
    boolean f2080a = true;

    /* renamed from: b  reason: collision with root package name */
    boolean f2081b = true;

    /* renamed from: c  reason: collision with root package name */
    boolean f2082c = true;

    /* renamed from: d  reason: collision with root package name */
    boolean f2083d = true;

    /* renamed from: f  reason: collision with root package name */
    boolean f2085f = true;

    /* renamed from: i  reason: collision with root package name */
    ExecutorService f2088i = f2079m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f a() {
        f fVar = this.f2090k;
        if (fVar != null) {
            return fVar;
        }
        return f.a.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g b() {
        g gVar = this.f2091l;
        if (gVar != null) {
            return gVar;
        }
        if (bu.a.a()) {
            return bu.a.b().f2823b;
        }
        return null;
    }
}
