package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.List;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzdgu implements zzcrd {
    private final Map zza;
    private final Map zzb;
    private final Map zzc;
    private final zzhhg zzd;
    private final zzdje zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdgu(Map map, Map map2, Map map3, zzhhg zzhhgVar, zzdje zzdjeVar) {
        this.zza = map;
        this.zzb = map2;
        this.zzc = map3;
        this.zzd = zzhhgVar;
        this.zze = zzdjeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcrd
    @Nullable
    public final zzedm zza(int i10, String str) {
        zzedm zza;
        zzedm zzedmVar = (zzedm) this.zza.get(str);
        if (zzedmVar != null) {
            return zzedmVar;
        }
        if (i10 != 1) {
            if (i10 != 4) {
                return null;
            }
            zzefv zzefvVar = (zzefv) this.zzc.get(str);
            if (zzefvVar != null) {
                return new zzedn(zzefvVar, new zzfve() { // from class: com.google.android.gms.internal.ads.zzcrf
                    @Override // com.google.android.gms.internal.ads.zzfve
                    public final Object apply(Object obj) {
                        return new zzcri((List) obj);
                    }
                });
            }
            zza = (zzedm) this.zzb.get(str);
            if (zza == null) {
                return null;
            }
        } else if (this.zze.zze() == null || (zza = ((zzcrd) this.zzd.zzb()).zza(i10, str)) == null) {
            return null;
        }
        return new zzedn(zza, new zzfve() { // from class: com.google.android.gms.internal.ads.zzcrg
            @Override // com.google.android.gms.internal.ads.zzfve
            public final Object apply(Object obj) {
                return new zzcri((zzcra) obj);
            }
        });
    }
}
