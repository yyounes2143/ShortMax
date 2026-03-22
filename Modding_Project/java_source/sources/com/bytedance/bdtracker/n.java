package com.bytedance.bdtracker;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
@Metadata
/* loaded from: classes3.dex */
public final class n extends p {
    @Nullable
    public String A;
    @Nullable
    public String B;
    @Nullable
    public String C;
    @Nullable
    public String D;
    @NotNull
    public a E = a.PROMOTION;
    @Nullable
    public String F;
    public boolean G;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public String f12217b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public String f12218c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public String f12219d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public String f12220e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public String f12221f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public String f12222g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public String f12223h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public String f12224i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public String f12225j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public String f12226k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    public String f12227l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    public String f12228m;

    /* renamed from: n  reason: collision with root package name */
    public boolean f12229n;

    /* renamed from: o  reason: collision with root package name */
    public int f12230o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    public String f12231p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    public String f12232q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    public String f12233r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    public String f12234s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    public String f12235t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    public String f12236u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    public String f12237v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    public String f12238w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    public String f12239x;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    public String f12240y;
    @Nullable

    /* renamed from: z  reason: collision with root package name */
    public String f12241z;

    /* loaded from: classes3.dex */
    public enum a {
        PROMOTION,
        ORGANIC
    }

    @Override // com.bytedance.bdtracker.p
    @NotNull
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("name", this.f12217b);
        jSONObject.put("utm_campaign", this.f12218c);
        jSONObject.put("utm_source", this.f12219d);
        jSONObject.put("utm_medium", this.f12220e);
        jSONObject.put("utm_content", this.f12221f);
        jSONObject.put("utm_term", this.f12222g);
        jSONObject.put("tr_shareuser", this.f12223h);
        jSONObject.put("tr_admaster", this.f12224i);
        jSONObject.put("tr_param1", this.f12225j);
        jSONObject.put("tr_param2", this.f12226k);
        jSONObject.put("tr_param3", this.f12227l);
        jSONObject.put("tr_param4", this.f12228m);
        jSONObject.put("is_retargeting", this.f12229n);
        jSONObject.put("reengagement_window", this.f12230o);
        jSONObject.put("tr_dp", this.f12231p);
        jSONObject.put("deeplink_value", this.f12232q);
        jSONObject.put("tr_site_id", this.f12233r);
        jSONObject.put("tr_site_name", this.f12234s);
        jSONObject.put("account_id", this.f12235t);
        jSONObject.put("account_name", this.f12236u);
        jSONObject.put("campaign_id", this.f12237v);
        jSONObject.put("campaign_name", this.f12238w);
        jSONObject.put("ad_id", this.f12239x);
        jSONObject.put("ad_name", this.f12240y);
        jSONObject.put(CampaignEx.JSON_KEY_CREATIVE_ID, this.f12241z);
        jSONObject.put("creative_name", this.A);
        jSONObject.put("tr_install_type", this.B);
        jSONObject.put("touch_type", this.C);
        jSONObject.put("touch_timestamp", this.D);
        String name = this.E.name();
        Locale locale = Locale.ROOT;
        Intrinsics.checkExpressionValueIsNotNull(locale, "Locale.ROOT");
        if (name != null) {
            String lowerCase = name.toLowerCase(locale);
            Intrinsics.checkExpressionValueIsNotNull(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            jSONObject.put("activation_type", lowerCase);
            jSONObject.put("activation_timestamp", this.F);
            jSONObject.put("is_first_launch", this.G);
            return jSONObject;
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
    }

    @Override // com.bytedance.bdtracker.p
    public void a(@Nullable JSONObject jSONObject) {
        if (jSONObject != null) {
            this.f12217b = jSONObject.optString("name", null);
            this.f12218c = jSONObject.optString("utm_campaign", null);
            this.f12219d = jSONObject.optString("utm_source", null);
            this.f12220e = jSONObject.optString("utm_medium", null);
            this.f12221f = jSONObject.optString("utm_content", null);
            this.f12222g = jSONObject.optString("utm_term", null);
            this.f12223h = jSONObject.optString("tr_shareuser", null);
            this.f12224i = jSONObject.optString("tr_admaster", null);
            this.f12225j = jSONObject.optString("tr_param1", null);
            this.f12226k = jSONObject.optString("tr_param2", null);
            this.f12227l = jSONObject.optString("tr_param3", null);
            this.f12228m = jSONObject.optString("tr_param4", null);
            this.f12229n = jSONObject.optBoolean("is_retargeting");
            this.f12230o = jSONObject.optInt("reengagement_window");
            this.f12231p = jSONObject.optString("tr_dp", null);
            this.f12232q = jSONObject.optString("deeplink_value", null);
            this.f12233r = jSONObject.optString("tr_site_id", null);
            this.f12234s = jSONObject.optString("tr_site_name", null);
            this.f12235t = jSONObject.optString("account_id", null);
            this.f12236u = jSONObject.optString("account_name", null);
            this.f12237v = jSONObject.optString("campaign_id", null);
            this.f12238w = jSONObject.optString("campaign_name", null);
            this.f12239x = jSONObject.optString("ad_id", null);
            this.f12240y = jSONObject.optString("ad_name", null);
            this.f12241z = jSONObject.optString(CampaignEx.JSON_KEY_CREATIVE_ID, null);
            this.A = jSONObject.optString("creative_name", null);
            this.B = jSONObject.optString("tr_install_type", null);
            this.C = jSONObject.optString("touch_type", null);
            this.D = jSONObject.optString("touch_timestamp", null);
            this.E = Intrinsics.areEqual(jSONObject.optString("activation_type"), "promotion") ? a.PROMOTION : a.ORGANIC;
            this.F = jSONObject.optString("activation_timestamp", null);
            this.G = jSONObject.optBoolean("is_first_launch");
        }
    }
}
