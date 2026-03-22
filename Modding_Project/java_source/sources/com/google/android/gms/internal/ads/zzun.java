package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzun implements zzvs, zzsd {
    final /* synthetic */ zzup zza;
    private final Object zzb;
    private zzvr zzc;
    private zzsc zzd;

    public zzun(zzup zzupVar, Object obj) {
        Objects.requireNonNull(zzupVar);
        this.zza = zzupVar;
        this.zzc = zzupVar.zze(null);
        this.zzd = zzupVar.zzc(null);
        this.zzb = obj;
    }

    private final zzvd zzf(zzvd zzvdVar, @Nullable zzvh zzvhVar) {
        zzup zzupVar = this.zza;
        Object obj = this.zzb;
        zzupVar.zzx(obj, zzvdVar.zzc, zzvhVar);
        zzupVar.zzx(obj, zzvdVar.zzd, zzvhVar);
        return zzvdVar;
    }

    private final boolean zzg(int i10, @Nullable zzvh zzvhVar) {
        zzvh zzvhVar2;
        if (zzvhVar != null) {
            zzvhVar2 = this.zza.zzy(this.zzb, zzvhVar);
            if (zzvhVar2 == null) {
                return false;
            }
        } else {
            zzvhVar2 = null;
        }
        zzup zzupVar = this.zza;
        zzupVar.zzw(this.zzb, 0);
        zzvr zzvrVar = this.zzc;
        int i11 = zzvrVar.zza;
        if (!Objects.equals(zzvrVar.zzb, zzvhVar2)) {
            this.zzc = zzupVar.zzf(0, zzvhVar2);
        }
        zzsc zzscVar = this.zzd;
        int i12 = zzscVar.zza;
        if (!Objects.equals(zzscVar.zzb, zzvhVar2)) {
            this.zzd = zzupVar.zzd(0, zzvhVar2);
            return true;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzvs
    public final void zzag(int i10, @Nullable zzvh zzvhVar, zzvd zzvdVar) {
        if (zzg(0, zzvhVar)) {
            zzvr zzvrVar = this.zzc;
            zzf(zzvdVar, zzvhVar);
            zzvrVar.zzd(zzvdVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvs
    public final void zzah(int i10, @Nullable zzvh zzvhVar, zzuy zzuyVar, zzvd zzvdVar) {
        if (zzg(0, zzvhVar)) {
            zzvr zzvrVar = this.zzc;
            zzf(zzvdVar, zzvhVar);
            zzvrVar.zze(zzuyVar, zzvdVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvs
    public final void zzai(int i10, @Nullable zzvh zzvhVar, zzuy zzuyVar, zzvd zzvdVar) {
        if (zzg(0, zzvhVar)) {
            zzvr zzvrVar = this.zzc;
            zzf(zzvdVar, zzvhVar);
            zzvrVar.zzf(zzuyVar, zzvdVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvs
    public final void zzaj(int i10, @Nullable zzvh zzvhVar, zzuy zzuyVar, zzvd zzvdVar, IOException iOException, boolean z10) {
        if (zzg(0, zzvhVar)) {
            zzvr zzvrVar = this.zzc;
            zzf(zzvdVar, zzvhVar);
            zzvrVar.zzg(zzuyVar, zzvdVar, iOException, z10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvs
    public final void zzak(int i10, @Nullable zzvh zzvhVar, zzuy zzuyVar, zzvd zzvdVar, int i11) {
        if (zzg(0, zzvhVar)) {
            zzvr zzvrVar = this.zzc;
            zzf(zzvdVar, zzvhVar);
            zzvrVar.zzh(zzuyVar, zzvdVar, i11);
        }
    }
}
