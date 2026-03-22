package com.bytedance.sdk.openadsdk.core.kkU.oJ;

import android.content.ContentValues;
import android.text.TextUtils;
import android.util.LruCache;
import com.bytedance.sdk.openadsdk.core.si;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes3.dex */
public class tB {
    private static volatile tB ZYk = null;
    public static int oJ = 20;
    private final Object tB = new Object();
    private final LruCache<String, oJ> ex = new LruCache<String, oJ>(oJ) { // from class: com.bytedance.sdk.openadsdk.core.kkU.oJ.tB.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.util.LruCache
        /* renamed from: oJ */
        public int sizeOf(String str, oJ oJVar) {
            return 1;
        }
    };

    private tB() {
    }

    public static String ex() {
        return "ALTER TABLE ugen_template ADD COLUMN rit TEXT ";
    }

    public static tB oJ() {
        if (ZYk == null) {
            synchronized (tB.class) {
                try {
                    if (ZYk == null) {
                        ZYk = new tB();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return ZYk;
    }

    public static String tB() {
        return new StringBuilder("CREATE TABLE IF NOT EXISTS ugen_template (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,md5 TEXT ,url TEXT , data TEXT , rit TEXT , update_time TEXT)").toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<oJ> ZYk() {
        ArrayList arrayList = new ArrayList();
        com.bytedance.sdk.openadsdk.multipro.aidl.tB tBVar = new com.bytedance.sdk.openadsdk.multipro.aidl.tB(com.bytedance.sdk.openadsdk.multipro.oJ.oJ.oJ(si.oJ(), "ugen_template", null, null, null, null, null, null));
        try {
            if (tBVar.moveToFirst()) {
                do {
                    int columnIndex = tBVar.getColumnIndex("id");
                    int columnIndex2 = tBVar.getColumnIndex("md5");
                    int columnIndex3 = tBVar.getColumnIndex("url");
                    int columnIndex4 = tBVar.getColumnIndex("data");
                    int columnIndex5 = tBVar.getColumnIndex("update_time");
                    if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1 && columnIndex5 != -1 && columnIndex4 != -1) {
                        int columnIndex6 = tBVar.getColumnIndex("rit");
                        String string = columnIndex6 != -1 ? tBVar.getString(columnIndex6) : null;
                        String string2 = tBVar.getString(columnIndex);
                        String string3 = tBVar.getString(columnIndex2);
                        String string4 = tBVar.getString(columnIndex3);
                        oJ oJ2 = new oJ().oJ(string2).ZYk(string3).tB(string4).ex(tBVar.getString(columnIndex4)).Pfn(string).oJ(Long.valueOf(tBVar.getLong(columnIndex5)));
                        arrayList.add(oJ2);
                        synchronized (this.tB) {
                            this.ex.put(string2, oJ2);
                        }
                    }
                } while (tBVar.moveToNext());
            }
        } finally {
            try {
                return arrayList;
            } finally {
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public oJ oJ(String str, String str2) {
        oJ oJVar;
        oJ oJ2;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        synchronized (this.tB) {
            oJVar = this.ex.get(str);
        }
        if (oJVar != null) {
            if (TextUtils.equals(str2, oJVar.ZYk())) {
                return oJVar;
            }
            ZYk(str2);
            return null;
        }
        com.bytedance.sdk.openadsdk.multipro.aidl.tB tBVar = new com.bytedance.sdk.openadsdk.multipro.aidl.tB(com.bytedance.sdk.openadsdk.multipro.oJ.oJ.oJ(si.oJ(), "ugen_template", null, "id=? AND md5=?", new String[]{str, str2}, null, null, null));
        try {
            if (tBVar.moveToFirst()) {
                do {
                    int columnIndex = tBVar.getColumnIndex("id");
                    int columnIndex2 = tBVar.getColumnIndex("md5");
                    int columnIndex3 = tBVar.getColumnIndex("url");
                    int columnIndex4 = tBVar.getColumnIndex("data");
                    int columnIndex5 = tBVar.getColumnIndex("update_time");
                    if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1 && columnIndex5 != -1 && columnIndex4 != -1) {
                        int columnIndex6 = tBVar.getColumnIndex("rit");
                        String string = tBVar.getString(columnIndex);
                        String string2 = tBVar.getString(columnIndex2);
                        String string3 = tBVar.getString(columnIndex3);
                        String string4 = tBVar.getString(columnIndex4);
                        if (TextUtils.isEmpty(string4)) {
                            return null;
                        }
                        oJ2 = new oJ().oJ(string).ZYk(string2).ex(string4).tB(string3).Pfn(columnIndex6 != -1 ? tBVar.getString(columnIndex6) : null).oJ(Long.valueOf(tBVar.getLong(columnIndex5)));
                        synchronized (this.tB) {
                            this.ex.put(string, oJ2);
                        }
                    }
                    return null;
                } while (tBVar.moveToNext());
                return oJ2;
            }
        } finally {
            try {
                return null;
            } finally {
            }
        }
        return null;
    }

    private void ZYk(String str) {
        if (!TextUtils.isEmpty(str) && this.ex.size() > 0) {
            synchronized (this.tB) {
                this.ex.remove(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void oJ(oJ oJVar) {
        if (oJVar == null || TextUtils.isEmpty(oJVar.oJ())) {
            return;
        }
        com.bytedance.sdk.openadsdk.multipro.aidl.tB tBVar = new com.bytedance.sdk.openadsdk.multipro.aidl.tB(com.bytedance.sdk.openadsdk.multipro.oJ.oJ.oJ(si.oJ(), "ugen_template", null, "id=?", new String[]{oJVar.oJ()}, null, null, null));
        boolean z10 = tBVar.getCount() > 0;
        try {
            tBVar.close();
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", oJVar.oJ());
            contentValues.put("md5", oJVar.ZYk());
            contentValues.put("url", oJVar.tB());
            contentValues.put("data", oJVar.Pfn());
            contentValues.put("rit", oJVar.ba());
            contentValues.put("update_time", oJVar.ex());
            if (z10) {
                com.bytedance.sdk.openadsdk.multipro.oJ.oJ.oJ(si.oJ(), "ugen_template", contentValues, "id=?", new String[]{oJVar.oJ()});
            } else {
                com.bytedance.sdk.openadsdk.multipro.oJ.oJ.oJ(si.oJ(), "ugen_template", contentValues);
            }
            synchronized (this.tB) {
                this.ex.put(oJVar.oJ(), oJVar);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Set<oJ> oJ(String str) {
        oJ oJVar;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        HashSet hashSet = new HashSet();
        com.bytedance.sdk.openadsdk.multipro.aidl.tB tBVar = new com.bytedance.sdk.openadsdk.multipro.aidl.tB(com.bytedance.sdk.openadsdk.multipro.oJ.oJ.oJ(si.oJ(), "ugen_template", null, "rit=?", new String[]{str}, null, null, null));
        try {
            if (tBVar.moveToFirst()) {
                do {
                    int columnIndex = tBVar.getColumnIndex("id");
                    if (columnIndex != -1) {
                        String string = tBVar.getString(columnIndex);
                        if (!TextUtils.isEmpty(string)) {
                            synchronized (this.tB) {
                                oJVar = this.ex.get(string);
                            }
                            if (oJVar != null) {
                                hashSet.add(oJVar);
                            } else {
                                oJ oJVar2 = new oJ();
                                int columnIndex2 = tBVar.getColumnIndex("data");
                                if (columnIndex2 != -1) {
                                    String string2 = tBVar.getString(columnIndex2);
                                    if (!TextUtils.isEmpty(string2)) {
                                        oJVar2.ex(string2);
                                        oJVar2.oJ(string);
                                        oJVar2.Pfn(str);
                                        int columnIndex3 = tBVar.getColumnIndex("md5");
                                        int columnIndex4 = tBVar.getColumnIndex("url");
                                        int columnIndex5 = tBVar.getColumnIndex("update_time");
                                        if (columnIndex3 != -1) {
                                            oJVar2.ZYk(tBVar.getString(columnIndex3));
                                        }
                                        if (columnIndex4 != -1) {
                                            oJVar2.tB(tBVar.getString(columnIndex4));
                                        }
                                        if (columnIndex5 != -1) {
                                            oJVar2.oJ(Long.valueOf(tBVar.getLong(columnIndex5)));
                                        }
                                        hashSet.add(oJVar2);
                                        synchronized (this.tB) {
                                            this.ex.put(string, oJVar2);
                                        }
                                    }
                                }
                            }
                        }
                    }
                } while (tBVar.moveToNext());
            }
        } finally {
            try {
                return hashSet;
            } finally {
            }
        }
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void oJ(Set<String> set) {
        if (set == null || set.isEmpty()) {
            return;
        }
        String[] strArr = (String[]) set.toArray(new String[set.size()]);
        if (strArr.length > 0) {
            for (String str : strArr) {
                ZYk(str);
                com.bytedance.sdk.openadsdk.multipro.oJ.oJ.oJ(si.oJ(), "ugen_template", "id=?", new String[]{str});
            }
        }
    }
}
