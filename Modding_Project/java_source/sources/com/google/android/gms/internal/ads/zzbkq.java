package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import java.util.ArrayList;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@VisibleForTesting
/* loaded from: classes4.dex */
public final class zzbkq {
    @Nullable
    public static final Intent zza(Uri uri, Context context, zzavu zzavuVar, View view, zzfda zzfdaVar) {
        if (uri == null) {
            return null;
        }
        Intent intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL);
        intent.addFlags(268435456);
        intent.setData(uri);
        intent.setAction(CommonConstant.ACTION.HWID_SCHEME_URL);
        return intent;
    }

    public static final Intent zzb(Intent intent, ResolveInfo resolveInfo, Context context, zzavu zzavuVar, View view, zzfda zzfdaVar) {
        Intent intent2 = new Intent(intent);
        ActivityInfo activityInfo = resolveInfo.activityInfo;
        intent2.setClassName(activityInfo.packageName, activityInfo.name);
        return intent2;
    }

    @VisibleForTesting
    public static final ResolveInfo zzc(Intent intent, Context context, zzavu zzavuVar, View view, zzfda zzfdaVar) {
        return zzd(intent, new ArrayList(), context, zzavuVar, view, zzfdaVar);
    }

    @Nullable
    @VisibleForTesting
    public static final ResolveInfo zzd(Intent intent, ArrayList arrayList, Context context, zzavu zzavuVar, View view, zzfda zzfdaVar) {
        PackageManager packageManager;
        ResolveInfo resolveInfo = null;
        try {
            packageManager = context.getPackageManager();
        } catch (Throwable th2) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(th2, "OpenSystemBrowserHandler.getDefaultBrowserResolverForIntent");
        }
        if (packageManager == null) {
            return null;
        }
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
        ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 65536);
        if (queryIntentActivities != null && resolveActivity != null) {
            int i10 = 0;
            while (true) {
                if (i10 >= queryIntentActivities.size()) {
                    break;
                } else if (resolveActivity.activityInfo.name.equals(queryIntentActivities.get(i10).activityInfo.name)) {
                    resolveInfo = resolveActivity;
                    break;
                } else {
                    i10++;
                }
            }
        }
        arrayList.addAll(queryIntentActivities);
        return resolveInfo;
    }
}
