package com.google.android.gms.internal.ads;

import android.os.ConditionVariable;
import androidx.annotation.VisibleForTesting;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzavo {
    @VisibleForTesting
    protected volatile Boolean zzb;
    private final zzawx zze;
    private static final ConditionVariable zzc = new ConditionVariable();
    @VisibleForTesting
    protected static volatile zzfqi zza = null;
    private static volatile Random zzd = null;

    public zzavo(zzawx zzawxVar) {
        this.zze = zzawxVar;
        zzawxVar.zzj().execute(new zzavn(this));
    }

    public static final int zzd() {
        try {
            return ThreadLocalRandom.current().nextInt();
        } catch (RuntimeException unused) {
            if (zzd == null) {
                synchronized (zzavo.class) {
                    try {
                        if (zzd == null) {
                            zzd = new Random();
                        }
                    } finally {
                    }
                }
            }
            return zzd.nextInt();
        }
    }

    public final void zzc(int i10, int i11, long j10, String str, Exception exc) {
        try {
            zzc.block();
            if (this.zzb.booleanValue() && zza != null) {
                zzarz zza2 = zzasd.zza();
                zza2.zza(this.zze.zza.getPackageName());
                zza2.zze(j10);
                if (str != null) {
                    zza2.zzb(str);
                }
                if (exc != null) {
                    StringWriter stringWriter = new StringWriter();
                    exc.printStackTrace(new PrintWriter(stringWriter));
                    zza2.zzf(stringWriter.toString());
                    zza2.zzd(exc.getClass().getName());
                }
                zzfqg zza3 = zza.zza(((zzasd) zza2.zzbr()).zzaV());
                zza3.zza(i10);
                if (i11 != -1) {
                    zza3.zzb(i11);
                }
                zza3.zzc();
            }
        } catch (Exception unused) {
        }
    }
}
