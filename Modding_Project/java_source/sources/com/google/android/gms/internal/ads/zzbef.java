package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsServiceConnection;
import androidx.browser.customtabs.CustomTabsSession;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbef {
    @Nullable
    private CustomTabsSession zza;
    @Nullable
    private CustomTabsClient zzb;
    @Nullable
    private CustomTabsServiceConnection zzc;
    @Nullable
    private zzbee zzd;

    public static boolean zzg(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            Intent intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, Uri.parse("http://www.example.com"));
            ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
            List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
            if (queryIntentActivities != null && resolveActivity != null) {
                for (int i10 = 0; i10 < queryIntentActivities.size(); i10++) {
                    if (resolveActivity.activityInfo.name.equals(queryIntentActivities.get(i10).activityInfo.name)) {
                        return resolveActivity.activityInfo.packageName.equals(zzhhh.zza(context));
                    }
                }
            }
        }
        return false;
    }

    @Nullable
    public final CustomTabsSession zza() {
        CustomTabsClient customTabsClient = this.zzb;
        if (customTabsClient == null) {
            this.zza = null;
        } else if (this.zza == null) {
            this.zza = customTabsClient.newSession(null);
        }
        return this.zza;
    }

    public final void zzb(Activity activity) {
        String zza;
        if (this.zzb == null && (zza = zzhhh.zza(activity)) != null) {
            zzhhi zzhhiVar = new zzhhi(this);
            this.zzc = zzhhiVar;
            CustomTabsClient.bindCustomTabsService(activity, zza, zzhhiVar);
        }
    }

    public final void zzc(CustomTabsClient customTabsClient) {
        this.zzb = customTabsClient;
        customTabsClient.warmup(0L);
        zzbee zzbeeVar = this.zzd;
        if (zzbeeVar != null) {
            zzbeeVar.zza();
        }
    }

    public final void zzd() {
        this.zzb = null;
        this.zza = null;
    }

    public final void zze(zzbee zzbeeVar) {
        this.zzd = zzbeeVar;
    }

    public final void zzf(Activity activity) {
        CustomTabsServiceConnection customTabsServiceConnection = this.zzc;
        if (customTabsServiceConnection == null) {
            return;
        }
        activity.unbindService(customTabsServiceConnection);
        this.zzb = null;
        this.zza = null;
        this.zzc = null;
    }
}
