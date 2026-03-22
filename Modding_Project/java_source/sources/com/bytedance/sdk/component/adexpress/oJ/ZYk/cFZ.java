package com.bytedance.sdk.component.adexpress.oJ.ZYk;

import android.text.TextUtils;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class cFZ {
    private static volatile cFZ oJ;
    private AtomicBoolean ZYk = new AtomicBoolean(false);

    private cFZ() {
    }

    private JSONObject tB(String str) {
        com.bytedance.sdk.component.adexpress.oJ.oJ.tB tB = com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().tB();
        if (tB == null) {
            return null;
        }
        com.bytedance.sdk.component.cFZ.ZYk.ZYk cFZ = tB.cFZ();
        cFZ.ZYk(str);
        com.bytedance.sdk.component.cFZ.ZYk oJ2 = cFZ.oJ();
        if (oJ2 != null) {
            try {
                if (oJ2.ba() && oJ2.ex() != null) {
                    return new JSONObject(oJ2.ex());
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public Set<String> ZYk(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return ba.oJ().ZYk(str);
    }

    public static cFZ oJ() {
        if (oJ == null) {
            synchronized (cFZ.class) {
                try {
                    if (oJ == null) {
                        oJ = new cFZ();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return oJ;
    }

    private void ZYk() {
        if (com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().tB() == null) {
            return;
        }
        int oJ2 = com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().tB().oJ();
        if (oJ2 <= 0) {
            oJ2 = 100;
        }
        List<com.bytedance.sdk.component.adexpress.oJ.tB.ZYk> ZYk = ba.oJ().ZYk();
        if (ZYk == null || ZYk.isEmpty() || oJ2 >= ZYk.size()) {
            if (ZYk == null) {
                return;
            }
            ZYk.size();
            return;
        }
        TreeMap treeMap = new TreeMap();
        for (com.bytedance.sdk.component.adexpress.oJ.tB.ZYk zYk : ZYk) {
            treeMap.put(zYk.cFZ(), zYk);
        }
        HashSet hashSet = new HashSet();
        int size = (int) (ZYk.size() - (oJ2 * 0.75f));
        int i10 = 0;
        for (Map.Entry entry : treeMap.entrySet()) {
            if (entry != null && i10 < size) {
                i10++;
                ((Long) entry.getKey()).longValue();
                com.bytedance.sdk.component.adexpress.oJ.tB.ZYk zYk2 = (com.bytedance.sdk.component.adexpress.oJ.tB.ZYk) entry.getValue();
                if (zYk2 != null) {
                    hashSet.add(zYk2.ZYk());
                }
            }
        }
        oJ(hashSet);
        this.ZYk.set(false);
    }

    public com.bytedance.sdk.component.adexpress.oJ.tB.ZYk oJ(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return ba.oJ().oJ(str);
    }

    public void oJ(com.bytedance.sdk.component.adexpress.oJ.tB.ex exVar, String str) {
        String str2;
        if (exVar == null) {
            return;
        }
        final String str3 = exVar.oJ;
        final String str4 = exVar.tB;
        final String str5 = exVar.ZYk;
        final String str6 = exVar.ex;
        final String str7 = exVar.Pfn;
        if (com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().tB() != null) {
            str2 = com.bytedance.sdk.component.adexpress.oJ.oJ.oJ.oJ().tB().so();
        } else {
            str2 = "";
        }
        final String str8 = TextUtils.isEmpty(str) ? str2 : str;
        if (TextUtils.isEmpty(str3)) {
            return;
        }
        com.bytedance.sdk.component.adexpress.ex.ex.oJ(new com.bytedance.sdk.component.so.so("saveTemplate") { // from class: com.bytedance.sdk.component.adexpress.oJ.ZYk.cFZ.1
            @Override // java.lang.Runnable
            public void run() {
                cFZ.this.oJ(str3, str4, str5, str6, str7, str8);
            }
        }, 10);
    }

    private void ZYk(String str, String str2, String str3, String str4, String str5, String str6) {
        ba.oJ().oJ(new com.bytedance.sdk.component.adexpress.oJ.tB.ZYk().oJ(str).ZYk(str2).tB(str3).ex(str4).Pfn(str5).ba(str6).oJ(Long.valueOf(System.currentTimeMillis())), false);
        ZYk();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void oJ(String str, String str2, String str3, String str4, String str5, String str6) {
        if (oJ(str) != null) {
            if (!TextUtils.isEmpty(str4) && !TextUtils.isEmpty(str3)) {
                ZYk(str6, str, str3, str2, str4, str5);
            }
            return;
        } else if (TextUtils.isEmpty(str4)) {
            oJ(str2, str6, str);
        } else if (TextUtils.isEmpty(str3)) {
            oJ(str2, str6, str);
        } else {
            ZYk(str6, str, str3, str2, str4, str5);
        }
        boolean oJ2 = so.oJ(str5);
        if (!ZYk.Pfn() || oJ2) {
            Pfn.ZYk().oJ(true);
        }
    }

    private void oJ(String str, String str2, String str3) {
        JSONObject tB;
        if (TextUtils.isEmpty(str) || (tB = tB(str)) == null) {
            return;
        }
        String optString = tB.optString("md5");
        String optString2 = tB.optString("version");
        String optString3 = tB.optString("data");
        if (TextUtils.isEmpty(optString) || TextUtils.isEmpty(optString2) || TextUtils.isEmpty(optString3)) {
            return;
        }
        com.bytedance.sdk.component.adexpress.oJ.tB.ZYk oJ2 = new com.bytedance.sdk.component.adexpress.oJ.tB.ZYk().oJ(str2).ZYk(str3).tB(optString).ex(str).Pfn(optString3).ba(optString2).oJ(Long.valueOf(System.currentTimeMillis()));
        ba.oJ().oJ(oJ2, false);
        ZYk();
        if (so.oJ(optString2)) {
            oJ2.ba(optString2);
            Pfn.ZYk().oJ(true);
        }
    }

    public void oJ(Set<String> set) {
        try {
            ba.oJ().oJ(set);
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }
}
