package com.applovin.impl;

import android.net.Uri;
import android.webkit.MimeTypeMap;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class y7 implements n4 {

    /* renamed from: a  reason: collision with root package name */
    private List f10639a;

    /* renamed from: b  reason: collision with root package name */
    private List f10640b;

    /* renamed from: c  reason: collision with root package name */
    private int f10641c;

    /* renamed from: d  reason: collision with root package name */
    private Uri f10642d;

    /* renamed from: e  reason: collision with root package name */
    private final Set f10643e;

    /* renamed from: f  reason: collision with root package name */
    private r7 f10644f;

    /* renamed from: g  reason: collision with root package name */
    private final Map f10645g;

    private y7() {
        this.f10639a = Collections.emptyList();
        this.f10640b = Collections.emptyList();
        this.f10643e = new HashSet();
        this.f10645g = new HashMap();
    }

    public static y7 a(m8 m8Var, y7 y7Var, p7 p7Var, com.applovin.impl.sdk.k kVar) {
        m8 c10;
        r7 a10;
        List a11;
        m8 c11;
        List a12;
        m8 c12;
        int a13;
        if (m8Var != null) {
            if (p7Var != null) {
                if (kVar != null) {
                    if (y7Var == null) {
                        try {
                            y7Var = new y7(p7Var);
                        } catch (Throwable th2) {
                            kVar.O();
                            if (com.applovin.impl.sdk.o.a()) {
                                kVar.O().a("VastVideoCreative", "Error occurred while initializing", th2);
                            }
                            kVar.E().a("VastVideoCreative", th2);
                            return null;
                        }
                    }
                    if (y7Var.f10641c == 0 && (c12 = m8Var.c("Duration")) != null && (a13 = a(c12.d(), kVar)) > 0) {
                        y7Var.f10641c = a13;
                    }
                    m8 c13 = m8Var.c("MediaFiles");
                    if (c13 != null && (a12 = a(c13, kVar)) != null && a12.size() > 0) {
                        List list = y7Var.f10639a;
                        if (list != null) {
                            a12.addAll(list);
                        }
                        y7Var.f10639a = a12;
                    }
                    m8 c14 = m8Var.c("VideoClicks");
                    if (c14 != null) {
                        if (y7Var.f10642d == null && (c11 = c14.c("ClickThrough")) != null) {
                            String d10 = c11.d();
                            if (StringUtils.isValidString(d10)) {
                                y7Var.f10642d = Uri.parse(d10);
                            }
                        }
                        x7.a(c14.a("ClickTracking"), y7Var.f10643e, p7Var, kVar);
                    }
                    m8 c15 = m8Var.c("Icons");
                    if (c15 != null && (a10 = r7.a((c10 = c15.c("Icon")), kVar)) != null) {
                        m8 c16 = c10.c("IconClicks");
                        if (c16 != null && (a11 = c16.a("IconClickTracking")) != null) {
                            x7.a(a11, a10.f9410a, p7Var, kVar);
                        }
                        List a14 = c10.a("IconViewTracking");
                        if (a14 != null) {
                            x7.a(a14, a10.f9411b, p7Var, kVar);
                        }
                        y7Var.f10644f = a10;
                    }
                    x7.a(m8Var, y7Var.f10645g, p7Var, kVar);
                    return y7Var;
                }
                throw new IllegalArgumentException("No sdk specified.");
            }
            throw new IllegalArgumentException("No context specified.");
        }
        throw new IllegalArgumentException("No node specified.");
    }

    public Uri c() {
        return this.f10642d;
    }

    public int d() {
        return this.f10641c;
    }

    public Map e() {
        return this.f10645g;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y7)) {
            return false;
        }
        y7 y7Var = (y7) obj;
        if (this.f10641c != y7Var.f10641c) {
            return false;
        }
        List list = this.f10639a;
        if (list == null ? y7Var.f10639a != null : !list.equals(y7Var.f10639a)) {
            return false;
        }
        Uri uri = this.f10642d;
        if (uri == null ? y7Var.f10642d != null : !uri.equals(y7Var.f10642d)) {
            return false;
        }
        Set set = this.f10643e;
        if (set == null ? y7Var.f10643e != null : !set.equals(y7Var.f10643e)) {
            return false;
        }
        Map map = this.f10645g;
        Map map2 = y7Var.f10645g;
        if (map != null) {
            return map.equals(map2);
        }
        if (map2 == null) {
            return true;
        }
        return false;
    }

    public r7 f() {
        return this.f10644f;
    }

    public List g() {
        return this.f10639a;
    }

    public int hashCode() {
        int i10;
        int i11;
        int i12;
        List list = this.f10639a;
        int i13 = 0;
        if (list != null) {
            i10 = list.hashCode();
        } else {
            i10 = 0;
        }
        int i14 = ((i10 * 31) + this.f10641c) * 31;
        Uri uri = this.f10642d;
        if (uri != null) {
            i11 = uri.hashCode();
        } else {
            i11 = 0;
        }
        int i15 = (i14 + i11) * 31;
        Set set = this.f10643e;
        if (set != null) {
            i12 = set.hashCode();
        } else {
            i12 = 0;
        }
        int i16 = (i15 + i12) * 31;
        Map map = this.f10645g;
        if (map != null) {
            i13 = map.hashCode();
        }
        return i16 + i13;
    }

    public String toString() {
        return "VastVideoCreative{videoFiles=" + this.f10639a + ", durationSeconds=" + this.f10641c + ", destinationUri=" + this.f10642d + ", clickTrackers=" + this.f10643e + ", eventTrackers=" + this.f10645g + ", industryIcon=" + this.f10644f + '}';
    }

    public Set b() {
        return this.f10643e;
    }

    private y7(p7 p7Var) {
        this.f10639a = Collections.emptyList();
        this.f10640b = Collections.emptyList();
        this.f10643e = new HashSet();
        this.f10645g = new HashMap();
        this.f10640b = p7Var.f();
    }

    private static int a(String str, com.applovin.impl.sdk.k kVar) {
        try {
            List<String> explode = CollectionUtils.explode(str, ":");
            if (explode.size() == 3) {
                return (int) (TimeUnit.HOURS.toSeconds(StringUtils.parseInt(explode.get(0))) + TimeUnit.MINUTES.toSeconds(StringUtils.parseInt(explode.get(1))) + StringUtils.parseInt(explode.get(2)));
            }
        } catch (Throwable unused) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = kVar.O();
                O.b("VastVideoCreative", "Unable to parse duration from \"" + str + "\"");
            }
        }
        return 0;
    }

    private static List a(m8 m8Var, com.applovin.impl.sdk.k kVar) {
        List<m8> a10 = m8Var.a("MediaFile");
        ArrayList arrayList = new ArrayList(a10.size());
        List<String> explode = CollectionUtils.explode((String) kVar.a(v4.I4));
        List<String> explode2 = CollectionUtils.explode((String) kVar.a(v4.H4));
        for (m8 m8Var2 : a10) {
            z7 a11 = z7.a(m8Var2, kVar);
            if (a11 != null) {
                try {
                    String c10 = a11.c();
                    if (StringUtils.isValidString(c10) && !explode.contains(c10)) {
                        arrayList.add(a11);
                    } else {
                        if (((Boolean) kVar.a(v4.J4)).booleanValue()) {
                            String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(a11.e().toString());
                            if (StringUtils.isValidString(fileExtensionFromUrl) && !explode2.contains(fileExtensionFromUrl)) {
                                arrayList.add(a11);
                            }
                        }
                        kVar.O();
                        if (com.applovin.impl.sdk.o.a()) {
                            com.applovin.impl.sdk.o O = kVar.O();
                            O.k("VastVideoCreative", "Video file not supported: " + a11);
                        }
                    }
                } catch (Throwable th2) {
                    kVar.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o O2 = kVar.O();
                        O2.a("VastVideoCreative", "Failed to validate video file: " + a11, th2);
                    }
                }
            }
        }
        return arrayList;
    }

    public z7 a(long j10) {
        List list = this.f10639a;
        z7 z7Var = null;
        if (list == null || list.size() == 0) {
            return null;
        }
        List<z7> arrayList = new ArrayList(3);
        for (String str : this.f10640b) {
            for (z7 z7Var2 : this.f10639a) {
                String c10 = z7Var2.c();
                if (StringUtils.isValidString(c10) && str.equalsIgnoreCase(c10)) {
                    arrayList.add(z7Var2);
                }
            }
            if (!arrayList.isEmpty()) {
                break;
            }
        }
        if (arrayList.isEmpty()) {
            arrayList = this.f10639a;
        }
        Collections.sort(arrayList, new Comparator() { // from class: com.applovin.impl.eg
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int a10;
                a10 = y7.a((z7) obj, (z7) obj2);
                return a10;
            }
        });
        for (z7 z7Var3 : arrayList) {
            if (z7Var3.b() > j10) {
                break;
            }
            z7Var = z7Var3;
        }
        return z7Var != null ? z7Var : (z7) arrayList.get(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(z7 z7Var, z7 z7Var2) {
        return Long.compare(z7Var.b(), z7Var2.b());
    }

    public static y7 a(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        if (jSONObject == null) {
            return null;
        }
        y7 y7Var = new y7();
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "video_files", new JSONArray());
        y7Var.f10639a = new ArrayList();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            z7 a10 = z7.a(JsonUtils.getJSONObject(jSONArray, i10, (JSONObject) null), kVar);
            if (a10 != null) {
                y7Var.f10639a.add(a10);
            }
        }
        y7Var.f10640b = JsonUtils.getStringList(jSONObject, "preferred_video_file_types", Collections.emptyList());
        y7Var.f10641c = JsonUtils.getInt(jSONObject, "duration_seconds", 0);
        String string = JsonUtils.getString(jSONObject, "destination_uri", null);
        y7Var.f10642d = StringUtils.isValidString(string) ? Uri.parse(string) : null;
        JSONArray jSONArray2 = JsonUtils.getJSONArray(jSONObject, "click_trackers", new JSONArray());
        for (int i11 = 0; i11 < jSONArray2.length(); i11++) {
            v7 a11 = v7.a(JsonUtils.getJSONObject(jSONArray2, i11, (JSONObject) null), kVar);
            if (a11 != null) {
                y7Var.f10643e.add(a11);
            }
        }
        y7Var.f10644f = r7.a(JsonUtils.getJSONObject(jSONObject, "industry_icon", (JSONObject) null), kVar);
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "event_trackers", new JSONObject());
        Iterator<String> keys = jSONObject2.keys();
        while (keys.hasNext()) {
            HashSet hashSet = new HashSet();
            String next = keys.next();
            JSONArray jSONArray3 = JsonUtils.getJSONArray(jSONObject2, next, new JSONArray());
            for (int i12 = 0; i12 < jSONArray3.length(); i12++) {
                v7 a12 = v7.a(JsonUtils.getJSONObject(jSONArray3, i12, (JSONObject) null), kVar);
                if (a12 != null) {
                    hashSet.add(a12);
                }
            }
            y7Var.f10645g.put(next, hashSet);
        }
        return y7Var;
    }

    @Override // com.applovin.impl.n4
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        List<z7> list = this.f10639a;
        if (list != null) {
            for (z7 z7Var : list) {
                jSONArray.put(z7Var.a());
            }
        }
        JsonUtils.putJsonArray(jSONObject, "video_files", jSONArray);
        JsonUtils.putJsonArray(jSONObject, "preferred_video_file_types", new JSONArray((Collection) this.f10640b));
        JsonUtils.putInt(jSONObject, "duration_seconds", this.f10641c);
        Uri uri = this.f10642d;
        JsonUtils.putString(jSONObject, "destination_uri", uri == null ? null : uri.toString());
        JSONArray jSONArray2 = new JSONArray();
        for (v7 v7Var : this.f10643e) {
            jSONArray2.put(v7Var.a());
        }
        JsonUtils.putJsonArray(jSONObject, "click_trackers", jSONArray2);
        r7 r7Var = this.f10644f;
        if (r7Var != null) {
            JsonUtils.putJSONObject(jSONObject, "industry_icon", r7Var.a());
        }
        JSONObject jSONObject2 = new JSONObject();
        for (String str : this.f10645g.keySet()) {
            Set<v7> set = (Set) this.f10645g.get(str);
            if (set != null) {
                JSONArray jSONArray3 = new JSONArray();
                for (v7 v7Var2 : set) {
                    jSONArray3.put(v7Var2.a());
                }
                JsonUtils.putJsonArray(jSONObject2, str, jSONArray3);
            }
        }
        JsonUtils.putJSONObject(jSONObject, "event_trackers", jSONObject2);
        return jSONObject;
    }
}
