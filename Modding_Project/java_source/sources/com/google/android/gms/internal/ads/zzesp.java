package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.InstallSourceInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.common.wrappers.Wrappers;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzesp implements zzeuc {
    private final ApplicationInfo zza;
    @Nullable
    private final PackageInfo zzb;
    private final Context zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzesp(ApplicationInfo applicationInfo, @Nullable PackageInfo packageInfo, Context context) {
        this.zza = applicationInfo;
        this.zzb = packageInfo;
        this.zzc = context;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final int zza() {
        return 29;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final com.google.common.util.concurrent.e zzb() {
        Integer valueOf;
        String str;
        String str2;
        String str3;
        String str4;
        PackageManager.NameNotFoundException e10;
        String str5;
        InstallSourceInfo installSourceInfo;
        String str6 = this.zza.packageName;
        PackageInfo packageInfo = this.zzb;
        if (packageInfo == null) {
            valueOf = null;
        } else {
            valueOf = Integer.valueOf(packageInfo.versionCode);
        }
        if (packageInfo == null) {
            str = null;
        } else {
            str = packageInfo.versionName;
        }
        try {
            Context context = this.zzc;
            zzfrw zzfrwVar = com.google.android.gms.ads.internal.util.zzs.zza;
            str2 = String.valueOf(Wrappers.packageManager(context).getApplicationLabel(str6));
        } catch (PackageManager.NameNotFoundException unused) {
            str2 = null;
        }
        if (Build.VERSION.SDK_INT >= 30) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zznh)).booleanValue()) {
                try {
                    installSourceInfo = this.zzc.getPackageManager().getInstallSourceInfo(str6);
                } catch (PackageManager.NameNotFoundException e11) {
                    str3 = null;
                    e10 = e11;
                    str5 = null;
                }
                if (installSourceInfo != null) {
                    str3 = installSourceInfo.getInstallingPackageName();
                    try {
                        if (TextUtils.isEmpty(str3)) {
                            com.google.android.gms.ads.internal.util.zze.zza("No installing package name found");
                            str3 = null;
                        }
                        str5 = installSourceInfo.getInitiatingPackageName();
                    } catch (PackageManager.NameNotFoundException e12) {
                        e10 = e12;
                        str5 = null;
                    }
                    try {
                    } catch (PackageManager.NameNotFoundException e13) {
                        e10 = e13;
                        com.google.android.gms.ads.internal.zzv.zzp().zzw(e10, "PackageInfoSignalSource.getInstallSourceInfo");
                        str4 = str5;
                        return zzgdn.zzh(new zzesq(str6, valueOf, str, str2, str3, str4));
                    }
                    if (TextUtils.isEmpty(str5)) {
                        com.google.android.gms.ads.internal.util.zze.zza("No initiating package name found");
                        str4 = null;
                        return zzgdn.zzh(new zzesq(str6, valueOf, str, str2, str3, str4));
                    }
                    str4 = str5;
                    return zzgdn.zzh(new zzesq(str6, valueOf, str, str2, str3, str4));
                }
            }
        }
        str3 = null;
        str4 = null;
        return zzgdn.zzh(new zzesq(str6, valueOf, str, str2, str3, str4));
    }
}
