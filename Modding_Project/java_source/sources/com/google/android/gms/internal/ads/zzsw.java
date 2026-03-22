package com.google.android.gms.internal.ads;

import androidx.annotation.IntRange;
import java.nio.ByteBuffer;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzsw extends zzhs {
    private long zzg;
    private int zzh;
    private int zzi;

    public zzsw() {
        super(2, 0);
        this.zzi = 32;
    }

    @Override // com.google.android.gms.internal.ads.zzhs, com.google.android.gms.internal.ads.zzhm
    public final void zzb() {
        super.zzb();
        this.zzh = 0;
    }

    public final int zzm() {
        return this.zzh;
    }

    public final long zzn() {
        return this.zzg;
    }

    public final void zzo(@IntRange(from = 1) int i10) {
        this.zzi = i10;
    }

    public final boolean zzp(zzhs zzhsVar) {
        ByteBuffer byteBuffer;
        zzdd.zzd(!zzhsVar.zzd(1073741824));
        zzdd.zzd(!zzhsVar.zzd(268435456));
        zzdd.zzd(!zzhsVar.zzd(4));
        if (zzq()) {
            if (this.zzh < this.zzi) {
                ByteBuffer byteBuffer2 = zzhsVar.zzc;
                if (byteBuffer2 != null && (byteBuffer = this.zzc) != null && byteBuffer.position() + byteBuffer2.remaining() > 3072000) {
                    return false;
                }
            } else {
                return false;
            }
        }
        int i10 = this.zzh;
        this.zzh = i10 + 1;
        if (i10 == 0) {
            this.zze = zzhsVar.zze;
            if (zzhsVar.zzd(1)) {
                zzc(1);
            }
        }
        ByteBuffer byteBuffer3 = zzhsVar.zzc;
        if (byteBuffer3 != null) {
            zzj(byteBuffer3.remaining());
            this.zzc.put(byteBuffer3);
        }
        this.zzg = zzhsVar.zze;
        return true;
    }

    public final boolean zzq() {
        if (this.zzh > 0) {
            return true;
        }
        return false;
    }
}
