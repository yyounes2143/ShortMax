package com.google.android.gms.internal.ads;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzic implements zzma, zzmd {
    private final int zzb;
    @Nullable
    private zzme zzd;
    private int zze;
    private zzph zzf;
    private zzdj zzg;
    private int zzh;
    @Nullable
    private zzwz zzi;
    @Nullable
    private zzz[] zzj;
    private long zzk;
    private long zzl;
    private boolean zzn;
    private boolean zzo;
    @Nullable
    private zzvh zzq;
    @Nullable
    @GuardedBy("lock")
    private zzmc zzr;
    private final Object zza = new Object();
    private final zzkv zzc = new zzkv();
    private long zzm = Long.MIN_VALUE;
    private zzbl zzp = zzbl.zza;

    public zzic(int i10) {
        this.zzb = i10;
    }

    private final void zzaa(long j10, boolean z10) throws zzin {
        this.zzn = false;
        this.zzl = j10;
        this.zzm = j10;
        zzA(j10, z10);
    }

    protected void zzA(long j10, boolean z10) throws zzin {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzC() {
        zzmc zzmcVar;
        synchronized (this.zza) {
            zzmcVar = this.zzr;
        }
        if (zzmcVar != null) {
            zzmcVar.zza(this);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzma
    public final void zzH() {
        boolean z10;
        if (this.zzh == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zzf(z10);
        zzB();
    }

    @Override // com.google.android.gms.internal.ads.zzma
    public final void zzI(zzz[] zzzVarArr, zzwz zzwzVar, long j10, long j11, zzvh zzvhVar) throws zzin {
        zzdd.zzf(!this.zzn);
        this.zzi = zzwzVar;
        this.zzq = zzvhVar;
        if (this.zzm == Long.MIN_VALUE) {
            this.zzm = j10;
        }
        this.zzj = zzzVarArr;
        this.zzk = j11;
        zzG(zzzVarArr, j10, j11, zzvhVar);
    }

    @Override // com.google.android.gms.internal.ads.zzma
    public final void zzJ() {
        boolean z10;
        if (this.zzh == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zzf(z10);
        zzkv zzkvVar = this.zzc;
        zzkvVar.zzb = null;
        zzkvVar.zza = null;
        zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzma
    public final void zzK(long j10) throws zzin {
        zzaa(j10, false);
    }

    @Override // com.google.android.gms.internal.ads.zzma
    public final void zzL() {
        this.zzn = true;
    }

    @Override // com.google.android.gms.internal.ads.zzmd
    public final void zzM(zzmc zzmcVar) {
        synchronized (this.zza) {
            this.zzr = zzmcVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzma
    public final void zzO(zzbl zzblVar) {
        if (!Objects.equals(this.zzp, zzblVar)) {
            this.zzp = zzblVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzma
    public final void zzP() throws zzin {
        boolean z10 = true;
        if (this.zzh != 1) {
            z10 = false;
        }
        zzdd.zzf(z10);
        this.zzh = 2;
        zzE();
    }

    @Override // com.google.android.gms.internal.ads.zzma
    public final void zzQ() {
        boolean z10;
        if (this.zzh == 2) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zzf(z10);
        this.zzh = 1;
        zzF();
    }

    @Override // com.google.android.gms.internal.ads.zzma
    public final boolean zzR() {
        if (this.zzm == Long.MIN_VALUE) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzma
    public final boolean zzS() {
        return this.zzn;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean zzT() {
        if (zzR()) {
            return this.zzn;
        }
        zzwz zzwzVar = this.zzi;
        zzwzVar.getClass();
        return zzwzVar.zze();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzz[] zzU() {
        zzz[] zzzVarArr = this.zzj;
        zzzVarArr.getClass();
        return zzzVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zzma, com.google.android.gms.internal.ads.zzmd
    public final int zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzma
    public final int zzcU() {
        return this.zzh;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int zzcV(zzkv zzkvVar, zzhs zzhsVar, int i10) {
        zzwz zzwzVar = this.zzi;
        zzwzVar.getClass();
        int zza = zzwzVar.zza(zzkvVar, zzhsVar, i10);
        if (zza == -4) {
            if (zzhsVar.zzf()) {
                this.zzm = Long.MIN_VALUE;
                if (this.zzn) {
                    return -4;
                }
                return -3;
            }
            long j10 = zzhsVar.zze + this.zzk;
            zzhsVar.zze = j10;
            this.zzm = Math.max(this.zzm, j10);
        } else if (zza == -5) {
            zzz zzzVar = zzkvVar.zza;
            zzzVar.getClass();
            long j11 = zzzVar.zzt;
            if (j11 != Long.MAX_VALUE) {
                zzx zzb = zzzVar.zzb();
                zzb.zzal(j11 + this.zzk);
                zzkvVar.zza = zzb.zzan();
                return -5;
            }
        }
        return zza;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long zzcW() {
        return this.zzl;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzdj zzcX() {
        zzdj zzdjVar = this.zzg;
        zzdjVar.getClass();
        return zzdjVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int zzd(long j10) {
        zzwz zzwzVar = this.zzi;
        zzwzVar.getClass();
        return zzwzVar.zzb(j10 - this.zzk);
    }

    @Override // com.google.android.gms.internal.ads.zzmd
    public int zze() throws zzin {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzma
    public /* synthetic */ long zzf(long j10, long j11) {
        return 10000L;
    }

    @Override // com.google.android.gms.internal.ads.zzma
    public final long zzh() {
        return this.zzm;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzbl zzi() {
        return this.zzp;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzin zzk(Throwable th2, @Nullable zzz zzzVar, boolean z10, int i10) {
        int i11 = 4;
        if (zzzVar != null && !this.zzo) {
            this.zzo = true;
            try {
                i11 = zzZ(zzzVar) & 7;
            } catch (zzin unused) {
            } finally {
                this.zzo = false;
            }
        }
        return zzin.zzb(th2, zzV(), this.zze, zzzVar, i11, this.zzq, z10, i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzkv zzl() {
        zzkv zzkvVar = this.zzc;
        zzkvVar.zzb = null;
        zzkvVar.zza = null;
        return zzkvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzma
    @Nullable
    public zzlb zzm() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzme zzo() {
        zzme zzmeVar = this.zzd;
        zzmeVar.getClass();
        return zzmeVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzph zzp() {
        zzph zzphVar = this.zzf;
        zzphVar.getClass();
        return zzphVar;
    }

    @Override // com.google.android.gms.internal.ads.zzma
    @Nullable
    public final zzwz zzq() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzmd
    public final void zzr() {
        synchronized (this.zza) {
            this.zzr = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzma
    public final void zzs() {
        boolean z10 = true;
        if (this.zzh != 1) {
            z10 = false;
        }
        zzdd.zzf(z10);
        zzkv zzkvVar = this.zzc;
        zzkvVar.zzb = null;
        zzkvVar.zza = null;
        this.zzh = 0;
        this.zzi = null;
        this.zzj = null;
        this.zzn = false;
        zzy();
        this.zzq = null;
    }

    @Override // com.google.android.gms.internal.ads.zzma
    public final void zzt(zzme zzmeVar, zzz[] zzzVarArr, zzwz zzwzVar, long j10, boolean z10, boolean z11, long j11, long j12, zzvh zzvhVar) throws zzin {
        boolean z12;
        if (this.zzh == 0) {
            z12 = true;
        } else {
            z12 = false;
        }
        zzdd.zzf(z12);
        this.zzd = zzmeVar;
        this.zzq = zzvhVar;
        this.zzh = 1;
        zzz(z10, z11);
        zzI(zzzVarArr, zzwzVar, j11, j12, zzvhVar);
        zzaa(j11, z10);
    }

    @Override // com.google.android.gms.internal.ads.zzma
    public final void zzw(int i10, zzph zzphVar, zzdj zzdjVar) {
        this.zze = i10;
        this.zzf = zzphVar;
        this.zzg = zzdjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzma
    public final void zzx() throws IOException {
        zzwz zzwzVar = this.zzi;
        zzwzVar.getClass();
        zzwzVar.zzd();
    }

    protected void zzy() {
        throw null;
    }

    protected void zzB() {
    }

    protected void zzD() {
    }

    protected void zzE() throws zzin {
    }

    protected void zzF() {
    }

    @Override // com.google.android.gms.internal.ads.zzma
    public final zzmd zzn() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzma
    public /* synthetic */ void zzu() {
    }

    @Override // com.google.android.gms.internal.ads.zzma
    public /* synthetic */ void zzN(float f10, float f11) {
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    public void zzv(int i10, @Nullable Object obj) throws zzin {
    }

    protected void zzz(boolean z10, boolean z11) throws zzin {
    }

    protected void zzG(zzz[] zzzVarArr, long j10, long j11, zzvh zzvhVar) throws zzin {
    }
}
