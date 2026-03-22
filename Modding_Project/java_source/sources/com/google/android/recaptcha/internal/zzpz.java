package com.google.android.recaptcha.internal;

import com.applovin.shadow.okhttp3.internal.http2.Http2Connection;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzpz {
    static {
        zzmj zzi = zzml.zzi();
        zzi.zzf(-315576000000L);
        zzi.zze(-999999999);
        zzml zzmlVar = (zzml) zzi.zzk();
        zzmj zzi2 = zzml.zzi();
        zzi2.zzf(315576000000L);
        zzi2.zze(999999999);
        zzml zzmlVar2 = (zzml) zzi2.zzk();
        zzmj zzi3 = zzml.zzi();
        zzi3.zzf(0L);
        zzi3.zze(0);
        zzml zzmlVar3 = (zzml) zzi3.zzk();
    }

    public static zzml zza(long j10) {
        int i10;
        int i11 = (int) (j10 % 1000000000);
        long j11 = j10 / 1000000000;
        if (i11 <= -1000000000 || i11 >= 1000000000) {
            j11 = zzkk.zza(j11, i11 / Http2Connection.DEGRADED_PONG_TIMEOUT_NS);
            i11 %= Http2Connection.DEGRADED_PONG_TIMEOUT_NS;
        }
        if (j11 > 0 && i11 < 0) {
            i11 += Http2Connection.DEGRADED_PONG_TIMEOUT_NS;
            j11--;
        }
        if (j11 < 0 && i11 > 0) {
            i11 -= 1000000000;
            j11++;
        }
        zzmj zzi = zzml.zzi();
        zzi.zzf(j11);
        zzi.zze(i11);
        zzml zzmlVar = (zzml) zzi.zzk();
        long zzg = zzmlVar.zzg();
        int zzf = zzmlVar.zzf();
        if (zzg >= -315576000000L && zzg <= 315576000000L && zzf >= -999999999 && zzf < 1000000000 && ((zzg >= 0 && zzf >= 0) || (i10 <= 0 && zzf <= 0))) {
            return zzmlVar;
        }
        throw new IllegalArgumentException(String.format("Duration is not valid. See proto definition for valid values. Seconds (%s) must be in range [-315,576,000,000, +315,576,000,000]. Nanos (%s) must be in range [-999,999,999, +999,999,999]. Nanos must have the same sign as seconds", Long.valueOf(zzg), Integer.valueOf(zzf)));
    }
}
