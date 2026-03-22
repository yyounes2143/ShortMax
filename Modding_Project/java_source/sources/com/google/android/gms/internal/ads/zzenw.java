package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.offline.DownloadService;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzenw implements zzeuc {
    final Context zza;
    private final String zzb;
    private final String zzc;
    private final long zzd;
    private final zzcsq zze;
    private final zzfed zzf;
    private final zzfcw zzg;
    private final com.google.android.gms.ads.internal.util.zzg zzh = com.google.android.gms.ads.internal.zzv.zzp().zzi();
    private final zzdsd zzi;
    private final zzcte zzj;

    public zzenw(Context context, String str, String str2, zzcsq zzcsqVar, zzfed zzfedVar, zzfcw zzfcwVar, zzdsd zzdsdVar, zzcte zzcteVar, long j10) {
        this.zza = context;
        this.zzb = str;
        this.zzc = str2;
        this.zze = zzcsqVar;
        this.zzf = zzfedVar;
        this.zzg = zzfcwVar;
        this.zzi = zzdsdVar;
        this.zzj = zzcteVar;
        this.zzd = j10;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final int zza() {
        return 12;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final com.google.common.util.concurrent.e zzb() {
        String str;
        Bundle bundle = new Bundle();
        zzdsd zzdsdVar = this.zzi;
        Map zzb = zzdsdVar.zzb();
        String str2 = this.zzb;
        zzb.put("seq_num", str2);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcq)).booleanValue()) {
            zzdsdVar.zzd("tsacc", String.valueOf(com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis() - this.zzd));
            com.google.android.gms.ads.internal.zzv.zzr();
            if (true != com.google.android.gms.ads.internal.util.zzs.zzH(this.zza)) {
                str = "1";
            } else {
                str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
            }
            zzdsdVar.zzd(DownloadService.KEY_FOREGROUND, str);
        }
        zzcsq zzcsqVar = this.zze;
        zzfcw zzfcwVar = this.zzg;
        zzcsqVar.zzk(zzfcwVar.zzd);
        bundle.putAll(this.zzf.zzb());
        return zzgdn.zzh(new zzenx(this.zza, bundle, str2, this.zzc, this.zzh, zzfcwVar.zzf, this.zzj));
    }
}
