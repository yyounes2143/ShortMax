package com.amazonaws.cognito.clientcontext.datacollection;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class ApplicationDataCollector extends DataCollector {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4966a = "ApplicationDataCollector";

    private String b(Context context) {
        return (String) context.getPackageManager().getApplicationLabel(context.getApplicationInfo());
    }

    private String c(Context context) {
        return String.valueOf(context.getApplicationInfo().targetSdkVersion);
    }

    private String d(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException unused) {
            Log.i(f4966a, "Unable to get app version. Provided package name could not be found.");
            return "";
        }
    }

    @Override // com.amazonaws.cognito.clientcontext.datacollection.DataCollector
    public Map<String, String> a(Context context) {
        HashMap hashMap = new HashMap();
        hashMap.put("ApplicationName", b(context));
        hashMap.put("ApplicationTargetSdk", c(context));
        hashMap.put("ApplicationVersion", d(context));
        return hashMap;
    }
}
