package p000admanager.e;

import ca.b;
import ca.k;
import com.hades.aar.admanager.core.AdEventState;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.r;
import rs.c;
/* renamed from: ad-manager.e.q  reason: invalid package */
/* loaded from: classes.dex */
public final class q extends SuspendLambda implements Function2 {

    /* renamed from: h  reason: collision with root package name */
    public /* synthetic */ Object f556h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ Ref.ObjectRef f557i;

    /* renamed from: j  reason: collision with root package name */
    public final /* synthetic */ r f558j;

    /* renamed from: k  reason: collision with root package name */
    public final /* synthetic */ Ref.ObjectRef f559k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(Ref.ObjectRef objectRef, r rVar, Ref.ObjectRef objectRef2, c cVar) {
        super(2, cVar);
        this.f557i = objectRef;
        this.f558j = rVar;
        this.f559k = objectRef2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        q qVar = new q(this.f557i, this.f558j, this.f559k, cVar);
        qVar.f556h = obj;
        return qVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((q) create((b) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        f.b(obj);
        b bVar = (b) this.f556h;
        if (bVar.b() == AdEventState.LOAD_SUCCEED) {
            k kVar = k.f3414a;
            k.p(kVar, "show collectLatest -> load succeed,adUnitId=" + bVar.a(), null, null, null, 14, null);
            this.f557i.element = null;
            r.a.b(this.f558j, null, 1, null);
            r rVar = (r) this.f559k.element;
            if (rVar != null) {
                r.a.b(rVar, null, 1, null);
            }
        } else {
            k kVar2 = k.f3414a;
            k.m(kVar2, "show collectLatest -> load failed,adUnitId=" + bVar.a(), null, null, null, 14, null);
            List list = (List) this.f557i.element;
            if (list != null) {
                kotlin.coroutines.jvm.internal.a.a(list.add(bVar.a()));
            }
        }
        return Unit.f60915a;
    }
}
