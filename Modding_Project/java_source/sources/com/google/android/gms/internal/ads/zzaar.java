package com.google.android.gms.internal.ads;

import android.media.MediaFormat;
import android.view.Surface;
import androidx.annotation.Nullable;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaar implements zzaco {
    private final zzabs zza;
    private final zzabx zzb;
    private final Queue zzc;
    @Nullable
    private Surface zzd;
    private zzz zze;
    private long zzf;
    private zzacl zzg;
    private Executor zzh;
    private zzabp zzi;

    public zzaar(zzabs zzabsVar, zzdj zzdjVar) {
        this.zza = zzabsVar;
        zzabsVar.zzi(zzdjVar);
        this.zzb = new zzabx(new zzaap(this, null), zzabsVar);
        this.zzc = new ArrayDeque();
        this.zze = new zzx().zzan();
        this.zzf = -9223372036854775807L;
        this.zzg = zzacl.zzb;
        this.zzh = new Executor() { // from class: com.google.android.gms.internal.ads.zzaaj
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
            }
        };
        this.zzi = new zzabp() { // from class: com.google.android.gms.internal.ads.zzaak
            @Override // com.google.android.gms.internal.ads.zzabp
            public final void zzcT(long j10, long j11, zzz zzzVar, MediaFormat mediaFormat) {
            }
        };
    }

    public static /* bridge */ /* synthetic */ zzacl zzd(zzaar zzaarVar) {
        return zzaarVar.zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final boolean zzA(zzz zzzVar) {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final boolean zzB() {
        return this.zzb.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final boolean zzC() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final boolean zzD(boolean z10) {
        return this.zza.zzm(z10);
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final Surface zzb() {
        Surface surface = this.zzd;
        zzdd.zzb(surface);
        return surface;
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzh() {
        this.zza.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzi() {
        this.zzd = null;
        this.zza.zzk(null);
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzj(boolean z10) {
        if (z10) {
            this.zza.zzg();
        }
        this.zzb.zza();
        this.zzc.clear();
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzk(boolean z10) {
        this.zza.zzc(z10);
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzl(int i10, zzz zzzVar, long j10, int i11, List list) {
        zzdd.zzf(list.isEmpty());
        int i12 = zzzVar.zzv;
        zzz zzzVar2 = this.zze;
        if (i12 != zzzVar2.zzv || zzzVar.zzw != zzzVar2.zzw) {
            this.zzb.zzd(i12, zzzVar.zzw);
        }
        float f10 = zzzVar.zzz;
        if (f10 != this.zze.zzz) {
            this.zza.zzj(f10);
        }
        this.zze = zzzVar;
        if (j10 != this.zzf) {
            this.zzb.zzc(i11, j10);
            this.zzf = j10;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzm() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzo(long j10, long j11) throws zzacn {
        try {
            this.zzb.zze(j10, j11);
        } catch (zzin e10) {
            throw new zzacn(e10, this.zze);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzp(long j10) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzq(int i10) {
        this.zza.zzh(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzr(zzacl zzaclVar, Executor executor) {
        this.zzg = zzaclVar;
        this.zzh = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzs(Surface surface, zzeo zzeoVar) {
        this.zzd = surface;
        this.zza.zzk(surface);
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzt(float f10) {
        this.zza.zzl(f10);
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzu(List list) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzv(zzabp zzabpVar) {
        this.zzi = zzabpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzw() {
        this.zzb.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzx() {
        this.zza.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzy() {
        this.zza.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final boolean zzz(long j10, zzacm zzacmVar) {
        this.zzc.add(zzacmVar);
        this.zzb.zzb(j10);
        this.zzh.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzaal
            @Override // java.lang.Runnable
            public final void run() {
                zzaar.this.zzg.zzb();
            }
        });
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzn() {
    }
}
