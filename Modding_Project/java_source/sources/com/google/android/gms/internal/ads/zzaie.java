package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.EOFException;
import java.io.IOException;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaie implements zzadv {
    private final zzen zza;
    private final zzaen zzb;
    private final zzaej zzc;
    private final zzael zzd;
    private final zzafb zze;
    private zzady zzf;
    private zzafb zzg;
    private zzafb zzh;
    private int zzi;
    @Nullable
    private zzav zzj;
    private long zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private int zzo;
    private zzaig zzp;
    private boolean zzq;

    public zzaie() {
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x022a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzg(com.google.android.gms.internal.ads.zzadw r35) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 756
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaie.zzg(com.google.android.gms.internal.ads.zzadw):int");
    }

    private final long zzh(long j10) {
        return this.zzk + ((j10 * 1000000) / this.zzb.zzd);
    }

    private final void zzj() {
        zzaig zzaigVar = this.zzp;
        if ((zzaigVar instanceof zzaib) && zzaigVar.zzh()) {
            long j10 = this.zzn;
            if (j10 != -1 && j10 != this.zzp.zzd()) {
                this.zzp = ((zzaib) this.zzp).zzf(this.zzn);
                zzady zzadyVar = this.zzf;
                zzadyVar.getClass();
                zzadyVar.zzP(this.zzp);
                this.zzg.getClass();
                this.zzp.zza();
            }
        }
    }

    private static boolean zzk(int i10, long j10) {
        if ((i10 & (-128000)) == (j10 & (-128000))) {
            return true;
        }
        return false;
    }

    private final boolean zzl(zzadw zzadwVar) throws IOException {
        zzaig zzaigVar = this.zzp;
        if (zzaigVar != null) {
            long zzd = zzaigVar.zzd();
            if (zzd != -1 && zzadwVar.zze() > zzd - 4) {
                return true;
            }
        }
        try {
            if (!zzadwVar.zzm(this.zza.zzN(), 0, 4, true)) {
                return true;
            }
            return false;
        } catch (EOFException unused) {
            return true;
        }
    }

    private final boolean zzm(zzadw zzadwVar, boolean z10) throws IOException {
        int i10;
        int i11;
        int zzb;
        int i12;
        zzadwVar.zzj();
        if (zzadwVar.zzf() == 0) {
            zzav zza = this.zzd.zza(zzadwVar, null);
            this.zzj = zza;
            if (zza != null) {
                this.zzc.zzb(zza);
            }
            i10 = (int) zzadwVar.zze();
            if (!z10) {
                zzadwVar.zzk(i10);
            }
            i11 = 0;
        } else {
            i10 = 0;
            i11 = 0;
        }
        int i13 = i11;
        int i14 = i13;
        while (true) {
            if (zzl(zzadwVar)) {
                if (i13 <= 0) {
                    zzj();
                    throw new EOFException();
                }
            } else {
                zzen zzenVar = this.zza;
                zzenVar.zzL(0);
                int zzg = zzenVar.zzg();
                if ((i11 != 0 && !zzk(zzg, i11)) || (zzb = zzaeo.zzb(zzg)) == -1) {
                    if (true != z10) {
                        i12 = 131072;
                    } else {
                        i12 = 32768;
                    }
                    int i15 = i14 + 1;
                    if (i14 == i12) {
                        if (z10) {
                            return false;
                        }
                        zzj();
                        throw new EOFException();
                    }
                    if (z10) {
                        zzadwVar.zzj();
                        zzadwVar.zzg(i10 + i15);
                    } else {
                        zzadwVar.zzk(1);
                    }
                    i11 = 0;
                    i14 = i15;
                    i13 = 0;
                } else {
                    i13++;
                    if (i13 == 1) {
                        this.zzb.zza(zzg);
                        i11 = zzg;
                    } else if (i13 == 4) {
                        break;
                    }
                    zzadwVar.zzg(zzb - 4);
                }
            }
        }
        if (z10) {
            zzadwVar.zzk(i10 + i14);
        } else {
            zzadwVar.zzj();
        }
        this.zzi = i11;
        return true;
    }

    public final void zza() {
        this.zzq = true;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final int zzb(zzadw zzadwVar, zzaer zzaerVar) throws IOException {
        zzdd.zzb(this.zzg);
        String str = zzex.zza;
        int zzg = zzg(zzadwVar);
        if (zzg == -1 && (this.zzp instanceof zzaic)) {
            if (this.zzp.zza() != zzh(this.zzl)) {
                zzaic zzaicVar = (zzaic) this.zzp;
                throw null;
            }
        }
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final /* synthetic */ List zzd() {
        return zzfyq.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final void zze(zzady zzadyVar) {
        this.zzf = zzadyVar;
        zzafb zzw = zzadyVar.zzw(0, 1);
        this.zzg = zzw;
        this.zzh = zzw;
        this.zzf.zzG();
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final void zzf(long j10, long j11) {
        this.zzi = 0;
        this.zzk = -9223372036854775807L;
        this.zzl = 0L;
        this.zzo = 0;
        if (!(this.zzp instanceof zzaic)) {
            return;
        }
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final boolean zzi(zzadw zzadwVar) throws IOException {
        return zzm(zzadwVar, true);
    }

    public zzaie(int i10) {
        this.zza = new zzen(10);
        this.zzb = new zzaen();
        this.zzc = new zzaej();
        this.zzk = -9223372036854775807L;
        this.zzd = new zzael();
        zzadr zzadrVar = new zzadr();
        this.zze = zzadrVar;
        this.zzh = zzadrVar;
        this.zzn = -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final /* synthetic */ zzadv zzc() {
        return this;
    }
}
