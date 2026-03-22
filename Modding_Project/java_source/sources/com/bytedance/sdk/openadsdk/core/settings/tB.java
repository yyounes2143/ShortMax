package com.bytedance.sdk.openadsdk.core.settings;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.utils.mu;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class tB {
    private static final ConcurrentHashMap<String, ZYk> oJ = new ConcurrentHashMap<>();

    @NonNull
    private static HashMap<String, ZYk> ZYk(JSONArray jSONArray) {
        HashMap<String, ZYk> hashMap = new HashMap<>();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            try {
                ZYk oJ2 = oJ(jSONArray.getJSONObject(i10));
                if (oJ2 != null) {
                    hashMap.put(oJ2.oJ, oJ2);
                }
            } catch (Exception unused) {
            }
        }
        return hashMap;
    }

    @WorkerThread
    public static void oJ(boolean z10) {
        String oJ2;
        File ZYk = ZYk();
        if (!ZYk.exists()) {
            if (com.bytedance.sdk.openadsdk.multipro.ZYk.tB()) {
                oJ2 = com.bytedance.sdk.openadsdk.multipro.ex.oJ.ZYk("tt_sdk_settings", "ad_slot_conf", null);
            } else {
                oJ2 = mu.oJ("tt_sdk_settings", si.oJ()).oJ("ad_slot_conf", (String) null);
            }
            if (TextUtils.isEmpty(oJ2)) {
                return;
            }
            try {
                HashMap<String, ZYk> ZYk2 = ZYk(new JSONArray(oJ2));
                if (ZYk2.isEmpty()) {
                    return;
                }
                ConcurrentHashMap<String, ZYk> concurrentHashMap = oJ;
                concurrentHashMap.clear();
                concurrentHashMap.putAll(ZYk2);
                return;
            } catch (Exception unused) {
                return;
            }
        }
        try {
            HashMap<String, ZYk> ZYk3 = ZYk(new JSONArray(new String(com.bytedance.sdk.component.utils.cFZ.ex(ZYk))));
            if (ZYk3.isEmpty()) {
                return;
            }
            for (Map.Entry<String, ZYk> entry : ZYk3.entrySet()) {
                oJ.put(entry.getKey(), entry.getValue());
            }
        } catch (Exception unused2) {
        }
    }

    @NonNull
    private static File ZYk() {
        return new File(si.oJ().getFilesDir(), "tt_ads_conf_sr");
    }

    private static ZYk ZYk(String str) {
        return new ZYk(str, 1);
    }

    private static ZYk oJ(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        return new ZYk(jSONObject);
    }

    @NonNull
    public static ZYk oJ(String str) {
        ZYk zYk = oJ.get(str);
        return zYk == null ? ZYk(str) : zYk;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a8 A[ORIG_RETURN, RETURN] */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void oJ(org.json.JSONArray r5) {
        /*
            if (r5 != 0) goto L3
            return
        L3:
            java.io.File r0 = ZYk()
            java.io.File r1 = new java.io.File
            java.lang.String r2 = r0.getParent()
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = r0.getName()
            r3.append(r4)
            java.lang.String r4 = ".tmp"
            r3.append(r4)
            java.lang.String r3 = r3.toString()
            r1.<init>(r2, r3)
            r2 = 0
            boolean r3 = r1.exists()     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L33
            if (r3 == 0) goto L35
            r1.delete()     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L33
            goto L35
        L30:
            r5 = move-exception
            goto La9
        L33:
            r0 = move-exception
            goto L65
        L35:
            java.io.FileWriter r3 = new java.io.FileWriter     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L33
            r3.<init>(r1)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L33
            java.lang.String r2 = r5.toString()     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L63
            r3.write(r2)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L63
            r1.renameTo(r0)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L63
            java.lang.String r0 = "tt_sdk_settings"
            android.content.Context r2 = com.bytedance.sdk.openadsdk.core.si.oJ()     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L63
            com.bytedance.sdk.openadsdk.utils.mu r0 = com.bytedance.sdk.openadsdk.utils.mu.oJ(r0, r2)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L63
            java.lang.String r2 = "ad_slot_conf"
            r0.oJ(r2)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L63
            boolean r0 = r1.exists()
            if (r0 == 0) goto L5c
            r1.delete()
        L5c:
            com.bytedance.sdk.openadsdk.utils.PiB.oJ(r3)
            goto L78
        L60:
            r5 = move-exception
            r2 = r3
            goto La9
        L63:
            r0 = move-exception
            r2 = r3
        L65:
            java.lang.String r3 = "SdkSettings.AdSlot"
            java.lang.String r4 = "saveAdSlotToLocal: "
            android.util.Log.e(r3, r4, r0)     // Catch: java.lang.Throwable -> L30
            boolean r0 = r1.exists()
            if (r0 == 0) goto L75
            r1.delete()
        L75:
            com.bytedance.sdk.openadsdk.utils.PiB.oJ(r2)
        L78:
            java.util.HashMap r5 = ZYk(r5)
            boolean r0 = r5.isEmpty()
            if (r0 != 0) goto La8
            java.util.Set r5 = r5.entrySet()
            java.util.Iterator r5 = r5.iterator()
        L8a:
            boolean r0 = r5.hasNext()
            if (r0 == 0) goto La8
            java.lang.Object r0 = r5.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            java.lang.Object r1 = r0.getKey()
            java.lang.String r1 = (java.lang.String) r1
            java.lang.Object r0 = r0.getValue()
            com.bytedance.sdk.openadsdk.core.settings.ZYk r0 = (com.bytedance.sdk.openadsdk.core.settings.ZYk) r0
            java.util.concurrent.ConcurrentHashMap<java.lang.String, com.bytedance.sdk.openadsdk.core.settings.ZYk> r2 = com.bytedance.sdk.openadsdk.core.settings.tB.oJ
            r2.put(r1, r0)
            goto L8a
        La8:
            return
        La9:
            boolean r0 = r1.exists()
            if (r0 == 0) goto Lb2
            r1.delete()
        Lb2:
            com.bytedance.sdk.openadsdk.utils.PiB.oJ(r2)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.settings.tB.oJ(org.json.JSONArray):void");
    }

    public static void oJ() {
        File ZYk = ZYk();
        if (ZYk.exists()) {
            ZYk.delete();
        }
    }
}
