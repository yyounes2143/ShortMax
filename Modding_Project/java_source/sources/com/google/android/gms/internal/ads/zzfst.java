package com.google.android.gms.internal.ads;

import android.os.IBinder;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzfst extends zzftx {
    private IBinder zza;
    private String zzb;
    private int zzc;
    private float zzd;
    private int zze;
    private String zzf;
    private byte zzg;

    @Override // com.google.android.gms.internal.ads.zzftx
    public final zzftx zza(String str) {
        this.zzf = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzftx
    public final zzftx zzb(String str) {
        this.zzb = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzftx
    public final zzftx zzc(int i10) {
        this.zzg = (byte) (this.zzg | 4);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzftx
    public final zzftx zzd(int i10) {
        this.zzc = i10;
        this.zzg = (byte) (this.zzg | 1);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzftx
    public final zzftx zze(float f10) {
        this.zzd = f10;
        this.zzg = (byte) (this.zzg | 2);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzftx
    public final zzftx zzf(int i10) {
        this.zzg = (byte) (this.zzg | 8);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzftx
    public final zzftx zzg(IBinder iBinder) {
        if (iBinder != null) {
            this.zza = iBinder;
            return this;
        }
        throw new NullPointerException("Null windowToken");
    }

    @Override // com.google.android.gms.internal.ads.zzftx
    public final zzftx zzh(int i10) {
        this.zze = i10;
        this.zzg = (byte) (this.zzg | 16);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzftx
    public final zzfty zzi() {
        IBinder iBinder;
        if (this.zzg == 31 && (iBinder = this.zza) != null) {
            return new zzfsv(iBinder, this.zzb, this.zzc, this.zzd, 0, 0, null, this.zze, null, this.zzf, null, null);
        }
        StringBuilder sb2 = new StringBuilder();
        if (this.zza == null) {
            sb2.append(" windowToken");
        }
        if ((this.zzg & 1) == 0) {
            sb2.append(" layoutGravity");
        }
        if ((this.zzg & 2) == 0) {
            sb2.append(" layoutVerticalMargin");
        }
        if ((this.zzg & 4) == 0) {
            sb2.append(" displayMode");
        }
        if ((this.zzg & 8) == 0) {
            sb2.append(" triggerMode");
        }
        if ((this.zzg & 16) == 0) {
            sb2.append(" windowWidthPx");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb2.toString()));
    }
}
