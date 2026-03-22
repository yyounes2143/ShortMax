package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.bytedance.vodsetting.Module;
import java.util.ArrayList;
import java.util.Locale;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public final class AFb1tSDK {
    public final String[] AFAdRevenueData;

    public AFb1tSDK(String... strArr) {
        if (strArr != null && strArr.length != 0) {
            Pattern compile = Pattern.compile("[\\w]{1,45}");
            ArrayList arrayList = new ArrayList();
            for (String str : strArr) {
                if (str != null && compile.matcher(str).matches()) {
                    arrayList.add(str.toLowerCase(Locale.getDefault()));
                } else {
                    AFLogger.afWarnLog("Invalid partner name: ".concat(String.valueOf(str)));
                }
            }
            if (arrayList.contains(Module.ALL)) {
                this.AFAdRevenueData = new String[]{Module.ALL};
                return;
            } else if (!arrayList.isEmpty()) {
                this.AFAdRevenueData = (String[]) arrayList.toArray(new String[0]);
                return;
            } else {
                this.AFAdRevenueData = null;
                return;
            }
        }
        this.AFAdRevenueData = null;
    }
}
