package c;

import gt.d0;
import kotlin.coroutines.CoroutineContext;
/* loaded from: classes.dex */
public final class k extends kotlin.coroutines.a implements d0 {
    public k(d0.b bVar) {
        super(bVar);
    }

    @Override // gt.d0
    public final void handleException(CoroutineContext coroutineContext, Throwable th2) {
        ga.a aVar = ga.a.f52235a;
        aVar.c("CCPAManager", "setCCPAWithCache exception -> " + th2.getMessage());
    }
}
