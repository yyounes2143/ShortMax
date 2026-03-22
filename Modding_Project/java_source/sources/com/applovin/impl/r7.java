package com.applovin.impl;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import android.widget.ImageView;
import com.applovin.impl.sdk.utils.ImageViewUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class r7 implements n4 {

    /* renamed from: a  reason: collision with root package name */
    public final Set f9410a = new HashSet();

    /* renamed from: b  reason: collision with root package name */
    public final Set f9411b = new HashSet();

    /* renamed from: c  reason: collision with root package name */
    private Uri f9412c;

    /* renamed from: d  reason: collision with root package name */
    private Uri f9413d;

    /* renamed from: e  reason: collision with root package name */
    private int f9414e;

    /* renamed from: f  reason: collision with root package name */
    private int f9415f;

    public static r7 a(m8 m8Var, com.applovin.impl.sdk.k kVar) {
        if (m8Var != null) {
            if (kVar != null) {
                m8 c10 = m8Var.c("StaticResource");
                if (c10 != null && URLUtil.isValidUrl(c10.d())) {
                    r7 r7Var = new r7();
                    r7Var.f9412c = Uri.parse(c10.d());
                    m8 b10 = m8Var.b("IconClickThrough");
                    if (b10 != null && URLUtil.isValidUrl(b10.d())) {
                        r7Var.f9413d = Uri.parse(b10.d());
                    }
                    String str = (String) m8Var.a().get("width");
                    int i10 = 0;
                    int parseInt = (str == null || Integer.parseInt(str) <= 0) ? 0 : Integer.parseInt(str);
                    String str2 = (String) m8Var.a().get("height");
                    if (str2 != null && Integer.parseInt(str2) > 0) {
                        i10 = Integer.parseInt(str2);
                    }
                    int intValue = ((Integer) kVar.a(v4.M4)).intValue();
                    if (parseInt > 0 && i10 > 0) {
                        double d10 = parseInt / i10;
                        int min = Math.min(Math.max(parseInt, i10), intValue);
                        if (parseInt >= i10) {
                            r7Var.f9414e = min;
                            r7Var.f9415f = (int) (min / d10);
                        } else {
                            r7Var.f9415f = min;
                            r7Var.f9414e = (int) (min * d10);
                        }
                    } else {
                        r7Var.f9415f = intValue;
                        r7Var.f9414e = intValue;
                    }
                    return r7Var;
                }
                kVar.O();
                if (com.applovin.impl.sdk.o.a()) {
                    kVar.O().b("VastIndustryIcon", "Unable to create industry icon.  No valid image URL found.");
                    return null;
                }
                return null;
            }
            throw new IllegalArgumentException("No sdk specified.");
        }
        throw new IllegalArgumentException("No node specified.");
    }

    public Set b() {
        return this.f9410a;
    }

    public Uri c() {
        return this.f9413d;
    }

    public int d() {
        return this.f9415f;
    }

    public Uri e() {
        return this.f9412c;
    }

    public Set f() {
        return this.f9411b;
    }

    public int g() {
        return this.f9414e;
    }

    public String toString() {
        return "VastIndustryIcon{imageUri='" + e() + "', clickUri='" + c() + "', width=" + g() + ", height=" + d() + "}";
    }

    public static ImageView a(Uri uri, Context context, com.applovin.impl.sdk.k kVar) {
        ImageView imageView = new ImageView(context);
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView.setClickable(true);
        imageView.setVisibility(8);
        ImageViewUtils.setImageUri(imageView, uri, kVar);
        return imageView;
    }

    public static r7 a(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        v7 a10;
        v7 a11;
        if (jSONObject == null) {
            return null;
        }
        r7 r7Var = new r7();
        String string = JsonUtils.getString(jSONObject, "image_uri", null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        r7Var.f9412c = Uri.parse(string);
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "click_trackers", new JSONArray());
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONArray, i10, (JSONObject) null);
            if (jSONObject2 != null && (a11 = v7.a(jSONObject2, kVar)) != null) {
                r7Var.f9410a.add(a11);
            }
        }
        JSONArray jSONArray2 = JsonUtils.getJSONArray(jSONObject, "view_trackers", new JSONArray());
        for (int i11 = 0; i11 < jSONArray2.length(); i11++) {
            JSONObject jSONObject3 = JsonUtils.getJSONObject(jSONArray2, i11, (JSONObject) null);
            if (jSONObject3 != null && (a10 = v7.a(jSONObject3, kVar)) != null) {
                r7Var.f9411b.add(a10);
            }
        }
        String string2 = JsonUtils.getString(jSONObject, "click_uri", null);
        r7Var.f9413d = StringUtils.isValidString(string2) ? Uri.parse(string2) : null;
        r7Var.f9414e = JsonUtils.getInt(jSONObject, "width", 0);
        r7Var.f9415f = JsonUtils.getInt(jSONObject, "height", 0);
        return r7Var;
    }

    @Override // com.applovin.impl.n4
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        for (v7 v7Var : this.f9410a) {
            jSONArray.put(v7Var.a());
        }
        JsonUtils.putJsonArray(jSONObject, "click_trackers", jSONArray);
        JSONArray jSONArray2 = new JSONArray();
        for (v7 v7Var2 : this.f9411b) {
            jSONArray.put(v7Var2.a());
        }
        JsonUtils.putJsonArray(jSONObject, "view_trackers", jSONArray2);
        Uri uri = this.f9412c;
        JsonUtils.putString(jSONObject, "image_uri", uri == null ? null : uri.toString());
        Uri uri2 = this.f9413d;
        JsonUtils.putString(jSONObject, "click_uri", uri2 != null ? uri2.toString() : null);
        JsonUtils.putInt(jSONObject, "width", this.f9414e);
        JsonUtils.putInt(jSONObject, "height", this.f9415f);
        return jSONObject;
    }
}
