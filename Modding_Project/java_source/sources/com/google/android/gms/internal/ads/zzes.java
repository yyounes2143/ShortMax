package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzes implements zzdt {
    @GuardedBy("messagePool")
    private static final List zza = new ArrayList(50);
    private final Handler zzb;

    public zzes(Handler handler) {
        this.zzb = handler;
    }

    public static /* bridge */ /* synthetic */ void zzm(zzeq zzeqVar) {
        List list = zza;
        synchronized (list) {
            try {
                if (list.size() < 50) {
                    list.add(zzeqVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static zzeq zzn() {
        zzeq zzeqVar;
        List list = zza;
        synchronized (list) {
            try {
                if (list.isEmpty()) {
                    zzeqVar = new zzeq(null);
                } else {
                    zzeqVar = (zzeq) list.remove(list.size() - 1);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return zzeqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdt
    public final Looper zza() {
        return this.zzb.getLooper();
    }

    @Override // com.google.android.gms.internal.ads.zzdt
    public final zzds zzb(int i10) {
        Handler handler = this.zzb;
        zzeq zzn = zzn();
        zzn.zzb(handler.obtainMessage(i10), this);
        return zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzdt
    public final zzds zzc(int i10, @Nullable Object obj) {
        Handler handler = this.zzb;
        zzeq zzn = zzn();
        zzn.zzb(handler.obtainMessage(i10, obj), this);
        return zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzdt
    public final zzds zzd(int i10, int i11, int i12) {
        Handler handler = this.zzb;
        zzeq zzn = zzn();
        zzn.zzb(handler.obtainMessage(i10, i11, i12), this);
        return zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzdt
    public final zzds zze(int i10, int i11, int i12, @Nullable Object obj) {
        Handler handler = this.zzb;
        zzeq zzn = zzn();
        zzn.zzb(handler.obtainMessage(31, 0, 0, obj), this);
        return zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzdt
    public final void zzf(@Nullable Object obj) {
        this.zzb.removeCallbacksAndMessages(null);
    }

    @Override // com.google.android.gms.internal.ads.zzdt
    public final void zzg(int i10) {
        this.zzb.removeMessages(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzdt
    public final boolean zzh(int i10) {
        return this.zzb.hasMessages(1);
    }

    @Override // com.google.android.gms.internal.ads.zzdt
    public final boolean zzi(Runnable runnable) {
        return this.zzb.post(runnable);
    }

    @Override // com.google.android.gms.internal.ads.zzdt
    public final boolean zzj(int i10) {
        return this.zzb.sendEmptyMessage(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzdt
    public final boolean zzk(int i10, long j10) {
        return this.zzb.sendEmptyMessageAtTime(2, j10);
    }

    @Override // com.google.android.gms.internal.ads.zzdt
    public final boolean zzl(zzds zzdsVar) {
        return ((zzeq) zzdsVar).zzc(this.zzb);
    }
}
