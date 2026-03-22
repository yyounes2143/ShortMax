package com.startshorts.androidplayer.bean.purchase;

import com.hades.aar.activity.IDActivity;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.repo.billing.BillingRepo;
import df.e;
import df.f;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AcknowledgePurchaseResult.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAcknowledgePurchaseResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AcknowledgePurchaseResult.kt\ncom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,128:1\n1863#2,2:129\n*S KotlinDebug\n*F\n+ 1 AcknowledgePurchaseResult.kt\ncom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult\n*L\n83#1:129,2\n*E\n"})
/* loaded from: classes6.dex */
public final class AcknowledgePurchaseResult {
    @NotNull
    private final List<Integer> recoverShortsIdList;
    @NotNull
    private final List<String> recoverSkuIdList;

    public AcknowledgePurchaseResult(@NotNull List<String> recoverSkuIdList, @NotNull List<Integer> recoverShortsIdList) {
        Intrinsics.checkNotNullParameter(recoverSkuIdList, "recoverSkuIdList");
        Intrinsics.checkNotNullParameter(recoverShortsIdList, "recoverShortsIdList");
        this.recoverSkuIdList = recoverSkuIdList;
        this.recoverShortsIdList = recoverShortsIdList;
    }

    private final boolean allContains(String str) {
        if (this.recoverSkuIdList.isEmpty()) {
            return false;
        }
        for (String str2 : this.recoverSkuIdList) {
            if (!StringsKt.b0(str2, str, false, 2, null)) {
                return false;
            }
        }
        return true;
    }

    private final boolean contains(String str) {
        if (this.recoverSkuIdList.isEmpty()) {
            return false;
        }
        for (String str2 : this.recoverSkuIdList) {
            if (StringsKt.b0(str2, str, false, 2, null)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AcknowledgePurchaseResult copy$default(AcknowledgePurchaseResult acknowledgePurchaseResult, List list, List list2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = acknowledgePurchaseResult.recoverSkuIdList;
        }
        if ((i10 & 2) != 0) {
            list2 = acknowledgePurchaseResult.recoverShortsIdList;
        }
        return acknowledgePurchaseResult.copy(list, list2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showFloatViewManagers(List<e> list) {
        if (list.isEmpty()) {
            return;
        }
        list.remove(0).h(new AcknowledgePurchaseResult$showFloatViewManagers$1(this, list));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean showTip$lambda$1(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return StringsKt.b0(it, BillingRepo.f43237a.w(), false, 2, null);
    }

    @NotNull
    public final List<String> component1() {
        return this.recoverSkuIdList;
    }

    @NotNull
    public final List<Integer> component2() {
        return this.recoverShortsIdList;
    }

    public final boolean containsDiscount() {
        return contains(BillingRepo.f43237a.w());
    }

    public final boolean containsShortsId(int i10) {
        return this.recoverShortsIdList.contains(Integer.valueOf(i10));
    }

    public final boolean containsSubs() {
        return contains(BillingRepo.f43237a.z());
    }

    @NotNull
    public final AcknowledgePurchaseResult copy(@NotNull List<String> recoverSkuIdList, @NotNull List<Integer> recoverShortsIdList) {
        Intrinsics.checkNotNullParameter(recoverSkuIdList, "recoverSkuIdList");
        Intrinsics.checkNotNullParameter(recoverShortsIdList, "recoverShortsIdList");
        return new AcknowledgePurchaseResult(recoverSkuIdList, recoverShortsIdList);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AcknowledgePurchaseResult)) {
            return false;
        }
        AcknowledgePurchaseResult acknowledgePurchaseResult = (AcknowledgePurchaseResult) obj;
        if (Intrinsics.areEqual(this.recoverSkuIdList, acknowledgePurchaseResult.recoverSkuIdList) && Intrinsics.areEqual(this.recoverShortsIdList, acknowledgePurchaseResult.recoverShortsIdList)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final List<Integer> getRecoverShortsIdList() {
        return this.recoverShortsIdList;
    }

    @NotNull
    public final List<String> getRecoverSkuIdList() {
        return this.recoverSkuIdList;
    }

    public final boolean hasAcknowledged() {
        return !this.recoverSkuIdList.isEmpty();
    }

    public int hashCode() {
        return (this.recoverSkuIdList.hashCode() * 31) + this.recoverShortsIdList.hashCode();
    }

    public final boolean onlyContainsDiscount() {
        return allContains(BillingRepo.f43237a.w());
    }

    public final void showTip() {
        IDActivity iDActivity;
        WeakReference<IDActivity> d10 = aa.a.f321a.d();
        if (d10 != null && (iDActivity = d10.get()) != null) {
            List<String> g12 = CollectionsKt.g1(this.recoverSkuIdList);
            ArrayList arrayList = new ArrayList();
            Iterator it = g12.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (StringsKt.b0((String) it.next(), BillingRepo.f43237a.w(), false, 2, null)) {
                    f fVar = f.f50390a;
                    String string = iDActivity.getString(R$string.top_up_fragment_lost_discount_restore_success_tip, iDActivity.getString(R$string.profile_fragment_my_wallet), iDActivity.getString(R$string.my_wallet_fragment_discount));
                    Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                    e e10 = fVar.e(string);
                    if (e10 != null) {
                        arrayList.add(e10);
                    }
                }
            }
            CollectionsKt.O(g12, new Function1() { // from class: com.startshorts.androidplayer.bean.purchase.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    boolean showTip$lambda$1;
                    showTip$lambda$1 = AcknowledgePurchaseResult.showTip$lambda$1((String) obj);
                    return Boolean.valueOf(showTip$lambda$1);
                }
            });
            if (!g12.isEmpty()) {
                int i10 = 0;
                for (String str : g12) {
                    if (StringsKt.b0(str, BillingRepo.f43237a.z(), false, 2, null)) {
                        i10++;
                    }
                }
                if (i10 > 0) {
                    if (i10 == g12.size()) {
                        f fVar2 = f.f50390a;
                        String string2 = iDActivity.getString(R$string.top_up_fragment_lost_subs_restore_success_tip);
                        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                        e e11 = fVar2.e(string2);
                        if (e11 != null) {
                            arrayList.add(e11);
                        }
                    } else {
                        f fVar3 = f.f50390a;
                        String string3 = iDActivity.getString(R$string.top_up_fragment_lost_coins_subs_restore_success_tip);
                        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
                        e e12 = fVar3.e(string3);
                        if (e12 != null) {
                            arrayList.add(e12);
                        }
                    }
                } else {
                    f fVar4 = f.f50390a;
                    String string4 = iDActivity.getString(R$string.top_up_fragment_lost_coins_restore_success_tip);
                    Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
                    e e13 = fVar4.e(string4);
                    if (e13 != null) {
                        arrayList.add(e13);
                    }
                }
            }
            if (!arrayList.isEmpty()) {
                showFloatViewManagers(arrayList);
            }
        }
    }

    @NotNull
    public String toString() {
        return "AcknowledgePurchaseResult(recoverSkuIdList=" + this.recoverSkuIdList + ", recoverShortsIdList=" + this.recoverShortsIdList + ')';
    }
}
