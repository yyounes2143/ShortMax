package com.iab.omid.library.applovin.publisher;

import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.iab.omid.library.applovin.adsession.AdEvents;
import com.iab.omid.library.applovin.adsession.AdSessionConfiguration;
import com.iab.omid.library.applovin.adsession.AdSessionContext;
import com.iab.omid.library.applovin.adsession.ErrorType;
import com.iab.omid.library.applovin.adsession.VerificationScriptResource;
import com.iab.omid.library.applovin.adsession.media.MediaEvents;
import com.iab.omid.library.applovin.internal.g;
import com.iab.omid.library.applovin.internal.h;
import com.iab.omid.library.applovin.utils.c;
import com.iab.omid.library.applovin.utils.f;
import com.mbridge.msdk.MBridgeConstans;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.util.Date;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public abstract class AdSessionStatePublisher {

    /* renamed from: a  reason: collision with root package name */
    private String f22505a;

    /* renamed from: b  reason: collision with root package name */
    private com.iab.omid.library.applovin.weakreference.b f22506b;

    /* renamed from: c  reason: collision with root package name */
    private AdEvents f22507c;

    /* renamed from: d  reason: collision with root package name */
    private MediaEvents f22508d;

    /* renamed from: e  reason: collision with root package name */
    private a f22509e;

    /* renamed from: f  reason: collision with root package name */
    private long f22510f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public enum a {
        AD_STATE_IDLE,
        AD_STATE_VISIBLE,
        AD_STATE_NOTVISIBLE
    }

    public AdSessionStatePublisher(String str) {
        a();
        this.f22505a = str;
        this.f22506b = new com.iab.omid.library.applovin.weakreference.b(null);
    }

    public void a() {
        this.f22510f = f.b();
        this.f22509e = a.AD_STATE_IDLE;
    }

    public void b() {
        this.f22506b.clear();
    }

    public AdEvents c() {
        return this.f22507c;
    }

    public MediaEvents d() {
        return this.f22508d;
    }

    public boolean e() {
        if (this.f22506b.get() != null) {
            return true;
        }
        return false;
    }

    public void f() {
        h.a().a(getWebView(), this.f22505a);
    }

    public void g() {
        h.a().b(getWebView(), this.f22505a);
    }

    public WebView getWebView() {
        return this.f22506b.get();
    }

    public void h() {
        a((JSONObject) null);
    }

    public void a(float f10) {
        h.a().a(getWebView(), this.f22505a, f10);
    }

    public void b(String str, long j10) {
        if (j10 >= this.f22510f) {
            this.f22509e = a.AD_STATE_VISIBLE;
            h.a().b(getWebView(), this.f22505a, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(WebView webView) {
        this.f22506b = new com.iab.omid.library.applovin.weakreference.b(webView);
    }

    public void b(boolean z10) {
        if (e()) {
            h.a().a(getWebView(), this.f22505a, z10 ? "locked" : "unlocked");
        }
    }

    public void a(AdEvents adEvents) {
        this.f22507c = adEvents;
    }

    public void a(AdSessionConfiguration adSessionConfiguration) {
        h.a().a(getWebView(), this.f22505a, adSessionConfiguration.toJsonObject());
    }

    public void a(ErrorType errorType, String str) {
        h.a().a(getWebView(), this.f22505a, errorType, str);
    }

    public void a(com.iab.omid.library.applovin.adsession.a aVar, AdSessionContext adSessionContext) {
        a(aVar, adSessionContext, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(com.iab.omid.library.applovin.adsession.a aVar, AdSessionContext adSessionContext, JSONObject jSONObject) {
        String c10 = aVar.c();
        JSONObject jSONObject2 = new JSONObject();
        c.a(jSONObject2, "environment", MBridgeConstans.DYNAMIC_VIEW_WX_APP);
        c.a(jSONObject2, "adSessionType", adSessionContext.getAdSessionContextType());
        c.a(jSONObject2, "deviceInfo", com.iab.omid.library.applovin.utils.b.d());
        c.a(jSONObject2, "deviceCategory", com.iab.omid.library.applovin.utils.a.a().toString());
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        c.a(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject3 = new JSONObject();
        c.a(jSONObject3, HandleInvocationsFromAdViewer.KEY_OM_PARTNER, adSessionContext.getPartner().getName());
        c.a(jSONObject3, HandleInvocationsFromAdViewer.KEY_OM_PARTNER_VERSION, adSessionContext.getPartner().getVersion());
        c.a(jSONObject2, "omidNativeInfo", jSONObject3);
        JSONObject jSONObject4 = new JSONObject();
        c.a(jSONObject4, "libraryVersion", "1.5.3-Applovin");
        c.a(jSONObject4, "appId", g.b().a().getApplicationContext().getPackageName());
        c.a(jSONObject2, MBridgeConstans.DYNAMIC_VIEW_WX_APP, jSONObject4);
        if (adSessionContext.getContentUrl() != null) {
            c.a(jSONObject2, "contentUrl", adSessionContext.getContentUrl());
        }
        if (adSessionContext.getCustomReferenceData() != null) {
            c.a(jSONObject2, "customReferenceData", adSessionContext.getCustomReferenceData());
        }
        JSONObject jSONObject5 = new JSONObject();
        for (VerificationScriptResource verificationScriptResource : adSessionContext.getVerificationScriptResources()) {
            c.a(jSONObject5, verificationScriptResource.getVendorKey(), verificationScriptResource.getVerificationParameters());
        }
        h.a().a(getWebView(), c10, jSONObject2, jSONObject5, jSONObject);
    }

    public void a(MediaEvents mediaEvents) {
        this.f22508d = mediaEvents;
    }

    public void a(String str) {
        a(str, (JSONObject) null);
    }

    public void a(String str, long j10) {
        if (j10 >= this.f22510f) {
            a aVar = this.f22509e;
            a aVar2 = a.AD_STATE_NOTVISIBLE;
            if (aVar != aVar2) {
                this.f22509e = aVar2;
                h.a().b(getWebView(), this.f22505a, str);
            }
        }
    }

    public void a(String str, @Nullable JSONObject jSONObject) {
        h.a().a(getWebView(), this.f22505a, str, jSONObject);
    }

    public void a(@NonNull Date date) {
        if (date == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        c.a(jSONObject, "timestamp", Long.valueOf(date.getTime()));
        h.a().a(getWebView(), jSONObject);
    }

    public void a(@Nullable JSONObject jSONObject) {
        h.a().b(getWebView(), this.f22505a, jSONObject);
    }

    public void a(boolean z10) {
        if (e()) {
            h.a().c(getWebView(), this.f22505a, z10 ? "foregrounded" : "backgrounded");
        }
    }

    public void i() {
    }
}
