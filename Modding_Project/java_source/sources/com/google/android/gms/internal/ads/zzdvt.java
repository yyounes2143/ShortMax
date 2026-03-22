package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdvt implements com.google.android.gms.ads.internal.overlay.zzr, zzcgw {
    private final Context zza;
    private final VersionInfoParcel zzb;
    private zzdvi zzc;
    private zzcfg zzd;
    private boolean zze;
    private boolean zzf;
    private long zzg;
    @Nullable
    private com.google.android.gms.ads.internal.client.zzdn zzh;
    private boolean zzi;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdvt(Context context, VersionInfoParcel versionInfoParcel) {
        this.zza = context;
        this.zzb = versionInfoParcel;
    }

    private final synchronized boolean zzl(com.google.android.gms.ads.internal.client.zzdn zzdnVar) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzjp)).booleanValue()) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Ad inspector had an internal error.");
            try {
                zzdnVar.zze(zzfdx.zzd(16, null, null));
            } catch (RemoteException unused) {
            }
            return false;
        } else if (this.zzc == null) {
            int i11 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Ad inspector had an internal error.");
            try {
                com.google.android.gms.ads.internal.zzv.zzp().zzw(new NullPointerException("InspectorManager null"), "InspectorUi.shouldOpenUi");
                zzdnVar.zze(zzfdx.zzd(16, null, null));
            } catch (RemoteException unused2) {
            }
            return false;
        } else {
            if (!this.zze && !this.zzf) {
                if (com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis() >= this.zzg + ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzjs)).intValue()) {
                    return true;
                }
            }
            int i12 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Ad inspector cannot be opened because it is already open.");
            try {
                zzdnVar.zze(zzfdx.zzd(19, null, null));
            } catch (RemoteException unused3) {
            }
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgw
    public final synchronized void zza(boolean z10, int i10, String str, String str2) {
        if (z10) {
            com.google.android.gms.ads.internal.util.zze.zza("Ad inspector loaded.");
            this.zze = true;
            zzk();
            return;
        }
        int i11 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzj("Ad inspector failed to load.");
        try {
            zzbzs zzp = com.google.android.gms.ads.internal.zzv.zzp();
            zzp.zzw(new Exception("Failed to load UI. Error code: " + i10 + ", Description: " + str + ", Failing URL: " + str2), "InspectorUi.onAdWebViewFinishedLoading 0");
            com.google.android.gms.ads.internal.client.zzdn zzdnVar = this.zzh;
            if (zzdnVar != null) {
                zzdnVar.zze(zzfdx.zzd(17, null, null));
            }
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e10, "InspectorUi.onAdWebViewFinishedLoading 1");
        }
        this.zzi = true;
        this.zzd.destroy();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final synchronized void zzdt() {
        this.zzf = true;
        zzk();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final synchronized void zzdw(int i10) {
        this.zzd.destroy();
        if (!this.zzi) {
            com.google.android.gms.ads.internal.util.zze.zza("Inspector closed.");
            com.google.android.gms.ads.internal.client.zzdn zzdnVar = this.zzh;
            if (zzdnVar != null) {
                try {
                    zzdnVar.zze(null);
                } catch (RemoteException unused) {
                }
            }
        }
        this.zzf = false;
        this.zze = false;
        this.zzg = 0L;
        this.zzi = false;
        this.zzh = null;
    }

    @Nullable
    public final Activity zzg() {
        zzcfg zzcfgVar = this.zzd;
        if (zzcfgVar != null && !zzcfgVar.zzaE()) {
            return this.zzd.zzi();
        }
        return null;
    }

    public final void zzi(zzdvi zzdviVar) {
        this.zzc = zzdviVar;
    }

    public final synchronized void zzj(com.google.android.gms.ads.internal.client.zzdn zzdnVar, zzbkz zzbkzVar, zzbks zzbksVar, zzbkg zzbkgVar) {
        if (!zzl(zzdnVar)) {
            return;
        }
        try {
            com.google.android.gms.ads.internal.zzv.zzB();
            zzcfg zza = zzcft.zza(this.zza, zzchd.zza(), "", false, false, null, null, this.zzb, null, null, null, zzbcc.zza(), null, null, null, null, null);
            this.zzd = zza;
            zzcgy zzN = zza.zzN();
            if (zzN == null) {
                int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to obtain a web view for the ad inspector");
                try {
                    com.google.android.gms.ads.internal.zzv.zzp().zzw(new NullPointerException("Failed to obtain a web view for the ad inspector"), "InspectorUi.openInspector 2");
                    zzdnVar.zze(zzfdx.zzd(17, "Failed to obtain a web view for the ad inspector", null));
                    return;
                } catch (RemoteException e10) {
                    com.google.android.gms.ads.internal.zzv.zzp().zzw(e10, "InspectorUi.openInspector 3");
                    return;
                }
            }
            this.zzh = zzdnVar;
            Context context = this.zza;
            zzN.zzX(null, null, null, null, null, false, null, null, null, null, null, null, null, zzbkzVar, null, new zzbky(context), zzbksVar, zzbkgVar, null);
            zzN.zzC(this);
            this.zzd.loadUrl((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzjq));
            com.google.android.gms.ads.internal.zzv.zzj();
            com.google.android.gms.ads.internal.overlay.zzn.zza(context, new AdOverlayInfoParcel(this, this.zzd, 1, this.zzb), true, null);
            this.zzg = com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis();
        } catch (zzcfs e11) {
            int i11 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to obtain a web view for the ad inspector", e11);
            try {
                com.google.android.gms.ads.internal.zzv.zzp().zzw(e11, "InspectorUi.openInspector 0");
                zzdnVar.zze(zzfdx.zzd(17, "Failed to obtain a web view for the ad inspector", null));
            } catch (RemoteException e12) {
                com.google.android.gms.ads.internal.zzv.zzp().zzw(e12, "InspectorUi.openInspector 1");
            }
        }
    }

    public final synchronized void zzk() {
        if (this.zze && this.zzf) {
            zzcaf.zzf.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdvs
                @Override // java.lang.Runnable
                public final void run() {
                    r0.zzd.zzb("window.inspectorInfo", zzdvt.this.zzc.zze().toString());
                }
            });
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
