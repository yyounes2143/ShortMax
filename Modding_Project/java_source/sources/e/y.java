package e;
/* loaded from: classes.dex */
public final class y implements ia.c {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ca.d f50702a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ k0 f50703b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ ca.f f50704c;

    public y(ca.d dVar, k0 k0Var, ca.f fVar) {
        this.f50702a = dVar;
        this.f50703b = k0Var;
        this.f50704c = fVar;
    }

    @Override // ia.c
    public final void a() {
        ga.a aVar = ga.a.f52235a;
        aVar.d("AdManagerAdmobShower", "onNativeAdDestroy -> adInfo " + this.f50702a);
        this.f50703b.f50658a.N(this.f50702a.i());
        this.f50704c.p();
        this.f50703b.h(this.f50702a);
    }
}
