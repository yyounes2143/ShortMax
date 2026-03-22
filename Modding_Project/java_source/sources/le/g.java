package le;

import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.bean.subs.GPayExchangePremiumResult;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BillingListenerAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public class g {
    public void a(@NotNull zc.a error) {
        Intrinsics.checkNotNullParameter(error, "error");
    }

    public void b(@NotNull String gpSkuId, @Nullable String str) {
        Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
    }

    public void c(@Nullable String str, @NotNull String gpSkuId, @NotNull GPayPriceInfo priceInfo, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
        Intrinsics.checkNotNullParameter(priceInfo, "priceInfo");
    }

    public void d(@NotNull String gpSkuId, @Nullable String str) {
        Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
    }

    public void e(@Nullable String str, @NotNull String gpSkuId, @NotNull GPayPriceInfo priceInfo) {
        Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
        Intrinsics.checkNotNullParameter(priceInfo, "priceInfo");
    }

    public void h(@NotNull GPayExchangePremiumResult.RechargeUserInfo rechargeUserInfo) {
        Intrinsics.checkNotNullParameter(rechargeUserInfo, "rechargeUserInfo");
    }

    public void i(@NotNull String gpSkuId, @Nullable String str, int i10) {
        Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
    }

    public void j(@Nullable String str, @NotNull String gpSkuId, @NotNull GPayPriceInfo priceInfo, int i10) {
        Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
        Intrinsics.checkNotNullParameter(priceInfo, "priceInfo");
    }

    public void g() {
    }

    public void f(@Nullable List<zc.h> list) {
    }
}
