package jk;

import android.os.Bundle;
import com.startshorts.androidplayer.bean.purchase.BatchUnlockEpisodeSku;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.purchase.PayPendingCoinSku;
import com.startshorts.androidplayer.bean.shorts.ShortDiscountSku;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PurchaseExt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class q {
    @Nullable
    public static final CoinSku a(@NotNull zc.f fVar) {
        String str;
        ShortDiscountSku shortDiscountSku;
        CoinSku parse;
        Intrinsics.checkNotNullParameter(fVar, "<this>");
        zc.c a10 = fVar.a();
        if (a10 != null) {
            str = a10.a();
        } else {
            str = null;
        }
        Logger.f41511a.h("Purchase", "payPendingCoinSku -> " + str);
        if (str != null && str.length() != 0) {
            try {
                if (StringsKt.b0(str, "prid", false, 2, null)) {
                    PayPendingCoinSku payPendingCoinSku = (PayPendingCoinSku) l.b(str, PayPendingCoinSku.class);
                    if (payPendingCoinSku == null || (parse = payPendingCoinSku.parse()) == null) {
                        return null;
                    }
                    parse.setGpSkuId(m.c(fVar.d(), 0));
                    EventManager eventManager = EventManager.f42463a;
                    Bundle bundle = new Bundle();
                    bundle.putString("pay_pending_coin_sku", str);
                    Unit unit = Unit.f60915a;
                    EventManager.s0(eventManager, "purchased_sku_parse", bundle, 0L, 4, null);
                    return parse;
                }
                List split$default = StringsKt.split$default(new Regex("\\s").replace(StringsKt.P(StringsKt.P(str, "[", "", false, 4, null), "]", "", false, 4, null), ""), new String[]{","}, false, 0, 6, null);
                int i10 = 6;
                if (split$default.size() >= 8) {
                    BatchUnlockEpisodeSku batchUnlockEpisodeSku = new BatchUnlockEpisodeSku();
                    batchUnlockEpisodeSku.setSkuType(m.b(split$default, 0));
                    batchUnlockEpisodeSku.setSkuProductId(m.c(split$default, 1));
                    batchUnlockEpisodeSku.setSkuModelConfigId(m.c(split$default, 2));
                    batchUnlockEpisodeSku.setPrizeId(m.b(split$default, 3));
                    batchUnlockEpisodeSku.setRecharge(m.a(split$default, 4));
                    batchUnlockEpisodeSku.setShortsId(m.b(split$default, 5));
                    batchUnlockEpisodeSku.setDramaId(m.b(split$default, 6));
                    batchUnlockEpisodeSku.setUnlockingEpisodes(m.b(split$default, 7));
                    batchUnlockEpisodeSku.setUserId(m.c(split$default, 8));
                    batchUnlockEpisodeSku.setGpSkuId(m.c(fVar.d(), 0));
                    EventManager eventManager2 = EventManager.f42463a;
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("pay_pending_coin_sku", str);
                    Unit unit2 = Unit.f60915a;
                    EventManager.s0(eventManager2, "purchased_sku_parse", bundle2, 0L, 4, null);
                    return batchUnlockEpisodeSku;
                } else if (!split$default.isEmpty()) {
                    int b10 = m.b(split$default, 0);
                    if (b10 == 12) {
                        ShortDiscountSku shortDiscountSku2 = new ShortDiscountSku();
                        shortDiscountSku2.setShortPlayId(m.b(split$default, 5));
                        shortDiscountSku = shortDiscountSku2;
                    } else {
                        shortDiscountSku = new CoinSku();
                    }
                    shortDiscountSku.setSkuType(b10);
                    shortDiscountSku.setSkuProductId(m.c(split$default, 1));
                    shortDiscountSku.setSkuModelConfigId(m.c(split$default, 2));
                    shortDiscountSku.setPrizeId(m.b(split$default, 3));
                    shortDiscountSku.setRecharge(m.a(split$default, 4));
                    if (!(shortDiscountSku instanceof ShortDiscountSku)) {
                        i10 = 5;
                    }
                    shortDiscountSku.setUserId(m.c(split$default, i10));
                    shortDiscountSku.setGpSkuId(m.c(fVar.d(), 0));
                    EventManager eventManager3 = EventManager.f42463a;
                    Bundle bundle3 = new Bundle();
                    bundle3.putString("pay_pending_coin_sku", str);
                    Unit unit3 = Unit.f60915a;
                    EventManager.s0(eventManager3, "purchased_sku_parse", bundle3, 0L, 4, null);
                    return shortDiscountSku;
                }
            } catch (Exception e10) {
                Logger.f41511a.e("Purchase", "parseCoinSku exception -> " + e10.getMessage());
            }
        }
        return null;
    }

    @Nullable
    public static final SubsSku b(@NotNull zc.f fVar) {
        String str;
        Intrinsics.checkNotNullParameter(fVar, "<this>");
        zc.c a10 = fVar.a();
        if (a10 != null) {
            str = a10.a();
        } else {
            str = null;
        }
        Logger.f41511a.h("Purchase", "payPendingSubsSkuJson -> " + str);
        if (str != null && str.length() != 0) {
            try {
                List split$default = StringsKt.split$default(new Regex("\\s").replace(StringsKt.P(StringsKt.P(str, "[", "", false, 4, null), "]", "", false, 4, null), ""), new String[]{","}, false, 0, 6, null);
                if (!split$default.isEmpty()) {
                    SubsSku subsSku = new SubsSku();
                    subsSku.setProductId(m.c(split$default, 1));
                    subsSku.setPayAmount(m.a(split$default, 2));
                    subsSku.setSource(m.c(split$default, 3));
                    subsSku.setReceiveType(m.b(split$default, 4));
                    subsSku.setCoins(m.b(split$default, 5));
                    subsSku.setBonus(Integer.valueOf(m.b(split$default, 6)));
                    subsSku.setSkuId(m.c(fVar.d(), 0));
                    EventManager eventManager = EventManager.f42463a;
                    Bundle bundle = new Bundle();
                    bundle.putString("pay_pending_coin_sku", str);
                    Unit unit = Unit.f60915a;
                    EventManager.s0(eventManager, "purchased_sku_parse", bundle, 0L, 4, null);
                    return subsSku;
                }
            } catch (Exception e10) {
                Logger.f41511a.e("Purchase", "parseSubsSku exception -> " + e10.getMessage());
            }
        }
        return null;
    }
}
