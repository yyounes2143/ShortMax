package com.google.android.gms.internal.ads;

import android.os.HandlerThread;
import android.os.Looper;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes4.dex */
public final class zzlt {
    private final Object zza;
    @Nullable
    @GuardedBy("lock")
    private Looper zzb;
    @Nullable
    @GuardedBy("lock")
    private HandlerThread zzc;
    @GuardedBy("lock")
    private int zzd;

    public zzlt() {
        throw null;
    }

    public final Looper zza() {
        Looper looper;
        synchronized (this.zza) {
            try {
                if (this.zzb == null) {
                    boolean z10 = false;
                    if (this.zzd == 0 && this.zzc == null) {
                        z10 = true;
                    }
                    zzdd.zzf(z10);
                    HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
                    this.zzc = handlerThread;
                    handlerThread.start();
                    this.zzb = this.zzc.getLooper();
                }
                this.zzd++;
                looper = this.zzb;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return looper;
    }

    public final void zzb() {
        boolean z10;
        HandlerThread handlerThread;
        synchronized (this.zza) {
            try {
                if (this.zzd > 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                zzdd.zzf(z10);
                int i10 = this.zzd - 1;
                this.zzd = i10;
                if (i10 == 0 && (handlerThread = this.zzc) != null) {
                    handlerThread.quit();
                    this.zzc = null;
                    this.zzb = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public zzlt(@Nullable Looper looper) {
        this.zza = new Object();
        this.zzb = null;
        this.zzc = null;
        this.zzd = 0;
    }
}
