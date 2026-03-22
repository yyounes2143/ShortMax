package com.bytedance.sdk.openadsdk.multipro.oJ;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.component.ba.oJ.ba;
import com.bytedance.sdk.openadsdk.core.Pfn;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.multipro.ex;
import com.bytedance.sdk.openadsdk.utils.HyG;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes3.dex */
public class oJ {
    private static final ConcurrentHashMap<String, Object> ZYk = new ConcurrentHashMap<>();
    public static ba oJ;

    public static ba oJ(Context context) {
        if (context == null) {
            try {
                si.oJ();
            } catch (Throwable unused) {
                HyG.so("binder error");
            }
        }
        if (oJ == null) {
            if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
                oJ = ba.oJ.oJ(com.bytedance.sdk.openadsdk.multipro.aidl.oJ.oJ().oJ(5));
            } else {
                oJ = com.bytedance.sdk.openadsdk.multipro.aidl.oJ.ba.ZYk();
            }
        }
        return oJ;
    }

    private static String oJ() {
        return ex.ZYk + "/t_db/ttopensdk.db/";
    }

    public static void oJ(Context context, String str, ContentValues contentValues) {
        if (contentValues == null || TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (oJ(str)) {
            if (!com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
                Pfn.oJ(context).oJ().oJ(str, (String) null, contentValues);
                return;
            }
            ba oJ2 = oJ(context);
            if (oJ2 != null) {
                oJ2.oJ(Uri.parse(oJ() + str), contentValues);
            }
        }
    }

    public static int oJ(Context context, String str, String str2, String[] strArr) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        synchronized (oJ(str)) {
            if (!com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
                return Pfn.oJ(context).oJ().oJ(str, str2, strArr);
            }
            ba oJ2 = oJ(context);
            if (oJ2 != null) {
                return oJ2.oJ(Uri.parse(oJ() + str), str2, strArr);
            }
            return 0;
        }
    }

    public static int oJ(Context context, String str, ContentValues contentValues, String str2, String[] strArr) {
        if (contentValues != null && !TextUtils.isEmpty(str)) {
            synchronized (oJ(str)) {
                if (!com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
                    return Pfn.oJ(context).oJ().oJ(str, contentValues, str2, strArr);
                }
                ba oJ2 = oJ(context);
                if (oJ2 != null) {
                    return oJ2.oJ(Uri.parse(oJ() + str), contentValues, str2, strArr);
                }
            }
        }
        return 0;
    }

    public static Map<String, List<String>> oJ(Context context, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        synchronized (oJ(str)) {
            if (!com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
                return oJ(Pfn.oJ(context).oJ().oJ(str, strArr, str2, strArr2, str3, str4, str5));
            }
            ba oJ2 = oJ(context);
            if (oJ2 != null) {
                return oJ2.oJ(Uri.parse(oJ() + str), strArr, str2, strArr2, str5);
            }
            return null;
        }
    }

    public static Map<String, List<String>> oJ(Cursor cursor) {
        HashMap hashMap = new HashMap();
        if (cursor != null) {
            try {
                String[] columnNames = cursor.getColumnNames();
                while (cursor.getCount() > 0 && cursor.moveToNext()) {
                    for (String str : columnNames) {
                        if (!hashMap.containsKey(str)) {
                            hashMap.put(str, new LinkedList());
                        }
                        ((List) hashMap.get(str)).add(cursor.getString(cursor.getColumnIndex(str)));
                    }
                }
            } catch (Throwable unused) {
            }
            cursor.close();
        }
        return hashMap;
    }

    private static Object oJ(String str) {
        Object obj;
        ConcurrentHashMap<String, Object> concurrentHashMap = ZYk;
        Object obj2 = concurrentHashMap.get(str);
        if (obj2 == null) {
            synchronized (oJ.class) {
                try {
                    obj = concurrentHashMap.get(str);
                    if (obj == null) {
                        obj = new Object();
                        concurrentHashMap.put(str, obj);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return obj;
        }
        return obj2;
    }
}
