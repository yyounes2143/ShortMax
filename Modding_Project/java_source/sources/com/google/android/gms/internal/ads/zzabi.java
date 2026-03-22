package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.Surface;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.collection.SieveCacheKt;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzabi implements zzaco {
    final /* synthetic */ zzabo zza;
    private zzfyq zzb;
    @Nullable
    private zzz zzc;
    private long zzd;
    private long zze;

    public zzabi(zzabo zzaboVar, Context context, int i10) {
        Objects.requireNonNull(zzaboVar);
        this.zza = zzaboVar;
        zzex.zzL(context);
        this.zzb = zzfyq.zzn();
        this.zze = -9223372036854775807L;
    }

    private final void zza(zzz zzzVar) {
        zzk zzA;
        zzabo zzaboVar = this.zza;
        zzx zzb = zzzVar.zzb();
        zzA = zzabo.zzA(zzzVar.zzE);
        zzb.zzF(zzA);
        zzb.zzan();
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final boolean zzA(zzz zzzVar) throws zzacn {
        return zzabo.zzy(this.zza, zzzVar, 0);
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final boolean zzB() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final boolean zzC() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final boolean zzD(boolean z10) {
        boolean zzD;
        zzD = this.zza.zze.zzD(false);
        return zzD;
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final Surface zzb() {
        zzdd.zzf(false);
        throw null;
    }

    /* JADX WARN: Incorrect condition in loop: B:8:0x0021 */
    @Override // com.google.android.gms.internal.ads.zzaco
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzh() {
        /*
            r11 = this;
            com.google.android.gms.internal.ads.zzabo r0 = r11.zza
            com.google.android.gms.internal.ads.zzet r1 = com.google.android.gms.internal.ads.zzabo.zzd(r0)
            int r1 = r1.zza()
            if (r1 != 0) goto L10
            com.google.android.gms.internal.ads.zzabo.zzi(r0)
            return
        L10:
            com.google.android.gms.internal.ads.zzet r1 = new com.google.android.gms.internal.ads.zzet
            r2 = 10
            r1.<init>(r2)
            r2 = 1
            r3 = r2
        L19:
            com.google.android.gms.internal.ads.zzet r4 = com.google.android.gms.internal.ads.zzabo.zzd(r0)
            int r4 = r4.zza()
            if (r4 <= 0) goto L4f
            com.google.android.gms.internal.ads.zzet r4 = com.google.android.gms.internal.ads.zzabo.zzd(r0)
            java.lang.Object r4 = r4.zzb()
            com.google.android.gms.internal.ads.zzabm r4 = (com.google.android.gms.internal.ads.zzabm) r4
            r4.getClass()
            if (r3 == 0) goto L48
            int r3 = r4.zzb
            if (r3 == 0) goto L3d
            if (r3 != r2) goto L39
            goto L3d
        L39:
            com.google.android.gms.internal.ads.zzabo.zzi(r0)
            goto L48
        L3d:
            long r6 = r4.zza
            long r9 = r4.zzc
            com.google.android.gms.internal.ads.zzabm r4 = new com.google.android.gms.internal.ads.zzabm
            r8 = 0
            r5 = r4
            r5.<init>(r6, r8, r9)
        L48:
            long r5 = r4.zzc
            r1.zzd(r5, r4)
            r3 = 0
            goto L19
        L4f:
            com.google.android.gms.internal.ads.zzabo.zzh(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzabi.zzh():void");
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzi() {
        this.zza.zzq();
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzj(boolean z10) {
        this.zze = -9223372036854775807L;
        zzabo.zzj(this.zza, z10);
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzk(boolean z10) {
        boolean z11;
        zzabo zzaboVar = this.zza;
        z11 = zzaboVar.zzd;
        if (z11) {
            zzaboVar.zze.zzk(z10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzl(int i10, zzz zzzVar, long j10, int i11, List list) {
        boolean z10;
        zzet zzetVar;
        zzdd.zzf(false);
        this.zzb = zzfyq.zzl(list);
        this.zzc = zzzVar;
        zzabo zzaboVar = this.zza;
        zzaboVar.zzq = -9223372036854775807L;
        zza(zzzVar);
        long j11 = this.zze;
        z10 = zzaboVar.zzd;
        long j12 = SieveCacheKt.NodeMetaMask;
        if (!z10) {
            if (j11 != -9223372036854775807L) {
                return;
            }
        } else if (j11 != -9223372036854775807L) {
            j12 = j11 + 1;
        }
        zzetVar = zzaboVar.zzh;
        zzetVar.zzd(j12, new zzabm(j10 + this.zzd, i11, j12));
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzn() {
        this.zza.zzr();
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzo(long j10, long j11) throws zzacn {
        this.zza.zze.zzo(j10 + this.zzd, j11);
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzp(long j10) {
        this.zzd = j10;
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzq(int i10) {
        this.zza.zze.zzq(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzs(Surface surface, zzeo zzeoVar) {
        this.zza.zzs(surface, zzeoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzt(@FloatRange(from = 0.0d, fromInclusive = false) float f10) {
        this.zza.zze.zzt(f10);
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzu(List list) {
        if (!this.zzb.equals(list)) {
            this.zzb = zzfyq.zzl(list);
            zzz zzzVar = this.zzc;
            if (zzzVar != null) {
                zza(zzzVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzv(zzabp zzabpVar) {
        this.zza.zze.zzv(zzabpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzw() {
        long j10;
        long j11;
        zzabo zzaboVar = this.zza;
        zzaboVar.zzq = this.zze;
        j10 = zzaboVar.zzp;
        j11 = zzaboVar.zzq;
        if (j10 >= j11) {
            zzaboVar.zze.zzw();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzx() {
        boolean z10;
        zzabo zzaboVar = this.zza;
        z10 = zzaboVar.zzd;
        if (z10) {
            zzaboVar.zzu();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzy() {
        boolean z10;
        zzabo zzaboVar = this.zza;
        z10 = zzaboVar.zzd;
        if (z10) {
            zzaboVar.zzv();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final boolean zzz(long j10, zzacm zzacmVar) {
        zzdd.zzf(false);
        if (!zzabo.zzz(this.zza)) {
            return false;
        }
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzm() {
    }

    @Override // com.google.android.gms.internal.ads.zzaco
    public final void zzr(zzacl zzaclVar, Executor executor) {
    }
}
