package com.bytedance.sdk.openadsdk.core.kkU.oJ;

import android.text.TextUtils;
import com.bytedance.sdk.component.so.so;
import com.bytedance.sdk.openadsdk.core.jFA;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.utils.ofl;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk {
    private static volatile ZYk oJ;

    /* loaded from: classes3.dex */
    public interface oJ {
        void oJ(int i10, String str, String str2);

        void oJ(JSONObject jSONObject, String str);
    }

    private void ZYk(String str, String str2, String str3, String str4, String str5) {
        com.bytedance.sdk.openadsdk.core.kkU.oJ.oJ oJVar = new com.bytedance.sdk.openadsdk.core.kkU.oJ.oJ();
        oJVar.tB(str).Pfn(str3).ex(str4).ZYk(str2).oJ(str5).oJ(Long.valueOf(System.currentTimeMillis()));
        tB.oJ().oJ(oJVar);
        ZYk();
    }

    public static ZYk oJ() {
        if (oJ == null) {
            synchronized (ZYk.class) {
                try {
                    if (oJ == null) {
                        oJ = new ZYk();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return oJ;
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.kkU.so.oJ oJVar, String str) {
        if (oJVar == null || TextUtils.isEmpty(oJVar.oJ())) {
            return;
        }
        final String str2 = str + "_" + oJVar.oJ();
        final String tB = oJVar.tB();
        final String ZYk = oJVar.ZYk();
        final String ex = oJVar.ex();
        String Pfn = oJVar.Pfn();
        if (TextUtils.isEmpty(Pfn)) {
            if (str.equals("ad")) {
                Pfn = jFA.ZYk().ex();
            } else if (str.equals("adv3")) {
                Pfn = jFA.ZYk().ex() + "_v3";
            }
        }
        final String str3 = Pfn;
        ofl.oJ(new so("saveUGenTemplate") { // from class: com.bytedance.sdk.openadsdk.core.kkU.oJ.ZYk.1
            @Override // java.lang.Runnable
            public void run() {
                ZYk.this.oJ(str2, tB, ZYk, ex, str3);
            }
        }, 10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk() {
        int ex = si.ex().ex();
        if (ex <= 0) {
            ex = 100;
        }
        List<com.bytedance.sdk.openadsdk.core.kkU.oJ.oJ> ZYk = tB.oJ().ZYk();
        if (ZYk == null || ZYk.isEmpty() || ex >= ZYk.size()) {
            if (ZYk == null) {
                return;
            }
            ZYk.size();
            return;
        }
        int size = (int) (ZYk.size() - (ex * 0.75f));
        if (size <= 0) {
            return;
        }
        TreeMap treeMap = new TreeMap();
        for (com.bytedance.sdk.openadsdk.core.kkU.oJ.oJ oJVar : ZYk) {
            treeMap.put(oJVar.ex(), oJVar);
        }
        HashSet hashSet = new HashSet();
        int i10 = 0;
        for (Map.Entry entry : treeMap.entrySet()) {
            if (entry != null && i10 < size) {
                i10++;
                com.bytedance.sdk.openadsdk.core.kkU.oJ.oJ oJVar2 = (com.bytedance.sdk.openadsdk.core.kkU.oJ.oJ) entry.getValue();
                if (oJVar2 != null) {
                    hashSet.add(oJVar2.oJ());
                }
            }
        }
        oJ(hashSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(String str, String str2, String str3, String str4, String str5) {
        if (oJ(str, str3) != null) {
            if (TextUtils.isEmpty(str4) || TextUtils.isEmpty(str3)) {
                return;
            }
            ZYk(str2, str3, str5, str4, str);
        } else if (TextUtils.isEmpty(str4)) {
            oJ(str2, str, str3, str5, (oJ) null);
        } else {
            ZYk(str2, str3, str5, str4, str);
        }
    }

    public void oJ(String str, String str2, String str3, String str4, String str5, final oJ oJVar) {
        if (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4)) {
            if (oJVar != null) {
                oJVar.oJ(1, "id  or md5 is empty", "net");
                return;
            }
            return;
        }
        String str6 = str + "_" + str3;
        com.bytedance.sdk.openadsdk.core.kkU.oJ.oJ oJ2 = oJ(str6, str4);
        if (oJ2 != null && !TextUtils.isEmpty(oJ2.Pfn())) {
            oJ(oJ2);
            if (oJVar != null) {
                try {
                    oJVar.oJ(new JSONObject(oJ2.Pfn()), "local");
                    return;
                } catch (JSONException unused) {
                    oJVar.oJ(2, "parse json exception data is " + oJ2.Pfn(), "local");
                    return;
                }
            }
            return;
        }
        oJ(str2, str6, str4, str5, new oJ() { // from class: com.bytedance.sdk.openadsdk.core.kkU.oJ.ZYk.2
            @Override // com.bytedance.sdk.openadsdk.core.kkU.oJ.ZYk.oJ
            public void oJ(JSONObject jSONObject, String str7) {
                oJ oJVar2 = oJVar;
                if (oJVar2 != null) {
                    oJVar2.oJ(jSONObject, str7);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.kkU.oJ.ZYk.oJ
            public void oJ(int i10, String str7, String str8) {
                oJ oJVar2 = oJVar;
                if (oJVar2 != null) {
                    oJVar2.oJ(i10, str7, str8);
                }
            }
        });
    }

    private void oJ(final String str, final String str2, final String str3, final String str4, final oJ oJVar) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
            if (oJVar != null) {
                oJVar.oJ(1, "template url or id  or md5 is empty", "net");
                return;
            }
            return;
        }
        com.bytedance.sdk.component.cFZ.ZYk.ZYk tB = com.bytedance.sdk.openadsdk.Ry.ZYk.ZYk().tB().tB();
        tB.ZYk(str);
        tB.oJ(7);
        tB.oJ("load_ug_t");
        tB.oJ(new com.bytedance.sdk.component.cFZ.oJ.oJ() { // from class: com.bytedance.sdk.openadsdk.core.kkU.oJ.ZYk.3
            @Override // com.bytedance.sdk.component.cFZ.oJ.oJ
            public void oJ(com.bytedance.sdk.component.cFZ.ZYk.tB tBVar, com.bytedance.sdk.component.cFZ.ZYk zYk) {
                if (zYk == null) {
                    return;
                }
                if (zYk.ba()) {
                    String ex = zYk.ex();
                    if (TextUtils.isEmpty(ex)) {
                        oJ oJVar2 = oJVar;
                        if (oJVar2 != null) {
                            oJVar2.oJ(3, "net data is null", "net");
                            return;
                        }
                        return;
                    }
                    tB.oJ().oJ(new com.bytedance.sdk.openadsdk.core.kkU.oJ.oJ().oJ(str2).ZYk(str3).tB(str).Pfn(str4).ex(ex).oJ(Long.valueOf(System.currentTimeMillis())));
                    ZYk.this.ZYk();
                    if (oJVar != null) {
                        try {
                            oJVar.oJ(new JSONObject(ex), "net");
                            return;
                        } catch (JSONException unused) {
                            oJVar.oJ(2, "parse json exception data is".concat(String.valueOf(ex)), "net");
                            return;
                        }
                    }
                    return;
                }
                oJ oJVar3 = oJVar;
                if (oJVar3 != null) {
                    oJVar3.oJ(3, "net code error code is " + zYk.oJ() + " message is " + zYk.ZYk(), "net");
                }
            }

            @Override // com.bytedance.sdk.component.cFZ.oJ.oJ
            public void oJ(com.bytedance.sdk.component.cFZ.ZYk.tB tBVar, IOException iOException) {
                oJ oJVar2 = oJVar;
                if (oJVar2 != null) {
                    oJVar2.oJ(3, "net error " + iOException.getMessage(), "net");
                }
            }
        });
    }

    public Set<com.bytedance.sdk.openadsdk.core.kkU.oJ.oJ> oJ(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return tB.oJ().oJ(str);
    }

    public String oJ(String str, String str2, String str3) {
        com.bytedance.sdk.openadsdk.core.kkU.oJ.oJ oJ2 = oJ(str + "_" + str2, str3);
        if (oJ2 == null) {
            return null;
        }
        oJ(oJ2);
        return oJ2.Pfn();
    }

    private com.bytedance.sdk.openadsdk.core.kkU.oJ.oJ oJ(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        return tB.oJ().oJ(str, str2);
    }

    private void oJ(final com.bytedance.sdk.openadsdk.core.kkU.oJ.oJ oJVar) {
        oJVar.oJ(Long.valueOf(System.currentTimeMillis()));
        ofl.oJ(new so("updateTmplTime") { // from class: com.bytedance.sdk.openadsdk.core.kkU.oJ.ZYk.4
            @Override // java.lang.Runnable
            public void run() {
                tB.oJ().oJ(oJVar);
            }
        }, 10);
    }

    public void oJ(Set<String> set) {
        try {
            tB.oJ().oJ(set);
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }
}
