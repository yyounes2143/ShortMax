package com.startshorts.androidplayer.manager.purchase;

import android.os.SystemClock;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.subs.Ad2PayConfig;
import com.startshorts.androidplayer.bean.subs.Ad2PayPopupConfig;
import com.startshorts.androidplayer.bean.subs.Ad2PayResult;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.billing.BillingRepo;
import com.startshorts.androidplayer.repo.billing.subs.SubsRepo;
import gt.g0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Ad2PayPresent.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.purchase.Ad2PayPresent$loadAd2SubSkuList$1", f = "Ad2PayPresent.kt", l = {352}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nAd2PayPresent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Ad2PayPresent.kt\ncom/startshorts/androidplayer/manager/purchase/Ad2PayPresent$loadAd2SubSkuList$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,392:1\n1368#2:393\n1454#2,5:394\n1611#2,9:399\n1863#2:408\n1864#2:410\n1620#2:411\n1368#2:412\n1454#2,5:413\n1611#2,9:418\n1863#2:427\n1864#2:429\n1620#2:430\n1557#2:431\n1628#2,3:432\n1#3:409\n1#3:428\n1#3:435\n*S KotlinDebug\n*F\n+ 1 Ad2PayPresent.kt\ncom/startshorts/androidplayer/manager/purchase/Ad2PayPresent$loadAd2SubSkuList$1\n*L\n361#1:393\n361#1:394,5\n362#1:399,9\n362#1:408\n362#1:410\n362#1:411\n370#1:412\n370#1:413,5\n371#1:418,9\n371#1:427\n371#1:429\n371#1:430\n372#1:431\n372#1:432,3\n362#1:409\n371#1:428\n*E\n"})
/* loaded from: classes6.dex */
public final class Ad2PayPresent$loadAd2SubSkuList$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42740h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Ad2PayPresent$loadAd2SubSkuList$1(c<? super Ad2PayPresent$loadAd2SubSkuList$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new Ad2PayPresent$loadAd2SubSkuList$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((Ad2PayPresent$loadAd2SubSkuList$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object n10;
        List list;
        Object f10 = a.f();
        int i10 = this.f42740h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                n10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            SubsRepo subsRepo = SubsRepo.f43486a;
            this.f42740h = 1;
            n10 = subsRepo.n(this);
            if (n10 == f10) {
                return f10;
            }
        }
        if (Result.j(n10)) {
            Ad2PayResult ad2PayResult = (Ad2PayResult) n10;
            List list2 = null;
            if (ad2PayResult == null || !ad2PayResult.isUseful()) {
                Ad2PayPresent.f42734b = null;
                Ad2PayPresent.f42735c = false;
                return Unit.f60915a;
            }
            if (BillingRepo.f43237a.C()) {
                List<Ad2PayPopupConfig> popupConfig = ad2PayResult.getPopupConfig();
                if (popupConfig != null) {
                    ArrayList<Ad2PayConfig> arrayList = new ArrayList();
                    for (Ad2PayPopupConfig ad2PayPopupConfig : popupConfig) {
                        List<Ad2PayConfig> config = ad2PayPopupConfig.getConfig();
                        if (config == null) {
                            config = CollectionsKt.n();
                        }
                        CollectionsKt.E(arrayList, config);
                    }
                    list = new ArrayList();
                    for (Ad2PayConfig ad2PayConfig : arrayList) {
                        CoinSku skuResp = ad2PayConfig.getSkuResp();
                        if (skuResp != null) {
                            list.add(skuResp);
                        }
                    }
                } else {
                    list = null;
                }
                if (list == null) {
                    list = CollectionsKt.n();
                }
                List list3 = list;
                if (!list3.isEmpty()) {
                    BillingRepo.f43237a.h0(CollectionsKt.g1(list3));
                }
                List<Ad2PayPopupConfig> popupConfig2 = ad2PayResult.getPopupConfig();
                if (popupConfig2 != null) {
                    ArrayList<Ad2PayConfig> arrayList2 = new ArrayList();
                    for (Ad2PayPopupConfig ad2PayPopupConfig2 : popupConfig2) {
                        List<Ad2PayConfig> config2 = ad2PayPopupConfig2.getConfig();
                        if (config2 == null) {
                            config2 = CollectionsKt.n();
                        }
                        CollectionsKt.E(arrayList2, config2);
                    }
                    ArrayList<SubsSku> arrayList3 = new ArrayList();
                    for (Ad2PayConfig ad2PayConfig2 : arrayList2) {
                        SubsSku subscribeResp = ad2PayConfig2.getSubscribeResp();
                        if (subscribeResp != null) {
                            arrayList3.add(subscribeResp);
                        }
                    }
                    list2 = new ArrayList(CollectionsKt.z(arrayList3, 10));
                    for (SubsSku subsSku : arrayList3) {
                        list2.add(subsSku.copy(SubsSku.SCENE_AD_2_PAY, kotlin.coroutines.jvm.internal.a.d(AccountRepo.f43052a.p0())));
                    }
                }
                if (list2 == null) {
                    list2 = CollectionsKt.n();
                }
                List list4 = list2;
                if (!list4.isEmpty()) {
                    BillingRepo.f43237a.i0(CollectionsKt.g1(list4));
                }
            }
            Ad2PayPresent ad2PayPresent = Ad2PayPresent.f42733a;
            Ad2PayPresent.f42734b = ad2PayResult.getPopupConfig();
            Ad2PayPresent.f42735c = false;
            Ad2PayPresent.f42733a.A(SystemClock.elapsedRealtime());
        }
        if (Result.g(n10) != null) {
            Ad2PayPresent.f42735c = false;
        }
        return Unit.f60915a;
    }
}
