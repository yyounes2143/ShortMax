package com.bytedance.sdk.openadsdk.utils;

import android.content.res.Configuration;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.autofill.HintConstants;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes3.dex */
public class LpP {
    private static String ZYk = null;
    private static volatile boolean ex = true;
    private static String oJ;
    private static String tB;

    /* loaded from: classes3.dex */
    public static class oJ extends com.bytedance.sdk.component.so.so {
        public static AtomicBoolean oJ = new AtomicBoolean(false);
        private static final AtomicLong ZYk = new AtomicLong(0);

        public oJ(String str, int i10) {
            super(str, i10);
        }

        public static void oJ() {
            if (!oJ.get()) {
                long currentTimeMillis = System.currentTimeMillis();
                AtomicLong atomicLong = ZYk;
                if (currentTimeMillis - atomicLong.get() < TTAdConstant.AD_MAX_EVENT_TIME) {
                    return;
                }
                atomicLong.set(currentTimeMillis);
                ofl.ZYk((com.bytedance.sdk.component.so.so) new oJ("UpdateSimStatusTask", 5));
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            oJ.set(true);
            LpP.Pfn();
            oJ.set(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void Pfn() {
        String str;
        String str2;
        String str3;
        if (com.bytedance.sdk.openadsdk.core.si.oJ() == null) {
            return;
        }
        ex = true;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) com.bytedance.sdk.openadsdk.core.si.oJ().getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
            int simState = telephonyManager.getSimState();
            if (simState != 0) {
                if (simState == 1) {
                    ex = false;
                }
            } else {
                ex = false;
            }
            String str4 = null;
            try {
                str = telephonyManager.getSimOperatorName();
            } catch (Throwable unused) {
                str = null;
            }
            try {
                str2 = telephonyManager.getNetworkOperator();
            } catch (Throwable unused2) {
                str2 = null;
            }
            if (str2 == null || str2.length() < 5) {
                try {
                    str2 = telephonyManager.getSimOperator();
                } catch (Throwable unused3) {
                }
            }
            if (!TextUtils.isEmpty(str2) && str2.length() > 4) {
                String substring = str2.substring(0, 3);
                str3 = str2.substring(3);
                str4 = substring;
            } else {
                str3 = null;
            }
            if (!TextUtils.isEmpty(str)) {
                oJ = str;
            }
            if (!TextUtils.isEmpty(str4)) {
                ZYk = str4;
            }
            if (!TextUtils.isEmpty(str3)) {
                tB = str3;
            }
        } catch (Throwable unused4) {
        }
    }

    public static String ZYk() {
        String str;
        String str2;
        try {
            oJ.oJ();
            if (!ex) {
                StringBuilder sb2 = new StringBuilder("getMCC");
                if (ex) {
                    str2 = "Have SIM card";
                } else {
                    str2 = "No SIM card, MCC returns null";
                }
                sb2.append(str2);
                com.bytedance.sdk.component.utils.QSm.tB("MCC", sb2.toString());
                return null;
            }
            Configuration configuration = com.bytedance.sdk.openadsdk.core.si.oJ().getResources().getConfiguration();
            int i10 = configuration.mcc;
            if (i10 != 0) {
                str = String.valueOf(i10);
            } else {
                str = ZYk;
            }
            com.bytedance.sdk.component.utils.QSm.tB("MCC", "config=" + configuration.mcc + ",sMCC=" + ZYk);
            return str;
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.QSm.tB("SimUtils", th2.getMessage());
            return null;
        }
    }

    public static String oJ() {
        oJ.oJ();
        return oJ;
    }

    public static String tB() {
        oJ.oJ();
        return tB;
    }
}
