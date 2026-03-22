package com.bytedance.adsdk.oJ;

import android.text.TextUtils;
/* loaded from: classes3.dex */
public class dLZ {
    public static Object oJ(com.bytedance.adsdk.oJ.ZYk.oJ.oJ oJVar) {
        so oJ;
        if (oJVar == null || (oJ = oJ(oJVar.oJ())) == null) {
            return null;
        }
        return oJ.oJ(null, oJVar.ZYk());
    }

    public static so oJ(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -652088201:
                if (str.equals("modArray")) {
                    c10 = 0;
                    break;
                }
                break;
            case 3143097:
                if (str.equals("find")) {
                    c10 = 1;
                    break;
                }
                break;
            case 94642797:
                if (str.equals("chunk")) {
                    c10 = 2;
                    break;
                }
                break;
            case 96955127:
                if (str.equals("exist")) {
                    c10 = 3;
                    break;
                }
                break;
            case 515198113:
                if (str.equals("decodeUrl")) {
                    c10 = 4;
                    break;
                }
                break;
            case 1052832078:
                if (str.equals("translate")) {
                    c10 = 5;
                    break;
                }
                break;
            case 1508134777:
                if (str.equals("encodeUrl")) {
                    c10 = 6;
                    break;
                }
                break;
            case 2056988195:
                if (str.equals("isDigit")) {
                    c10 = 7;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return new jFA();
            case 1:
                return new ba();
            case 2:
                return new oJ();
            case 3:
                return new Pfn();
            case 4:
                return new ZYk();
            case 5:
                return new kkU();
            case 6:
                return new ex();
            case 7:
                return new cFZ();
            default:
                return null;
        }
    }
}
