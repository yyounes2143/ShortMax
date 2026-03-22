package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Looper;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzwq extends zzug implements zzwh {
    private final zzgi zza;
    private final zzsh zzb;
    private final int zzc;
    private boolean zzd = true;
    private long zze = -9223372036854775807L;
    private boolean zzf;
    private boolean zzg;
    @Nullable
    private zzhj zzh;
    @GuardedBy("this")
    private zzap zzi;
    private final zzwn zzj;
    private final zzzq zzk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzwq(zzap zzapVar, zzgi zzgiVar, zzwn zzwnVar, zzsh zzshVar, zzzq zzzqVar, int i10, int i11, zzz zzzVar, zzfwh zzfwhVar, zzwp zzwpVar) {
        this.zzi = zzapVar;
        this.zza = zzgiVar;
        this.zzj = zzwnVar;
        this.zzb = zzshVar;
        this.zzk = zzzqVar;
        this.zzc = i10;
    }

    private final void zzw() {
        zzaj zzajVar;
        zzbl zzblVar;
        long j10 = this.zze;
        boolean z10 = this.zzf;
        boolean z11 = this.zzg;
        zzap zzJ = zzJ();
        if (z11) {
            zzajVar = zzJ.zzc;
        } else {
            zzajVar = null;
        }
        zzxd zzxdVar = new zzxd(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L, j10, j10, 0L, 0L, z10, false, false, null, zzJ, zzajVar);
        if (this.zzd) {
            zzblVar = new zzwm(this, zzxdVar);
        } else {
            zzblVar = zzxdVar;
        }
        zzo(zzblVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvj
    public final void zzG(zzvf zzvfVar) {
        ((zzwl) zzvfVar).zzO();
    }

    @Override // com.google.android.gms.internal.ads.zzvj
    public final zzvf zzI(zzvh zzvhVar, zzzm zzzmVar, long j10) {
        zzgj zza = this.zza.zza();
        zzhj zzhjVar = this.zzh;
        if (zzhjVar != null) {
            zza.zzf(zzhjVar);
        }
        zzak zzakVar = zzJ().zzb;
        zzakVar.getClass();
        Uri uri = zzakVar.zza;
        zzwn zzwnVar = this.zzj;
        zzb();
        return new zzwl(uri, zza, new zzuj(zzwnVar.zza), this.zzb, zzc(zzvhVar), this.zzk, zze(zzvhVar), this, zzzmVar, null, this.zzc, 0, null, zzex.zzs(-9223372036854775807L), null);
    }

    @Override // com.google.android.gms.internal.ads.zzvj
    public final synchronized zzap zzJ() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzwh
    public final void zza(long j10, zzaeu zzaeuVar, boolean z10) {
        if (j10 == -9223372036854775807L) {
            j10 = this.zze;
        }
        boolean zzh = zzaeuVar.zzh();
        if (!this.zzd && this.zze == j10 && this.zzf == zzh && this.zzg == z10) {
            return;
        }
        this.zze = j10;
        this.zzf = zzh;
        this.zzg = z10;
        this.zzd = false;
        zzw();
    }

    @Override // com.google.android.gms.internal.ads.zzug
    protected final void zzn(@Nullable zzhj zzhjVar) {
        this.zzh = zzhjVar;
        Looper.myLooper().getClass();
        zzb();
        zzw();
    }

    @Override // com.google.android.gms.internal.ads.zzug, com.google.android.gms.internal.ads.zzvj
    public final synchronized void zzt(zzap zzapVar) {
        this.zzi = zzapVar;
    }

    @Override // com.google.android.gms.internal.ads.zzug
    protected final void zzq() {
    }

    @Override // com.google.android.gms.internal.ads.zzvj
    public final void zzz() {
    }
}
