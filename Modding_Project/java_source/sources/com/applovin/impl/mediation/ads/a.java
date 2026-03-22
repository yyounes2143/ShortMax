package com.applovin.impl.mediation.ads;

import android.app.Activity;
import androidx.annotation.Nullable;
import com.applovin.impl.b6;
import com.applovin.impl.c2;
import com.applovin.impl.g5;
import com.applovin.impl.k7;
import com.applovin.impl.p6;
import com.applovin.impl.s2;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.v2;
import com.applovin.mediation.MaxAdExpirationListener;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdRequestListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdReviewListener;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public abstract class a {
    protected final MaxAdFormat adFormat;
    protected MaxAdListener adListener;
    @Nullable
    protected MaxAdReviewListener adReviewListener;
    protected final String adUnitId;
    @Nullable
    protected MaxAdExpirationListener expirationListener;
    protected final com.applovin.impl.sdk.o logger;
    @Nullable
    protected MaxAdRequestListener requestListener;
    @Nullable
    protected MaxAdRevenueListener revenueListener;
    protected final com.applovin.impl.sdk.k sdk;
    protected final String tag;
    protected final Map<String, Object> localExtraParameters = Collections.synchronizedMap(new HashMap());
    protected final Map<String, Object> extraParameters = Collections.synchronizedMap(new HashMap());

    /* renamed from: com.applovin.impl.mediation.ads.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0113a extends MaxAdListener, MaxAdRevenueListener, MaxAdRequestListener {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(String str, MaxAdFormat maxAdFormat, String str2, com.applovin.impl.sdk.k kVar) {
        this.adUnitId = str;
        this.adFormat = maxAdFormat;
        this.sdk = kVar;
        this.tag = str2;
        this.logger = kVar.O();
    }

    private void a(final String str, final String str2, final String str3, final MaxAdFormat maxAdFormat, final String str4, final com.applovin.impl.sdk.k kVar) {
        kVar.r0().a((g5) new p6(kVar, "reportExtraParameter", new Runnable() { // from class: com.applovin.impl.mediation.ads.w
            @Override // java.lang.Runnable
            public final void run() {
                a.a(str, str2, maxAdFormat, str3, kVar, str4);
            }
        }), b6.b.OTHER);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void destroy() {
        this.localExtraParameters.clear();
        this.adListener = null;
        this.revenueListener = null;
        this.requestListener = null;
        this.expirationListener = null;
        this.adReviewListener = null;
    }

    public String getAdUnitId() {
        return this.adUnitId;
    }

    public void logApiCall(String str) {
        if (com.applovin.impl.sdk.o.a()) {
            this.logger.a(this.tag, str);
        }
    }

    public void setAdReviewListener(MaxAdReviewListener maxAdReviewListener) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.logger;
            String str = this.tag;
            oVar.a(str, "Setting Ad Review creative id listener: " + maxAdReviewListener);
        }
        this.adReviewListener = maxAdReviewListener;
    }

    public void setExpirationListener(@Nullable MaxAdExpirationListener maxAdExpirationListener) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.logger;
            String str = this.tag;
            oVar.a(str, "Setting expiration listener: " + maxAdExpirationListener);
        }
        this.expirationListener = maxAdExpirationListener;
    }

    public void setExtraParameter(String str, String str2) {
        if (str != null) {
            if (k7.c(this.sdk) && ("amazon_ad_response".equals(str) || "amazon_ad_error".equals(str))) {
                throw new IllegalArgumentException("`setExtraParameter()` is an incorrect method for passing `amazon_ad_response` or `amazon_ad_error`. Please use the following method: `setLocalExtraParameter()`. Also note that this exception occurs in development builds only.");
            }
            if (this.adFormat.isAdViewAd() && "ad_refresh_seconds".equals(str) && StringUtils.isValidString(str2)) {
                int parseInt = Integer.parseInt(str2);
                if (parseInt > TimeUnit.MINUTES.toSeconds(2L)) {
                    String str3 = this.tag;
                    com.applovin.impl.sdk.o.h(str3, "Attempting to set extra parameter \"ad_refresh_seconds\" to over 2 minutes (" + parseInt + "s) - this will be ignored");
                }
            }
            a(str, str2, this.adUnitId, this.adFormat, "extraParameter", this.sdk);
            this.extraParameters.put(str, str2);
            return;
        }
        throw new IllegalArgumentException("No key specified");
    }

    public void setListener(MaxAdListener maxAdListener) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.logger;
            String str = this.tag;
            oVar.a(str, "Setting listener: " + maxAdListener);
        }
        this.adListener = maxAdListener;
    }

    public void setLocalExtraParameter(String str, Object obj) {
        if (str != null) {
            if (obj instanceof Activity) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.logger.b(this.tag, "Ignoring setting local extra parameter to Activity instance - please pass a WeakReference of it instead!");
                    return;
                }
                return;
            }
            if ("amazon_ad_response".equals(str) || "amazon_ad_error".equals(str)) {
                setExtraParameter("is_amazon_integration", Boolean.toString(true));
            }
            a(str, String.valueOf(obj), this.adUnitId, this.adFormat, "localExtraParameter", this.sdk);
            this.localExtraParameters.put(str, obj);
            return;
        }
        throw new IllegalArgumentException("No key specified");
    }

    public void setRequestListener(MaxAdRequestListener maxAdRequestListener) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.logger;
            String str = this.tag;
            oVar.a(str, "Setting request listener: " + maxAdRequestListener);
        }
        this.requestListener = maxAdRequestListener;
    }

    public void setRevenueListener(MaxAdRevenueListener maxAdRevenueListener) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.logger;
            String str = this.tag;
            oVar.a(str, "Setting revenue listener: " + maxAdRevenueListener);
        }
        this.revenueListener = maxAdRevenueListener;
    }

    public static void logApiCall(String str, String str2) {
        com.applovin.impl.sdk.k kVar = com.applovin.impl.sdk.k.D0;
        if (kVar == null) {
            return;
        }
        kVar.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.k.D0.O().a(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, String str2, MaxAdFormat maxAdFormat, String str3, com.applovin.impl.sdk.k kVar, String str4) {
        HashMap<String, String> hashMap = CollectionUtils.hashMap("details", str + ":" + str2);
        CollectionUtils.putStringIfValid("ad_format", maxAdFormat.getLabel(), hashMap);
        CollectionUtils.putStringIfValid("ad_unit_id", str3, hashMap);
        kVar.P().a(c2.f7649j0, str4, hashMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(v2 v2Var) {
        s2 s2Var = new s2();
        s2Var.a().a("MAX Ad").a(v2Var).a();
        if (com.applovin.impl.sdk.o.a()) {
            this.logger.a(this.tag, s2Var.toString());
        }
    }
}
