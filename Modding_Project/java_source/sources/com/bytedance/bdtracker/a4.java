package com.bytedance.bdtracker;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.bytedance.applog.log.LogUtils;
import com.bytedance.bdtracker.l0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class a4 {

    /* renamed from: a  reason: collision with root package name */
    public final y3 f11869a;

    /* renamed from: b  reason: collision with root package name */
    public final e0 f11870b;

    /* renamed from: c  reason: collision with root package name */
    public final z3 f11871c;

    public a4(e0 e0Var, String str) {
        y3 y3Var = new y3(e0Var, str, null, 51);
        this.f11869a = y3Var;
        this.f11870b = e0Var;
        this.f11871c = new z3(e0Var, y3Var);
    }

    public final List<Long> a(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null && jSONArray.length() > 0) {
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i10);
                if (optJSONObject != null && optJSONObject.has("local_time_ms")) {
                    try {
                        arrayList.add(Long.valueOf(optJSONObject.getLong("local_time_ms")));
                    } catch (JSONException e10) {
                        e10.printStackTrace();
                    }
                }
            }
        }
        return arrayList;
    }

    public synchronized void b(List<d4> list) {
        if (list == null) {
            return;
        }
        SQLiteDatabase writableDatabase = this.f11869a.getWritableDatabase();
        writableDatabase.beginTransaction();
        for (d4 d4Var : list) {
            int i10 = d4Var.A;
            if (i10 != 0 && (i10 <= 0 || Math.abs(System.currentTimeMillis() - d4Var.f12446c) <= 864000000)) {
                int i11 = d4Var.A;
                if (i11 > 0) {
                    writableDatabase.execSQL("UPDATE packV2 SET _fail= ? WHERE _id= ?", new Object[]{Integer.valueOf(i11), Long.valueOf(d4Var.f12445b)});
                }
            }
            writableDatabase.execSQL("DELETE FROM packV2 WHERE _id=?", new Object[]{Long.valueOf(d4Var.f12445b)});
        }
        writableDatabase.setTransactionSuccessful();
        l0.b.a(writableDatabase);
    }

    public final List<e4> c(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            cursor = str2 == null ? sQLiteDatabase.rawQuery("SELECT * FROM page WHERE _app_id= ? and user_unique_id is null order by duration desc", new String[]{str}) : sQLiteDatabase.rawQuery("SELECT * FROM page WHERE _app_id= ? and user_unique_id = ? order by duration desc", new String[]{str, str2});
            while (cursor.moveToNext()) {
                e4 e4Var = new e4();
                e4Var.a(cursor);
                arrayList.add(e4Var);
            }
        } catch (Throwable th2) {
            try {
                this.f11870b.f11955d.D.error(5, "Query pages by userId:{} failed", th2, str2);
                k2.a(this.f11870b.f11968q, th2);
            } finally {
                l0.b.a(cursor);
            }
        }
        return arrayList;
    }

    public final void d(List<Long> list) {
        if (list != null && !list.isEmpty()) {
            long currentTimeMillis = System.currentTimeMillis();
            for (Long l10 : list) {
                h2 h2Var = this.f11870b.f11968q;
                long longValue = currentTimeMillis - l10.longValue();
                if (h2Var != null) {
                    ((m2) h2Var).a(new w2(longValue));
                }
            }
        }
    }

    public void a(JSONObject jSONObject) {
        d(a(jSONObject.optJSONArray("launch")));
        d(a(jSONObject.optJSONArray("terminate")));
        d(a(jSONObject.optJSONArray("event_v3")));
    }

    public synchronized void a() {
        SQLiteDatabase sQLiteDatabase;
        Throwable th2;
        try {
            sQLiteDatabase = this.f11869a.getWritableDatabase();
        } catch (Throwable th3) {
            sQLiteDatabase = null;
            th2 = th3;
        }
        try {
            sQLiteDatabase.beginTransaction();
            for (u3 u3Var : u3.j().values()) {
                if (l0.b.d(u3Var.a())) {
                    sQLiteDatabase.delete(u3Var.f(), null, null);
                }
            }
            sQLiteDatabase.setTransactionSuccessful();
            l0.b.a(sQLiteDatabase);
        } catch (Throwable th4) {
            th2 = th4;
            this.f11870b.f11955d.D.error(5, "Clear database failed", th2, new Object[0]);
            k2.a(this.f11870b.f11968q, th2);
            if (sQLiteDatabase != null) {
                l0.b.a(sQLiteDatabase);
            }
        }
    }

    public synchronized void c(List<f4> list) {
        SQLiteDatabase sQLiteDatabase;
        SQLiteDatabase sQLiteDatabase2 = null;
        try {
            sQLiteDatabase = this.f11869a.getWritableDatabase();
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            sQLiteDatabase.beginTransaction();
            ContentValues contentValues = null;
            for (f4 f4Var : list) {
                contentValues = f4Var.a(contentValues);
                sQLiteDatabase.insert("profile", null, contentValues);
            }
            sQLiteDatabase.setTransactionSuccessful();
        } catch (Throwable th3) {
            th = th3;
            sQLiteDatabase2 = sQLiteDatabase;
            try {
                this.f11870b.f11955d.D.error(5, "Save profiles failed", th, new Object[0]);
                k2.a(this.f11870b.f11968q, th);
                sQLiteDatabase = sQLiteDatabase2;
                l0.b.a(sQLiteDatabase);
            } catch (Throwable th4) {
                throw th4;
            }
        }
        l0.b.a(sQLiteDatabase);
    }

    public final List<h4> a(List<e4> list, List<e4> list2) {
        ArrayList arrayList;
        String d10 = this.f11870b.d();
        ArrayList arrayList2 = new ArrayList();
        HashMap hashMap = new HashMap();
        for (e4 e4Var : list) {
            if (!l0.b.a(e4Var.f12448e, d10)) {
                String a10 = l0.b.a((Object) e4Var.f12448e);
                List list3 = (List) hashMap.get(a10);
                if (list3 == null) {
                    list3 = new ArrayList();
                    hashMap.put(a10, list3);
                }
                list3.add(e4Var);
            }
        }
        Iterator it = hashMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            HashMap hashMap2 = new HashMap();
            e4 e4Var2 = (e4) ((List) entry.getValue()).get(0);
            long j10 = 0;
            long j11 = 0;
            for (e4 e4Var3 : (List) entry.getValue()) {
                Integer num = (Integer) hashMap2.get(e4Var3.f11996u);
                ArrayList arrayList3 = arrayList2;
                Iterator it2 = it;
                if (e4Var3.k()) {
                    if (num != null) {
                        int intValue = num.intValue() - 1;
                        Integer valueOf = Integer.valueOf(intValue);
                        if (intValue > 0) {
                            hashMap2.put(e4Var3.f11996u, valueOf);
                        } else {
                            hashMap2.remove(e4Var3.f11996u);
                        }
                    } else {
                        e4Var3.f11994s = 1000L;
                        if (!e4Var3.D) {
                            j11 += 1000;
                        }
                        list2.add(e4Var3);
                    }
                    arrayList = arrayList3;
                } else {
                    arrayList = arrayList3;
                    long max = Math.max(1000L, e4Var3.f11994s);
                    e4Var3.f11994s = max;
                    if (!e4Var3.D) {
                        j11 += max;
                    }
                    hashMap2.put(e4Var3.f11996u, Integer.valueOf(num != null ? num.intValue() + 1 : 1));
                    list2.add(e4Var3);
                }
                long j12 = !e4Var3.k() ? e4Var3.f12446c : e4Var3.f12446c + e4Var3.f11994s;
                if (!e4Var3.D && j12 > j10) {
                    j10 = j12;
                    e4Var2 = e4Var3;
                }
                it = it2;
                arrayList2 = arrayList;
            }
            ArrayList arrayList4 = arrayList2;
            Iterator it3 = it;
            h4 h4Var = new h4();
            h4Var.f12448e = (String) entry.getKey();
            h4Var.f12042s = j11;
            h4Var.f12446c = j10;
            h4Var.f12449f = e4Var2.f12449f;
            h4Var.f12450g = e4Var2.f12450g;
            h4Var.f12451h = e4Var2.f12451h;
            h4Var.f12452i = e4Var2.f12452i;
            h4Var.f12453j = e4Var2.f12453j;
            h4Var.f12043t = j10;
            h4Var.f12447d = j0.f12078o.incrementAndGet();
            h4Var.f12044u = null;
            if (!TextUtils.isEmpty(e4Var2.B)) {
                h4Var.f12044u = e4Var2.B;
            }
            JSONObject jSONObject = e4Var2.f12458o;
            if (jSONObject != null && jSONObject.has("$screen_orientation")) {
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("$screen_orientation", e4Var2.f12458o.optString("$screen_orientation"));
                    h4Var.f12458o = jSONObject2;
                } catch (Throwable th2) {
                    this.f11870b.f11955d.D.warn(5, "JSON handle failed", th2);
                }
            }
            arrayList4.add(h4Var);
            arrayList2 = arrayList4;
            it = it3;
        }
        return arrayList2;
    }

    public synchronized void b(String str, JSONObject jSONObject) {
        this.f11870b.f11955d.D.debug(5, "Pack trace events for appId:{} start...", str);
        SQLiteDatabase writableDatabase = this.f11869a.getWritableDatabase();
        List<i4> a10 = a(writableDatabase, str);
        if (a10.isEmpty()) {
            return;
        }
        d4 d4Var = new d4();
        JSONObject jSONObject2 = new JSONObject();
        l0.b.a(jSONObject2, jSONObject);
        jSONObject2.remove("user_unique_id");
        jSONObject2.remove("user_unique_id_type");
        d4Var.f11945y = jSONObject2;
        d4Var.f12456m = str;
        d4Var.f11944x = a10;
        a(writableDatabase, d4Var);
    }

    public final int a(SQLiteDatabase sQLiteDatabase, String str, String str2, String[] strArr) {
        if (sQLiteDatabase == null) {
            return 0;
        }
        Cursor cursor = null;
        try {
            cursor = sQLiteDatabase.rawQuery("SELECT count(1) FROM " + str + " WHERE " + str2, strArr);
        } catch (Throwable th2) {
            try {
                this.f11870b.f11955d.D.error(5, "Count table:{} failed", th2, str);
                k2.a(this.f11870b.f11968q, th2);
            } finally {
                l0.b.a(cursor);
            }
        }
        if (cursor.moveToNext()) {
            return cursor.getInt(0);
        }
        return 0;
    }

    public final List<b4> b(SQLiteDatabase sQLiteDatabase, String str, String str2, int i10) {
        Throwable th2;
        Cursor cursor;
        if (i10 <= 0) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        try {
            cursor = str2 == null ? sQLiteDatabase.rawQuery("SELECT * FROM eventv3 WHERE _app_id= ? and user_unique_id is null limit 0, ?", new String[]{str, String.valueOf(i10)}) : sQLiteDatabase.rawQuery("SELECT * FROM eventv3 WHERE _app_id= ? and user_unique_id = ? limit 0, ?", new String[]{str, str2, String.valueOf(i10)});
            while (cursor.moveToNext()) {
                try {
                    b4 b4Var = new b4();
                    b4Var.a(cursor);
                    arrayList.add(b4Var);
                } catch (Throwable th3) {
                    th2 = th3;
                    try {
                        this.f11870b.f11955d.D.error(5, "Query v3 event by uuid:{} for appId:{} failed", th2, str2, str);
                        k2.a(this.f11870b.f11968q, th2);
                        return arrayList;
                    } finally {
                        l0.b.a(cursor);
                    }
                }
            }
        } catch (Throwable th4) {
            th2 = th4;
            cursor = null;
        }
        return arrayList;
    }

    public synchronized void a(List<f4> list) {
        try {
            SQLiteDatabase writableDatabase = this.f11869a.getWritableDatabase();
            writableDatabase.beginTransaction();
            for (f4 f4Var : list) {
                writableDatabase.delete("profile", "_id=?", new String[]{String.valueOf(f4Var.f12445b)});
            }
            writableDatabase.setTransactionSuccessful();
            l0.b.a(writableDatabase);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final List<c4> b(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            cursor = str2 == null ? sQLiteDatabase.rawQuery("SELECT * FROM launch WHERE _app_id= ? and user_unique_id is null", new String[]{str}) : sQLiteDatabase.rawQuery("SELECT * FROM launch WHERE _app_id= ? and user_unique_id = ?", new String[]{str, str2});
            while (cursor.moveToNext()) {
                c4 c4Var = new c4();
                c4Var.a(cursor);
                arrayList.add(c4Var);
                c4Var.f11892u = !(l0.b.d(c4Var.f12448e) && a(sQLiteDatabase, "page", "session_id = ? LIMIT 1", new String[]{c4Var.f12448e}) > 0);
            }
        } catch (Throwable th2) {
            try {
                this.f11870b.f11955d.D.error(5, "Query launch by uuid:{} for appId:{} failed", th2, str2, str);
                k2.a(this.f11870b.f11968q, th2);
            } finally {
                l0.b.a(cursor);
            }
        }
        return arrayList;
    }

    public int b(String str) {
        int i10;
        Cursor cursor = null;
        try {
            cursor = this.f11869a.getReadableDatabase().rawQuery("SELECT * FROM packV2 WHERE _app_id= ? ORDER BY _id DESC LIMIT 8", new String[]{str});
        } catch (Throwable th2) {
            th = th2;
            i10 = 0;
        }
        if (cursor == null) {
            return 0;
        }
        i10 = 0;
        while (cursor.moveToNext()) {
            try {
                i10++;
            } catch (Throwable th3) {
                th = th3;
                try {
                    this.f11870b.f11955d.D.error(5, "Query event packs count failed", th, new Object[0]);
                    k2.a(this.f11870b.f11968q, th);
                    return i10;
                } finally {
                    l0.b.a(cursor);
                }
            }
        }
        return i10;
    }

    public final Set<String> a(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        HashSet hashSet = new HashSet();
        Cursor cursor = null;
        try {
            cursor = sQLiteDatabase.rawQuery("SELECT `user_unique_id` FROM " + str + " WHERE _app_id= ?", new String[]{str2});
            while (cursor.moveToNext()) {
                hashSet.add(cursor.getString(0));
            }
        } catch (Throwable th2) {
            try {
                this.f11870b.f11955d.D.error(5, "Query uuid set from table:{} for appId:{} failed", th2, str, str2);
                k2.a(this.f11870b.f11968q, th2);
            } finally {
                l0.b.a(cursor);
            }
        }
        return hashSet;
    }

    public synchronized boolean a(String str, JSONObject jSONObject) {
        List<h4> list;
        List<x3> list2;
        try {
            this.f11870b.f11955d.D.debug(5, "Pack events for appId:{} start...", str);
            SQLiteDatabase readableDatabase = this.f11869a.getReadableDatabase();
            HashSet<String> hashSet = new HashSet();
            if (readableDatabase != null) {
                hashSet.addAll(a(readableDatabase, "launch", str));
                hashSet.addAll(a(readableDatabase, "page", str));
                hashSet.addAll(a(readableDatabase, "eventv3", str));
                hashSet.addAll(a(readableDatabase, "custom_event", str));
            }
            if (hashSet.isEmpty()) {
                return false;
            }
            HashSet hashSet2 = new HashSet();
            SQLiteDatabase writableDatabase = this.f11869a.getWritableDatabase();
            for (String str2 : hashSet) {
                d4 d4Var = new d4();
                d4Var.f12456m = str;
                JSONObject jSONObject2 = new JSONObject();
                l0.b.a(jSONObject2, jSONObject);
                jSONObject2.remove("ssid");
                jSONObject2.put("user_unique_id", l0.b.c(str2) ? JSONObject.NULL : str2);
                d4Var.f11945y = jSONObject2;
                d4Var.f11942v = b(writableDatabase, str, str2);
                List<e4> c10 = c(writableDatabase, str, str2);
                ArrayList arrayList = new ArrayList();
                List<h4> a10 = a(c10, arrayList);
                d4Var.f11941u = arrayList;
                d4Var.f11943w = a10;
                d4Var.f11940t = a(writableDatabase, str, str2, d4Var.k());
                int k10 = d4Var.k();
                List<x3> list3 = d4Var.f11940t;
                if (list3 != null) {
                    k10 -= list3.size();
                }
                d4Var.f11939s = b(writableDatabase, str, str2, k10);
                List<c4> list4 = d4Var.f11942v;
                if ((list4 != null && !list4.isEmpty()) || (((list = d4Var.f11943w) != null && !list.isEmpty()) || d4Var.a((Set<String>) null).length() != 0 || ((list2 = d4Var.f11940t) != null && !list2.isEmpty()))) {
                    d4Var.m();
                    d4Var.n();
                    if (!this.f11870b.a(jSONObject2)) {
                        this.f11870b.f11955d.D.warn(5, "Register to get ssid by temp header failed.", new Object[0]);
                    } else {
                        this.f11870b.f11955d.D.debug(5, d4Var.toString(), new Object[0]);
                        hashSet2.add(str2);
                        a(writableDatabase, d4Var);
                    }
                }
            }
            return !hashSet2.isEmpty();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final List<x3> a(SQLiteDatabase sQLiteDatabase, String str, String str2, int i10) {
        Throwable th2;
        Cursor cursor;
        if (i10 <= 0) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        try {
            cursor = str2 == null ? sQLiteDatabase.rawQuery("SELECT * FROM custom_event WHERE _app_id= ? and user_unique_id is null limit 0, ?", new String[]{str, String.valueOf(i10)}) : sQLiteDatabase.rawQuery("SELECT * FROM custom_event WHERE _app_id= ? and user_unique_id = ? limit 0, ?", new String[]{str, str2, String.valueOf(i10)});
            while (cursor.moveToNext()) {
                try {
                    x3 x3Var = new x3();
                    x3Var.a(cursor);
                    arrayList.add(x3Var);
                } catch (Throwable th3) {
                    th2 = th3;
                    try {
                        this.f11870b.f11955d.D.error(5, "Query custom event by uuid:{} for appId:{} failed", th2, str2, str);
                        k2.a(this.f11870b.f11968q, th2);
                        return arrayList;
                    } finally {
                        l0.b.a(cursor);
                    }
                }
            }
        } catch (Throwable th4) {
            th2 = th4;
            cursor = null;
        }
        return arrayList;
    }

    public synchronized Map<String, List<f4>> a(String str) {
        HashMap hashMap;
        hashMap = new HashMap();
        Cursor rawQuery = this.f11869a.getWritableDatabase().rawQuery("SELECT * FROM profile WHERE _app_id=? ORDER BY _id DESC LIMIT 200", new String[]{str});
        while (rawQuery.moveToNext()) {
            f4 f4Var = new f4();
            f4Var.a(rawQuery);
            String a10 = l0.b.a((Object) f4Var.f12450g);
            List list = (List) hashMap.get(a10);
            if (list == null) {
                list = new ArrayList();
                hashMap.put(a10, list);
            }
            list.add(f4Var);
        }
        l0.b.a(rawQuery);
        return hashMap;
    }

    public final List<i4> a(SQLiteDatabase sQLiteDatabase, String str) {
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            cursor = sQLiteDatabase.rawQuery("SELECT * FROM trace WHERE _app_id= ? ", new String[]{str});
            while (cursor.moveToNext()) {
                i4 i4Var = new i4();
                i4Var.a(cursor);
                arrayList.add(i4Var);
            }
        } catch (Throwable th2) {
            try {
                this.f11870b.f11955d.D.error(5, "Query trace for appId:{} failed", th2, str);
                k2.a(this.f11870b.f11968q, th2);
            } finally {
                l0.b.a(cursor);
            }
        }
        return arrayList;
    }

    public final synchronized void a(SQLiteDatabase sQLiteDatabase, d4 d4Var) {
        sQLiteDatabase.beginTransaction();
        if (sQLiteDatabase.insert("packV2", null, d4Var.a((ContentValues) null)) < 0) {
            l0.b.a(sQLiteDatabase);
            return;
        }
        List<c4> list = d4Var.f11942v;
        if (list != null) {
            for (c4 c4Var : list) {
                sQLiteDatabase.delete("launch", "_id = ?", new String[]{String.valueOf(c4Var.f12445b)});
                LogUtils.sendObject("event_pack", c4Var);
            }
        }
        List<e4> list2 = d4Var.f11941u;
        if (list2 != null) {
            for (e4 e4Var : list2) {
                sQLiteDatabase.delete("page", "session_id = ? and page_key = ?", new String[]{String.valueOf(e4Var.f12448e), l0.b.a((Object) e4Var.f11996u)});
                LogUtils.sendObject("event_pack", e4Var);
            }
        }
        List<x3> list3 = d4Var.f11940t;
        if (list3 != null) {
            for (x3 x3Var : list3) {
                sQLiteDatabase.delete("custom_event", "_id = ?", new String[]{String.valueOf(x3Var.f12445b)});
                LogUtils.sendObject("event_pack", x3Var);
            }
        }
        List<b4> list4 = d4Var.f11939s;
        if (list4 != null) {
            for (b4 b4Var : list4) {
                sQLiteDatabase.delete("eventv3", "_id = ?", new String[]{String.valueOf(b4Var.f12445b)});
                LogUtils.sendObject("event_pack", b4Var);
            }
        }
        if (d4Var.f11944x != null) {
            sQLiteDatabase.delete("trace", "_app_id= ? ", new String[]{String.valueOf(d4Var.f12456m)});
            for (i4 i4Var : d4Var.f11944x) {
                LogUtils.sendObject("event_pack", i4Var);
            }
        }
        sQLiteDatabase.setTransactionSuccessful();
        l0.b.a(sQLiteDatabase);
    }

    public synchronized void a(String str, String str2) {
        SQLiteDatabase writableDatabase = this.f11869a.getWritableDatabase();
        writableDatabase.beginTransaction();
        writableDatabase.execSQL("UPDATE launch SET ssid = ? WHERE user_unique_id = ? AND LENGTH(ssid) = 0", new String[]{str2, str});
        writableDatabase.execSQL("UPDATE page SET ssid = ? WHERE user_unique_id = ? AND LENGTH(ssid) = 0", new String[]{str2, str});
        writableDatabase.execSQL("UPDATE eventv3 SET ssid = ? WHERE user_unique_id = ? AND LENGTH(ssid) = 0", new String[]{str2, str});
        writableDatabase.execSQL("UPDATE profile SET ssid = ? WHERE user_unique_id = ? AND LENGTH(ssid) = 0", new String[]{str2, str});
        writableDatabase.execSQL("UPDATE trace SET ssid = ? WHERE user_unique_id = ? AND LENGTH(ssid) = 0", new String[]{str2, str});
        writableDatabase.setTransactionSuccessful();
        l0.b.a(writableDatabase);
    }
}
