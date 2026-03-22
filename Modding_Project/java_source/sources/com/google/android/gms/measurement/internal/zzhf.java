package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzhf {
    final String zza;
    final /* synthetic */ zzhh zzb;
    private final String zzc;
    private final String zzd;
    private final long zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzhf(zzhh zzhhVar, String str, long j10, byte[] bArr) {
        boolean z10;
        Objects.requireNonNull(zzhhVar);
        this.zzb = zzhhVar;
        Preconditions.checkNotEmpty("health_monitor");
        if (j10 > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        Preconditions.checkArgument(z10);
        this.zza = "health_monitor:start";
        this.zzc = "health_monitor:count";
        this.zzd = "health_monitor:value";
        this.zze = j10;
    }

    @WorkerThread
    private final void zzc() {
        zzhh zzhhVar = this.zzb;
        zzhhVar.zzg();
        long currentTimeMillis = zzhhVar.zzu.zzaZ().currentTimeMillis();
        SharedPreferences.Editor edit = zzhhVar.zzd().edit();
        edit.remove(this.zzc);
        edit.remove(this.zzd);
        edit.putLong(this.zza, currentTimeMillis);
        edit.apply();
    }

    @WorkerThread
    private final long zzd() {
        return this.zzb.zzd().getLong(this.zza, 0L);
    }

    @WorkerThread
    public final void zza(String str, long j10) {
        zzhh zzhhVar = this.zzb;
        zzhhVar.zzg();
        if (zzd() == 0) {
            zzc();
        }
        if (str == null) {
            str = "";
        }
        SharedPreferences zzd = zzhhVar.zzd();
        String str2 = this.zzc;
        long j11 = zzd.getLong(str2, 0L);
        if (j11 <= 0) {
            SharedPreferences.Editor edit = zzhhVar.zzd().edit();
            edit.putString(this.zzd, str);
            edit.putLong(str2, 1L);
            edit.apply();
            return;
        }
        long j12 = j11 + 1;
        SharedPreferences.Editor edit2 = zzhhVar.zzd().edit();
        if ((zzhhVar.zzu.zzk().zzf().nextLong() & Long.MAX_VALUE) < Long.MAX_VALUE / j12) {
            edit2.putString(this.zzd, str);
        }
        edit2.putLong(str2, j12);
        edit2.apply();
    }

    @WorkerThread
    public final Pair zzb() {
        long abs;
        zzhh zzhhVar = this.zzb;
        zzhhVar.zzg();
        zzhhVar.zzg();
        long zzd = zzd();
        if (zzd == 0) {
            zzc();
            abs = 0;
        } else {
            abs = Math.abs(zzd - zzhhVar.zzu.zzaZ().currentTimeMillis());
        }
        long j10 = this.zze;
        if (abs < j10) {
            return null;
        }
        if (abs > j10 + j10) {
            zzc();
            return null;
        }
        String string = zzhhVar.zzd().getString(this.zzd, null);
        long j11 = zzhhVar.zzd().getLong(this.zzc, 0L);
        zzc();
        if (string != null && j11 > 0) {
            return new Pair(string, Long.valueOf(j11));
        }
        return zzhh.zza;
    }
}
