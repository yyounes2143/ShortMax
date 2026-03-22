package jm;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.explorestack.protobuf.DoubleValue;
import com.explorestack.protobuf.StringValue;
import com.explorestack.protobuf.UInt32Value;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdValue;
import com.google.android.gms.ads.BaseAdView;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import io.bidmachine.protobuf.Waterfall;
import java.util.Map;
/* loaded from: classes7.dex */
class o {
    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static AdManagerAdRequest a(@NonNull Waterfall.Configuration.AdUnit adUnit) {
        AdManagerAdRequest.Builder builder = new AdManagerAdRequest.Builder();
        String requestAgent = adUnit.getRequestAgent();
        if (!TextUtils.isEmpty(requestAgent)) {
            builder.setRequestAgent(requestAgent);
        }
        for (Map.Entry<String, String> entry : adUnit.getCustomTargetingMap().entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (!TextUtils.isEmpty(key) && !TextUtils.isEmpty(value)) {
                builder.addCustomTargeting(key, value);
            }
        }
        return builder.build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static fr.a b(@NonNull fr.a aVar, @NonNull AdError adError) {
        return new fr.a(aVar, adError.getCode(), adError.getMessage());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    @WorkerThread
    public static hm.l c(@Nullable BaseAdView baseAdView) {
        String str;
        if (baseAdView == null) {
            return null;
        }
        Waterfall.Result.EstimatedPrice g10 = g(baseAdView, new String[]{"zza", "zzj", "zza", "a", "a", CampaignEx.JSON_KEY_AD_K, "ae"});
        ResponseInfo responseInfo = baseAdView.getResponseInfo();
        if (responseInfo != null) {
            str = responseInfo.toString();
        } else {
            str = null;
        }
        if (g10 == null && str == null) {
            return null;
        }
        return new hm.l(g10, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    @WorkerThread
    public static hm.l d(@Nullable InterstitialAd interstitialAd) {
        if (interstitialAd == null) {
            return null;
        }
        return new hm.l(g(interstitialAd, new String[]{"zzc", "zza", "a", "a", CampaignEx.JSON_KEY_AD_K, "ae"}), interstitialAd.getResponseInfo().toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    @WorkerThread
    public static hm.l e(@Nullable RewardedAd rewardedAd) {
        if (rewardedAd == null) {
            return null;
        }
        return new hm.l(g(rewardedAd, new String[]{"zzb", "zza", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, CampaignEx.JSON_KEY_AD_K, "ae"}), rewardedAd.getResponseInfo().toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static Waterfall.Result.EstimatedPrice f(@NonNull AdValue adValue) {
        return Waterfall.Result.EstimatedPrice.newBuilder().setValue(DoubleValue.newBuilder().setValue(adValue.getValueMicros()).build()).setCurrency(StringValue.newBuilder().setValue(adValue.getCurrencyCode()).build()).setPrecision(UInt32Value.newBuilder().setValue(adValue.getPrecisionType()).build()).build();
    }

    @Nullable
    @WorkerThread
    static Waterfall.Result.EstimatedPrice g(@NonNull Object obj, @NonNull String[] strArr) {
        Double d10;
        try {
            Object c10 = fr.g.c(obj, strArr);
            if (c10 == null) {
                return null;
            }
            Integer num = (Integer) fr.g.b(c10, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B);
            String str = (String) fr.g.b(c10, "c");
            Number number = (Number) fr.g.b(c10, "d");
            if (number != null) {
                d10 = Double.valueOf(number.doubleValue());
            } else {
                d10 = null;
            }
            if (num == null && str == null && d10 == null) {
                return null;
            }
            Waterfall.Result.EstimatedPrice.Builder newBuilder = Waterfall.Result.EstimatedPrice.newBuilder();
            if (d10 != null) {
                newBuilder.setValue(DoubleValue.newBuilder().setValue(d10.doubleValue()).build());
            }
            if (str != null) {
                newBuilder.setCurrency(StringValue.newBuilder().setValue(str).build());
            }
            if (num != null) {
                newBuilder.setPrecision(UInt32Value.newBuilder().setValue(num.intValue()).build());
            }
            return newBuilder.build();
        } catch (Throwable unused) {
            return null;
        }
    }
}
