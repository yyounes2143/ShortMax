package com.google.android.gms.measurement.internal;

import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.wrappers.PackageManagerWrapper;
import com.google.android.gms.common.wrappers.Wrappers;
/* compiled from: com.google.android.gms:play-services-measurement@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzhk {
    final zzic zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhk(zzpg zzpgVar) {
        this.zza = zzpgVar.zzag();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final boolean zza() {
        try {
            zzic zzicVar = this.zza;
            PackageManagerWrapper packageManager = Wrappers.packageManager(zzicVar.zzaY());
            if (packageManager == null) {
                zzicVar.zzaV().zzk().zza("Failed to get PackageManager for Install Referrer Play Store compatibility check");
                return false;
            } else if (packageManager.getPackageInfo("com.android.vending", 128).versionCode < 80837300) {
                return false;
            } else {
                return true;
            }
        } catch (Exception e10) {
            this.zza.zzaV().zzk().zzb("Failed to retrieve Play Store version for Install Referrer", e10);
            return false;
        }
    }
}
