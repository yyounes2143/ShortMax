package retrofit2.adapter.rxjava;

import java.lang.reflect.Type;
/* compiled from: RxJavaCallAdapter.java */
/* loaded from: classes8.dex */
final class e<R> implements fu.e<R, Object> {

    /* renamed from: a  reason: collision with root package name */
    private final Type f65833a;

    /* renamed from: b  reason: collision with root package name */
    private final ku.f f65834b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f65835c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f65836d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f65837e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f65838f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f65839g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Type type, ku.f fVar, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        this.f65833a = type;
        this.f65834b = fVar;
        this.f65835c = z10;
        this.f65836d = z11;
        this.f65837e = z12;
        this.f65838f = z13;
        this.f65839g = z14;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0039  */
    @Override // fu.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object a(fu.d<R> r2) {
        /*
            r1 = this;
            boolean r0 = r1.f65835c
            if (r0 == 0) goto La
            retrofit2.adapter.rxjava.b r0 = new retrofit2.adapter.rxjava.b
            r0.<init>(r2)
            goto Lf
        La:
            retrofit2.adapter.rxjava.c r0 = new retrofit2.adapter.rxjava.c
            r0.<init>(r2)
        Lf:
            boolean r2 = r1.f65836d
            if (r2 == 0) goto L1a
            retrofit2.adapter.rxjava.d r2 = new retrofit2.adapter.rxjava.d
            r2.<init>(r0)
        L18:
            r0 = r2
            goto L24
        L1a:
            boolean r2 = r1.f65837e
            if (r2 == 0) goto L24
            retrofit2.adapter.rxjava.a r2 = new retrofit2.adapter.rxjava.a
            r2.<init>(r0)
            goto L18
        L24:
            ku.c r2 = ku.c.a(r0)
            ku.f r0 = r1.f65834b
            if (r0 == 0) goto L30
            ku.c r2 = r2.b(r0)
        L30:
            boolean r0 = r1.f65838f
            if (r0 == 0) goto L39
            ku.g r2 = r2.e()
            return r2
        L39:
            boolean r0 = r1.f65839g
            if (r0 == 0) goto L41
            ku.a r2 = r2.d()
        L41:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: retrofit2.adapter.rxjava.e.a(fu.d):java.lang.Object");
    }

    @Override // fu.e
    public Type b() {
        return this.f65833a;
    }
}
