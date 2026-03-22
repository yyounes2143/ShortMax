package com.startshorts.androidplayer.viewmodel.subs;

import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.bean.subs.QuerySubsSkuResult;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.billing.BillingRepo;
import com.startshorts.androidplayer.repo.billing.subs.SubsRepo;
import com.startshorts.androidplayer.viewmodel.subs.b;
import gt.g0;
import java.util.List;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SubsViewModel.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.viewmodel.subs.SubsViewModel$loadSkuList$1", f = "SubsViewModel.kt", l = {147}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nSubsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/subs/SubsViewModel$loadSkuList$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,278:1\n1863#2,2:279\n*S KotlinDebug\n*F\n+ 1 SubsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/subs/SubsViewModel$loadSkuList$1\n*L\n156#1:279,2\n*E\n"})
/* loaded from: classes7.dex */
public final class SubsViewModel$loadSkuList$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f49412h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SubsViewModel f49413i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubsViewModel$loadSkuList$1(SubsViewModel subsViewModel, c<? super SubsViewModel$loadSkuList$1> cVar) {
        super(2, cVar);
        this.f49413i = subsViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new SubsViewModel$loadSkuList$1(this.f49413i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((SubsViewModel$loadSkuList$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object o10;
        List<SubsSku> list;
        SubsSku subsSku;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f49412h;
        boolean z10 = true;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                o10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            SubsRepo subsRepo = SubsRepo.f43486a;
            this.f49412h = 1;
            o10 = subsRepo.o(this);
            if (o10 == f10) {
                return f10;
            }
        }
        SubsViewModel subsViewModel = this.f49413i;
        if (Result.j(o10)) {
            QuerySubsSkuResult querySubsSkuResult = (QuerySubsSkuResult) o10;
            SubsSku subsSku2 = null;
            if (querySubsSkuResult != null) {
                list = querySubsSkuResult.getProductList();
            } else {
                list = null;
            }
            List<SubsSku> list2 = list;
            if (list2 != null && !list2.isEmpty()) {
                BillingRepo billingRepo = BillingRepo.f43237a;
                if (billingRepo.C()) {
                    billingRepo.i0(list);
                }
            } else {
                AccountRepo.E1(AccountRepo.f43052a, false, false, 2, null);
            }
            if (list != null) {
                for (SubsSku subsSku3 : list) {
                    subsSku3.setSource("1");
                    subsSku3.setReceiveType(AccountRepo.f43052a.p0());
                }
            }
            subsViewModel.S(list);
            if (querySubsSkuResult != null) {
                subsSku2 = querySubsSkuResult.getActiveSubscribeSku();
            }
            subsViewModel.f49411h = subsSku2;
            subsSku = subsViewModel.f49411h;
            if (subsSku != null) {
                subsSku.setSource("1");
                subsSku.setReceiveType(AccountRepo.f43052a.p0());
            }
            MutableLiveData<b> H = subsViewModel.H();
            List<SubsSku> G = subsViewModel.G();
            if (G != null && !G.isEmpty()) {
                z10 = false;
            }
            o.b(H, new b.C0693b(z10));
        }
        SubsViewModel subsViewModel2 = this.f49413i;
        Throwable g10 = Result.g(o10);
        if (g10 != null) {
            o.b(subsViewModel2.H(), new b.a(subsViewModel2.p(subsViewModel2.s(g10))));
        }
        return Unit.f60915a;
    }
}
