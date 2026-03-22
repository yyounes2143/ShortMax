package com.applovin.impl.sdk.ad;

import android.os.Bundle;
import com.applovin.impl.c4;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class c extends AppLovinAdImpl {

    /* renamed from: d  reason: collision with root package name */
    private AppLovinAd f9582d;

    /* renamed from: e  reason: collision with root package name */
    private final com.applovin.impl.u f9583e;

    public c(com.applovin.impl.u uVar, com.applovin.impl.sdk.k kVar) {
        super(new JSONObject(), new JSONObject(), kVar);
        this.f9583e = uVar;
    }

    private AppLovinAd d() {
        return (AppLovinAd) this.sdk.i().f(this.f9583e);
    }

    private String e() {
        com.applovin.impl.u adZone = getAdZone();
        if (adZone != null && !adZone.i()) {
            return adZone.e();
        }
        return null;
    }

    public void a(AppLovinAd appLovinAd) {
        this.f9582d = appLovinAd;
    }

    public AppLovinAd c() {
        AppLovinAd appLovinAd = this.f9582d;
        if (appLovinAd == null) {
            return d();
        }
        return appLovinAd;
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && c.class == obj.getClass()) {
            AppLovinAd c10 = c();
            if (c10 != null) {
                return c10.equals(obj);
            }
            return super.equals(obj);
        }
        return false;
    }

    public AppLovinAd f() {
        return this.f9582d;
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.b4
    public c4 getAdEventTracker() {
        return null;
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl, com.applovin.impl.sdk.AppLovinAdBase
    public long getAdIdNumber() {
        AppLovinAd c10 = c();
        if (c10 instanceof AppLovinAdImpl) {
            return ((AppLovinAdImpl) c10).getAdIdNumber();
        }
        return 0L;
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public com.applovin.impl.u getAdZone() {
        AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) c();
        if (appLovinAdImpl != null) {
            return appLovinAdImpl.getAdZone();
        }
        return this.f9583e;
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase
    public long getCreatedAtMillis() {
        AppLovinAd c10 = c();
        if (c10 instanceof AppLovinAdImpl) {
            return ((AppLovinAdImpl) c10).getCreatedAtMillis();
        }
        return 0L;
    }

    @Override // com.applovin.impl.sdk.array.ArrayDirectDownloadAd
    public Bundle getDirectDownloadParameters() {
        return new Bundle();
    }

    @Override // com.applovin.impl.sdk.array.ArrayDirectDownloadAd
    public String getDirectDownloadToken() {
        return null;
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public String getMediationServeId() {
        AppLovinAd c10 = c();
        if (c10 instanceof AppLovinAdImpl) {
            return ((AppLovinAdImpl) c10).getMediationServeId();
        }
        return null;
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.b4
    public String getOpenMeasurementContentUrl() {
        return null;
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.b4
    public String getOpenMeasurementCustomReferenceData() {
        return null;
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.b4
    public List getOpenMeasurementVerificationScriptResources() {
        return null;
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public JSONObject getOriginalFullResponse() {
        AppLovinAd c10 = c();
        if (c10 instanceof AppLovinAdImpl) {
            return ((AppLovinAdImpl) c10).getOriginalFullResponse();
        }
        return null;
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl, com.applovin.sdk.AppLovinAd
    public AppLovinAdSize getSize() {
        return getAdZone().f();
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl, com.applovin.sdk.AppLovinAd
    public AppLovinAdType getType() {
        return getAdZone().g();
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl, com.applovin.sdk.AppLovinAd
    public String getZoneId() {
        if (this.f9583e.i()) {
            return null;
        }
        return this.f9583e.e();
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public int hashCode() {
        AppLovinAd c10 = c();
        if (c10 != null) {
            return c10.hashCode();
        }
        return super.hashCode();
    }

    @Override // com.applovin.impl.sdk.array.ArrayDirectDownloadAd
    public boolean isDirectDownloadEnabled() {
        return false;
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public boolean isExpired() {
        AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) c();
        if (appLovinAdImpl != null && appLovinAdImpl.isExpired()) {
            return true;
        }
        return false;
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.b4
    public boolean isOpenMeasurementEnabled() {
        return false;
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public boolean isVideoAd() {
        AppLovinAd c10 = c();
        if ((c10 instanceof AppLovinAdImpl) && ((AppLovinAdImpl) c10).isVideoAd()) {
            return true;
        }
        return false;
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public String toString() {
        return "AppLovinAd{ #" + getAdIdNumber() + ", adType=" + getType() + ", adSize=" + getSize() + ", zoneId='" + e() + "'}";
    }
}
