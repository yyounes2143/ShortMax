package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaga implements zzadv {
    private final byte[] zza;
    private final zzen zzb;
    private final zzaeb zzc;
    private zzady zzd;
    private zzafb zze;
    private int zzf;
    @Nullable
    private zzav zzg;
    private zzaeg zzh;
    private int zzi;
    private int zzj;
    private zzafz zzk;
    private int zzl;
    private long zzm;

    public zzaga() {
        throw null;
    }

    private final long zza(zzen zzenVar, boolean z10) {
        boolean z11;
        this.zzh.getClass();
        int zzc = zzenVar.zzc();
        while (zzc <= zzenVar.zzd() - 16) {
            zzenVar.zzL(zzc);
            zzaeg zzaegVar = this.zzh;
            int i10 = this.zzj;
            zzaeb zzaebVar = this.zzc;
            if (zzaec.zzc(zzenVar, zzaegVar, i10, zzaebVar)) {
                zzenVar.zzL(zzc);
                return zzaebVar.zza;
            }
            zzc++;
        }
        if (z10) {
            while (zzc <= zzenVar.zzd() - this.zzi) {
                zzenVar.zzL(zzc);
                try {
                    z11 = zzaec.zzc(zzenVar, this.zzh, this.zzj, this.zzc);
                } catch (IndexOutOfBoundsException unused) {
                    z11 = false;
                }
                if (zzenVar.zzc() <= zzenVar.zzd() && z11) {
                    zzenVar.zzL(zzc);
                    return this.zzc.zza;
                }
                zzc++;
            }
            zzenVar.zzL(zzenVar.zzd());
            return -1L;
        }
        zzenVar.zzL(zzc);
        return -1L;
    }

    private final void zzg() {
        zzaeg zzaegVar = this.zzh;
        String str = zzex.zza;
        this.zze.zzt((this.zzm * 1000000) / zzaegVar.zze, 1, this.zzl, 0, null);
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final int zzb(zzadw zzadwVar, zzaer zzaerVar) throws IOException {
        boolean zzp;
        zzaeu zzaetVar;
        int i10 = this.zzf;
        boolean z10 = true;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            this.zze.getClass();
                            zzaeg zzaegVar = this.zzh;
                            zzaegVar.getClass();
                            zzafz zzafzVar = this.zzk;
                            if (zzafzVar != null && zzafzVar.zze()) {
                                return zzafzVar.zza(zzadwVar, zzaerVar);
                            }
                            if (this.zzm == -1) {
                                this.zzm = zzaec.zzb(zzadwVar, zzaegVar);
                                return 0;
                            }
                            zzen zzenVar = this.zzb;
                            int zzd = zzenVar.zzd();
                            if (zzd < 32768) {
                                int zza = zzadwVar.zza(zzenVar.zzN(), zzd, 32768 - zzd);
                                if (zza != -1) {
                                    z10 = false;
                                }
                                if (!z10) {
                                    zzenVar.zzK(zzd + zza);
                                } else if (zzenVar.zza() == 0) {
                                    zzg();
                                    return -1;
                                }
                            } else {
                                z10 = false;
                            }
                            int zzc = zzenVar.zzc();
                            int i11 = this.zzl;
                            int i12 = this.zzi;
                            if (i11 < i12) {
                                zzenVar.zzM(Math.min(i12 - i11, zzenVar.zza()));
                            }
                            long zza2 = zza(zzenVar, z10);
                            int zzc2 = zzenVar.zzc() - zzc;
                            zzenVar.zzL(zzc);
                            this.zze.zzr(zzenVar, zzc2);
                            this.zzl += zzc2;
                            if (zza2 != -1) {
                                zzg();
                                this.zzl = 0;
                                this.zzm = zza2;
                            }
                            int length = zzenVar.zzN().length - zzenVar.zzd();
                            if (zzenVar.zza() >= 16 || length >= 16) {
                                return 0;
                            }
                            int zza3 = zzenVar.zza();
                            System.arraycopy(zzenVar.zzN(), zzenVar.zzc(), zzenVar.zzN(), 0, zza3);
                            zzenVar.zzL(0);
                            zzenVar.zzK(zza3);
                            return 0;
                        }
                        zzadwVar.zzj();
                        zzen zzenVar2 = new zzen(2);
                        zzadwVar.zzh(zzenVar2.zzN(), 0, 2);
                        int zzq = zzenVar2.zzq();
                        if ((zzq >> 2) == 16382) {
                            zzadwVar.zzj();
                            this.zzj = zzq;
                            zzady zzadyVar = this.zzd;
                            String str = zzex.zza;
                            long zzf = zzadwVar.zzf();
                            long zzd2 = zzadwVar.zzd();
                            zzaeg zzaegVar2 = this.zzh;
                            zzaegVar2.getClass();
                            zzaef zzaefVar = zzaegVar2.zzk;
                            if (zzaefVar != null && zzaefVar.zza.length > 0) {
                                zzaetVar = new zzaee(zzaegVar2, zzf);
                            } else if (zzd2 != -1 && zzaegVar2.zzj > 0) {
                                zzafz zzafzVar2 = new zzafz(zzaegVar2, this.zzj, zzf, zzd2);
                                this.zzk = zzafzVar2;
                                zzaetVar = zzafzVar2.zzb();
                            } else {
                                zzaetVar = new zzaet(zzaegVar2.zza(), 0L);
                            }
                            zzadyVar.zzP(zzaetVar);
                            this.zzf = 5;
                            return 0;
                        }
                        zzadwVar.zzj();
                        throw zzaz.zza("First frame does not start with sync code.", null);
                    }
                    zzaeg zzaegVar3 = this.zzh;
                    do {
                        zzadwVar.zzj();
                        zzem zzemVar = new zzem(new byte[4], 4);
                        zzadwVar.zzh(zzemVar.zza, 0, 4);
                        zzp = zzemVar.zzp();
                        int zzd3 = zzemVar.zzd(7);
                        int zzd4 = zzemVar.zzd(24) + 4;
                        if (zzd3 == 0) {
                            byte[] bArr = new byte[38];
                            zzadwVar.zzi(bArr, 0, 38);
                            zzaegVar3 = new zzaeg(bArr, 4);
                        } else if (zzaegVar3 != null) {
                            if (zzd3 == 3) {
                                zzen zzenVar3 = new zzen(zzd4);
                                zzadwVar.zzi(zzenVar3.zzN(), 0, zzd4);
                                zzaegVar3 = zzaegVar3.zzf(zzaed.zzb(zzenVar3));
                            } else if (zzd3 == 4) {
                                zzen zzenVar4 = new zzen(zzd4);
                                zzadwVar.zzi(zzenVar4.zzN(), 0, zzd4);
                                zzenVar4.zzM(4);
                                zzaegVar3 = zzaegVar3.zzg(Arrays.asList(zzafh.zzc(zzenVar4, false, false).zza));
                            } else if (zzd3 == 6) {
                                zzen zzenVar5 = new zzen(zzd4);
                                zzadwVar.zzi(zzenVar5.zzN(), 0, zzd4);
                                zzenVar5.zzM(4);
                                zzaegVar3 = zzaegVar3.zze(zzfyq.zzo(zzagt.zzb(zzenVar5)));
                            } else {
                                zzadwVar.zzk(zzd4);
                            }
                        } else {
                            throw new IllegalArgumentException();
                        }
                        String str2 = zzex.zza;
                        this.zzh = zzaegVar3;
                    } while (!zzp);
                    zzaegVar3.getClass();
                    this.zzi = Math.max(zzaegVar3.zzc, 6);
                    zzz zzc3 = this.zzh.zzc(this.zza, this.zzg);
                    zzafb zzafbVar = this.zze;
                    zzx zzb = zzc3.zzb();
                    zzb.zzG(MimeTypes.AUDIO_FLAC);
                    zzafbVar.zzm(zzb.zzan());
                    this.zze.zzl(this.zzh.zza());
                    this.zzf = 4;
                    return 0;
                }
                zzen zzenVar6 = new zzen(4);
                zzadwVar.zzi(zzenVar6.zzN(), 0, 4);
                if (zzenVar6.zzu() == 1716281667) {
                    this.zzf = 3;
                    return 0;
                }
                throw zzaz.zza("Failed to read FLAC stream marker.", null);
            }
            zzadwVar.zzh(this.zza, 0, 42);
            zzadwVar.zzj();
            this.zzf = 2;
            return 0;
        }
        zzadwVar.zzj();
        long zze = zzadwVar.zze();
        zzav zza4 = zzaed.zza(zzadwVar, true);
        zzadwVar.zzk((int) (zzadwVar.zze() - zze));
        this.zzg = zza4;
        this.zzf = 1;
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final /* synthetic */ List zzd() {
        return zzfyq.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final void zze(zzady zzadyVar) {
        this.zzd = zzadyVar;
        this.zze = zzadyVar.zzw(0, 1);
        zzadyVar.zzG();
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final void zzf(long j10, long j11) {
        long j12 = 0;
        if (j10 == 0) {
            this.zzf = 0;
        } else {
            zzafz zzafzVar = this.zzk;
            if (zzafzVar != null) {
                zzafzVar.zzd(j11);
            }
        }
        if (j11 != 0) {
            j12 = -1;
        }
        this.zzm = j12;
        this.zzl = 0;
        this.zzb.zzI(0);
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final boolean zzi(zzadw zzadwVar) throws IOException {
        zzaed.zza(zzadwVar, false);
        zzen zzenVar = new zzen(4);
        ((zzadl) zzadwVar).zzm(zzenVar.zzN(), 0, 4, false);
        if (zzenVar.zzu() != 1716281667) {
            return false;
        }
        return true;
    }

    public zzaga(int i10) {
        this.zza = new byte[42];
        this.zzb = new zzen(new byte[32768], 0);
        this.zzc = new zzaeb();
        this.zzf = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final /* synthetic */ zzadv zzc() {
        return this;
    }
}
