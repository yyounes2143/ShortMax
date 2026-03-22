package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.Surface;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzabs {
    private final zzabr zza;
    private final zzabw zzb;
    private boolean zzc;
    private long zzf;
    private boolean zzi;
    private boolean zzl;
    private boolean zzm;
    private int zzd = 0;
    private long zze = -9223372036854775807L;
    private long zzg = -9223372036854775807L;
    private long zzh = -9223372036854775807L;
    private float zzj = 1.0f;
    private zzdj zzk = zzdj.zza;

    public zzabs(Context context, zzabr zzabrVar, long j10) {
        this.zza = zzabrVar;
        this.zzb = new zzabw(context);
    }

    private final void zzo(int i10) {
        this.zzd = Math.min(this.zzd, i10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00ba, code lost:
        if (r17 > 100000) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00c5, code lost:
        if (r22 >= r26) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00ca, code lost:
        if (r19.zzc != false) goto L75;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(long r20, long r22, long r24, long r26, boolean r28, boolean r29, com.google.android.gms.internal.ads.zzabq r30) throws com.google.android.gms.internal.ads.zzin {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzabs.zza(long, long, long, long, boolean, boolean, com.google.android.gms.internal.ads.zzabq):int");
    }

    public final void zzb() {
        if (this.zzd == 0) {
            this.zzd = 1;
        }
    }

    public final void zzc(boolean z10) {
        this.zzi = z10;
        this.zzh = -9223372036854775807L;
    }

    public final void zzd() {
        this.zzc = true;
        this.zzf = zzex.zzs(this.zzk.zzb());
        this.zzb.zzg();
    }

    public final void zze() {
        this.zzc = false;
        this.zzh = -9223372036854775807L;
        this.zzb.zzh();
    }

    public final void zzf(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                zzo(2);
                return;
            } else {
                this.zzd = 0;
                return;
            }
        }
        this.zzd = 1;
    }

    public final void zzg() {
        this.zzb.zzf();
        this.zzg = -9223372036854775807L;
        this.zze = -9223372036854775807L;
        zzo(1);
        this.zzh = -9223372036854775807L;
    }

    public final void zzh(int i10) {
        this.zzb.zzj(i10);
    }

    public final void zzi(zzdj zzdjVar) {
        this.zzk = zzdjVar;
    }

    public final void zzj(float f10) {
        this.zzb.zzc(f10);
    }

    public final void zzk(@Nullable Surface surface) {
        boolean z10;
        if (surface != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.zzl = z10;
        this.zzm = false;
        this.zzb.zzi(surface);
        zzo(1);
    }

    public final void zzl(@FloatRange(from = 0.0d, fromInclusive = false) float f10) {
        boolean z10;
        if (f10 > 0.0f) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zzd(z10);
        if (f10 == this.zzj) {
            return;
        }
        this.zzj = f10;
        this.zzb.zze(f10);
    }

    public final boolean zzm(boolean z10) {
        if (z10 && (this.zzd == 3 || (!this.zzl && this.zzm))) {
            this.zzh = -9223372036854775807L;
            return true;
        } else if (this.zzh == -9223372036854775807L) {
            return false;
        } else {
            if (this.zzk.zzb() < this.zzh) {
                return true;
            }
            this.zzh = -9223372036854775807L;
            return false;
        }
    }

    public final boolean zzn() {
        int i10 = this.zzd;
        this.zzd = 3;
        this.zzf = zzex.zzs(this.zzk.zzb());
        if (i10 != 3) {
            return true;
        }
        return false;
    }
}
