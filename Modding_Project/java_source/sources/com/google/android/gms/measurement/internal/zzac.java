package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzpu;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzac extends zzab {
    final /* synthetic */ zzad zza;
    private final com.google.android.gms.internal.measurement.zzfn zzh;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzac(zzad zzadVar, String str, int i10, com.google.android.gms.internal.measurement.zzfn zzfnVar) {
        super(str, i10);
        Objects.requireNonNull(zzadVar);
        this.zza = zzadVar;
        this.zzh = zzfnVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.measurement.internal.zzab
    public final int zza() {
        return this.zzh.zzb();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.measurement.internal.zzab
    public final boolean zzb() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.measurement.internal.zzab
    public final boolean zzc() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzd(Long l10, Long l11, com.google.android.gms.internal.measurement.zziu zziuVar, boolean z10) {
        Object[] objArr;
        Object obj;
        zzpu.zza();
        zzic zzicVar = this.zza.zzu;
        boolean zzp = zzicVar.zzc().zzp(this.zzb, zzfy.zzaD);
        com.google.android.gms.internal.measurement.zzfn zzfnVar = this.zzh;
        boolean zze = zzfnVar.zze();
        boolean zzf = zzfnVar.zzf();
        boolean zzh = zzfnVar.zzh();
        if (zze || zzf || zzh) {
            objArr = 1;
        } else {
            objArr = null;
        }
        Boolean bool = null;
        Integer num = null;
        bool = null;
        bool = null;
        bool = null;
        bool = null;
        if (z10 && objArr == null) {
            zzgs zzk = zzicVar.zzaV().zzk();
            Integer valueOf = Integer.valueOf(this.zzc);
            if (zzfnVar.zza()) {
                num = Integer.valueOf(zzfnVar.zzb());
            }
            zzk.zzc("Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID", valueOf, num);
            return true;
        }
        com.google.android.gms.internal.measurement.zzfh zzd = zzfnVar.zzd();
        boolean zzf2 = zzd.zzf();
        if (zziuVar.zzf()) {
            if (!zzd.zzc()) {
                zzicVar.zzaV().zze().zzb("No number filter for long property. property", zzicVar.zzl().zzc(zziuVar.zzc()));
            } else {
                bool = zzab.zze(zzab.zzg(zziuVar.zzg(), zzd.zzd()), zzf2);
            }
        } else if (zziuVar.zzj()) {
            if (!zzd.zzc()) {
                zzicVar.zzaV().zze().zzb("No number filter for double property. property", zzicVar.zzl().zzc(zziuVar.zzc()));
            } else {
                bool = zzab.zze(zzab.zzh(zziuVar.zzk(), zzd.zzd()), zzf2);
            }
        } else if (zziuVar.zzd()) {
            if (!zzd.zza()) {
                if (!zzd.zzc()) {
                    zzicVar.zzaV().zze().zzb("No string or number filter defined. property", zzicVar.zzl().zzc(zziuVar.zzc()));
                } else if (zzpk.zzm(zziuVar.zze())) {
                    bool = zzab.zze(zzab.zzi(zziuVar.zze(), zzd.zzd()), zzf2);
                } else {
                    zzicVar.zzaV().zze().zzc("Invalid user property value for Numeric number filter. property, value", zzicVar.zzl().zzc(zziuVar.zzc()), zziuVar.zze());
                }
            } else {
                bool = zzab.zze(zzab.zzf(zziuVar.zze(), zzd.zzb(), zzicVar.zzaV()), zzf2);
            }
        } else {
            zzicVar.zzaV().zze().zzb("User property has no value, property", zzicVar.zzl().zzc(zziuVar.zzc()));
        }
        zzgs zzk2 = zzicVar.zzaV().zzk();
        if (bool == null) {
            obj = "null";
        } else {
            obj = bool;
        }
        zzk2.zzb("Property filter result", obj);
        if (bool == null) {
            return false;
        }
        this.zzd = Boolean.TRUE;
        if (zzh && !bool.booleanValue()) {
            return true;
        }
        if (!z10 || zzfnVar.zze()) {
            this.zze = bool;
        }
        if (bool.booleanValue() && objArr != null && zziuVar.zza()) {
            long zzb = zziuVar.zzb();
            if (l10 != null) {
                zzb = l10.longValue();
            }
            if (zzp && zzfnVar.zze() && !zzfnVar.zzf() && l11 != null) {
                zzb = l11.longValue();
            }
            if (zzfnVar.zzf()) {
                this.zzg = Long.valueOf(zzb);
            } else {
                this.zzf = Long.valueOf(zzb);
            }
        }
        return true;
    }
}
