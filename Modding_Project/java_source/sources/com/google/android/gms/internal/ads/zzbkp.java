package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzbkp implements com.google.android.gms.ads.internal.overlay.zzaa {
    boolean zza;
    final /* synthetic */ boolean zzb;
    final /* synthetic */ com.google.android.gms.ads.internal.client.zza zzc;
    final /* synthetic */ Map zzd;
    final /* synthetic */ Map zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbkp(zzbkr zzbkrVar, boolean z10, com.google.android.gms.ads.internal.client.zza zzaVar, Map map, Map map2) {
        this.zzb = z10;
        this.zzc = zzaVar;
        this.zzd = map;
        this.zze = map2;
        Objects.requireNonNull(zzbkrVar);
        this.zza = false;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzaa
    public final void zza(boolean z10) {
        if (!this.zza) {
            if (z10 && this.zzb) {
                ((zzded) this.zzc).zzdf();
            }
            this.zza = true;
            Map map = this.zzd;
            map.put((String) this.zze.get("event_id"), Boolean.valueOf(z10));
            ((zzbna) this.zzc).zzd("openIntentAsync", map);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzaa
    public final void zzb(int i10) {
    }
}
