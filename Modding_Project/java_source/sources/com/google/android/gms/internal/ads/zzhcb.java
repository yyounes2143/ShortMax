package com.google.android.gms.internal.ads;

import libcore.io.Memory;
import sun.misc.Unsafe;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
final class zzhcb extends zzhcd {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhcb(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.ads.zzhcd
    public final byte zza(long j10) {
        return Memory.peekByte((int) j10);
    }

    @Override // com.google.android.gms.internal.ads.zzhcd
    public final double zzb(Object obj, long j10) {
        return Double.longBitsToDouble(this.zza.getLong(obj, j10));
    }

    @Override // com.google.android.gms.internal.ads.zzhcd
    public final float zzc(Object obj, long j10) {
        return Float.intBitsToFloat(this.zza.getInt(obj, j10));
    }

    @Override // com.google.android.gms.internal.ads.zzhcd
    public final void zzd(long j10, byte[] bArr, long j11, long j12) {
        Memory.peekByteArray((int) j10, bArr, (int) j11, (int) j12);
    }

    @Override // com.google.android.gms.internal.ads.zzhcd
    public final void zze(Object obj, long j10, boolean z10) {
        if (zzhce.zzb) {
            zzhce.zzG(obj, j10, r3 ? (byte) 1 : (byte) 0);
        } else {
            zzhce.zzH(obj, j10, r3 ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhcd
    public final void zzf(Object obj, long j10, byte b10) {
        if (zzhce.zzb) {
            zzhce.zzG(obj, j10, b10);
        } else {
            zzhce.zzH(obj, j10, b10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhcd
    public final void zzg(Object obj, long j10, double d10) {
        this.zza.putLong(obj, j10, Double.doubleToLongBits(d10));
    }

    @Override // com.google.android.gms.internal.ads.zzhcd
    public final void zzh(Object obj, long j10, float f10) {
        this.zza.putInt(obj, j10, Float.floatToIntBits(f10));
    }

    @Override // com.google.android.gms.internal.ads.zzhcd
    public final boolean zzi(Object obj, long j10) {
        if (zzhce.zzb) {
            return zzhce.zzw(obj, j10);
        }
        return zzhce.zzx(obj, j10);
    }
}
