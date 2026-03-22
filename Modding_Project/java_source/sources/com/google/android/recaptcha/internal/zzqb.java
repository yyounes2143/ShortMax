package com.google.android.recaptcha.internal;

import com.applovin.shadow.okhttp3.internal.http2.Http2Connection;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzqb {
    private static final ThreadLocal zza;

    static {
        zzph zzi = zzpj.zzi();
        zzi.zzf(-62135596800L);
        zzi.zze(0);
        zzpj zzpjVar = (zzpj) zzi.zzk();
        zzph zzi2 = zzpj.zzi();
        zzi2.zzf(253402300799L);
        zzi2.zze(999999999);
        zzpj zzpjVar2 = (zzpj) zzi2.zzk();
        zzph zzi3 = zzpj.zzi();
        zzi3.zzf(0L);
        zzi3.zze(0);
        zzpj zzpjVar3 = (zzpj) zzi3.zzk();
        zza = new zzqa();
        zzd("now");
        zzd("getEpochSecond");
        zzd("getNano");
    }

    public static zzpj zza(zzpj zzpjVar) {
        long zzg = zzpjVar.zzg();
        boolean zze = zze(zzg);
        int zzf = zzpjVar.zzf();
        if (zze && zzf >= 0 && zzf < 1000000000) {
            return zzpjVar;
        }
        throw new IllegalArgumentException(String.format("Timestamp is not valid. See proto definition for valid values. Seconds (%s) must be in range [-62,135,596,800, +253,402,300,799]. Nanos (%s) must be in range [0, +999,999,999].", Long.valueOf(zzg), Integer.valueOf(zzf)));
    }

    public static zzpj zzb(long j10) {
        long j11 = j10 / 1000;
        if (zze(j11)) {
            int i10 = (int) ((j10 % 1000) * 1000000);
            if (i10 <= -1000000000 || i10 >= 1000000000) {
                j11 = zzkk.zza(j11, i10 / Http2Connection.DEGRADED_PONG_TIMEOUT_NS);
                i10 %= Http2Connection.DEGRADED_PONG_TIMEOUT_NS;
            }
            if (i10 < 0) {
                i10 += Http2Connection.DEGRADED_PONG_TIMEOUT_NS;
                j11 = zzkk.zzb(j11, 1L);
            }
            zzph zzi = zzpj.zzi();
            zzi.zzf(j11);
            zzi.zze(i10);
            zzpj zzpjVar = (zzpj) zzi.zzk();
            zza(zzpjVar);
            return zzpjVar;
        }
        throw new IllegalArgumentException(String.format("Timestamp is not valid. Input seconds is too large. Seconds (%s) must be in range [-62,135,596,800, +253,402,300,799]. ", Long.valueOf(j11)));
    }

    public static String zzc(zzpj zzpjVar) {
        String format;
        zza(zzpjVar);
        long zzg = zzpjVar.zzg();
        int zzf = zzpjVar.zzf();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(((SimpleDateFormat) zza.get()).format(new Date(zzg * 1000)));
        if (zzf != 0) {
            sb2.append(".");
            if (zzf % TTVideoEngineInterface.PLAYER_TIME_BASE == 0) {
                format = String.format(Locale.ENGLISH, "%1$03d", Integer.valueOf(zzf / TTVideoEngineInterface.PLAYER_TIME_BASE));
            } else if (zzf % 1000 == 0) {
                format = String.format(Locale.ENGLISH, "%1$06d", Integer.valueOf(zzf / 1000));
            } else {
                format = String.format(Locale.ENGLISH, "%1$09d", Integer.valueOf(zzf));
            }
            sb2.append(format);
        }
        sb2.append("Z");
        return sb2.toString();
    }

    private static Method zzd(String str) {
        try {
            return Class.forName("java.time.Instant").getMethod(str, new Class[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    private static boolean zze(long j10) {
        if (j10 >= -62135596800L && j10 <= 253402300799L) {
            return true;
        }
        return false;
    }
}
