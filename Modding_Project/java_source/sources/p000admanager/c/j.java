package p000admanager.c;

import ca.e;
import da.f;
import gt.g0;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import rs.c;
/* renamed from: ad-manager.c.j  reason: invalid package */
/* loaded from: classes.dex */
public final class j extends SuspendLambda implements Function2 {

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ ArrayList f435h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ f f436i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(ArrayList arrayList, f fVar, c cVar) {
        super(2, cVar);
        this.f435h = arrayList;
        this.f436i = fVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new j(this.f435h, this.f436i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        g0 g0Var = (g0) obj;
        return new j(this.f435h, this.f436i, (c) obj2).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        kotlin.f.b(obj);
        ArrayList<e> arrayList = this.f435h;
        f fVar = this.f436i;
        for (e eVar : arrayList) {
            try {
                fVar.z(eVar);
            } catch (Exception e10) {
                ga.a aVar = ga.a.f52235a;
                String T = fVar.T(null);
                aVar.c(T, "refresh loadAd failed: adUnitId=" + eVar.e() + ", error=" + e10.getMessage());
            }
        }
        return Unit.f60915a;
    }
}
