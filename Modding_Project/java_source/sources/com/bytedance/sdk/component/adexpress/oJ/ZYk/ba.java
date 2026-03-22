package com.bytedance.sdk.component.adexpress.oJ.ZYk;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import android.util.Log;
import android.util.LruCache;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public class ba {
    private static volatile ba ZYk = null;
    public static int oJ = 20;
    private volatile ConcurrentHashMap<String, com.bytedance.sdk.component.adexpress.oJ.tB.tB> Pfn;
    private final Object ex = new Object();

    /* renamed from: ba  reason: collision with root package name */
    private AtomicBoolean f12733ba = new AtomicBoolean(false);
    private LruCache<String, com.bytedance.sdk.component.adexpress.oJ.tB.ZYk> cFZ = new LruCache<String, com.bytedance.sdk.component.adexpress.oJ.tB.ZYk>(oJ) { // from class: com.bytedance.sdk.component.adexpress.oJ.ZYk.ba.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.util.LruCache
        /* renamed from: oJ */
        public int sizeOf(String str, com.bytedance.sdk.component.adexpress.oJ.tB.ZYk zYk) {
            return 1;
        }
    };
    private Set<String> tB = Collections.synchronizedSet(new HashSet());

    private ba() {
    }

    private void ex(String str) {
        LruCache<String, com.bytedance.sdk.component.adexpress.oJ.tB.ZYk> lruCache;
        if (!TextUtils.isEmpty(str) && (lruCache = this.cFZ) != null && lruCache.size() > 0) {
            synchronized (this.ex) {
                this.cFZ.remove(str);
            }
        }
    }

    public static void oJ(int i10) {
        oJ = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Set<String> ZYk(String str) {
        if (!TextUtils.isEmpty(str) && com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().ZYk() != null) {
            HashSet hashSet = new HashSet();
            Cursor oJ2 = com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().ZYk().oJ("template_diff_new", null, "rit=?", new String[]{str}, null, null, null);
            if (oJ2 != null) {
                try {
                    try {
                        if (oJ2.moveToFirst()) {
                            do {
                                hashSet.add(oJ2.getString(oJ2.getColumnIndex("id")));
                            } while (oJ2.moveToNext());
                            return hashSet;
                        }
                    } catch (Exception e10) {
                        Log.e("TmplDbHelper", "", e10);
                    }
                } finally {
                    oJ2.close();
                }
            }
        }
        return null;
    }

    void tB(String str) {
        com.bytedance.sdk.component.adexpress.oJ.tB.tB tBVar;
        try {
            if (this.Pfn == null || this.Pfn.isEmpty() || (tBVar = this.Pfn.get(str)) == null) {
                return;
            }
            if (!TextUtils.isEmpty(tBVar.oJ()) && com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().ba() != null) {
                com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().ba();
            }
            this.Pfn.remove(str);
        } catch (Throwable unused) {
        }
    }

    public static ba oJ() {
        if (ZYk == null) {
            synchronized (ba.class) {
                try {
                    if (ZYk == null) {
                        ZYk = new ba();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return ZYk;
    }

    public static String tB() {
        return new StringBuilder("CREATE TABLE IF NOT EXISTS template_diff_new (_id INTEGER PRIMARY KEY AUTOINCREMENT,rit TEXT ,id TEXT UNIQUE,md5 TEXT ,url TEXT , data TEXT , version TEXT , update_time TEXT)").toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.bytedance.sdk.component.adexpress.oJ.tB.ZYk oJ(String str) {
        com.bytedance.sdk.component.adexpress.oJ.tB.ZYk zYk;
        com.bytedance.sdk.component.adexpress.oJ.tB.ZYk oJ2;
        if (TextUtils.isEmpty(str) || com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().ZYk() == null) {
            return null;
        }
        synchronized (this.ex) {
            zYk = this.cFZ.get(String.valueOf(str));
        }
        if (zYk != null) {
            return zYk;
        }
        Cursor oJ3 = com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().ZYk().oJ("template_diff_new", null, "id=?", new String[]{str}, null, null, null);
        if (oJ3 != null) {
            try {
                if (oJ3.moveToFirst()) {
                    do {
                        String string = oJ3.getString(oJ3.getColumnIndex("rit"));
                        String string2 = oJ3.getString(oJ3.getColumnIndex("id"));
                        String string3 = oJ3.getString(oJ3.getColumnIndex("md5"));
                        String string4 = oJ3.getString(oJ3.getColumnIndex("url"));
                        String string5 = oJ3.getString(oJ3.getColumnIndex("data"));
                        String string6 = oJ3.getString(oJ3.getColumnIndex("version"));
                        oJ2 = new com.bytedance.sdk.component.adexpress.oJ.tB.ZYk().oJ(string).ZYk(string2).tB(string3).ex(string4).Pfn(string5).ba(string6).oJ(Long.valueOf(oJ3.getLong(oJ3.getColumnIndex("update_time"))));
                        synchronized (this.ex) {
                            this.cFZ.put(string2, oJ2);
                        }
                        this.tB.add(string2);
                    } while (oJ3.moveToNext());
                    oJ3.close();
                    return oJ2;
                }
            } catch (Throwable unused) {
            }
            oJ3.close();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public List<com.bytedance.sdk.component.adexpress.oJ.tB.ZYk> ZYk() {
        if (com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().ZYk() == null) {
            return null;
        }
        boolean z10 = this.f12733ba.get();
        this.f12733ba.set(true);
        ArrayList arrayList = new ArrayList();
        Cursor oJ2 = com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().ZYk().oJ("template_diff_new", null, null, null, null, null, null);
        if (oJ2 != null) {
            while (oJ2.moveToNext()) {
                try {
                    String string = oJ2.getString(oJ2.getColumnIndex("rit"));
                    String string2 = oJ2.getString(oJ2.getColumnIndex("id"));
                    String string3 = oJ2.getString(oJ2.getColumnIndex("md5"));
                    String string4 = oJ2.getString(oJ2.getColumnIndex("url"));
                    String string5 = oJ2.getString(oJ2.getColumnIndex("data"));
                    String string6 = oJ2.getString(oJ2.getColumnIndex("version"));
                    arrayList.add(new com.bytedance.sdk.component.adexpress.oJ.tB.ZYk().oJ(string).ZYk(string2).tB(string3).ex(string4).Pfn(string5).ba(string6).oJ(Long.valueOf(oJ2.getLong(oJ2.getColumnIndex("update_time")))));
                    synchronized (this.ex) {
                        this.cFZ.put(string2, arrayList.get(arrayList.size() - 1));
                    }
                    this.tB.add(string2);
                    if (!z10 && com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().ba() != null) {
                        if (this.Pfn == null) {
                            this.Pfn = new ConcurrentHashMap<>();
                        }
                        if (string2 != null && !this.Pfn.contains(string2)) {
                            this.Pfn.put(string2, new com.bytedance.sdk.component.adexpress.oJ.tB.tB(string, string2, string3));
                        }
                    }
                } catch (Throwable unused) {
                }
            }
            oJ2.close();
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void oJ(com.bytedance.sdk.component.adexpress.oJ.tB.ZYk zYk, boolean z10) {
        if (zYk == null || com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().ZYk() == null || TextUtils.isEmpty(zYk.ZYk())) {
            return;
        }
        Cursor oJ2 = com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().ZYk().oJ("template_diff_new", null, "id=?", new String[]{zYk.ZYk()}, null, null, null);
        boolean z11 = oJ2 != null && oJ2.getCount() > 0;
        if (oJ2 != null) {
            try {
                r2 = oJ2.moveToFirst() ? oJ2.getString(oJ2.getColumnIndex("rit")) : null;
                oJ2.close();
            } catch (Throwable unused) {
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("rit", zYk.oJ());
        contentValues.put("id", zYk.ZYk());
        contentValues.put("md5", zYk.tB());
        contentValues.put("url", zYk.ex());
        contentValues.put("data", zYk.Pfn());
        contentValues.put("version", zYk.ba());
        contentValues.put("update_time", zYk.cFZ());
        if (z11) {
            com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().ZYk().oJ("template_diff_new", contentValues, "id=?", new String[]{zYk.ZYk()});
        } else {
            com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().ZYk().oJ("template_diff_new", contentValues);
        }
        synchronized (this.ex) {
            this.cFZ.put(zYk.ZYk(), zYk);
        }
        this.tB.add(zYk.ZYk());
        if (z10) {
            return;
        }
        try {
            if (com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().ba() == null) {
                return;
            }
            if (this.Pfn == null) {
                this.Pfn = new ConcurrentHashMap<>();
            }
            com.bytedance.sdk.component.adexpress.oJ.tB.tB tBVar = new com.bytedance.sdk.component.adexpress.oJ.tB.tB(zYk.oJ(), zYk.ZYk(), zYk.tB());
            this.Pfn.put(zYk.ZYk(), tBVar);
            if (r2 != null) {
                com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().ba();
                tBVar.ZYk();
            }
            com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().ba();
            zYk.oJ();
        } catch (Throwable unused2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void oJ(Set<String> set) {
        if (set == null || set.isEmpty() || com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().ZYk() == null) {
            return;
        }
        String[] strArr = (String[]) set.toArray(new String[set.size()]);
        if (strArr.length > 0) {
            for (int i10 = 0; i10 < strArr.length; i10++) {
                ex(strArr[i10]);
                com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().ZYk().oJ("template_diff_new", "id=?", new String[]{strArr[i10]});
                tB(strArr[i10]);
            }
        }
    }
}
