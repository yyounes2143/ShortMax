package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.Build;
import androidx.annotation.Nullable;
import java.lang.reflect.Method;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzqs {
    private long zzA;
    private long zzB;
    private long zzC;
    private long zzD;
    private boolean zzE;
    private long zzF;
    private zzdj zzG;
    boolean zza;
    private final zzqr zzb;
    private final long[] zzc;
    @Nullable
    private AudioTrack zzd;
    private int zze;
    @Nullable
    private zzqq zzf;
    private int zzg;
    private long zzh;
    private float zzi;
    private boolean zzj;
    private long zzk;
    private int zzl;
    private long zzm;
    private long zzn;
    @Nullable
    private Method zzo;
    private long zzp;
    private boolean zzq;
    private boolean zzr;
    private long zzs;
    private long zzt;
    private long zzu;
    private long zzv;
    private int zzw;
    private int zzx;
    private long zzy;
    private long zzz;

    public zzqs(zzqr zzqrVar) {
        this.zzb = zzqrVar;
        try {
            this.zzo = AudioTrack.class.getMethod("getLatency", null);
        } catch (NoSuchMethodException unused) {
        }
        this.zzc = new long[10];
        this.zzD = -9223372036854775807L;
        this.zzC = -9223372036854775807L;
        this.zzG = zzdj.zza;
    }

    private final long zzl() {
        if (this.zzy != -9223372036854775807L) {
            return Math.min(this.zzB, zzo());
        }
        long zzb = this.zzG.zzb();
        if (zzb - this.zzt >= 5) {
            AudioTrack audioTrack = this.zzd;
            audioTrack.getClass();
            int playState = audioTrack.getPlayState();
            if (playState != 1) {
                long playbackHeadPosition = audioTrack.getPlaybackHeadPosition() & 4294967295L;
                if (Build.VERSION.SDK_INT <= 29) {
                    if (playbackHeadPosition == 0) {
                        if (this.zzu > 0 && playState == 3) {
                            if (this.zzz == -9223372036854775807L) {
                                this.zzz = zzb;
                            }
                        } else {
                            playbackHeadPosition = 0;
                        }
                    }
                    this.zzz = -9223372036854775807L;
                }
                if (this.zzu > playbackHeadPosition) {
                    this.zzv++;
                }
                this.zzu = playbackHeadPosition;
            }
            this.zzt = zzb;
        }
        return this.zzu + this.zzF + (this.zzv << 32);
    }

    private final long zzm(long j10) {
        long zzq;
        if (this.zzx == 0) {
            if (this.zzy != -9223372036854775807L) {
                zzq = zzex.zzt(zzo(), this.zzg);
            } else {
                zzq = zzn();
            }
        } else {
            zzq = zzex.zzq(j10 + this.zzm, this.zzi);
        }
        long max = Math.max(0L, zzq - this.zzp);
        if (this.zzy != -9223372036854775807L) {
            return Math.min(zzex.zzt(this.zzB, this.zzg), max);
        }
        return max;
    }

    private final long zzn() {
        return zzex.zzt(zzl(), this.zzg);
    }

    private final long zzo() {
        AudioTrack audioTrack = this.zzd;
        audioTrack.getClass();
        if (audioTrack.getPlayState() == 2) {
            return this.zzA;
        }
        return this.zzA + zzex.zzp(zzex.zzq(zzex.zzs(this.zzG.zzb()) - this.zzy, this.zzi), this.zzg);
    }

    private final void zzp() {
        this.zzm = 0L;
        this.zzx = 0;
        this.zzw = 0;
        this.zzn = 0L;
        this.zzC = -9223372036854775807L;
        this.zzD = -9223372036854775807L;
        this.zzj = false;
    }

    public final long zza() {
        long zzm;
        Method method;
        AudioTrack audioTrack;
        AudioTrack audioTrack2 = this.zzd;
        audioTrack2.getClass();
        if (audioTrack2.getPlayState() == 3) {
            long zzc = this.zzG.zzc() / 1000;
            if (zzc - this.zzn >= 30000) {
                long zzn = zzn();
                if (zzn != 0) {
                    long[] jArr = this.zzc;
                    jArr[this.zzw] = zzex.zzr(zzn, this.zzi) - zzc;
                    this.zzw = (this.zzw + 1) % 10;
                    int i10 = this.zzx;
                    if (i10 < 10) {
                        this.zzx = i10 + 1;
                    }
                    this.zzn = zzc;
                    this.zzm = 0L;
                    int i11 = 0;
                    while (true) {
                        int i12 = this.zzx;
                        if (i11 >= i12) {
                            break;
                        }
                        this.zzm += jArr[i11] / i12;
                        i11++;
                    }
                }
            }
            if (this.zzr && (method = this.zzo) != null && zzc - this.zzs >= 500000) {
                try {
                } catch (Exception unused) {
                    this.zzo = null;
                }
                if (this.zzd != null) {
                    String str = zzex.zza;
                    long intValue = (((Integer) method.invoke(audioTrack, new Object[0])).intValue() * 1000) - this.zzh;
                    this.zzp = intValue;
                    long max = Math.max(intValue, 0L);
                    this.zzp = max;
                    if (max > 5000000) {
                        this.zzb.zza(max);
                        this.zzp = 0L;
                    }
                    this.zzs = zzc;
                } else {
                    throw null;
                }
            }
            zzqq zzqqVar = this.zzf;
            zzqqVar.getClass();
            zzqqVar.zzb(zzc, this.zzi, zzm(zzc));
        }
        long zzc2 = this.zzG.zzc() / 1000;
        zzqq zzqqVar2 = this.zzf;
        zzqqVar2.getClass();
        boolean zzd = zzqqVar2.zzd();
        if (zzd) {
            zzm = zzqqVar2.zza(zzc2, this.zzi);
        } else {
            zzm = zzm(zzc2);
        }
        if (audioTrack2.getPlayState() == 3) {
            if (this.zza) {
                long j10 = this.zzk;
                if (j10 != -9223372036854775807L && zzm >= j10 && (zzd || !zzqqVar2.zze())) {
                    long zza = this.zzG.zza() - zzex.zzv(zzex.zzr(zzm - j10, this.zzi));
                    this.zzk = -9223372036854775807L;
                    this.zzb.zzb(zza);
                }
            }
            long j11 = this.zzD;
            if (j11 != -9223372036854775807L) {
                long zzq = zzex.zzq(zzc2 - j11, this.zzi);
                long j12 = this.zzC + zzq;
                int i13 = ((zzm - this.zzC) > 0L ? 1 : ((zzm - this.zzC) == 0L ? 0 : -1));
                long abs = Math.abs(j12 - zzm);
                if (i13 != 0 && abs < 1000000) {
                    long j13 = (zzq * 10) / 100;
                    zzm = Math.max(j12 - j13, Math.min(zzm, j12 + j13));
                }
            }
            if (!this.zza && !this.zzj) {
                long j14 = this.zzC;
                if (j14 != -9223372036854775807L && zzm > j14) {
                    this.zzj = true;
                    String str2 = zzex.zza;
                    this.zzb.zzb(this.zzG.zza() - zzex.zzv(zzex.zzr(zzex.zzv(zzm - j14), this.zzi)));
                }
            }
            this.zzD = zzc2;
            this.zzC = zzm;
        }
        return zzm;
    }

    public final void zzb(long j10) {
        this.zzA = zzl();
        this.zzy = zzex.zzs(this.zzG.zzb());
        this.zzB = j10;
    }

    public final void zzc() {
        zzp();
        this.zzd = null;
        this.zzf = null;
    }

    public final void zzd(AudioTrack audioTrack, boolean z10, int i10, int i11, int i12, boolean z11) {
        long j10;
        this.zzd = audioTrack;
        this.zze = i12;
        this.zzf = new zzqq(audioTrack, this.zzb);
        this.zzg = audioTrack.getSampleRate();
        boolean zzK = zzex.zzK(i10);
        this.zzr = zzK;
        if (zzK) {
            j10 = zzex.zzt(i12 / i11, this.zzg);
        } else {
            j10 = -9223372036854775807L;
        }
        this.zzh = j10;
        this.zzu = 0L;
        this.zzv = 0L;
        this.zzE = false;
        this.zzF = 0L;
        this.zzq = false;
        this.zzy = -9223372036854775807L;
        this.zzz = -9223372036854775807L;
        this.zzs = 0L;
        this.zzp = 0L;
        this.zzi = 1.0f;
        this.zzl = 0;
        this.zzk = -9223372036854775807L;
        this.zza = z11;
    }

    public final void zze(zzdj zzdjVar) {
        this.zzG = zzdjVar;
    }

    public final void zzf() {
        if (this.zzy != -9223372036854775807L) {
            this.zzy = zzex.zzs(this.zzG.zzb());
        }
        this.zzk = zzn();
        zzqq zzqqVar = this.zzf;
        zzqqVar.getClass();
        zzqqVar.zzc();
    }

    public final boolean zzg(long j10) {
        if (j10 <= zzex.zzp(zza(), this.zzg)) {
            return false;
        }
        return true;
    }

    public final boolean zzh() {
        AudioTrack audioTrack = this.zzd;
        audioTrack.getClass();
        if (audioTrack.getPlayState() == 3) {
            return true;
        }
        return false;
    }

    public final boolean zzi(long j10) {
        if (this.zzz != -9223372036854775807L && j10 > 0 && this.zzG.zzb() - this.zzz >= 200) {
            return true;
        }
        return false;
    }

    public final boolean zzj(long j10) {
        boolean z10;
        AudioTrack audioTrack = this.zzd;
        audioTrack.getClass();
        audioTrack.getPlayState();
        AudioTrack audioTrack2 = this.zzd;
        audioTrack2.getClass();
        int underrunCount = audioTrack2.getUnderrunCount();
        if (underrunCount > this.zzl) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.zzl = underrunCount;
        if (z10) {
            this.zzb.zze(this.zze, zzex.zzv(this.zzh));
        }
        return true;
    }

    public final boolean zzk() {
        zzp();
        if (this.zzy == -9223372036854775807L) {
            zzqq zzqqVar = this.zzf;
            zzqqVar.getClass();
            zzqqVar.zzc();
            return true;
        }
        this.zzA = zzl();
        return false;
    }
}
