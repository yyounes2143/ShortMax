package com.bytedance.sdk.openadsdk.utils;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class Ry {
    private static List<String> ZYk() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("android.permission.INTERNET");
        arrayList.add("android.permission.ACCESS_NETWORK_STATE");
        arrayList.add("android.permission.WAKE_LOCK");
        return arrayList;
    }

    public static void oJ() {
        Context oJ = com.bytedance.sdk.openadsdk.core.si.oJ();
        if (oJ == null || !com.bytedance.sdk.component.utils.awB.ex()) {
            return;
        }
        String packageName = oJ.getPackageName();
        int i10 = oJ.getApplicationInfo().targetSdkVersion;
        try {
            String[] strArr = oJ.getPackageManager().getPackageInfo(packageName, 4096).requestedPermissions;
            if (strArr != null && strArr.length > 0) {
                List<String> ZYk = ZYk();
                for (String str : strArr) {
                    if (str != null) {
                        ZYk.remove(str);
                    }
                }
                if (!ZYk.isEmpty()) {
                    for (String str2 : ZYk) {
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }
}
