package com.inmobi.media;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import androidx.browser.customtabs.CustomTabsService;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.x3  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC3235x3 {

    /* renamed from: a  reason: collision with root package name */
    public static String f25425a;

    public static final String a(Context context) {
        if (L3.f23796a.F()) {
            if (context != null && f25425a == null) {
                try {
                    PackageManager packageManager = context.getPackageManager();
                    Intent intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, Uri.parse("http://www.google.com"));
                    ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
                    String str = resolveActivity != null ? resolveActivity.activityInfo.packageName : null;
                    List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 0);
                    Intrinsics.checkNotNullExpressionValue(queryIntentActivities, "queryIntentActivities(...)");
                    ArrayList arrayList = new ArrayList();
                    for (ResolveInfo resolveInfo : queryIntentActivities) {
                        Intent intent2 = new Intent();
                        intent2.setAction(CustomTabsService.ACTION_CUSTOM_TABS_CONNECTION);
                        intent2.setPackage(resolveInfo.activityInfo.packageName);
                        if (packageManager.resolveService(intent2, 0) != null) {
                            String packageName = resolveInfo.activityInfo.packageName;
                            Intrinsics.checkNotNullExpressionValue(packageName, "packageName");
                            arrayList.add(packageName);
                        }
                    }
                    if (arrayList.isEmpty()) {
                        f25425a = null;
                    } else if (arrayList.size() == 1) {
                        f25425a = (String) arrayList.get(0);
                    } else if (!TextUtils.isEmpty(str) && !a(context, intent) && CollectionsKt.g0(arrayList, str)) {
                        f25425a = str;
                    } else if (arrayList.contains("com.android.chrome")) {
                        f25425a = "com.android.chrome";
                    } else if (arrayList.contains("com.chrome.beta")) {
                        f25425a = "com.chrome.beta";
                    } else if (arrayList.contains("com.chrome.dev")) {
                        f25425a = "com.chrome.dev";
                    } else if (arrayList.contains("com.google.android.apps.chrome")) {
                        f25425a = "com.google.android.apps.chrome";
                    }
                } catch (Exception unused) {
                }
                return f25425a;
            }
            return f25425a;
        }
        return null;
    }

    public static boolean a(Context context, Intent intent) {
        try {
            List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 64);
            Intrinsics.checkNotNullExpressionValue(queryIntentActivities, "queryIntentActivities(...)");
            for (ResolveInfo resolveInfo : queryIntentActivities) {
                IntentFilter intentFilter = resolveInfo.filter;
                if (intentFilter != null) {
                    Intrinsics.checkNotNull(intentFilter);
                    if (intentFilter.countDataAuthorities() != 0 && intentFilter.countDataPaths() != 0 && resolveInfo.activityInfo != null) {
                        return true;
                    }
                }
            }
            return false;
        } catch (RuntimeException unused) {
            Log.e("x3", "Runtime exception while getting specialized handlers");
            return false;
        }
    }
}
