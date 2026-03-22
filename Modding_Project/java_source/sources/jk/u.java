package jk;

import com.shorttv.aar.billing.bean.ProductDataType;
import com.startshorts.androidplayer.bean.payment.SkuPaymentMethod;
import com.startshorts.androidplayer.bean.purchase.ActQueryPriceSku;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.subs.SubsFormattedPrice;
import com.startshorts.androidplayer.bean.subs.SubsPrice;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.utils.BillingUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import zc.e;
/* compiled from: SkuExt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSkuExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SkuExt.kt\ncom/startshorts/androidplayer/utils/ext/SkuExtKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,269:1\n774#2:270\n865#2,2:271\n1611#2,9:273\n1863#2:282\n1864#2:284\n1620#2:285\n774#2:286\n865#2,2:287\n1971#2,14:289\n774#2:303\n865#2,2:304\n1971#2,14:306\n1611#2,9:320\n1863#2:329\n1864#2:331\n1620#2:332\n1#3:283\n1#3:330\n1#3:333\n*S KotlinDebug\n*F\n+ 1 SkuExt.kt\ncom/startshorts/androidplayer/utils/ext/SkuExtKt\n*L\n199#1:270\n199#1:271,2\n199#1:273,9\n199#1:282\n199#1:284\n199#1:285\n208#1:286\n208#1:287,2\n209#1:289,14\n216#1:303\n216#1:304,2\n217#1:306,14\n224#1:320,9\n224#1:329\n224#1:331\n224#1:332\n199#1:283\n224#1:330\n*E\n"})
/* loaded from: classes7.dex */
public final class u {
    public static final int a(@NotNull SubsSku subsSku) {
        Integer num;
        Intrinsics.checkNotNullParameter(subsSku, "<this>");
        List<SkuPaymentMethod> productExtendList = subsSku.getProductExtendList();
        if (productExtendList != null) {
            ArrayList<SkuPaymentMethod> arrayList = new ArrayList();
            for (Object obj : productExtendList) {
                Integer payType = ((SkuPaymentMethod) obj).getPayType();
                int a10 = qf.e.f65327a.a();
                if (payType == null || payType.intValue() != a10) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList();
            for (SkuPaymentMethod skuPaymentMethod : arrayList) {
                Integer discountPercent = skuPaymentMethod.getDiscountPercent();
                if (discountPercent != null) {
                    arrayList2.add(discountPercent);
                }
            }
            num = (Integer) CollectionsKt.E0(arrayList2);
        } else {
            num = null;
        }
        Integer num2 = (Integer) CollectionsKt.E0(CollectionsKt.s(num, Integer.valueOf(d(subsSku))));
        if (num2 != null) {
            return num2.intValue();
        }
        return 0;
    }

    @Nullable
    public static final SkuPaymentMethod b(@NotNull SubsSku subsSku) {
        int i10;
        int i11;
        Intrinsics.checkNotNullParameter(subsSku, "<this>");
        List<SkuPaymentMethod> productExtendList = subsSku.getProductExtendList();
        Object obj = null;
        if (productExtendList == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : productExtendList) {
            Integer payType = ((SkuPaymentMethod) obj2).getPayType();
            int a10 = qf.e.f65327a.a();
            if (payType == null || payType.intValue() != a10) {
                arrayList.add(obj2);
            }
        }
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            obj = it.next();
            if (it.hasNext()) {
                Integer discountPercent = ((SkuPaymentMethod) obj).getDiscountPercent();
                if (discountPercent != null) {
                    i10 = discountPercent.intValue();
                } else {
                    i10 = 0;
                }
                do {
                    Object next = it.next();
                    Integer discountPercent2 = ((SkuPaymentMethod) next).getDiscountPercent();
                    if (discountPercent2 != null) {
                        i11 = discountPercent2.intValue();
                    } else {
                        i11 = 0;
                    }
                    if (i10 < i11) {
                        obj = next;
                        i10 = i11;
                    }
                } while (it.hasNext());
            }
        }
        return (SkuPaymentMethod) obj;
    }

    public static final float c(@NotNull SubsSku subsSku) {
        zc.e eVar;
        long j10;
        Intrinsics.checkNotNullParameter(subsSku, "<this>");
        Object skuDetails = subsSku.getSkuDetails();
        Float f10 = null;
        if (skuDetails instanceof zc.e) {
            eVar = (zc.e) skuDetails;
        } else {
            eVar = null;
        }
        if (eVar == null) {
            return 0.0f;
        }
        SubsPrice j11 = k.j(eVar);
        long j12 = 0;
        if (j11 != null) {
            j10 = j11.getOriginPriceAmountMicros();
        } else {
            j10 = 0;
        }
        SubsPrice j13 = k.j(eVar);
        if (j13 != null) {
            j12 = j13.getDiscountPriceAmountMicros();
        }
        if (j10 <= j12) {
            return 0.0f;
        }
        Float valueOf = Float.valueOf(((float) (j10 - j12)) / 1000000.0f);
        if (valueOf.floatValue() > 0.0f) {
            f10 = valueOf;
        }
        if (f10 == null) {
            return 0.0f;
        }
        return f10.floatValue();
    }

    public static final int d(@NotNull SubsSku subsSku) {
        zc.e eVar;
        long j10;
        long j11;
        Intrinsics.checkNotNullParameter(subsSku, "<this>");
        Object skuDetails = subsSku.getSkuDetails();
        if (skuDetails instanceof zc.e) {
            eVar = (zc.e) skuDetails;
        } else {
            eVar = null;
        }
        if (eVar == null) {
            return 0;
        }
        SubsPrice j12 = k.j(eVar);
        if (j12 != null) {
            j10 = j12.getOriginPriceAmountMicros();
        } else {
            j10 = 0;
        }
        SubsPrice j13 = k.j(eVar);
        if (j13 != null) {
            j11 = j13.getDiscountPriceAmountMicros();
        } else {
            j11 = 0;
        }
        Logger.f41511a.h("SkuExt", "originLong = " + j10 + " discountLong = " + j11);
        if (j10 <= j11 || j10 <= 0 || j11 <= 0) {
            return 0;
        }
        return kotlin.ranges.e.n(h.b((((float) (j10 - j11)) / ((float) j10)) * 100), 0, 100);
    }

    public static final int e(@NotNull SubsSku subsSku) {
        Intrinsics.checkNotNullParameter(subsSku, "<this>");
        float payAmount = subsSku.getPayAmount();
        float firstAmount = subsSku.getFirstAmount();
        float f10 = 0.0f;
        if (payAmount > firstAmount && payAmount > 0.0f && firstAmount > 0.0f) {
            f10 = ((payAmount - firstAmount) / payAmount) * 100;
        }
        return kotlin.ranges.e.n(h.b(f10), 0, 100);
    }

    public static final void f(@NotNull CoinSku coinSku, @NotNull zc.e skuDetails) {
        Intrinsics.checkNotNullParameter(coinSku, "<this>");
        Intrinsics.checkNotNullParameter(skuDetails, "skuDetails");
        coinSku.setSkuDetails(skuDetails);
        StringBuilder sb2 = new StringBuilder();
        sb2.append('$');
        sb2.append(coinSku.getActivityPrice());
        coinSku.setPriceText(sb2.toString());
        StringBuilder sb3 = new StringBuilder();
        sb3.append('$');
        sb3.append(coinSku.getOriginalPrice());
        coinSku.setOriginPriceText(sb3.toString());
        e.a b10 = skuDetails.b();
        if (b10 == null) {
            return;
        }
        String b11 = k.b(b10);
        String b12 = BillingUtil.f48070a.b(b10.b(), coinSku.getDisRate(), b11);
        fk.n.f51742a.a(b10.c());
        if (b12.length() > 0) {
            coinSku.setPriceText(b11);
            coinSku.setOriginPriceText(b12);
        }
    }

    public static final void g(@NotNull CoinSku coinSku, @NotNull zc.e skuDetails) {
        Intrinsics.checkNotNullParameter(coinSku, "<this>");
        Intrinsics.checkNotNullParameter(skuDetails, "skuDetails");
        coinSku.setSkuDetails(skuDetails);
        coinSku.setPriceText(k.c(skuDetails));
        e.a b10 = skuDetails.b();
        if (b10 == null) {
            return;
        }
        fk.n.f51742a.a(b10.c());
    }

    public static final void h(@NotNull SubsSku subsSku, @NotNull zc.e skuDetails) {
        SubsFormattedPrice subsFormattedPrice;
        Intrinsics.checkNotNullParameter(subsSku, "<this>");
        Intrinsics.checkNotNullParameter(skuDetails, "skuDetails");
        subsSku.setSkuDetails(skuDetails);
        String str = null;
        if (skuDetails.a() == ProductDataType.GOOGLE_PRODUCT) {
            subsFormattedPrice = k.f(skuDetails);
        } else if (skuDetails.a() == ProductDataType.GOOGLE_SKU) {
            subsFormattedPrice = k.g(skuDetails);
        } else if (skuDetails.a() == ProductDataType.HUAWEI_SKU) {
            subsFormattedPrice = k.e(skuDetails);
        } else {
            subsFormattedPrice = null;
        }
        boolean z10 = false;
        if (subsFormattedPrice == null) {
            subsSku.setEnableDiscountByGp(false);
        } else {
            subsSku.setOriginPriceText(subsFormattedPrice.getOriginPrice());
            subsSku.setDiscountPriceText(subsFormattedPrice.getDiscountPrice());
            if (subsFormattedPrice.getDiscountPrice().length() > 0) {
                z10 = true;
            }
            subsSku.setEnableDiscountByGp(z10);
        }
        fk.n nVar = fk.n.f51742a;
        if (subsFormattedPrice != null) {
            str = subsFormattedPrice.getCurrencyCode();
        }
        nVar.a(str);
        if (subsSku.enableDiscount()) {
            subsSku.setOfferToken(k.i(skuDetails));
        } else {
            subsSku.setOfferToken(k.h(skuDetails));
        }
    }

    public static final void i(@NotNull ActQueryPriceSku actQueryPriceSku, @Nullable List<? extends Object> list) {
        Intrinsics.checkNotNullParameter(actQueryPriceSku, "<this>");
        List<? extends Object> list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            for (Object obj : list) {
                if (obj instanceof zc.e) {
                    zc.e eVar = (zc.e) obj;
                    if (Intrinsics.areEqual(eVar.d(), actQueryPriceSku.getSkuId()) && actQueryPriceSku.isSubscription()) {
                        m(actQueryPriceSku, eVar);
                    }
                }
            }
        }
    }

    public static final void j(@NotNull CoinSku coinSku, @Nullable List<? extends Object> list, boolean z10) {
        Intrinsics.checkNotNullParameter(coinSku, "<this>");
        List<? extends Object> list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            for (Object obj : list) {
                if (obj instanceof zc.e) {
                    zc.e eVar = (zc.e) obj;
                    if (Intrinsics.areEqual(eVar.d(), coinSku.getGpSkuId())) {
                        if (coinSku.getSkuType() != 8 && !z10) {
                            g(coinSku, eVar);
                            return;
                        } else {
                            f(coinSku, eVar);
                            return;
                        }
                    }
                }
            }
        }
    }

    public static final void k(@NotNull SubsSku subsSku, @Nullable List<? extends Object> list) {
        Intrinsics.checkNotNullParameter(subsSku, "<this>");
        List<? extends Object> list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            for (Object obj : list) {
                if (obj instanceof zc.e) {
                    zc.e eVar = (zc.e) obj;
                    if (Intrinsics.areEqual(eVar.d(), subsSku.getSkuId())) {
                        h(subsSku, eVar);
                    }
                }
            }
        }
    }

    public static /* synthetic */ void l(CoinSku coinSku, List list, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        j(coinSku, list, z10);
    }

    public static final void m(@NotNull ActQueryPriceSku actQueryPriceSku, @NotNull zc.e skuDetails) {
        SubsFormattedPrice subsFormattedPrice;
        Intrinsics.checkNotNullParameter(actQueryPriceSku, "<this>");
        Intrinsics.checkNotNullParameter(skuDetails, "skuDetails");
        String str = null;
        if (skuDetails.a() == ProductDataType.GOOGLE_PRODUCT) {
            subsFormattedPrice = k.f(skuDetails);
        } else if (skuDetails.a() == ProductDataType.GOOGLE_SKU) {
            subsFormattedPrice = k.g(skuDetails);
        } else if (skuDetails.a() == ProductDataType.HUAWEI_SKU) {
            subsFormattedPrice = k.e(skuDetails);
        } else {
            subsFormattedPrice = null;
        }
        fk.n nVar = fk.n.f51742a;
        if (subsFormattedPrice != null) {
            str = subsFormattedPrice.getCurrencyCode();
        }
        nVar.a(str);
        boolean z10 = false;
        if (subsFormattedPrice == null) {
            actQueryPriceSku.setEnableDiscountByGp(false);
            return;
        }
        if (subsFormattedPrice.getDiscountPrice().length() > 0) {
            z10 = true;
        }
        actQueryPriceSku.setEnableDiscountByGp(z10);
    }
}
