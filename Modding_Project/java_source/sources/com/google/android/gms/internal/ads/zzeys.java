package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Iterator;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzeys implements zzezr {
    private zzcve zza;
    private final Executor zzb = zzgef.zzc();

    public final zzcve zza() {
        return this.zza;
    }

    public final com.google.common.util.concurrent.e zzb(zzezs zzezsVar, zzezq zzezqVar, @Nullable zzcve zzcveVar) {
        zzcvd zza = zzezqVar.zza(zzezsVar.zzb);
        zza.zzb(new zzezv(true));
        zzcve zzcveVar2 = (zzcve) zza.zzh();
        this.zza = zzcveVar2;
        final zzcse zzb = zzcveVar2.zzb();
        final zzfes zzfesVar = new zzfes();
        zzgde zzw = zzgde.zzw(zzb.zzi());
        zzgcu zzgcuVar = new zzgcu(this) { // from class: com.google.android.gms.internal.ads.zzeyq
            @Override // com.google.android.gms.internal.ads.zzgcu
            public final com.google.common.util.concurrent.e zza(Object obj) {
                zzfcn zzfcnVar = (zzfcn) obj;
                zzfesVar.zzb = zzfcnVar;
                Iterator it = zzfcnVar.zzb.zza.iterator();
                boolean z10 = false;
                loop0: while (true) {
                    if (it.hasNext()) {
                        for (String str : ((zzfca) it.next()).zza) {
                            if (!str.contains("FirstPartyRenderer")) {
                                break loop0;
                            }
                            z10 = true;
                        }
                    } else if (z10) {
                        return zzb.zzh(zzgdn.zzh(zzfcnVar));
                    }
                }
                return zzgdn.zzh(null);
            }
        };
        Executor executor = this.zzb;
        return (zzgde) zzgdn.zzm((zzgde) zzgdn.zzn(zzw, zzgcuVar, executor), new zzfve() { // from class: com.google.android.gms.internal.ads.zzeyr
            @Override // com.google.android.gms.internal.ads.zzfve
            public final Object apply(Object obj) {
                zzfes zzfesVar2 = zzfes.this;
                zzfesVar2.zzc = (zzcra) obj;
                return zzfesVar2;
            }
        }, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzezr
    public final /* bridge */ /* synthetic */ com.google.common.util.concurrent.e zzc(zzezs zzezsVar, zzezq zzezqVar, @Nullable Object obj) {
        return zzb(zzezsVar, zzezqVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzezr
    public final /* synthetic */ Object zzd() {
        return this.zza;
    }
}
