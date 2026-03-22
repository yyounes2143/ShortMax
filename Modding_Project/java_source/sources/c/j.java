package c;

import gt.d0;
import kotlin.coroutines.CoroutineContext;
/* loaded from: classes.dex */
public final class j extends kotlin.coroutines.a implements d0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f2841a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(d0.b bVar, String str) {
        super(bVar);
        this.f2841a = str;
    }

    @Override // gt.d0
    public final void handleException(CoroutineContext coroutineContext, Throwable th2) {
        ga.a aVar = ga.a.f52235a;
        aVar.c("AdManagerAdUtil", this.f2841a + " exception -> " + th2.getMessage());
    }
}
