package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.TrafficStats;
import android.os.StrictMode;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.ss.ttm.player.MediaPlayer;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcft {
    public static final zzcfg zza(final Context context, final zzchd zzchdVar, final String str, final boolean z10, final boolean z11, @Nullable final zzavu zzavuVar, @Nullable final zzbel zzbelVar, final VersionInfoParcel versionInfoParcel, @Nullable zzbdt zzbdtVar, @Nullable final com.google.android.gms.ads.internal.zzn zznVar, @Nullable final com.google.android.gms.ads.internal.zza zzaVar, final zzbcc zzbccVar, @Nullable final zzfca zzfcaVar, @Nullable final zzfcd zzfcdVar, @Nullable final zzecl zzeclVar, @Nullable final zzfda zzfdaVar, @Nullable final zzdsj zzdsjVar) throws zzcfs {
        zzbde.zza(context);
        try {
            zzfwh zzfwhVar = new zzfwh(context, zzchdVar, str, z10, z11, zzavuVar, zzbelVar, versionInfoParcel, null, zznVar, zzaVar, zzbccVar, zzfcaVar, zzfcdVar, zzfdaVar, zzdsjVar, zzeclVar) { // from class: com.google.android.gms.internal.ads.zzcfr
                public final /* synthetic */ Context zza;
                public final /* synthetic */ zzchd zzb;
                public final /* synthetic */ String zzc;
                public final /* synthetic */ boolean zzd;
                public final /* synthetic */ boolean zze;
                public final /* synthetic */ zzavu zzf;
                public final /* synthetic */ zzbel zzg;
                public final /* synthetic */ VersionInfoParcel zzh;
                public final /* synthetic */ com.google.android.gms.ads.internal.zzn zzi;
                public final /* synthetic */ com.google.android.gms.ads.internal.zza zzj;
                public final /* synthetic */ zzbcc zzk;
                public final /* synthetic */ zzfca zzl;
                public final /* synthetic */ zzfcd zzm;
                public final /* synthetic */ zzfda zzn;
                public final /* synthetic */ zzdsj zzo;
                public final /* synthetic */ zzecl zzp;

                {
                    this.zzi = zznVar;
                    this.zzj = zzaVar;
                    this.zzk = zzbccVar;
                    this.zzl = zzfcaVar;
                    this.zzm = zzfcdVar;
                    this.zzn = zzfdaVar;
                    this.zzo = zzdsjVar;
                    this.zzp = zzeclVar;
                }

                @Override // com.google.android.gms.internal.ads.zzfwh
                public final Object zza() {
                    zzchd zzchdVar2 = this.zzb;
                    String str2 = this.zzc;
                    boolean z12 = this.zzd;
                    zzbcc zzbccVar2 = this.zzk;
                    boolean z13 = this.zze;
                    zzavu zzavuVar2 = this.zzf;
                    zzfca zzfcaVar2 = this.zzl;
                    zzbel zzbelVar2 = this.zzg;
                    com.google.android.gms.ads.internal.zzn zznVar2 = this.zzi;
                    zzfcd zzfcdVar2 = this.zzm;
                    Context context2 = this.zza;
                    VersionInfoParcel versionInfoParcel2 = this.zzh;
                    com.google.android.gms.ads.internal.zza zzaVar2 = this.zzj;
                    zzfda zzfdaVar2 = this.zzn;
                    zzdsj zzdsjVar2 = this.zzo;
                    zzecl zzeclVar2 = this.zzp;
                    try {
                        TrafficStats.setThreadStatsTag(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SAVED_HOST_TIME);
                        int i10 = zzcgf.zza;
                        zzcfy zzcfyVar = new zzcfy(new zzcgf(new zzchc(context2), zzchdVar2, str2, z12, z13, zzavuVar2, zzbelVar2, versionInfoParcel2, null, zznVar2, zzaVar2, zzbccVar2, zzfcaVar2, zzfcdVar2, zzfdaVar2), zzdsjVar2);
                        zzcfyVar.setWebViewClient(com.google.android.gms.ads.internal.zzv.zzs().zzc(zzcfyVar, zzbccVar2, z13, zzeclVar2));
                        zzcfyVar.setWebChromeClient(new zzcff(zzcfyVar));
                        return zzcfyVar;
                    } finally {
                        TrafficStats.clearThreadStatsTag();
                    }
                }
            };
            StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
            Object zza = zzfwhVar.zza();
            StrictMode.setThreadPolicy(threadPolicy);
            return (zzcfg) zza;
        } catch (Throwable th2) {
            throw new zzcfs("Webview initialization failed.", th2);
        }
    }
}
