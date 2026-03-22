package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzva extends zzuv {
    public static final Object zzc = new Object();
    @Nullable
    private final Object zzd;
    @Nullable
    private final Object zze;

    private zzva(zzbl zzblVar, @Nullable Object obj, @Nullable Object obj2) {
        super(zzblVar);
        this.zzd = obj;
        this.zze = obj2;
    }

    public static zzva zzq(zzap zzapVar) {
        return new zzva(new zzvb(zzapVar), zzbk.zza, zzc);
    }

    public static zzva zzr(zzbl zzblVar, @Nullable Object obj, @Nullable Object obj2) {
        return new zzva(zzblVar, obj, obj2);
    }

    @Override // com.google.android.gms.internal.ads.zzuv, com.google.android.gms.internal.ads.zzbl
    public final int zza(Object obj) {
        Object obj2;
        if (zzc.equals(obj) && (obj2 = this.zze) != null) {
            obj = obj2;
        }
        return this.zzb.zza(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzuv, com.google.android.gms.internal.ads.zzbl
    public final zzbj zzd(int i10, zzbj zzbjVar, boolean z10) {
        this.zzb.zzd(i10, zzbjVar, z10);
        if (Objects.equals(zzbjVar.zzb, this.zze) && z10) {
            zzbjVar.zzb = zzc;
        }
        return zzbjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzuv, com.google.android.gms.internal.ads.zzbl
    public final zzbk zze(int i10, zzbk zzbkVar, long j10) {
        this.zzb.zze(i10, zzbkVar, j10);
        if (Objects.equals(zzbkVar.zzb, this.zzd)) {
            zzbkVar.zzb = zzbk.zza;
        }
        return zzbkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzuv, com.google.android.gms.internal.ads.zzbl
    public final Object zzf(int i10) {
        Object zzf = this.zzb.zzf(i10);
        if (Objects.equals(zzf, this.zze)) {
            return zzc;
        }
        return zzf;
    }

    public final zzva zzp(zzbl zzblVar) {
        return new zzva(zzblVar, this.zzd, this.zze);
    }
}
