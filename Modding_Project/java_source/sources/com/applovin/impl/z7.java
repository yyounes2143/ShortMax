package com.applovin.impl;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class z7 implements n4 {

    /* renamed from: a  reason: collision with root package name */
    private Uri f10724a;

    /* renamed from: b  reason: collision with root package name */
    private Uri f10725b;

    /* renamed from: c  reason: collision with root package name */
    private a f10726c;

    /* renamed from: d  reason: collision with root package name */
    private String f10727d;

    /* renamed from: e  reason: collision with root package name */
    private int f10728e;

    /* renamed from: f  reason: collision with root package name */
    private int f10729f;

    /* renamed from: g  reason: collision with root package name */
    private long f10730g;

    /* loaded from: classes2.dex */
    public enum a {
        Progressive,
        Streaming
    }

    private z7() {
    }

    public static z7 a(m8 m8Var, com.applovin.impl.sdk.k kVar) {
        if (m8Var != null) {
            if (kVar != null) {
                try {
                    String d10 = m8Var.d();
                    if (URLUtil.isValidUrl(d10)) {
                        Uri parse = Uri.parse(d10);
                        z7 z7Var = new z7();
                        z7Var.f10724a = parse;
                        z7Var.f10725b = parse;
                        z7Var.f10730g = a(m8Var);
                        z7Var.f10726c = a((String) m8Var.a().get("delivery"));
                        z7Var.f10729f = StringUtils.parseInt((String) m8Var.a().get("height"));
                        z7Var.f10728e = StringUtils.parseInt((String) m8Var.a().get("width"));
                        z7Var.f10727d = ((String) m8Var.a().get("type")).toLowerCase(Locale.ENGLISH);
                        return z7Var;
                    }
                    kVar.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        kVar.O().b("VastVideoFile", "Unable to create video file. Could not find URL.");
                        return null;
                    }
                    return null;
                } catch (Throwable th2) {
                    kVar.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        kVar.O().a("VastVideoFile", "Error occurred while initializing", th2);
                    }
                    kVar.E().a("VastVideoFile", th2);
                    return null;
                }
            }
            throw new IllegalArgumentException("No sdk specified.");
        }
        throw new IllegalArgumentException("No node specified.");
    }

    public long b() {
        return this.f10730g;
    }

    public String c() {
        return this.f10727d;
    }

    public Uri d() {
        return this.f10724a;
    }

    public Uri e() {
        return this.f10725b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z7)) {
            return false;
        }
        z7 z7Var = (z7) obj;
        if (this.f10728e != z7Var.f10728e || this.f10729f != z7Var.f10729f || this.f10730g != z7Var.f10730g) {
            return false;
        }
        Uri uri = this.f10724a;
        if (uri == null ? z7Var.f10724a != null : !uri.equals(z7Var.f10724a)) {
            return false;
        }
        Uri uri2 = this.f10725b;
        if (uri2 == null ? z7Var.f10725b != null : !uri2.equals(z7Var.f10725b)) {
            return false;
        }
        if (this.f10726c != z7Var.f10726c) {
            return false;
        }
        String str = this.f10727d;
        String str2 = z7Var.f10727d;
        if (str != null) {
            return str.equals(str2);
        }
        if (str2 == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11;
        int i12;
        Uri uri = this.f10724a;
        int i13 = 0;
        if (uri != null) {
            i10 = uri.hashCode();
        } else {
            i10 = 0;
        }
        int i14 = i10 * 31;
        Uri uri2 = this.f10725b;
        if (uri2 != null) {
            i11 = uri2.hashCode();
        } else {
            i11 = 0;
        }
        int i15 = (i14 + i11) * 31;
        a aVar = this.f10726c;
        if (aVar != null) {
            i12 = aVar.hashCode();
        } else {
            i12 = 0;
        }
        int i16 = (i15 + i12) * 31;
        String str = this.f10727d;
        if (str != null) {
            i13 = str.hashCode();
        }
        return ((((((i16 + i13) * 31) + this.f10728e) * 31) + this.f10729f) * 31) + Long.valueOf(this.f10730g).hashCode();
    }

    public String toString() {
        return "VastVideoFile{sourceVideoUri=" + this.f10724a + ", videoUri=" + this.f10725b + ", deliveryType=" + this.f10726c + ", fileType='" + this.f10727d + "', width=" + this.f10728e + ", height=" + this.f10729f + ", bitrate=" + this.f10730g + '}';
    }

    private static a a(String str) {
        if (StringUtils.isValidString(str)) {
            if ("progressive".equalsIgnoreCase(str)) {
                return a.Progressive;
            }
            if ("streaming".equalsIgnoreCase(str)) {
                return a.Streaming;
            }
        }
        return a.Progressive;
    }

    private static long a(m8 m8Var) {
        Map a10 = m8Var.a();
        long parseLong = StringUtils.parseLong((String) a10.get("bitrate"), 0L);
        return parseLong != 0 ? parseLong : (StringUtils.parseLong((String) a10.get("minBitrate"), 0L) + StringUtils.parseLong((String) a10.get("maxBitrate"), 0L)) / 2;
    }

    public void a(Uri uri) {
        this.f10725b = uri;
    }

    public static z7 a(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        if (jSONObject == null) {
            return null;
        }
        String string = JsonUtils.getString(jSONObject, "source_video_uri", null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        Uri parse = Uri.parse(string);
        if (TextUtils.isEmpty(JsonUtils.getString(jSONObject, "video_uri", null))) {
            return null;
        }
        Uri parse2 = Uri.parse(string);
        String string2 = JsonUtils.getString(jSONObject, "file_type", null);
        if (TextUtils.isEmpty(string2)) {
            return null;
        }
        a valueOf = a.valueOf(JsonUtils.getString(jSONObject, "delivery_type", a.Progressive.toString()));
        int i10 = JsonUtils.getInt(jSONObject, "width", 0);
        int i11 = JsonUtils.getInt(jSONObject, "height", 0);
        int i12 = JsonUtils.getInt(jSONObject, "bitrate", 0);
        z7 z7Var = new z7();
        z7Var.f10724a = parse;
        z7Var.f10725b = parse2;
        z7Var.f10726c = valueOf;
        z7Var.f10727d = string2;
        z7Var.f10728e = i10;
        z7Var.f10729f = i11;
        z7Var.f10730g = i12;
        return z7Var;
    }

    @Override // com.applovin.impl.n4
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        Uri uri = this.f10724a;
        if (uri != null) {
            JsonUtils.putString(jSONObject, "source_video_uri", uri.toString());
        }
        Uri uri2 = this.f10725b;
        if (uri2 != null) {
            JsonUtils.putString(jSONObject, "video_uri", uri2.toString());
        }
        a aVar = this.f10726c;
        JsonUtils.putString(jSONObject, "delivery_type", aVar == null ? null : aVar.toString());
        JsonUtils.putString(jSONObject, "file_type", this.f10727d);
        JsonUtils.putInt(jSONObject, "width", this.f10728e);
        JsonUtils.putInt(jSONObject, "height", this.f10729f);
        JsonUtils.putLong(jSONObject, "bitrate", this.f10730g);
        return jSONObject;
    }
}
