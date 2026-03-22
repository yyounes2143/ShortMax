package com.applovin.sdk;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.impl.c2;
import com.applovin.impl.k7;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.l;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.t0;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class AppLovinSdkSettings {

    /* renamed from: a  reason: collision with root package name */
    private boolean f10887a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f10888b;

    /* renamed from: e  reason: collision with root package name */
    private String f10891e;

    /* renamed from: f  reason: collision with root package name */
    private String f10892f;

    /* renamed from: g  reason: collision with root package name */
    private String f10893g;

    /* renamed from: j  reason: collision with root package name */
    private final AppLovinTermsAndPrivacyPolicyFlowSettings f10896j;

    /* renamed from: k  reason: collision with root package name */
    private k f10897k;

    /* renamed from: l  reason: collision with root package name */
    private String f10898l;

    /* renamed from: d  reason: collision with root package name */
    private boolean f10890d = true;
    private final Map<String, Object> localSettings = new HashMap();

    /* renamed from: h  reason: collision with root package name */
    private final Map f10894h = Collections.synchronizedMap(new HashMap());

    /* renamed from: i  reason: collision with root package name */
    private final Map f10895i = Collections.synchronizedMap(new HashMap());

    /* renamed from: c  reason: collision with root package name */
    private boolean f10889c = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppLovinSdkSettings(Context context) {
        this.f10898l = "";
        if (context == null) {
            o.h("AppLovinSdkSettings", "context cannot be null. Please provide a valid context.");
        }
        Context e10 = k7.e(context);
        this.f10887a = k7.m(e10);
        this.f10896j = t0.a(e10);
        this.f10898l = e10.getPackageName();
        a(e10);
    }

    private void a(Context context) {
        JSONObject jSONObject;
        int identifier = context.getResources().getIdentifier("applovin_settings", "raw", context.getPackageName());
        if (identifier == 0) {
            return;
        }
        String a10 = k7.a(identifier, context, (k) null);
        if (StringUtils.isValidString(a10)) {
            jSONObject = JsonUtils.jsonObjectFromJsonString(a10, new JSONObject());
        } else {
            jSONObject = new JSONObject();
        }
        this.f10894h.putAll(JsonUtils.tryToStringMap(jSONObject));
    }

    public void attachAppLovinSdk(k kVar) {
        this.f10897k = kVar;
        if (StringUtils.isValidString(this.f10891e)) {
            kVar.t0().a(Arrays.asList(this.f10891e.split(",")));
            this.f10891e = null;
        }
        if (this.f10892f != null) {
            kVar.O();
            if (o.a()) {
                o O = kVar.O();
                O.a("AppLovinSdkSettings", "Setting user id: " + this.f10892f);
            }
            kVar.x0().a(this.f10892f);
            this.f10892f = null;
        }
        if (StringUtils.isValidString(this.f10893g)) {
            l.a(this.f10893g, kVar);
            this.f10893g = null;
        }
        for (Map.Entry entry : this.f10895i.entrySet()) {
            kVar.w0().a(c2.f7648j, "preInitExtraParameter", CollectionUtils.hashMap("details", ((String) entry.getKey()) + ":" + ((String) entry.getValue())));
        }
        this.f10895i.clear();
    }

    public Map<String, String> getExtraParameters() {
        Map<String, String> map;
        synchronized (this.f10894h) {
            map = CollectionUtils.map(this.f10894h);
        }
        return map;
    }

    public AppLovinTermsAndPrivacyPolicyFlowSettings getTermsAndPrivacyPolicyFlowSettings() {
        return this.f10896j;
    }

    @Nullable
    public String getUserIdentifier() {
        k kVar = this.f10897k;
        if (kVar == null) {
            return this.f10892f;
        }
        return kVar.x0().e();
    }

    public boolean isCreativeDebuggerEnabled() {
        return this.f10889c;
    }

    public boolean isMuted() {
        return this.f10888b;
    }

    public boolean isVerboseLoggingEnabled() {
        return this.f10887a;
    }

    public void setCreativeDebuggerEnabled(boolean z10) {
        o.e("AppLovinSdkSettings", "setCreativeDebuggerEnabled(creativeDebuggerEnabled=" + z10 + ")");
        if (this.f10889c == z10) {
            return;
        }
        this.f10889c = z10;
        k kVar = this.f10897k;
        if (kVar == null) {
            return;
        }
        if (z10) {
            kVar.z().l();
        } else {
            kVar.z().k();
        }
    }

    public void setExtraParameter(String str, @Nullable String str2) {
        String str3;
        o.e("AppLovinSdkSettings", "setExtraParameter(key=" + str + ", value=" + str2 + ")");
        if (TextUtils.isEmpty(str)) {
            o.h("AppLovinSdkSettings", "Failed to set extra parameter for null or empty key: " + str);
            return;
        }
        if (str2 != null) {
            str3 = str2.trim();
        } else {
            str3 = null;
        }
        if ("test_mode_network".equalsIgnoreCase(str)) {
            if (this.f10897k != null) {
                if (StringUtils.isValidString(str3)) {
                    this.f10897k.t0().a(Arrays.asList(str3.split(",")));
                } else {
                    this.f10897k.t0().a((String) null);
                }
            } else {
                this.f10891e = str3;
            }
        } else if (!"fan".equals(str) && !"esc".equals(str)) {
            if ("disable_all_logs".equals(str)) {
                o.a(Boolean.parseBoolean(str3));
            } else if ("package_name_override".equals(str)) {
                k kVar = this.f10897k;
                if (kVar != null) {
                    l.a(str3, kVar);
                } else {
                    this.f10893g = str3;
                }
            }
        } else if (!this.f10898l.startsWith("com.unity.")) {
            return;
        }
        if (this.f10897k != null) {
            this.f10897k.w0().a(c2.f7648j, "postInitExtraParameter", CollectionUtils.hashMap("details", str + ":" + str2));
        } else {
            this.f10895i.put(str, str3);
        }
        this.f10894h.put(str, str3);
    }

    public void setMuted(boolean z10) {
        o.e("AppLovinSdkSettings", "setMuted(muted=" + z10 + ")");
        this.f10888b = z10;
    }

    public void setShouldFailAdDisplayIfDontKeepActivitiesIsEnabled(boolean z10) {
        o.e("AppLovinSdkSettings", "setShouldFailAdDisplayIfDontKeepActivitiesIsEnabled(shouldFailAdDisplayIfDontKeepActivitiesIsEnabled=" + z10 + ")");
        this.f10890d = z10;
    }

    public void setUserIdentifier(String str) {
        o.e("AppLovinSdkSettings", "setUserIdentifier(userIdentifier=" + str + ")");
        if (StringUtils.isValidString(str) && str.length() > k7.d(8)) {
            o.h("AppLovinSdk", "Provided user id longer than supported (" + str.length() + " bytes, " + k7.d(8) + " maximum)");
        }
        k kVar = this.f10897k;
        if (kVar != null) {
            kVar.O();
            if (o.a()) {
                o O = this.f10897k.O();
                O.a("AppLovinSdkSettings", "Setting user id: " + str);
            }
            this.f10897k.x0().a(str);
            return;
        }
        this.f10892f = str;
    }

    public void setVerboseLogging(boolean z10) {
        o.e("AppLovinSdkSettings", "setVerboseLogging(isVerboseLoggingEnabled=" + z10 + ")");
        if (k7.k()) {
            o.h("AppLovinSdkSettings", "Ignoring setting of verbose logging - it is configured from Android manifest already.");
            if (k7.m(null) != z10) {
                o.h("AppLovinSdkSettings", "Attempted to programmatically set verbose logging flag to value different from value configured in Android Manifest.");
                return;
            }
            return;
        }
        this.f10887a = z10;
    }

    public boolean shouldFailAdDisplayIfDontKeepActivitiesIsEnabled() {
        return this.f10890d;
    }

    @NonNull
    public String toString() {
        return "AppLovinSdkSettings{isVerboseLoggingEnabled=" + this.f10887a + ", muted=" + this.f10888b + ", creativeDebuggerEnabled=" + this.f10889c + '}';
    }
}
