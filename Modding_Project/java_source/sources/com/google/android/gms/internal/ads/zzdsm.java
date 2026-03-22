package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdsm implements zzfhb {
    private final zzdsd zzb;
    private final Clock zzc;
    private final Map zza = new HashMap();
    private final Map zzd = new HashMap();

    public zzdsm(zzdsd zzdsdVar, Set set, Clock clock) {
        zzfgu zzfguVar;
        this.zzb = zzdsdVar;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            zzdsl zzdslVar = (zzdsl) it.next();
            Map map = this.zzd;
            zzfguVar = zzdslVar.zzc;
            map.put(zzfguVar, zzdslVar);
        }
        this.zzc = clock;
    }

    private final void zze(zzfgu zzfguVar, boolean z10) {
        String str;
        zzfgu zzfguVar2;
        String str2;
        zzdsl zzdslVar = (zzdsl) this.zzd.get(zzfguVar);
        if (zzdslVar != null) {
            if (true != z10) {
                str = "f.";
            } else {
                str = "s.";
            }
            Map map = this.zza;
            zzfguVar2 = zzdslVar.zzb;
            if (map.containsKey(zzfguVar2)) {
                long elapsedRealtime = this.zzc.elapsedRealtime() - ((Long) map.get(zzfguVar2)).longValue();
                Map zzb = this.zzb.zzb();
                str2 = zzdslVar.zza;
                zzb.put("label.".concat(str2), str + elapsedRealtime);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfhb
    public final void zzd(zzfgu zzfguVar, String str) {
        Map map = this.zza;
        if (map.containsKey(zzfguVar)) {
            zzdsd zzdsdVar = this.zzb;
            String valueOf = String.valueOf(str);
            zzdsdVar.zzb().put("task.".concat(valueOf), "s.".concat(String.valueOf(Long.toString(this.zzc.elapsedRealtime() - ((Long) map.get(zzfguVar)).longValue()))));
        }
        if (this.zzd.containsKey(zzfguVar)) {
            zze(zzfguVar, true);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfhb
    public final void zzdF(zzfgu zzfguVar, String str, Throwable th2) {
        Map map = this.zza;
        if (map.containsKey(zzfguVar)) {
            zzdsd zzdsdVar = this.zzb;
            String valueOf = String.valueOf(str);
            zzdsdVar.zzb().put("task.".concat(valueOf), "f.".concat(String.valueOf(Long.toString(this.zzc.elapsedRealtime() - ((Long) map.get(zzfguVar)).longValue()))));
        }
        if (this.zzd.containsKey(zzfguVar)) {
            zze(zzfguVar, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfhb
    public final void zzdG(zzfgu zzfguVar, String str) {
        this.zza.put(zzfguVar, Long.valueOf(this.zzc.elapsedRealtime()));
    }

    @Override // com.google.android.gms.internal.ads.zzfhb
    public final void zzdE(zzfgu zzfguVar, String str) {
    }
}
