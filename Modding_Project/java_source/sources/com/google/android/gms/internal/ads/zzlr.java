package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.util.Pair;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzlr {
    private final zzph zza;
    private final zzlq zze;
    private final zzmo zzh;
    private final zzdt zzi;
    private boolean zzj;
    @Nullable
    private zzhj zzk;
    private zzxc zzl = new zzxc(0);
    private final IdentityHashMap zzc = new IdentityHashMap();
    private final Map zzd = new HashMap();
    private final List zzb = new ArrayList();
    private final HashMap zzf = new HashMap();
    private final Set zzg = new HashSet();

    public zzlr(zzlq zzlqVar, zzmo zzmoVar, zzdt zzdtVar, zzph zzphVar) {
        this.zza = zzphVar;
        this.zze = zzlqVar;
        this.zzh = zzmoVar;
        this.zzi = zzdtVar;
    }

    private final void zzr(int i10, int i11) {
        while (true) {
            List list = this.zzb;
            if (i10 < list.size()) {
                ((zzlp) list.get(i10)).zzd += i11;
                i10++;
            } else {
                return;
            }
        }
    }

    private final void zzs(zzlp zzlpVar) {
        zzlo zzloVar = (zzlo) this.zzf.get(zzlpVar);
        if (zzloVar != null) {
            zzloVar.zza.zzi(zzloVar.zzb);
        }
    }

    private final void zzt() {
        Iterator it = this.zzg.iterator();
        while (it.hasNext()) {
            zzlp zzlpVar = (zzlp) it.next();
            if (zzlpVar.zzc.isEmpty()) {
                zzs(zzlpVar);
                it.remove();
            }
        }
    }

    private final void zzu(zzlp zzlpVar) {
        if (zzlpVar.zze && zzlpVar.zzc.isEmpty()) {
            zzlo zzloVar = (zzlo) this.zzf.remove(zzlpVar);
            zzloVar.getClass();
            zzvj zzvjVar = zzloVar.zza;
            zzvjVar.zzp(zzloVar.zzb);
            zzln zzlnVar = zzloVar.zzc;
            zzvjVar.zzs(zzlnVar);
            zzvjVar.zzr(zzlnVar);
            this.zzg.remove(zzlpVar);
        }
    }

    private final void zzv(zzlp zzlpVar) {
        zzvc zzvcVar = zzlpVar.zza;
        zzvi zzviVar = new zzvi() { // from class: com.google.android.gms.internal.ads.zzlh
            @Override // com.google.android.gms.internal.ads.zzvi
            public final void zza(zzvj zzvjVar, zzbl zzblVar) {
                zzlr.this.zze.zzk();
            }
        };
        zzln zzlnVar = new zzln(this, zzlpVar);
        this.zzf.put(zzlpVar, new zzlo(zzvcVar, zzviVar, zzlnVar));
        zzvcVar.zzh(new Handler(zzex.zzz(), null), zzlnVar);
        zzvcVar.zzg(new Handler(zzex.zzz(), null), zzlnVar);
        zzvcVar.zzm(zzviVar, this.zzk, this.zza);
    }

    private final void zzw(int i10, int i11) {
        while (true) {
            i11--;
            if (i11 >= i10) {
                zzlp zzlpVar = (zzlp) this.zzb.remove(i11);
                this.zzd.remove(zzlpVar.zzb);
                zzr(i11, -zzlpVar.zza.zzC().zzc());
                zzlpVar.zze = true;
                if (this.zzj) {
                    zzu(zzlpVar);
                }
            } else {
                return;
            }
        }
    }

    public final int zza() {
        return this.zzb.size();
    }

    public final zzbl zzb() {
        List list = this.zzb;
        if (!list.isEmpty()) {
            int i10 = 0;
            for (int i11 = 0; i11 < list.size(); i11++) {
                zzlp zzlpVar = (zzlp) list.get(i11);
                zzlpVar.zzd = i10;
                i10 += zzlpVar.zza.zzC().zzc();
            }
            return new zzly(list, this.zzl);
        }
        return zzbl.zza;
    }

    public final zzbl zzc(int i10, int i11, List list) {
        boolean z10;
        boolean z11 = true;
        if (i10 >= 0 && i10 <= i11 && i11 <= zza()) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zzd(z10);
        if (list.size() != i11 - i10) {
            z11 = false;
        }
        zzdd.zzd(z11);
        for (int i12 = i10; i12 < i11; i12++) {
            ((zzlp) this.zzb.get(i12)).zza.zzt((zzap) list.get(i12 - i10));
        }
        return zzb();
    }

    public final void zzg(@Nullable zzhj zzhjVar) {
        zzdd.zzf(!this.zzj);
        this.zzk = zzhjVar;
        int i10 = 0;
        while (true) {
            List list = this.zzb;
            if (i10 < list.size()) {
                zzlp zzlpVar = (zzlp) list.get(i10);
                zzv(zzlpVar);
                this.zzg.add(zzlpVar);
                i10++;
            } else {
                this.zzj = true;
                return;
            }
        }
    }

    public final void zzh() {
        for (zzlo zzloVar : this.zzf.values()) {
            try {
                zzloVar.zza.zzp(zzloVar.zzb);
            } catch (RuntimeException e10) {
                zzea.zzd("MediaSourceList", "Failed to release child source.", e10);
            }
            zzvj zzvjVar = zzloVar.zza;
            zzln zzlnVar = zzloVar.zzc;
            zzvjVar.zzs(zzlnVar);
            zzvjVar.zzr(zzlnVar);
        }
        this.zzf.clear();
        this.zzg.clear();
        this.zzj = false;
    }

    public final void zzi(zzvf zzvfVar) {
        IdentityHashMap identityHashMap = this.zzc;
        zzlp zzlpVar = (zzlp) identityHashMap.remove(zzvfVar);
        zzlpVar.getClass();
        zzlpVar.zza.zzG(zzvfVar);
        zzlpVar.zzc.remove(((zzuz) zzvfVar).zza);
        if (!identityHashMap.isEmpty()) {
            zzt();
        }
        zzu(zzlpVar);
    }

    public final boolean zzj() {
        return this.zzj;
    }

    public final zzbl zzk(int i10, List list, zzxc zzxcVar) {
        if (!list.isEmpty()) {
            this.zzl = zzxcVar;
            for (int i11 = i10; i11 < list.size() + i10; i11++) {
                zzlp zzlpVar = (zzlp) list.get(i11 - i10);
                if (i11 > 0) {
                    zzlp zzlpVar2 = (zzlp) this.zzb.get(i11 - 1);
                    zzlpVar.zzc(zzlpVar2.zzd + zzlpVar2.zza.zzC().zzc());
                } else {
                    zzlpVar.zzc(0);
                }
                zzr(i11, zzlpVar.zza.zzC().zzc());
                this.zzb.add(i11, zzlpVar);
                this.zzd.put(zzlpVar.zzb, zzlpVar);
                if (this.zzj) {
                    zzv(zzlpVar);
                    if (this.zzc.isEmpty()) {
                        this.zzg.add(zzlpVar);
                    } else {
                        zzs(zzlpVar);
                    }
                }
            }
        }
        return zzb();
    }

    public final zzbl zzl(int i10, int i11, int i12, zzxc zzxcVar) {
        boolean z10;
        if (zza() >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zzd(z10);
        this.zzl = null;
        return zzb();
    }

    public final zzbl zzm(int i10, int i11, zzxc zzxcVar) {
        boolean z10 = false;
        if (i10 >= 0 && i10 <= i11 && i11 <= zza()) {
            z10 = true;
        }
        zzdd.zzd(z10);
        this.zzl = zzxcVar;
        zzw(i10, i11);
        return zzb();
    }

    public final zzbl zzn(List list, zzxc zzxcVar) {
        List list2 = this.zzb;
        zzw(0, list2.size());
        return zzk(list2.size(), list, zzxcVar);
    }

    public final zzbl zzo(zzxc zzxcVar) {
        int zza = zza();
        if (zzxcVar.zzc() != zza) {
            zzxcVar = zzxcVar.zzf().zzg(0, zza);
        }
        this.zzl = zzxcVar;
        return zzb();
    }

    public final zzvf zzp(zzvh zzvhVar, zzzm zzzmVar, long j10) {
        int i10 = zzly.zzb;
        Pair pair = (Pair) zzvhVar.zza;
        Object obj = pair.first;
        zzvh zza = zzvhVar.zza(pair.second);
        zzlp zzlpVar = (zzlp) this.zzd.get(obj);
        zzlpVar.getClass();
        this.zzg.add(zzlpVar);
        zzlo zzloVar = (zzlo) this.zzf.get(zzlpVar);
        if (zzloVar != null) {
            zzloVar.zza.zzk(zzloVar.zzb);
        }
        zzlpVar.zzc.add(zza);
        zzuz zzI = zzlpVar.zza.zzI(zza, zzzmVar, j10);
        this.zzc.put(zzI, zzlpVar);
        zzt();
        return zzI;
    }

    public final zzxc zzq() {
        return this.zzl;
    }
}
