package p000admanager.e;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* renamed from: ad-manager.e.a  reason: invalid package */
/* loaded from: classes.dex */
public final class a extends SuspendLambda implements Function2 {

    /* renamed from: h  reason: collision with root package name */
    public /* synthetic */ Object f518h;

    public a(c cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        a aVar = new a(cVar);
        aVar.f518h = obj;
        return aVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        a aVar = new a((c) obj2);
        aVar.f518h = (Context) obj;
        return aVar.invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        f.b(obj);
        String id2 = AdvertisingIdClient.getAdvertisingIdInfo((Context) this.f518h).getId();
        if (id2 == null) {
            return "";
        }
        return id2;
    }
}
