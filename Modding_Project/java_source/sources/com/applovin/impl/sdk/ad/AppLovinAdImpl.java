package com.applovin.impl.sdk.ad;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.impl.f5;
import com.applovin.impl.s1;
import com.applovin.impl.sdk.AppLovinAdBase;
import com.applovin.impl.v4;
import com.applovin.mediation.AppLovinUtils;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public abstract class AppLovinAdImpl extends AppLovinAdBase implements AppLovinAd, s1 {

    /* renamed from: a  reason: collision with root package name */
    private com.applovin.impl.u f9543a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f9544b;

    /* renamed from: c  reason: collision with root package name */
    private c f9545c;

    /* JADX INFO: Access modifiers changed from: protected */
    public AppLovinAdImpl(JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.k kVar) {
        super(jSONObject, jSONObject2, kVar);
    }

    private long b() {
        return getLongFromAdObject("ad_expiration_ms", ((Long) this.sdk.a(v4.f10209b1)).longValue());
    }

    public boolean canExpire() {
        if (getSize() == AppLovinAdSize.INTERSTITIAL && b() > 0) {
            return true;
        }
        return false;
    }

    public boolean equals(Object obj) {
        AppLovinAd c10;
        if ((obj instanceof c) && (c10 = ((c) obj).c()) != null) {
            obj = c10;
        }
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass() && getAdIdNumber() == ((AppLovinAdImpl) obj).getAdIdNumber()) {
            return true;
        }
        return false;
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase
    public long getAdIdNumber() {
        return getLongFromAdObject("ad_id", -1L);
    }

    public com.applovin.impl.u getAdZone() {
        com.applovin.impl.u uVar = this.f9543a;
        if (uVar != null) {
            if (uVar.f() != null && this.f9543a.g() != null) {
                return this.f9543a;
            }
            if (getSize() == null && getType() == null) {
                return this.f9543a;
            }
        }
        com.applovin.impl.u a10 = com.applovin.impl.u.a(getSize(), getType(), getStringFromFullResponse(AppLovinUtils.ServerParameterKeys.ZONE_ID, null), getBooleanFromFullResponse("is_bidding", false), getBooleanFromFullResponse("is_direct_sold", false));
        this.f9543a = a10;
        return a10;
    }

    public c getDummyAd() {
        return this.f9545c;
    }

    @Nullable
    public String getMediationServeId() {
        return getStringFromFullResponse("event_id", null);
    }

    public abstract JSONObject getOriginalFullResponse();

    public String getRawFullResponse() {
        String jSONObject;
        f5 f5Var = this.synchronizedFullResponse;
        if (f5Var != null) {
            return f5Var.toString();
        }
        synchronized (this.fullResponseLock) {
            jSONObject = this.fullResponse.toString();
        }
        return jSONObject;
    }

    @Override // com.applovin.sdk.AppLovinAd
    public AppLovinAdSize getSize() {
        return AppLovinAdSize.fromString(getStringFromFullResponse("ad_size", null));
    }

    @Override // com.applovin.impl.s1
    public long getTimeToLiveMillis() {
        if (!canExpire()) {
            return Long.MAX_VALUE;
        }
        return b() - (System.currentTimeMillis() - getCreatedAtMillis());
    }

    @Override // com.applovin.sdk.AppLovinAd
    public AppLovinAdType getType() {
        return AppLovinAdType.fromString(getStringFromFullResponse("ad_type", null));
    }

    @Override // com.applovin.sdk.AppLovinAd
    public String getZoneId() {
        if (getAdZone().i()) {
            return null;
        }
        return getStringFromFullResponse(AppLovinUtils.ServerParameterKeys.ZONE_ID, null);
    }

    public boolean hasShown() {
        return getBooleanFromAdObject("shown", Boolean.FALSE);
    }

    public boolean hasVideoUrl() {
        this.sdk.O();
        if (com.applovin.impl.sdk.o.a()) {
            this.sdk.O().b("AppLovinAd", "Attempting to invoke hasVideoUrl() from base ad class");
            return false;
        }
        return false;
    }

    public int hashCode() {
        return (int) getAdIdNumber();
    }

    public boolean isExpired() {
        return this.f9544b;
    }

    public boolean isVideoAd() {
        if (this.adObject.has("is_video_ad")) {
            return getBooleanFromAdObject("is_video_ad", Boolean.FALSE);
        }
        return hasVideoUrl();
    }

    public void setDummyAd(c cVar) {
        this.f9545c = cVar;
    }

    @Override // com.applovin.impl.s1
    public void setExpired() {
        this.f9544b = true;
    }

    public void setHasShown(boolean z10) {
        try {
            f5 f5Var = this.synchronizedAdObject;
            if (f5Var != null) {
                f5Var.a("shown", (Object) Boolean.valueOf(z10));
            } else {
                synchronized (this.adObjectLock) {
                    this.adObject.put("shown", z10);
                }
            }
        } catch (Throwable unused) {
        }
    }

    @NonNull
    public String toString() {
        return "AppLovinAd{adIdNumber=" + getAdIdNumber() + ", zoneId=\"" + getZoneId() + "\"}";
    }
}
