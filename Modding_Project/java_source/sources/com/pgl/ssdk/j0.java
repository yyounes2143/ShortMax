package com.pgl.ssdk;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.webkit.WebView;
/* loaded from: classes6.dex */
public class j0 {
    public static String a() {
        PackageInfo currentWebViewPackage;
        ApplicationInfo applicationInfo;
        if (Build.VERSION.SDK_INT >= 26) {
            currentWebViewPackage = WebView.getCurrentWebViewPackage();
            if (currentWebViewPackage != null && (applicationInfo = currentWebViewPackage.applicationInfo) != null) {
                return applicationInfo.publicSourceDir;
            }
            return "!error!";
        }
        return "!version_error!";
    }
}
