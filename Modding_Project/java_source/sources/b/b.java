package b;

import ca.f;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes.dex */
public final class b implements f.e {

    /* renamed from: a  reason: collision with root package name */
    public final f.e f2146a;

    /* renamed from: b  reason: collision with root package name */
    public final p000admanager.a.c f2147b;

    public b(f.e eVar, p000admanager.a.c onFinishAction) {
        Intrinsics.checkNotNullParameter(onFinishAction, "onFinishAction");
        this.f2146a = eVar;
        this.f2147b = onFinishAction;
    }

    @Override // ca.f.e
    public final void a(ca.d dVar, String str) {
        f.e eVar = this.f2146a;
        if (eVar != null) {
            eVar.a(dVar, str);
        }
        this.f2147b.invoke();
    }

    @Override // ca.f.e
    public final boolean b(ca.d adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        f.e eVar = this.f2146a;
        if (eVar != null) {
            return eVar.b(adInfo);
        }
        return true;
    }

    @Override // ca.f.e
    public final void c(ca.d adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        f.e eVar = this.f2146a;
        if (eVar != null) {
            eVar.c(adInfo);
        }
    }
}
