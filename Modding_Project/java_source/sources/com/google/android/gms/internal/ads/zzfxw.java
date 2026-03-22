package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzfxw extends zzfxj {
    final /* synthetic */ zzfxz zza;
    private final Object zzb;
    private int zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfxw(zzfxz zzfxzVar, int i10) {
        Objects.requireNonNull(zzfxzVar);
        this.zza = zzfxzVar;
        this.zzb = zzfxz.zzg(zzfxzVar, i10);
        this.zzc = i10;
    }

    private final void zza() {
        int zzw;
        int i10 = this.zzc;
        if (i10 != -1) {
            zzfxz zzfxzVar = this.zza;
            if (i10 < zzfxzVar.size() && zzfvm.zza(this.zzb, zzfxz.zzg(zzfxzVar, this.zzc))) {
                return;
            }
        }
        zzw = this.zza.zzw(this.zzb);
        this.zzc = zzw;
    }

    @Override // com.google.android.gms.internal.ads.zzfxj, java.util.Map.Entry
    public final Object getKey() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfxj, java.util.Map.Entry
    public final Object getValue() {
        zzfxz zzfxzVar = this.zza;
        Map zzl = zzfxzVar.zzl();
        if (zzl != null) {
            return zzl.get(this.zzb);
        }
        zza();
        int i10 = this.zzc;
        if (i10 == -1) {
            return null;
        }
        return zzfxz.zzj(zzfxzVar, i10);
    }

    @Override // com.google.android.gms.internal.ads.zzfxj, java.util.Map.Entry
    public final Object setValue(Object obj) {
        zzfxz zzfxzVar = this.zza;
        Map zzl = zzfxzVar.zzl();
        if (zzl != null) {
            return zzl.put(this.zzb, obj);
        }
        zza();
        int i10 = this.zzc;
        if (i10 == -1) {
            zzfxzVar.put(this.zzb, obj);
            return null;
        }
        Object zzj = zzfxz.zzj(zzfxzVar, i10);
        zzfxz.zzn(zzfxzVar, this.zzc, obj);
        return zzj;
    }
}
