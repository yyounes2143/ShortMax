package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaaa {
    public static final zzzt zza = new zzzt(2, -9223372036854775807L, null);
    public static final zzzt zzb = new zzzt(3, -9223372036854775807L, null);
    private final zzaai zzc = zzaag.zza(zzex.zzF("ExoPlayer:Loader:ProgressiveMediaPeriod"), new zzdn() { // from class: com.google.android.gms.internal.ads.zzzr
        @Override // com.google.android.gms.internal.ads.zzdn
        public final void zza(Object obj) {
            ((ExecutorService) obj).shutdown();
        }
    });
    @Nullable
    private zzzu zzd;
    @Nullable
    private IOException zze;

    public zzaaa(String str) {
    }

    public static zzzt zzb(boolean z10, long j10) {
        return new zzzt(z10 ? 1 : 0, j10, null);
    }

    public final long zza(zzzv zzzvVar, zzzs zzzsVar, int i10) {
        Looper myLooper = Looper.myLooper();
        zzdd.zzb(myLooper);
        this.zze = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new zzzu(this, myLooper, zzzvVar, zzzsVar, i10, elapsedRealtime).zzc(0L);
        return elapsedRealtime;
    }

    public final void zzg() {
        zzzu zzzuVar = this.zzd;
        zzdd.zzb(zzzuVar);
        zzzuVar.zza(false);
    }

    public final void zzh() {
        this.zze = null;
    }

    public final void zzi(int i10) throws IOException {
        IOException iOException = this.zze;
        if (iOException == null) {
            zzzu zzzuVar = this.zzd;
            if (zzzuVar != null) {
                zzzuVar.zzb(i10);
                return;
            }
            return;
        }
        throw iOException;
    }

    public final void zzj(@Nullable zzzw zzzwVar) {
        zzzu zzzuVar = this.zzd;
        if (zzzuVar != null) {
            zzzuVar.zza(true);
        }
        zzaai zzaaiVar = this.zzc;
        zzaaiVar.execute(new zzzx(zzzwVar));
        zzaaiVar.zza();
    }

    public final boolean zzk() {
        if (this.zze != null) {
            return true;
        }
        return false;
    }

    public final boolean zzl() {
        if (this.zzd != null) {
            return true;
        }
        return false;
    }
}
