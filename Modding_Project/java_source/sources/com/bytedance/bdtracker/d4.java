package com.bytedance.bdtracker;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bytedance.applog.event.AutoTrackEventType;
import com.bytedance.bdtracker.l0;
import com.ss.texturerender.effect.ICEffect.ICEffectKeys;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class d4 extends u3 {
    public int A;
    public String B;

    /* renamed from: s  reason: collision with root package name */
    public List<b4> f11939s;

    /* renamed from: t  reason: collision with root package name */
    public List<x3> f11940t;

    /* renamed from: u  reason: collision with root package name */
    public List<e4> f11941u;

    /* renamed from: v  reason: collision with root package name */
    public List<c4> f11942v;

    /* renamed from: w  reason: collision with root package name */
    public List<h4> f11943w;

    /* renamed from: x  reason: collision with root package name */
    public List<i4> f11944x;

    /* renamed from: y  reason: collision with root package name */
    public JSONObject f11945y;

    /* renamed from: z  reason: collision with root package name */
    public byte[] f11946z;

    @Override // com.bytedance.bdtracker.u3
    public int a(@NonNull Cursor cursor) {
        this.f12445b = cursor.getLong(0);
        this.f12446c = cursor.getLong(1);
        this.f11946z = cursor.getBlob(2);
        this.A = cursor.getInt(3);
        this.f12455l = cursor.getInt(4);
        this.f12456m = cursor.getString(5);
        this.B = cursor.getString(6);
        this.f12448e = "";
        return 7;
    }

    @Override // com.bytedance.bdtracker.u3
    public List<String> b() {
        return Arrays.asList("_id", "integer primary key autoincrement", "local_time_ms", TypedValues.Custom.S_INT, "_data", "blob", "_fail", TypedValues.Custom.S_INT, ICEffectKeys.KEY_IS_IC_EFFECT_EVENT_TYPE, TypedValues.Custom.S_INT, "_app_id", "varchar", "e_ids", "varchar");
    }

    @Override // com.bytedance.bdtracker.u3
    public String c() {
        return String.valueOf(this.f12445b);
    }

    @Override // com.bytedance.bdtracker.u3
    @NonNull
    public String f() {
        return "packV2";
    }

    @Override // com.bytedance.bdtracker.u3
    public JSONObject i() {
        int i10;
        d a10 = b.a(this.f12456m);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("magic_tag", "ss_app_log");
        jSONObject.put("header", this.f11945y);
        jSONObject.put("time_sync", p3.f12322d);
        HashSet hashSet = new HashSet();
        List<c4> list = this.f11942v;
        if (list != null && !list.isEmpty()) {
            JSONArray jSONArray = new JSONArray();
            for (c4 c4Var : this.f11942v) {
                jSONArray.put(c4Var.h());
                hashSet.add(c4Var.f12459p);
            }
            jSONObject.put("launch", jSONArray);
        }
        List<h4> list2 = this.f11943w;
        if (list2 != null && !list2.isEmpty()) {
            JSONArray jSONArray2 = new JSONArray();
            Iterator<h4> it = this.f11943w.iterator();
            while (it.hasNext()) {
                h4 next = it.next();
                JSONObject h10 = next.h();
                if (a10 != null && (i10 = a10.f11912l) > 0) {
                    h10.put("launch_from", i10);
                    a10.f11912l = 0;
                }
                if (this.f11941u != null) {
                    ArrayList arrayList = new ArrayList();
                    for (e4 e4Var : this.f11941u) {
                        if (l0.b.a(e4Var.f12448e, next.f12448e)) {
                            arrayList.add(e4Var);
                        }
                    }
                    if (arrayList.size() != 0) {
                        int size = arrayList.size();
                        JSONArray jSONArray3 = new JSONArray();
                        long j10 = 0;
                        int i11 = 0;
                        while (i11 < size) {
                            e4 e4Var2 = (e4) arrayList.get(i11);
                            JSONArray jSONArray4 = new JSONArray();
                            d dVar = a10;
                            Iterator<h4> it2 = it;
                            jSONArray4.put(0, e4Var2.f11996u);
                            h4 h4Var = next;
                            ArrayList arrayList2 = arrayList;
                            jSONArray4.put(1, (e4Var2.f11994s + 999) / 1000);
                            jSONArray3.put(jSONArray4);
                            long j11 = e4Var2.f12446c;
                            if (j11 > j10) {
                                h10.put("$page_title", l0.b.a((Object) e4Var2.f11997v));
                                h10.put("$page_key", l0.b.a((Object) e4Var2.f11996u));
                                j10 = j11;
                            }
                            i11++;
                            next = h4Var;
                            a10 = dVar;
                            it = it2;
                            arrayList = arrayList2;
                        }
                        h10.put("activites", jSONArray3);
                        jSONArray2.put(h10);
                        hashSet.add(next.f12459p);
                        a10 = a10;
                        it = it;
                    }
                }
            }
            jSONObject.put("terminate", jSONArray2);
        }
        JSONArray a11 = a(hashSet);
        if (a11.length() > 0) {
            jSONObject.put("event_v3", a11);
        }
        List<x3> list3 = this.f11940t;
        if (list3 != null && !list3.isEmpty()) {
            HashMap hashMap = new HashMap();
            for (x3 x3Var : this.f11940t) {
                JSONArray jSONArray5 = (JSONArray) hashMap.get(x3Var.f12525s);
                if (jSONArray5 == null) {
                    jSONArray5 = new JSONArray();
                    hashMap.put(x3Var.f12525s, jSONArray5);
                }
                jSONArray5.put(x3Var.h());
                hashSet.add(x3Var.f12459p);
            }
            for (Map.Entry entry : hashMap.entrySet()) {
                jSONObject.put((String) entry.getKey(), entry.getValue());
            }
        }
        this.B = TextUtils.join(",", hashSet);
        d().debug(4, this.f12444a, "Pack success ts:{}", Long.valueOf(this.f12446c));
        return jSONObject;
    }

    public int k() {
        List<e4> list;
        List<c4> list2 = this.f11942v;
        int i10 = 200;
        if (list2 != null) {
            i10 = 200 - list2.size();
        }
        List<h4> list3 = this.f11943w;
        if (list3 != null) {
            i10 -= list3.size();
        }
        d a10 = b.a(this.f12456m);
        if (a10 != null && a10.isBavEnabled() && (list = this.f11941u) != null) {
            return i10 - list.size();
        }
        return i10;
    }

    public Set<String> l() {
        HashSet hashSet = new HashSet();
        if (TextUtils.isEmpty(this.B)) {
            return hashSet;
        }
        hashSet.addAll(Arrays.asList(this.B.split(",")));
        return hashSet;
    }

    public void m() {
        JSONObject jSONObject = this.f11945y;
        if (jSONObject == null) {
            return;
        }
        jSONObject.remove("ssid");
        try {
            List<c4> list = this.f11942v;
            if (list != null) {
                for (c4 c4Var : list) {
                    if (l0.b.d(c4Var.f12452i)) {
                        this.f11945y.put("ssid", c4Var.f12452i);
                        return;
                    }
                }
            }
            List<e4> list2 = this.f11941u;
            if (list2 != null) {
                for (e4 e4Var : list2) {
                    if (l0.b.d(e4Var.f12452i)) {
                        this.f11945y.put("ssid", e4Var.f12452i);
                        return;
                    }
                }
            }
            List<x3> list3 = this.f11940t;
            if (list3 != null) {
                for (x3 x3Var : list3) {
                    if (l0.b.d(x3Var.f12452i)) {
                        this.f11945y.put("ssid", x3Var.f12452i);
                        return;
                    }
                }
            }
            List<b4> list4 = this.f11939s;
            if (list4 != null) {
                for (b4 b4Var : list4) {
                    if (l0.b.d(b4Var.f12452i)) {
                        this.f11945y.put("ssid", b4Var.f12452i);
                        return;
                    }
                }
            }
        } catch (Throwable th2) {
            d().error(4, this.f12444a, "Reload ssid from event failed", th2, new Object[0]);
        }
    }

    public void n() {
        JSONObject jSONObject = this.f11945y;
        if (jSONObject == null) {
            return;
        }
        jSONObject.remove("user_unique_id_type");
        try {
            List<c4> list = this.f11942v;
            if (list != null) {
                for (c4 c4Var : list) {
                    if (l0.b.d(c4Var.f12451h)) {
                        this.f11945y.put("user_unique_id_type", c4Var.f12451h);
                        return;
                    }
                }
            }
            List<e4> list2 = this.f11941u;
            if (list2 != null) {
                for (e4 e4Var : list2) {
                    if (l0.b.d(e4Var.f12451h)) {
                        this.f11945y.put("user_unique_id_type", e4Var.f12451h);
                        return;
                    }
                }
            }
            List<x3> list3 = this.f11940t;
            if (list3 != null) {
                for (x3 x3Var : list3) {
                    if (l0.b.d(x3Var.f12451h)) {
                        this.f11945y.put("user_unique_id_type", x3Var.f12451h);
                        return;
                    }
                }
            }
            List<b4> list4 = this.f11939s;
            if (list4 != null) {
                for (b4 b4Var : list4) {
                    if (l0.b.d(b4Var.f12451h)) {
                        this.f11945y.put("user_unique_id_type", b4Var.f12451h);
                        return;
                    }
                }
            }
        } catch (Throwable th2) {
            d().error(4, this.f12444a, "Reload uuid type from event failed", th2, new Object[0]);
        }
    }

    public final byte[] o() {
        try {
            return h().toString().getBytes("UTF-8");
        } catch (Throwable th2) {
            d().error(4, this.f12444a, "Convert json to bytes failed", th2, new Object[0]);
            return null;
        }
    }

    @Override // com.bytedance.bdtracker.u3
    @NonNull
    public String toString() {
        int i10;
        StringBuilder sb2 = new StringBuilder("Pack detail:");
        List<b4> list = this.f11939s;
        if (list != null) {
            i10 = list.size();
        } else {
            i10 = 0;
        }
        List<x3> list2 = this.f11940t;
        if (list2 != null) {
            i10 += list2.size();
        }
        if (i10 > 0) {
            sb2.append("\teventCount=");
            sb2.append(i10);
        }
        List<e4> list3 = this.f11941u;
        if (list3 != null && !list3.isEmpty()) {
            sb2.append("\tpageCount=");
            sb2.append(this.f11941u.size());
        }
        List<c4> list4 = this.f11942v;
        if (list4 != null && !list4.isEmpty()) {
            sb2.append("\tlaunchCount=");
            sb2.append(this.f11942v.size());
        }
        List<h4> list5 = this.f11943w;
        if (list5 != null && !list5.isEmpty()) {
            sb2.append("\tterminateCount=");
            sb2.append(this.f11943w.size());
        }
        List<i4> list6 = this.f11944x;
        if (list6 != null && !list6.isEmpty()) {
            sb2.append("\ttraceCount=");
            sb2.append(this.f11944x.size());
        }
        if (this.A > 0) {
            sb2.append("\tfailCount=");
            sb2.append(this.A);
        }
        return sb2.toString();
    }

    @Override // com.bytedance.bdtracker.u3
    public u3 a(@NonNull JSONObject jSONObject) {
        d().error(4, this.f12444a, "Not allowed", new Object[0]);
        return null;
    }

    @Override // com.bytedance.bdtracker.u3
    public void b(@NonNull ContentValues contentValues) {
        contentValues.put("local_time_ms", Long.valueOf(this.f12446c));
        contentValues.put("_data", o());
        contentValues.put(ICEffectKeys.KEY_IS_IC_EFFECT_EVENT_TYPE, Integer.valueOf(this.f12455l));
        contentValues.put("_app_id", this.f12456m);
        contentValues.put("e_ids", this.B);
    }

    public final JSONArray a(Set<String> set) {
        d a10 = b.a(this.f12456m);
        JSONArray jSONArray = new JSONArray();
        if (a10 == null || !a10.isBavEnabled()) {
            List<e4> list = this.f11941u;
            if (list != null) {
                for (e4 e4Var : list) {
                    if (e4Var.C) {
                        jSONArray.put(e4Var.h());
                        if (set != null) {
                            set.add(e4Var.f12459p);
                        }
                    }
                }
            }
        } else if (this.f11941u != null && (a10.getInitConfig() == null || AutoTrackEventType.a(a10.getInitConfig().getAutoTrackEventType(), 2))) {
            for (e4 e4Var2 : this.f11941u) {
                jSONArray.put(e4Var2.h());
                if (set != null) {
                    set.add(e4Var2.f12459p);
                }
            }
        }
        List<b4> list2 = this.f11939s;
        if (list2 != null && !list2.isEmpty()) {
            for (b4 b4Var : this.f11939s) {
                jSONArray.put(b4Var.h());
                if (set != null) {
                    set.add(b4Var.f12459p);
                }
            }
        }
        List<i4> list3 = this.f11944x;
        if (list3 != null && !list3.isEmpty()) {
            for (i4 i4Var : this.f11944x) {
                jSONArray.put(i4Var.h());
                if (set != null) {
                    set.add(i4Var.f12459p);
                }
            }
        }
        return jSONArray;
    }

    @Override // com.bytedance.bdtracker.u3
    public void b(@NonNull JSONObject jSONObject) {
        d().error(4, this.f12444a, "Not allowed", new Object[0]);
    }
}
