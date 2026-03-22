package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzqq {
    private final zzqp zza;
    private final int zzb;
    private final zzqr zzc;
    private int zzd;
    private long zze;
    private long zzf;
    private long zzg;
    private long zzh;
    private long zzi;

    public zzqq(AudioTrack audioTrack, zzqr zzqrVar) {
        this.zza = new zzqp(audioTrack);
        this.zzb = audioTrack.getSampleRate();
        this.zzc = zzqrVar;
        zzh(0);
    }

    private final long zzf(long j10, float f10) {
        zzqp zzqpVar = this.zza;
        return zzg(zzqpVar.zza(), zzqpVar.zzb(), j10, f10);
    }

    private final long zzg(long j10, long j11, long j12, float f10) {
        return zzex.zzt(j10, this.zzb) + zzex.zzq(j12 - j11, f10);
    }

    private final void zzh(int i10) {
        this.zzd = i10;
        long j10 = 10000;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2 && i10 != 3) {
                    j10 = 500000;
                } else {
                    j10 = 10000000;
                }
            } else {
                this.zzf = 10000L;
                return;
            }
        } else {
            this.zzg = 0L;
            this.zzh = -1L;
            this.zzi = -9223372036854775807L;
            this.zze = System.nanoTime() / 1000;
        }
        this.zzf = j10;
    }

    public final long zza(long j10, float f10) {
        return zzf(j10, f10);
    }

    public final void zzb(long j10, float f10, long j11) {
        zzqp zzqpVar;
        if (j10 - this.zzg >= this.zzf) {
            this.zzg = j10;
            zzqp zzqpVar2 = this.zza;
            boolean zzc = zzqpVar2.zzc();
            if (zzc) {
                long zzb = zzqpVar2.zzb();
                long zzf = zzf(j10, f10);
                if (Math.abs(zzb - j10) > 5000000) {
                    this.zzc.zzd(zzqpVar2.zza(), zzb, j10, j11);
                    zzh(4);
                } else if (Math.abs(zzf - j11) > 5000000) {
                    this.zzc.zzc(zzqpVar2.zza(), zzb, j10, j11);
                    zzh(4);
                } else if (this.zzd == 4) {
                    zzh(0);
                }
            }
            int i10 = this.zzd;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 == 3 && zzc) {
                            zzh(0);
                        }
                    } else if (!zzc) {
                        zzh(0);
                    }
                } else if (zzc) {
                    long zza = zzqpVar2.zza();
                    long j12 = this.zzh;
                    if (zza <= j12) {
                        zzqpVar = zzqpVar2;
                    } else {
                        zzqpVar = zzqpVar2;
                        if (Math.abs(zzf(j10, f10) - zzg(j12, this.zzi, j10, f10)) < 1000) {
                            zzh(2);
                            return;
                        }
                    }
                    if (j10 - this.zze > 2000000) {
                        zzh(3);
                        return;
                    }
                    this.zzh = zzqpVar.zza();
                    this.zzi = zzqpVar.zzb();
                } else {
                    zzh(0);
                }
            } else if (zzc) {
                if (zzqpVar2.zzb() >= this.zze) {
                    this.zzh = zzqpVar2.zza();
                    this.zzi = zzqpVar2.zzb();
                    zzh(1);
                }
            } else if (j10 - this.zze > 500000) {
                zzh(3);
            }
        }
    }

    public final void zzc() {
        zzh(0);
    }

    public final boolean zzd() {
        if (this.zzd == 2) {
            return true;
        }
        return false;
    }

    public final boolean zze() {
        int i10 = this.zzd;
        if (i10 == 0 || i10 == 1) {
            return true;
        }
        return false;
    }
}
