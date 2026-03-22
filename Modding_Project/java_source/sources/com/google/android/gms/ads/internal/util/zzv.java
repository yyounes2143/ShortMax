package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.telephony.TelephonyManager;
import androidx.annotation.Nullable;
import androidx.browser.trusted.f;
import b7.d0;
import com.google.android.gms.internal.ads.zzbcj;
import com.google.android.gms.internal.ads.zzbde;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@TargetApi(26)
/* loaded from: classes4.dex */
public class zzv extends zzu {
    @Override // com.google.android.gms.ads.internal.util.zzaa
    @Nullable
    public final Intent zzf(Activity activity) {
        Intent intent = new Intent();
        intent.setAction("android.settings.APP_NOTIFICATION_SETTINGS");
        intent.putExtra("android.provider.extra.APP_PACKAGE", activity.getPackageName());
        return intent;
    }

    @Override // com.google.android.gms.ads.internal.util.zzaa
    public final zzbcj.zzq zzg(Context context, TelephonyManager telephonyManager) {
        boolean isDataEnabled;
        com.google.android.gms.ads.internal.zzv.zzr();
        if (zzs.zzB(context, "android.permission.ACCESS_NETWORK_STATE")) {
            isDataEnabled = telephonyManager.isDataEnabled();
            if (isDataEnabled) {
                return zzbcj.zzq.ENUM_TRUE;
            }
            return zzbcj.zzq.ENUM_FALSE;
        }
        return zzbcj.zzq.ENUM_FALSE;
    }

    @Override // com.google.android.gms.ads.internal.util.zzaa
    public final void zzh(Context context, String str, String str2) {
        d0.a();
        NotificationChannel a10 = f.a("offline_notification_channel", "AdMob Offline Notifications", ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zziS)).intValue());
        a10.setShowBadge(false);
        ((NotificationManager) context.getSystemService(NotificationManager.class)).createNotificationChannel(a10);
    }

    @Override // com.google.android.gms.ads.internal.util.zzaa
    public final boolean zzi(Context context, String str) {
        NotificationChannel notificationChannel;
        int importance;
        notificationChannel = ((NotificationManager) context.getSystemService(NotificationManager.class)).getNotificationChannel("offline_notification_channel");
        if (notificationChannel != null) {
            importance = notificationChannel.getImportance();
            if (importance != 0) {
                return false;
            }
            return true;
        }
        return false;
    }
}
