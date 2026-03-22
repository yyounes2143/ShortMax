package com.google.android.gms.internal.ads;

import android.os.Build;
import android.os.ext.SdkExtensions;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.ss.ttvideoengine.TTVideoEngineInterface;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzeob implements zzeub {
    private final Integer zza;

    private zzeob(Integer num) {
        this.zza = num;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ zzeob zzc(VersionInfoParcel versionInfoParcel) {
        int i10;
        int extensionVersion;
        int extensionVersion2;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzkx)).booleanValue()) {
            com.google.android.gms.ads.internal.zzv.zzr();
            int i11 = 0;
            try {
                i10 = Build.VERSION.SDK_INT;
            } catch (Exception e10) {
                com.google.android.gms.ads.internal.zzv.zzp().zzw(e10, "AdUtil.getAdServicesExtensionVersion");
            }
            if (i10 >= 30) {
                extensionVersion2 = SdkExtensions.getExtensionVersion(30);
                if (extensionVersion2 > 3) {
                    i11 = SdkExtensions.getExtensionVersion(TTVideoEngineInterface.PLAYER_TIME_BASE);
                    return new zzeob(Integer.valueOf(i11));
                }
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzkA)).booleanValue()) {
                if (versionInfoParcel.clientJarVersion >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzkz)).intValue() && i10 >= 31) {
                    extensionVersion = SdkExtensions.getExtensionVersion(31);
                    if (extensionVersion >= 9) {
                        i11 = SdkExtensions.getExtensionVersion(31);
                    }
                }
            }
            return new zzeob(Integer.valueOf(i11));
        }
        return new zzeob(null);
    }

    @Override // com.google.android.gms.internal.ads.zzeub
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        Integer num = this.zza;
        zzcva zzcvaVar = (zzcva) obj;
        if (num != null) {
            zzcvaVar.zza.putInt("aos", num.intValue());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeub
    public final /* synthetic */ void zza(Object obj) {
    }
}
