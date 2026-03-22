package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzos {
    private final zzbj zza;
    private zzfyq zzb = zzfyq.zzn();
    private zzfyt zzc = zzfyt.zzd();
    @Nullable
    private zzvh zzd;
    private zzvh zze;
    private zzvh zzf;

    public zzos(zzbj zzbjVar) {
        this.zza = zzbjVar;
    }

    @Nullable
    private static zzvh zzj(zzbh zzbhVar, zzfyq zzfyqVar, @Nullable zzvh zzvhVar, zzbj zzbjVar) {
        Object zzf;
        int i10;
        zzbl zzo = zzbhVar.zzo();
        int zzf2 = zzbhVar.zzf();
        if (zzo.zzo()) {
            zzf = null;
        } else {
            zzf = zzo.zzf(zzf2);
        }
        if (zzbhVar.zzx() || zzo.zzo()) {
            i10 = -1;
        } else {
            i10 = zzo.zzd(zzf2, zzbjVar, false).zzc(zzex.zzs(zzbhVar.zzl()));
        }
        for (int i11 = 0; i11 < zzfyqVar.size(); i11++) {
            zzvh zzvhVar2 = (zzvh) zzfyqVar.get(i11);
            if (zzm(zzvhVar2, zzf, zzbhVar.zzx(), zzbhVar.zzc(), zzbhVar.zzd(), i10)) {
                return zzvhVar2;
            }
        }
        if (zzfyqVar.isEmpty() && zzvhVar != null) {
            if (zzm(zzvhVar, zzf, zzbhVar.zzx(), zzbhVar.zzc(), zzbhVar.zzd(), i10)) {
                return zzvhVar;
            }
        }
        return null;
    }

    private final void zzk(zzfys zzfysVar, @Nullable zzvh zzvhVar, zzbl zzblVar) {
        if (zzvhVar != null) {
            if (zzblVar.zza(zzvhVar.zza) != -1) {
                zzfysVar.zza(zzvhVar, zzblVar);
                return;
            }
            zzbl zzblVar2 = (zzbl) this.zzc.get(zzvhVar);
            if (zzblVar2 != null) {
                zzfysVar.zza(zzvhVar, zzblVar2);
            }
        }
    }

    private final void zzl(zzbl zzblVar) {
        zzfys zzfysVar = new zzfys();
        if (this.zzb.isEmpty()) {
            zzk(zzfysVar, this.zze, zzblVar);
            if (!Objects.equals(this.zzf, this.zze)) {
                zzk(zzfysVar, this.zzf, zzblVar);
            }
            if (!Objects.equals(this.zzd, this.zze) && !Objects.equals(this.zzd, this.zzf)) {
                zzk(zzfysVar, this.zzd, zzblVar);
            }
        } else {
            for (int i10 = 0; i10 < this.zzb.size(); i10++) {
                zzk(zzfysVar, (zzvh) this.zzb.get(i10), zzblVar);
            }
            if (!this.zzb.contains(this.zzd)) {
                zzk(zzfysVar, this.zzd, zzblVar);
            }
        }
        this.zzc = zzfysVar.zzc();
    }

    private static boolean zzm(zzvh zzvhVar, @Nullable Object obj, boolean z10, int i10, int i11, int i12) {
        if (!zzvhVar.zza.equals(obj)) {
            return false;
        }
        if (z10) {
            if (zzvhVar.zzb != i10 || zzvhVar.zzc != i11) {
                return false;
            }
        } else if (zzvhVar.zzb != -1 || zzvhVar.zze != i12) {
            return false;
        }
        return true;
    }

    @Nullable
    public final zzbl zza(zzvh zzvhVar) {
        return (zzbl) this.zzc.get(zzvhVar);
    }

    @Nullable
    public final zzvh zzb() {
        return this.zzd;
    }

    @Nullable
    public final zzvh zzc() {
        Object next;
        Object obj;
        if (this.zzb.isEmpty()) {
            return null;
        }
        zzfyq zzfyqVar = this.zzb;
        if (zzfyqVar != null) {
            if (!zzfyqVar.isEmpty()) {
                obj = zzfyqVar.get(zzfyqVar.size() - 1);
            } else {
                throw new NoSuchElementException();
            }
        } else {
            Iterator<E> it = zzfyqVar.iterator();
            do {
                next = it.next();
            } while (it.hasNext());
            obj = next;
        }
        return (zzvh) obj;
    }

    @Nullable
    public final zzvh zzd() {
        return this.zze;
    }

    @Nullable
    public final zzvh zze() {
        return this.zzf;
    }

    public final void zzg(zzbh zzbhVar) {
        this.zzd = zzj(zzbhVar, this.zzb, this.zze, this.zza);
    }

    public final void zzh(List list, @Nullable zzvh zzvhVar, zzbh zzbhVar) {
        this.zzb = zzfyq.zzl(list);
        if (!list.isEmpty()) {
            this.zze = (zzvh) list.get(0);
            zzvhVar.getClass();
            this.zzf = zzvhVar;
        }
        if (this.zzd == null) {
            this.zzd = zzj(zzbhVar, this.zzb, this.zze, this.zza);
        }
        zzl(zzbhVar.zzo());
    }

    public final void zzi(zzbh zzbhVar) {
        this.zzd = zzj(zzbhVar, this.zzb, this.zze, this.zza);
        zzl(zzbhVar.zzo());
    }
}
