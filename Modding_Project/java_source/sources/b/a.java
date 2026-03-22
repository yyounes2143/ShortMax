package b;

import ca.f;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes.dex */
public final class a implements f.c {

    /* renamed from: a  reason: collision with root package name */
    public final f.c f2144a;

    /* renamed from: b  reason: collision with root package name */
    public final p000admanager.a.d f2145b;

    public a(f.c cVar, p000admanager.a.d onFinishAction) {
        Intrinsics.checkNotNullParameter(onFinishAction, "onFinishAction");
        this.f2144a = cVar;
        this.f2145b = onFinishAction;
    }

    @Override // ca.f.c
    public final void a(ca.d adInfo, Object obj) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        f.c cVar = this.f2144a;
        if (cVar != null) {
            cVar.a(adInfo, obj);
        }
        this.f2145b.invoke();
    }
}
