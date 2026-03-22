package com.startshorts.androidplayer.repo.billing.subs;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.subs.QuerySubsSkuResult;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.manager.api.base.k;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import rs.c;
import ud.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SubsRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.billing.subs.SubsRemoteDS$querySkuList$2", f = "SubsRemoteDS.kt", l = {33, 39}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class SubsRemoteDS$querySkuList$2 extends SuspendLambda implements Function1<c<? super ServerResult<QuerySubsSkuResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43474h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SubsRemoteDS$querySkuList$2(c<? super SubsRemoteDS$querySkuList$2> cVar) {
        super(1, cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean j(SubsSku subsSku) {
        return !subsSku.isPro();
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new SubsRemoteDS$querySkuList$2(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ServerResult serverResult;
        QuerySubsSkuResult querySubsSkuResult;
        List<SubsSku> productList;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f43474h;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    f.b(obj);
                    return (ServerResult) obj;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            f.b(obj);
            serverResult = (ServerResult) obj;
            querySubsSkuResult = (QuerySubsSkuResult) serverResult.getData();
            if (querySubsSkuResult == null && (productList = querySubsSkuResult.getProductList()) != null) {
                kotlin.coroutines.jvm.internal.a.a(CollectionsKt.O(productList, new Function1() { // from class: com.startshorts.androidplayer.repo.billing.subs.a
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        boolean j10;
                        j10 = SubsRemoteDS$querySkuList$2.j((SubsSku) obj2);
                        return Boolean.valueOf(j10);
                    }
                }));
                return serverResult;
            }
        }
        f.b(obj);
        b bVar = b.f68412a;
        long Z1 = bVar.Z1();
        if (!AccountRepo.f43052a.A0() && !ABTestFactory.f42224a.q1().isEnable().invoke().booleanValue()) {
            k.a j10 = k.f41787a.j();
            String i02 = bVar.i0();
            this.f43474h = 2;
            obj = j10.B0(null, i02, Z1, this);
            if (obj == f10) {
                return f10;
            }
            return (ServerResult) obj;
        }
        k.a j11 = k.f41787a.j();
        String i03 = bVar.i0();
        this.f43474h = 1;
        obj = j11.I0(null, i03, Z1, this);
        if (obj == f10) {
            return f10;
        }
        serverResult = (ServerResult) obj;
        querySubsSkuResult = (QuerySubsSkuResult) serverResult.getData();
        return querySubsSkuResult == null ? serverResult : serverResult;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<QuerySubsSkuResult>> cVar) {
        return ((SubsRemoteDS$querySkuList$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
