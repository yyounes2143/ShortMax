package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ArrayMap;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdgo implements zzcxm, com.google.android.gms.ads.internal.overlay.zzr, zzcws {
    @Nullable
    @VisibleForTesting
    zzedh zza;
    private final Context zzb;
    @Nullable
    private final zzcfg zzc;
    private final zzfca zzd;
    private final VersionInfoParcel zze;
    private final zzedf zzf;

    public zzdgo(Context context, @Nullable zzcfg zzcfgVar, zzfca zzfcaVar, VersionInfoParcel versionInfoParcel, zzedf zzedfVar) {
        this.zzb = context;
        this.zzc = zzcfgVar;
        this.zzd = zzfcaVar;
        this.zze = versionInfoParcel;
        this.zzf = zzedfVar;
    }

    private final boolean zzg() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfC)).booleanValue() && this.zzf.zzd()) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdt() {
        zzcfg zzcfgVar;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfF)).booleanValue() && (zzcfgVar = this.zzc) != null) {
            if (this.zza != null || zzg()) {
                if (this.zza != null) {
                    zzcfgVar.zzd("onSdkImpression", new ArrayMap());
                } else {
                    this.zzf.zzb();
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdw(int i10) {
        this.zza = null;
    }

    @Override // com.google.android.gms.internal.ads.zzcws
    public final void zzt() {
        zzcfg zzcfgVar;
        if (zzg()) {
            this.zzf.zzb();
        } else if (this.zza != null && (zzcfgVar = this.zzc) != null) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfF)).booleanValue()) {
                zzcfgVar.zzd("onSdkImpression", new ArrayMap());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcxm
    public final void zzu() {
        zzcfg zzcfgVar;
        zzede zzedeVar;
        zzede zzedeVar2;
        zzedd zzeddVar;
        zzfca zzfcaVar = this.zzd;
        if (zzfcaVar.zzT && (zzcfgVar = this.zzc) != null) {
            if (com.google.android.gms.ads.internal.zzv.zzC().zzl(this.zzb)) {
                if (zzg()) {
                    this.zzf.zzc();
                    return;
                }
                VersionInfoParcel versionInfoParcel = this.zze;
                String str = versionInfoParcel.buddyApkVersion + "." + versionInfoParcel.clientJarVersion;
                zzfcz zzfczVar = zzfcaVar.zzV;
                String zza = zzfczVar.zza();
                if (zzfczVar.zzc() == 1) {
                    zzeddVar = zzedd.VIDEO;
                    zzedeVar2 = zzede.DEFINED_BY_JAVASCRIPT;
                } else {
                    if (zzfcaVar.zzY == 2) {
                        zzedeVar = zzede.UNSPECIFIED;
                    } else {
                        zzedeVar = zzede.BEGIN_TO_RENDER;
                    }
                    zzedeVar2 = zzedeVar;
                    zzeddVar = zzedd.HTML_DISPLAY;
                }
                zzedh zza2 = com.google.android.gms.ads.internal.zzv.zzC().zza(str, zzcfgVar.zzG(), "", "javascript", zza, zzedeVar2, zzeddVar, zzfcaVar.zzal);
                this.zza = zza2;
                if (zza2 != null) {
                    zzfll zza3 = zza2.zza();
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfB)).booleanValue()) {
                        com.google.android.gms.ads.internal.zzv.zzC().zzj(zza3, zzcfgVar.zzG());
                        for (View view : zzcfgVar.zzV()) {
                            com.google.android.gms.ads.internal.zzv.zzC().zzg(zza3, view);
                        }
                    } else {
                        com.google.android.gms.ads.internal.zzv.zzC().zzj(zza3, zzcfgVar.zzF());
                    }
                    zzcfgVar.zzat(this.zza);
                    com.google.android.gms.ads.internal.zzv.zzC().zzk(zza3);
                    zzcfgVar.zzd("onSdkLoaded", new ArrayMap());
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzd() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdk() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzds() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdv() {
    }
}
