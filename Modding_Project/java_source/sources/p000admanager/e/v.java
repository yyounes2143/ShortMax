package p000admanager.e;

import ca.d;
import ca.f;
import ca.k;
import d.h;
import f.n;
import gt.g0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.i;
import rs.c;
/* renamed from: ad-manager.e.v  reason: invalid package */
/* loaded from: classes.dex */
public final class v extends SuspendLambda implements Function2 {

    /* renamed from: h  reason: collision with root package name */
    public /* synthetic */ Object f568h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ n f569i;

    /* renamed from: j  reason: collision with root package name */
    public final /* synthetic */ f f570j;

    /* renamed from: k  reason: collision with root package name */
    public final /* synthetic */ List f571k;

    /* renamed from: l  reason: collision with root package name */
    public final /* synthetic */ Ref.ObjectRef f572l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(n nVar, f fVar, List list, Ref.ObjectRef objectRef, c cVar) {
        super(2, cVar);
        this.f569i = nVar;
        this.f570j = fVar;
        this.f571k = list;
        this.f572l = objectRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        v vVar = new v(this.f569i, this.f570j, this.f571k, this.f572l, cVar);
        vVar.f568h = obj;
        return vVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((v) create((g0) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object next;
        a.f();
        kotlin.f.b(obj);
        this.f569i.getClass();
        n.h(true);
        if (!i.h((g0) this.f568h)) {
            k.m(k.f3414a, "show -> showCachedAD ignore, CoroutineScope is Canceled", null, null, null, 14, null);
        } else {
            n nVar = this.f569i;
            f fVar = this.f570j;
            ArrayList arrayList = nVar.e(fVar).f51579a;
            ga.a.f52235a.d(h.b(fVar, "AdManager:ApplovinMax:Manager"), "showCachedAD:" + arrayList);
            Iterator it = arrayList.iterator();
            Boolean bool = null;
            if (!it.hasNext()) {
                next = null;
            } else {
                next = it.next();
                if (it.hasNext()) {
                    int value = ((d) next).l().getValue();
                    do {
                        Object next2 = it.next();
                        int value2 = ((d) next2).l().getValue();
                        if (value < value2) {
                            next = next2;
                            value = value2;
                        }
                    } while (it.hasNext());
                }
            }
            d dVar = (d) next;
            if (dVar != null) {
                f.e n10 = fVar.n();
                if (n10 != null) {
                    bool = Boolean.valueOf(n10.b(dVar));
                }
                if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
                    k kVar = k.f3414a;
                    k.p(kVar, "showCachedAD succeed -> compareResult=" + dVar + '\n' + arrayList, null, null, null, 14, null);
                    kVar.v(dVar, fVar);
                } else {
                    k.m(k.f3414a, "showCachedAD failed -> onPrepareShow=" + bool, null, null, null, 14, null);
                }
            } else {
                k.m(k.f3414a, "showCachedAD failed -> cacheAdInfos.isEmpty()", null, null, null, 14, null);
                f.e n11 = fVar.n();
                if (n11 != null) {
                    n11.a(null, "showCachedAD failed -> cacheAdInfos.isEmpty()");
                }
                fVar.p();
            }
        }
        List<String> list = (List) this.f572l.element;
        if (list != null) {
            f fVar2 = this.f570j;
            if (!list.isEmpty()) {
                k.m(k.f3414a, "show -> Failed (" + list + ')', null, null, null, 14, null);
                f.a d10 = fVar2.d();
                if (d10 != null) {
                    d10.a(list);
                }
            }
        }
        return Unit.f60915a;
    }
}
