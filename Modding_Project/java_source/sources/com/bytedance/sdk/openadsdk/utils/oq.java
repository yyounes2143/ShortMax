package com.bytedance.sdk.openadsdk.utils;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.HashMap;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oq {
    public static int ZYk = Integer.MIN_VALUE;
    public static int oJ = Integer.MIN_VALUE;
    public static final String[] tB = {"api16-access-ttp.tiktokpangle.us", "api16-access-ttp-b.tiktokpangle.us", "api16-access-ttp.tiktokpangle-b.us", "api16-access-ttp-b.tiktokpangle-b.us"};

    public static synchronized void ZYk() {
        synchronized (oq.class) {
            if (ZYk == 0) {
                return;
            }
            ZYk = 0;
            com.bytedance.sdk.openadsdk.core.jFA.ZYk(0);
        }
    }

    public static String oJ() {
        if (oJ == Integer.MIN_VALUE) {
            oJ = com.bytedance.sdk.openadsdk.core.jFA.Pfn();
        }
        if (oJ < 0) {
            oJ = 0;
        }
        String[] strArr = tB;
        try {
            return strArr[oJ % strArr.length];
        } catch (Throwable unused) {
            return strArr[0];
        }
    }

    public static synchronized void oJ(String str) {
        synchronized (oq.class) {
            if (str == null) {
                return;
            }
            int i10 = 0;
            while (true) {
                try {
                    String[] strArr = tB;
                    if (i10 >= strArr.length) {
                        break;
                    } else if (str.contains(strArr[i10])) {
                        int i11 = oJ + 1;
                        oJ = i11;
                        com.bytedance.sdk.openadsdk.core.jFA.oJ(i11);
                        break;
                    } else {
                        i10++;
                    }
                }
            }
            if (!str.contains("/api/ad/union/sdk/settings/")) {
                if (str.contains("/api/ad/union/sdk/strategies/adn")) {
                }
            }
            if (ZYk == Integer.MIN_VALUE) {
                ZYk = com.bytedance.sdk.openadsdk.core.jFA.ba();
            }
            int i12 = ZYk + 1;
            ZYk = i12;
            if (i12 >= 3) {
                final String Ln = com.bytedance.sdk.openadsdk.core.settings.PiB.ib().Ln();
                final int i13 = ZYk;
                com.bytedance.sdk.openadsdk.core.settings.PiB.ib().PdF();
                ZYk = 0;
                com.bytedance.sdk.openadsdk.awB.tB.oJ();
                com.bytedance.sdk.openadsdk.awB.tB.oJ("clear_domain", false, new com.bytedance.sdk.openadsdk.awB.ZYk() { // from class: com.bytedance.sdk.openadsdk.utils.oq.1
                    @Override // com.bytedance.sdk.openadsdk.awB.ZYk
                    public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("domain", Ln);
                            jSONObject.put("times", i13);
                        } catch (Exception unused) {
                        }
                        return com.bytedance.sdk.openadsdk.awB.oJ.ex.ZYk().oJ("clear_domain").ZYk(jSONObject.toString());
                    }
                });
            }
            com.bytedance.sdk.openadsdk.core.jFA.ZYk(ZYk);
        }
    }

    public static void oJ(com.bytedance.sdk.component.jFA.ba baVar, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("Referer", TTAdConstant.REQUEST_HEAD_REFERER);
        baVar.oJ(str, hashMap);
    }
}
