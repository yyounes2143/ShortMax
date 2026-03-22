package j5;

import android.content.Context;
import java.util.concurrent.Executor;
/* compiled from: Uploader_Factory.java */
/* loaded from: classes4.dex */
public final class p implements e5.b<o> {

    /* renamed from: a  reason: collision with root package name */
    private final ls.a<Context> f60194a;

    /* renamed from: b  reason: collision with root package name */
    private final ls.a<d5.d> f60195b;

    /* renamed from: c  reason: collision with root package name */
    private final ls.a<k5.d> f60196c;

    /* renamed from: d  reason: collision with root package name */
    private final ls.a<u> f60197d;

    /* renamed from: e  reason: collision with root package name */
    private final ls.a<Executor> f60198e;

    /* renamed from: f  reason: collision with root package name */
    private final ls.a<l5.a> f60199f;

    /* renamed from: g  reason: collision with root package name */
    private final ls.a<m5.a> f60200g;

    /* renamed from: h  reason: collision with root package name */
    private final ls.a<m5.a> f60201h;

    /* renamed from: i  reason: collision with root package name */
    private final ls.a<k5.c> f60202i;

    public p(ls.a<Context> aVar, ls.a<d5.d> aVar2, ls.a<k5.d> aVar3, ls.a<u> aVar4, ls.a<Executor> aVar5, ls.a<l5.a> aVar6, ls.a<m5.a> aVar7, ls.a<m5.a> aVar8, ls.a<k5.c> aVar9) {
        this.f60194a = aVar;
        this.f60195b = aVar2;
        this.f60196c = aVar3;
        this.f60197d = aVar4;
        this.f60198e = aVar5;
        this.f60199f = aVar6;
        this.f60200g = aVar7;
        this.f60201h = aVar8;
        this.f60202i = aVar9;
    }

    public static p a(ls.a<Context> aVar, ls.a<d5.d> aVar2, ls.a<k5.d> aVar3, ls.a<u> aVar4, ls.a<Executor> aVar5, ls.a<l5.a> aVar6, ls.a<m5.a> aVar7, ls.a<m5.a> aVar8, ls.a<k5.c> aVar9) {
        return new p(aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7, aVar8, aVar9);
    }

    public static o c(Context context, d5.d dVar, k5.d dVar2, u uVar, Executor executor, l5.a aVar, m5.a aVar2, m5.a aVar3, k5.c cVar) {
        return new o(context, dVar, dVar2, uVar, executor, aVar, aVar2, aVar3, cVar);
    }

    @Override // ls.a
    /* renamed from: b */
    public o get() {
        return c(this.f60194a.get(), this.f60195b.get(), this.f60196c.get(), this.f60197d.get(), this.f60198e.get(), this.f60199f.get(), this.f60200g.get(), this.f60201h.get(), this.f60202i.get());
    }
}
