package com.applovin.impl;

import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class v7 implements n4 {

    /* renamed from: a  reason: collision with root package name */
    private String f10439a;

    /* renamed from: b  reason: collision with root package name */
    private String f10440b;

    /* renamed from: c  reason: collision with root package name */
    private String f10441c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f10442d;

    /* renamed from: e  reason: collision with root package name */
    private long f10443e = -1;

    /* renamed from: f  reason: collision with root package name */
    private int f10444f = -1;

    private v7() {
    }

    public static v7 a(m8 m8Var, p7 p7Var, com.applovin.impl.sdk.k kVar) {
        List<String> explode;
        int size;
        long seconds;
        if (m8Var != null) {
            if (kVar != null) {
                try {
                    String d10 = m8Var.d();
                    if (TextUtils.isEmpty(d10)) {
                        kVar.O();
                        if (com.applovin.impl.sdk.o.a()) {
                            kVar.O().b("VastTracker", "Unable to create tracker. Could not find URL.");
                        }
                        return null;
                    }
                    v7 v7Var = new v7();
                    v7Var.f10441c = d10;
                    v7Var.f10439a = (String) m8Var.a().get("id");
                    v7Var.f10440b = (String) m8Var.a().get(NotificationCompat.CATEGORY_EVENT);
                    v7Var.f10442d = ((Boolean) kVar.a(v4.Z4)).booleanValue();
                    if (p7Var != null) {
                        v7Var.f10442d = JsonUtils.getBoolean(p7Var.b(), "vast_fire_trackers_from_webview", Boolean.valueOf(v7Var.f10442d)).booleanValue();
                    }
                    v7Var.f10444f = a(v7Var.b(), p7Var);
                    String str = (String) m8Var.a().get(TypedValues.CycleType.S_WAVE_OFFSET);
                    if (StringUtils.isValidString(str)) {
                        String trim = str.trim();
                        if (trim.contains("%")) {
                            v7Var.f10444f = StringUtils.parseInt(trim.substring(0, trim.length() - 1));
                        } else if (trim.contains(":") && (size = (explode = CollectionUtils.explode(trim, ":")).size()) > 0) {
                            int i10 = size - 1;
                            long j10 = 0;
                            for (int i11 = i10; i11 >= 0; i11--) {
                                String str2 = explode.get(i11);
                                if (StringUtils.isNumeric(str2)) {
                                    int parseInt = Integer.parseInt(str2);
                                    if (i11 == i10) {
                                        seconds = parseInt;
                                    } else if (i11 == size - 2) {
                                        seconds = TimeUnit.MINUTES.toSeconds(parseInt);
                                    } else if (i11 == size - 3) {
                                        seconds = TimeUnit.HOURS.toSeconds(parseInt);
                                    }
                                    j10 += seconds;
                                }
                            }
                            v7Var.f10443e = j10;
                            v7Var.f10444f = -1;
                        }
                    }
                    return v7Var;
                } catch (Throwable th2) {
                    kVar.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        kVar.O().a("VastTracker", "Error occurred while initializing", th2);
                    }
                    kVar.E().a("VastTracker", th2);
                    return null;
                }
            }
            throw new IllegalArgumentException("No sdk specified.");
        }
        throw new IllegalArgumentException("No node specified.");
    }

    public String b() {
        return this.f10440b;
    }

    public String c() {
        return this.f10441c;
    }

    public boolean d() {
        return this.f10442d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v7)) {
            return false;
        }
        v7 v7Var = (v7) obj;
        if (this.f10443e != v7Var.f10443e || this.f10444f != v7Var.f10444f) {
            return false;
        }
        String str = this.f10439a;
        if (str == null ? v7Var.f10439a != null : !str.equals(v7Var.f10439a)) {
            return false;
        }
        String str2 = this.f10440b;
        if (str2 == null ? v7Var.f10440b != null : !str2.equals(v7Var.f10440b)) {
            return false;
        }
        return this.f10441c.equals(v7Var.f10441c);
    }

    public int hashCode() {
        int i10;
        String str = this.f10439a;
        int i11 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = i10 * 31;
        String str2 = this.f10440b;
        if (str2 != null) {
            i11 = str2.hashCode();
        }
        long j10 = this.f10443e;
        return ((((((i12 + i11) * 31) + this.f10441c.hashCode()) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + this.f10444f;
    }

    public String toString() {
        return "VastTracker{identifier='" + this.f10439a + "', event='" + this.f10440b + "', uriString='" + this.f10441c + "', offsetSeconds=" + this.f10443e + ", offsetPercent=" + this.f10444f + '}';
    }

    public boolean a(long j10, int i10) {
        long j11 = this.f10443e;
        boolean z10 = j11 >= 0;
        boolean z11 = j10 >= j11;
        int i11 = this.f10444f;
        return (z10 && z11) || ((i11 >= 0) && (i10 >= i11));
    }

    private static int a(String str, p7 p7Var) {
        if ("start".equalsIgnoreCase(str)) {
            return 0;
        }
        if ("firstQuartile".equalsIgnoreCase(str)) {
            return 25;
        }
        if (CampaignEx.JSON_NATIVE_VIDEO_MIDPOINT.equalsIgnoreCase(str)) {
            return 50;
        }
        if ("thirdQuartile".equalsIgnoreCase(str)) {
            return 75;
        }
        if (CampaignEx.JSON_NATIVE_VIDEO_COMPLETE.equalsIgnoreCase(str)) {
            if (p7Var != null) {
                return p7Var.g();
            }
            return 95;
        }
        return -1;
    }

    public static v7 a(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        if (jSONObject == null) {
            return null;
        }
        v7 v7Var = new v7();
        String string = JsonUtils.getString(jSONObject, "uri_string", "");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        v7Var.f10441c = string;
        v7Var.f10439a = JsonUtils.getString(jSONObject, "identifier", "");
        v7Var.f10440b = JsonUtils.getString(jSONObject, NotificationCompat.CATEGORY_EVENT, "");
        v7Var.f10443e = JsonUtils.getLong(jSONObject, "offset_seconds", -1L);
        v7Var.f10444f = JsonUtils.getInt(jSONObject, "offset_percent", -1);
        return v7Var;
    }

    @Override // com.applovin.impl.n4
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putString(jSONObject, "identifier", this.f10439a);
        JsonUtils.putString(jSONObject, NotificationCompat.CATEGORY_EVENT, this.f10440b);
        JsonUtils.putString(jSONObject, "uri_string", this.f10441c);
        JsonUtils.putLong(jSONObject, "offset_seconds", this.f10443e);
        JsonUtils.putInt(jSONObject, "offset_percent", this.f10444f);
        return jSONObject;
    }
}
