package com.google.android.gms.internal.ads;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzawr implements zzfqf {
    private final zzfok zza;
    private final zzfoz zzb;
    private final zzaxe zzc;
    private final zzawq zzd;
    private final zzawa zze;
    private final zzaxg zzf;
    private final zzawy zzg;
    private final zzawp zzh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzawr(@NonNull zzfok zzfokVar, @NonNull zzfoz zzfozVar, @NonNull zzaxe zzaxeVar, @NonNull zzawq zzawqVar, @Nullable zzawa zzawaVar, @Nullable zzaxg zzaxgVar, @Nullable zzawy zzawyVar, @Nullable zzawp zzawpVar) {
        this.zza = zzfokVar;
        this.zzb = zzfozVar;
        this.zzc = zzaxeVar;
        this.zzd = zzawqVar;
        this.zze = zzawaVar;
        this.zzf = zzaxgVar;
        this.zzg = zzawyVar;
        this.zzh = zzawpVar;
    }

    private final Map zze() {
        HashMap hashMap = new HashMap();
        zzfok zzfokVar = this.zza;
        zzatq zzb = this.zzb.zzb();
        hashMap.put("v", zzfokVar.zzd());
        hashMap.put("gms", Boolean.valueOf(zzfokVar.zzg()));
        hashMap.put("int", zzb.zzg());
        hashMap.put("attts", Long.valueOf(zzb.zzf().zza()));
        hashMap.put("att", zzb.zzf().zzd());
        hashMap.put("attkid", zzb.zzf().zzf());
        hashMap.put("up", Boolean.valueOf(this.zzd.zza()));
        hashMap.put(IVideoEventLogger.LOG_CALLBACK_TIME, new Throwable());
        zzawy zzawyVar = this.zzg;
        if (zzawyVar != null) {
            hashMap.put("tcq", Long.valueOf(zzawyVar.zzc()));
            hashMap.put("tpq", Long.valueOf(zzawyVar.zzg()));
            hashMap.put("tcv", Long.valueOf(zzawyVar.zzd()));
            hashMap.put("tpv", Long.valueOf(zzawyVar.zzh()));
            hashMap.put("tchv", Long.valueOf(zzawyVar.zzb()));
            hashMap.put("tphv", Long.valueOf(zzawyVar.zzf()));
            hashMap.put("tcc", Long.valueOf(zzawyVar.zza()));
            hashMap.put("tpc", Long.valueOf(zzawyVar.zze()));
            zzawa zzawaVar = this.zze;
            if (zzawaVar != null) {
                hashMap.put("nt", Long.valueOf(zzawaVar.zza()));
            }
            zzaxg zzaxgVar = this.zzf;
            if (zzaxgVar != null) {
                hashMap.put("vs", Long.valueOf(zzaxgVar.zzc()));
                hashMap.put("vf", Long.valueOf(zzaxgVar.zzb()));
            }
        }
        return hashMap;
    }

    @Override // com.google.android.gms.internal.ads.zzfqf
    public final Map zza() {
        zzaxe zzaxeVar = this.zzc;
        Map zze = zze();
        zze.put("lts", Long.valueOf(zzaxeVar.zza()));
        return zze;
    }

    @Override // com.google.android.gms.internal.ads.zzfqf
    public final Map zzb() {
        return zze();
    }

    @Override // com.google.android.gms.internal.ads.zzfqf
    public final Map zzc() {
        zzawp zzawpVar = this.zzh;
        Map zze = zze();
        if (zzawpVar != null) {
            zze.put(CampaignEx.JSON_KEY_NEW_INTERSTITIAL_VST, zzawpVar.zza());
        }
        return zze;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzd(View view) {
        this.zzc.zzd(view);
    }
}
