package com.google.android.gms.internal.ads;

import androidx.annotation.GuardedBy;
import java.math.RoundingMode;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzeu {
    @GuardedBy("this")
    private long zza;
    @GuardedBy("this")
    private long zzb;
    @GuardedBy("this")
    private long zzc;
    private final ThreadLocal zzd = new ThreadLocal();

    public zzeu(long j10) {
        zzi(0L);
    }

    public static long zzg(long j10) {
        return zzex.zzu(j10, 1000000L, 90000L, RoundingMode.DOWN);
    }

    public static long zzh(long j10) {
        return zzex.zzu(j10, 90000L, 1000000L, RoundingMode.DOWN);
    }

    public final synchronized long zza(long j10) {
        if (j10 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        try {
            if (!zzj()) {
                long j11 = this.zza;
                if (j11 == 9223372036854775806L) {
                    Long l10 = (Long) this.zzd.get();
                    if (l10 != null) {
                        j11 = l10.longValue();
                    } else {
                        throw null;
                    }
                }
                this.zzb = j11 - j10;
                notifyAll();
            }
            this.zzc = j10;
            return j10 + this.zzb;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized long zzb(long j10) {
        if (j10 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        try {
            long j11 = this.zzc;
            if (j11 != -9223372036854775807L) {
                long zzh = zzh(j11);
                long j12 = (4294967296L + zzh) / 8589934592L;
                long j13 = (((-1) + j12) * 8589934592L) + j10;
                j10 += j12 * 8589934592L;
                if (Math.abs(j13 - zzh) < Math.abs(j10 - zzh)) {
                    j10 = j13;
                }
            }
            return zza(zzg(j10));
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized long zzc(long j10) {
        if (j10 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        try {
            long j11 = this.zzc;
            if (j11 != -9223372036854775807L) {
                long zzh = zzh(j11);
                long j12 = zzh / 8589934592L;
                long j13 = (j12 * 8589934592L) + j10;
                j10 += (j12 + 1) * 8589934592L;
                if (j13 >= zzh) {
                    j10 = j13;
                }
            }
            return zza(zzg(j10));
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized long zzd() {
        long j10 = this.zza;
        if (j10 != Long.MAX_VALUE && j10 != 9223372036854775806L) {
            return j10;
        }
        return -9223372036854775807L;
    }

    public final synchronized long zze() {
        long zzd;
        try {
            long j10 = this.zzc;
            if (j10 != -9223372036854775807L) {
                zzd = j10 + this.zzb;
            } else {
                zzd = zzd();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return zzd;
    }

    public final synchronized long zzf() {
        return this.zzb;
    }

    public final synchronized void zzi(long j10) {
        long j11;
        this.zza = j10;
        if (j10 == Long.MAX_VALUE) {
            j11 = 0;
        } else {
            j11 = -9223372036854775807L;
        }
        this.zzb = j11;
        this.zzc = -9223372036854775807L;
    }

    public final synchronized boolean zzj() {
        if (this.zzb != -9223372036854775807L) {
            return true;
        }
        return false;
    }
}
