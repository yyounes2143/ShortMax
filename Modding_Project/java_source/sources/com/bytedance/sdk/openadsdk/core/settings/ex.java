package com.bytedance.sdk.openadsdk.core.settings;

import android.text.TextUtils;
import androidx.annotation.Keep;
import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.utils.HyG;
import com.google.android.gms.appset.AppSet;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.OnSuccessListener;
/* loaded from: classes3.dex */
public class ex {
    private static volatile String ZYk = "";
    private static volatile int ex = 0;
    private static volatile String oJ = "";
    private static String tB;

    public static String ex() {
        if (TextUtils.isEmpty(tB)) {
            tB = si.oJ().getPackageManager().getInstallerPackageName(HyG.ba());
        }
        if (tB == null) {
            tB = "";
        }
        return tB;
    }

    public static String tB() {
        if (ex != 0) {
            return ZYk;
        }
        oJ();
        return ZYk;
    }

    public static String ZYk() {
        if (ex != 0) {
            return oJ;
        }
        oJ();
        return oJ;
    }

    public static void oJ() {
        try {
            AppSet.getClient(si.oJ()).getAppSetIdInfo().addOnSuccessListener(new OnSuccessListener<AppSetIdInfo>() { // from class: com.bytedance.sdk.openadsdk.core.settings.AppSetIdAndScope$1
                @Override // com.google.android.gms.tasks.OnSuccessListener
                @Keep
                public void onSuccess(AppSetIdInfo appSetIdInfo) {
                    String unused = ex.oJ = Integer.toString(appSetIdInfo.getScope());
                    String unused2 = ex.ZYk = appSetIdInfo.getId();
                    int unused3 = ex.ex = 1;
                }
            });
        } catch (Throwable unused) {
            ex = 2;
        }
    }
}
