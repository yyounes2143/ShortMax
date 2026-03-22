package com.applovin.impl.sdk.ad;

import android.net.Uri;
import android.text.TextUtils;
import androidx.core.util.Consumer;
import com.applovin.impl.adview.e;
import com.applovin.impl.d4;
import com.applovin.impl.f5;
import com.applovin.impl.n4;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.Collection;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class a extends b implements n4 {

    /* renamed from: n  reason: collision with root package name */
    private final String f9546n;

    /* renamed from: o  reason: collision with root package name */
    private final String f9547o;

    /* renamed from: p  reason: collision with root package name */
    private final String f9548p;

    /* renamed from: q  reason: collision with root package name */
    private final d4 f9549q;

    public a(JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.k kVar) {
        super(jSONObject, jSONObject2, kVar);
        this.f9546n = s1();
        this.f9547o = w1();
        this.f9548p = v1();
        this.f9549q = new d4(this);
    }

    public static a a(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        JSONObject jSONObject2;
        if (jSONObject == null || (jSONObject2 = JsonUtils.getJSONObject(jSONObject, "full_response", (JSONObject) null)) == null) {
            return null;
        }
        JSONObject jSONObject3 = JsonUtils.getJSONObject(JsonUtils.getJSONArray(jSONObject2, com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, new JSONArray()), 0, (JSONObject) null);
        if (jSONObject3 == null) {
            return null;
        }
        String string = JsonUtils.getString(jSONObject3, "html", "");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        String string2 = JsonUtils.getString(jSONObject3, "video", "");
        JsonUtils.putString(jSONObject3, "html", JsonUtils.getString(jSONObject, "original_html_source", ""));
        JsonUtils.putString(jSONObject3, "video", JsonUtils.getString(jSONObject, "original_video_uri_string", ""));
        a aVar = new a(jSONObject3, jSONObject2, kVar);
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "cached_ad_html_resources_urls", new JSONArray());
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            Object objectAtIndex = JsonUtils.getObjectAtIndex(jSONArray, i10, null);
            if (objectAtIndex instanceof String) {
                String str = (String) objectAtIndex;
                if (!TextUtils.isEmpty(str)) {
                    aVar.a(Uri.parse(str));
                }
            }
        }
        aVar.d(string);
        if (StringUtils.isValidString(string2)) {
            aVar.d(Uri.parse(string2));
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t(f5 f5Var) {
        f5Var.b("html", this.f9546n);
        f5Var.b("stream_url", this.f9548p);
    }

    private String v1() {
        return getStringFromAdObject("stream_url", "");
    }

    @Override // com.applovin.impl.sdk.ad.b
    public boolean K0() {
        return getBooleanFromFullResponse("is_persisted_ad", false);
    }

    @Override // com.applovin.impl.sdk.ad.b
    public boolean O0() {
        return containsKeyForAdObject("stream_url");
    }

    @Override // com.applovin.impl.sdk.ad.b
    public void Q0() {
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            f5Var.a(new Consumer() { // from class: com.applovin.impl.sdk.ad.d
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    a.this.t((f5) obj);
                }
            });
            return;
        }
        synchronized (this.adObjectLock) {
            JsonUtils.putString(this.adObject, "html", this.f9546n);
            JsonUtils.putString(this.adObject, "stream_url", this.f9548p);
        }
    }

    @Override // com.applovin.impl.sdk.ad.b
    public String S() {
        return this.f9547o;
    }

    public void d(String str) {
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            f5Var.b("html", str);
            return;
        }
        synchronized (this.adObjectLock) {
            JsonUtils.putString(this.adObject, "html", str);
        }
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public JSONObject getOriginalFullResponse() {
        JSONObject deepCopy;
        JSONObject jSONObject;
        f5 f5Var = this.synchronizedFullResponse;
        if (f5Var != null) {
            jSONObject = f5Var.a();
        } else {
            synchronized (this.fullResponseLock) {
                deepCopy = JsonUtils.deepCopy(this.fullResponse);
            }
            jSONObject = deepCopy;
        }
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, new JSONArray());
        if (jSONArray.length() > 0) {
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONArray, 0, new JSONObject());
            JsonUtils.putString(jSONObject2, "html", this.f9546n);
            JsonUtils.putString(jSONObject2, "video", this.f9547o);
            JsonUtils.putString(jSONObject2, "stream_url", this.f9548p);
        }
        return jSONObject;
    }

    @Override // com.applovin.impl.sdk.ad.AppLovinAdImpl
    public boolean hasVideoUrl() {
        if (v0() != null) {
            return true;
        }
        return false;
    }

    @Override // com.applovin.impl.sdk.ad.b, com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.b4
    public boolean isOpenMeasurementEnabled() {
        if (this.sdk.e0().e()) {
            return true;
        }
        return getBooleanFromAdObject("omsdk_enabled", Boolean.FALSE);
    }

    @Override // com.applovin.impl.sdk.ad.b
    public Uri m() {
        String stringFromAdObject = getStringFromAdObject(CampaignEx.JSON_KEY_CLICK_URL, "");
        if (StringUtils.isValidString(stringFromAdObject)) {
            return Uri.parse(stringFromAdObject);
        }
        return null;
    }

    @Override // com.applovin.impl.sdk.ad.b
    public Uri m0() {
        String stringFromAdObject = getStringFromAdObject("video_click_url", "");
        if (StringUtils.isValidString(stringFromAdObject)) {
            return Uri.parse(stringFromAdObject);
        }
        return m();
    }

    public String s1() {
        return getStringFromAdObject("html", "");
    }

    public float t1() {
        return getFloatFromAdObject("mraid_close_delay_graphic", 0.0f);
    }

    public String u1() {
        return this.f9548p;
    }

    @Override // com.applovin.impl.sdk.ad.b
    public Uri v0() {
        String v12 = v1();
        if (StringUtils.isValidString(v12)) {
            return Uri.parse(v12);
        }
        String w12 = w1();
        if (StringUtils.isValidString(w12)) {
            return Uri.parse(w12);
        }
        return null;
    }

    public String w1() {
        return getStringFromAdObject("video", "");
    }

    public boolean x1() {
        if (this.adObject.has("close_button_expandable_hidden")) {
            return getBooleanFromAdObject("close_button_expandable_hidden", Boolean.FALSE);
        }
        return true;
    }

    public void y1() {
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            f5Var.c("stream_url");
            return;
        }
        synchronized (this.adObjectLock) {
            this.adObject.remove("stream_url");
        }
    }

    @Override // com.applovin.impl.sdk.ad.b, com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.b4
    public d4 getAdEventTracker() {
        return this.f9549q;
    }

    public e.a r1() {
        return a(getIntFromAdObject("expandable_style", e.a.INVISIBLE.b()));
    }

    public void d(Uri uri) {
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            f5Var.b("video", uri.toString());
            return;
        }
        synchronized (this.adObjectLock) {
            JsonUtils.putString(this.adObject, "video", uri.toString());
        }
    }

    @Override // com.applovin.impl.n4
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putString(jSONObject, "original_html_source", this.f9546n);
        JsonUtils.putString(jSONObject, "original_video_uri_string", this.f9547o);
        JsonUtils.putString(jSONObject, "original_video_stream_uri_string", this.f9548p);
        ArrayList arrayList = new ArrayList();
        for (Uri uri : l()) {
            arrayList.add(uri.toString());
        }
        JsonUtils.putJsonArray(jSONObject, "cached_ad_html_resources_urls", new JSONArray((Collection) arrayList));
        f5 f5Var = this.synchronizedFullResponse;
        if (f5Var != null) {
            JsonUtils.putJSONObject(jSONObject, "full_response", f5Var.a());
        } else {
            synchronized (this.fullResponseLock) {
                JsonUtils.putJSONObject(jSONObject, "full_response", this.fullResponse);
            }
        }
        return jSONObject;
    }
}
