package com.startshorts.androidplayer.viewmodel.purchase;

import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.purchase.BlackFridayCoinSku;
import com.startshorts.androidplayer.bean.purchase.QueryBlackFridayCoinSkuResult;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo;
import com.startshorts.androidplayer.viewmodel.purchase.b;
import fk.u;
import gt.g0;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PurchaseViewModel.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.viewmodel.purchase.PurchaseViewModel$queryBlackFridayCoinSkuList$1", f = "PurchaseViewModel.kt", l = {312}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nPurchaseViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PurchaseViewModel.kt\ncom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryBlackFridayCoinSkuList$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,671:1\n1863#2,2:672\n1019#2,2:674\n1863#2,2:676\n*S KotlinDebug\n*F\n+ 1 PurchaseViewModel.kt\ncom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryBlackFridayCoinSkuList$1\n*L\n337#1:672,2\n346#1:674,2\n356#1:676,2\n*E\n"})
/* loaded from: classes7.dex */
public final class PurchaseViewModel$queryBlackFridayCoinSkuList$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48996h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ PurchaseViewModel f48997i;

    /* compiled from: Comparisons.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1\n+ 2 PurchaseViewModel.kt\ncom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryBlackFridayCoinSkuList$1\n*L\n1#1,121:1\n347#2,5:122\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class a<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            long useTime;
            long useTime2;
            BlackFridayCoinSku blackFridayCoinSku = (BlackFridayCoinSku) t11;
            if (blackFridayCoinSku.isExpiration()) {
                useTime = blackFridayCoinSku.getExpirationTime();
            } else {
                useTime = blackFridayCoinSku.getUseTime();
            }
            Long valueOf = Long.valueOf(useTime);
            BlackFridayCoinSku blackFridayCoinSku2 = (BlackFridayCoinSku) t10;
            if (blackFridayCoinSku2.isExpiration()) {
                useTime2 = blackFridayCoinSku2.getExpirationTime();
            } else {
                useTime2 = blackFridayCoinSku2.getUseTime();
            }
            return ps.a.a(valueOf, Long.valueOf(useTime2));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PurchaseViewModel$queryBlackFridayCoinSkuList$1(PurchaseViewModel purchaseViewModel, c<? super PurchaseViewModel$queryBlackFridayCoinSkuList$1> cVar) {
        super(2, cVar);
        this.f48997i = purchaseViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new PurchaseViewModel$queryBlackFridayCoinSkuList$1(this.f48997i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((PurchaseViewModel$queryBlackFridayCoinSkuList$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        BaseEpisode baseEpisode;
        String str;
        Object r10;
        List<BlackFridayCoinSku> list;
        List<BlackFridayCoinSku> list2;
        List<BlackFridayCoinSku> list3;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48996h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                r10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            EventManager eventManager = EventManager.f42463a;
            String N = this.f48997i.N();
            baseEpisode = this.f48997i.f48988h;
            str = this.f48997i.f48987g;
            if (str == null) {
                str = "other";
            }
            EventManager.W0(eventManager, N, str, baseEpisode, null, null, null, 56, null);
            PurchaseRepo purchaseRepo = PurchaseRepo.f43366a;
            this.f48996h = 1;
            r10 = purchaseRepo.r(this);
            if (r10 == f10) {
                return f10;
            }
        }
        PurchaseViewModel purchaseViewModel = this.f48997i;
        if (Result.j(r10)) {
            QueryBlackFridayCoinSkuResult queryBlackFridayCoinSkuResult = (QueryBlackFridayCoinSkuResult) r10;
            ArrayList<BlackFridayCoinSku> arrayList = new ArrayList();
            List<BlackFridayCoinSku> list4 = null;
            if (queryBlackFridayCoinSkuResult != null) {
                list = queryBlackFridayCoinSkuResult.getNotUsedList();
            } else {
                list = null;
            }
            List<BlackFridayCoinSku> list5 = list;
            if (list5 != null && !list5.isEmpty()) {
                BlackFridayCoinSku blackFridayCoinSku = new BlackFridayCoinSku();
                blackFridayCoinSku.setSkuProductId("");
                blackFridayCoinSku.setGpSkuId("");
                blackFridayCoinSku.setSubscript(u.f51776a.d(R$string.my_wallet_fragment_unused));
                arrayList.add(blackFridayCoinSku);
                arrayList.addAll(list5);
            }
            if (queryBlackFridayCoinSkuResult != null) {
                list2 = queryBlackFridayCoinSkuResult.getUsedList();
            } else {
                list2 = null;
            }
            if (queryBlackFridayCoinSkuResult != null) {
                list4 = queryBlackFridayCoinSkuResult.getExpireList();
            }
            List<BlackFridayCoinSku> list6 = list2;
            if ((list6 != null && !list6.isEmpty()) || ((list3 = list4) != null && !list3.isEmpty())) {
                BlackFridayCoinSku blackFridayCoinSku2 = new BlackFridayCoinSku();
                blackFridayCoinSku2.setSkuProductId("");
                blackFridayCoinSku2.setGpSkuId("");
                blackFridayCoinSku2.setSubscript(u.f51776a.d(R$string.my_wallet_fragment_used));
                arrayList.add(blackFridayCoinSku2);
                ArrayList arrayList2 = new ArrayList();
                if (list6 != null && !list6.isEmpty()) {
                    for (BlackFridayCoinSku blackFridayCoinSku3 : list2) {
                        blackFridayCoinSku3.setConsume(true);
                    }
                    arrayList2.addAll(list6);
                }
                List<BlackFridayCoinSku> list7 = list4;
                if (list7 != null && !list7.isEmpty()) {
                    arrayList2.addAll(list7);
                }
                if (!arrayList2.isEmpty()) {
                    if (arrayList2.size() > 1) {
                        CollectionsKt.D(arrayList2, new a());
                    }
                    arrayList.addAll(arrayList2);
                }
            }
            for (BlackFridayCoinSku blackFridayCoinSku4 : arrayList) {
                String priceText = blackFridayCoinSku4.getPriceText();
                if (priceText == null || priceText.length() == 0) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append('$');
                    sb2.append(blackFridayCoinSku4.getActivityPrice());
                    blackFridayCoinSku4.setPriceText(sb2.toString());
                }
                String originPriceText = blackFridayCoinSku4.getOriginPriceText();
                if (originPriceText == null || originPriceText.length() == 0) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append('$');
                    sb3.append(blackFridayCoinSku4.getOriginalPrice());
                    blackFridayCoinSku4.setOriginPriceText(sb3.toString());
                }
            }
            if (!arrayList.isEmpty()) {
                purchaseViewModel.f48991k = arrayList;
            }
            o.b(purchaseViewModel.R(), new b.a(arrayList.isEmpty(), queryBlackFridayCoinSkuResult));
        }
        PurchaseViewModel purchaseViewModel2 = this.f48997i;
        Throwable g10 = Result.g(r10);
        if (g10 != null) {
            purchaseViewModel2.z(g10);
        }
        return Unit.f60915a;
    }
}
