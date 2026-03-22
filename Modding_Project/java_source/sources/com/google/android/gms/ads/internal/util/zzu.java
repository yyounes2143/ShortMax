package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.res.Configuration;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.internal.ads.zzbde;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@TargetApi(24)
/* loaded from: classes4.dex */
public class zzu extends zzt {
    @VisibleForTesting
    static final boolean zze(int i10, int i11, int i12) {
        if (Math.abs(i10 - i11) <= i12) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.ads.internal.util.zzaa
    public final boolean zzd(Activity activity, Configuration configuration) {
        int i10;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfo)).booleanValue()) {
            return false;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfq)).booleanValue()) {
            return activity.isInMultiWindowMode();
        }
        com.google.android.gms.ads.internal.client.zzbb.zzb();
        int zzC = com.google.android.gms.ads.internal.util.client.zzf.zzC(activity, configuration.screenHeightDp);
        int zzC2 = com.google.android.gms.ads.internal.util.client.zzf.zzC(activity, configuration.screenWidthDp);
        com.google.android.gms.ads.internal.zzv.zzr();
        DisplayMetrics zzu = zzs.zzu((WindowManager) activity.getApplicationContext().getSystemService("window"));
        int i11 = zzu.heightPixels;
        int i12 = zzu.widthPixels;
        int identifier = activity.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            i10 = activity.getResources().getDimensionPixelSize(identifier);
        } else {
            i10 = 0;
        }
        int round = ((int) Math.round(activity.getResources().getDisplayMetrics().density + 0.5d)) * ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfm)).intValue();
        if (zze(i11, zzC + i10, round) && zze(i12, zzC2, round)) {
            return false;
        }
        return true;
    }
}
