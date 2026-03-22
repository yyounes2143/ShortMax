package com.pgl.ssdk;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.Context;
import android.view.accessibility.AccessibilityManager;
import java.util.List;
/* loaded from: classes6.dex */
public class u {

    /* renamed from: a  reason: collision with root package name */
    private static AccessibilityManager f36823a;

    private static AccessibilityManager a(Context context) {
        if (f36823a == null) {
            f36823a = (AccessibilityManager) context.getSystemService("accessibility");
        }
        return f36823a;
    }

    public static String b(Context context) {
        AccessibilityManager a10;
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList;
        if (context == null || (a10 = a(context)) == null || (enabledAccessibilityServiceList = a10.getEnabledAccessibilityServiceList(-1)) == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < enabledAccessibilityServiceList.size(); i10++) {
            AccessibilityServiceInfo accessibilityServiceInfo = enabledAccessibilityServiceList.get(i10);
            if (accessibilityServiceInfo != null) {
                sb2.append(String.format("%s#%s", accessibilityServiceInfo.getResolveInfo().serviceInfo.packageName, accessibilityServiceInfo.getResolveInfo().serviceInfo.name));
                if (i10 != enabledAccessibilityServiceList.size() - 1) {
                    sb2.append(",");
                }
            }
        }
        return sb2.toString();
    }
}
