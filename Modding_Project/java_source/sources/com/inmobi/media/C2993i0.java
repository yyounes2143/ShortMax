package com.inmobi.media;
/* renamed from: com.inmobi.media.i0  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2993i0 implements Va {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C3089o0 f24838a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ boolean f24839b;

    public C2993i0(C3089o0 c3089o0, boolean z10) {
        this.f24838a = c3089o0;
        this.f24839b = z10;
    }

    @Override // com.inmobi.media.Va
    public final void a(Object obj) {
        ((Boolean) obj).getClass();
        this.f24838a.a("result pushed to queue");
        if (this.f24839b) {
            C3089o0 c3089o0 = this.f24838a;
            c3089o0.a("session end - cleanup");
            c3089o0.f25079g = null;
            c3089o0.f25078f.clear();
            c3089o0.f25075c.set(false);
            c3089o0.f25076d.set(false);
        }
    }

    @Override // com.inmobi.media.Va
    public final void onError(Exception exc) {
        this.f24838a.a(exc, "error in pushing to queue");
    }
}
