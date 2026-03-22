package com.startshorts.androidplayer.viewmodel.immersion;

import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.bean.unlock.QuerySubsFirstDiscountResult;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.billing.BillingRepo;
import com.startshorts.androidplayer.repo.unlock.UnlockRepo;
import com.startshorts.androidplayer.viewmodel.immersion.f;
import gt.g0;
import java.util.ArrayList;
import java.util.List;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UnlockViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.immersion.UnlockViewModel$querySubsDiscount$1", f = "UnlockViewModel.kt", l = {415}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nUnlockViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnlockViewModel.kt\ncom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$querySubsDiscount$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,858:1\n1863#2,2:859\n*S KotlinDebug\n*F\n+ 1 UnlockViewModel.kt\ncom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$querySubsDiscount$1\n*L\n428#1:859,2\n*E\n"})
/* loaded from: classes7.dex */
public final class UnlockViewModel$querySubsDiscount$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48667h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ UnlockViewModel f48668i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ boolean f48669j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnlockViewModel$querySubsDiscount$1(UnlockViewModel unlockViewModel, boolean z10, rs.c<? super UnlockViewModel$querySubsDiscount$1> cVar) {
        super(2, cVar);
        this.f48668i = unlockViewModel;
        this.f48669j = z10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new UnlockViewModel$querySubsDiscount$1(this.f48668i, this.f48669j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((UnlockViewModel$querySubsDiscount$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object k10;
        List<SubsSku> subscribeSkuResponses;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48667h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
                k10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            this.f48668i.f48656l = this.f48669j;
            this.f48668i.e0();
            UnlockRepo unlockRepo = UnlockRepo.f44686a;
            boolean z10 = this.f48669j;
            String q10 = ud.a.f68411a.q();
            if (q10 == null) {
                q10 = "";
            }
            this.f48667h = 1;
            k10 = UnlockRepo.k(unlockRepo, z10, null, q10, this, 2, null);
            if (k10 == f10) {
                return f10;
            }
        }
        UnlockViewModel unlockViewModel = this.f48668i;
        if (Result.j(k10)) {
            QuerySubsFirstDiscountResult querySubsFirstDiscountResult = (QuerySubsFirstDiscountResult) k10;
            if (querySubsFirstDiscountResult == null) {
                o.b(unlockViewModel.a0(), new f.C0665f(true));
                unlockViewModel.f0(false);
                return Unit.f60915a;
            }
            unlockViewModel.v0(null);
            unlockViewModel.f48657m = null;
            unlockViewModel.f48666v = null;
            ArrayList arrayList = new ArrayList();
            if (!AccountRepo.f43052a.z0() && (subscribeSkuResponses = querySubsFirstDiscountResult.getSubscribeSkuResponses()) != null) {
                for (SubsSku subsSku : subscribeSkuResponses) {
                    if (subsSku.getType() == 5 || subsSku.getType() == 7) {
                        subsSku.setSource("2");
                        subsSku.setReceiveType(AccountRepo.f43052a.p0());
                        arrayList.add(subsSku);
                    }
                }
            }
            unlockViewModel.w0(arrayList);
            BillingRepo billingRepo = BillingRepo.f43237a;
            if (billingRepo.C()) {
                billingRepo.i0(arrayList);
            }
            o.b(unlockViewModel.a0(), new f.C0665f(arrayList.isEmpty()));
        }
        UnlockViewModel unlockViewModel2 = this.f48668i;
        Throwable g10 = Result.g(k10);
        if (g10 != null) {
            unlockViewModel2.z(g10);
        }
        return Unit.f60915a;
    }
}
