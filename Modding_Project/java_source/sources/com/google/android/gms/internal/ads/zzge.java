package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzge extends zzgc {
    @Nullable
    private Uri zza;
    @Nullable
    private byte[] zzb;
    private int zzc;
    private int zzd;
    private boolean zze;
    private final zzgd zzf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzge(byte[] bArr) {
        super(false);
        zzgd zzgdVar = new zzgd(bArr);
        this.zzf = zzgdVar;
        zzdd.zzd(bArr.length > 0);
    }

    @Override // com.google.android.gms.internal.ads.zzl
    public final int zza(byte[] bArr, int i10, int i11) {
        if (i11 == 0) {
            return 0;
        }
        int i12 = this.zzd;
        if (i12 == 0) {
            return -1;
        }
        int min = Math.min(i11, i12);
        byte[] bArr2 = this.zzb;
        zzdd.zzb(bArr2);
        System.arraycopy(bArr2, this.zzc, bArr, i10, min);
        this.zzc += min;
        this.zzd -= min;
        zzg(min);
        return min;
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    public final long zzb(zzgo zzgoVar) throws IOException {
        zzi(zzgoVar);
        this.zza = zzgoVar.zza;
        byte[] bArr = this.zzf.zza;
        this.zzb = bArr;
        long j10 = zzgoVar.zze;
        int length = bArr.length;
        if (j10 <= length) {
            int i10 = (int) j10;
            this.zzc = i10;
            int i11 = length - i10;
            this.zzd = i11;
            long j11 = zzgoVar.zzf;
            int i12 = (j11 > (-1L) ? 1 : (j11 == (-1L) ? 0 : -1));
            if (i12 != 0) {
                this.zzd = (int) Math.min(i11, j11);
            }
            this.zze = true;
            zzj(zzgoVar);
            if (i12 != 0) {
                return j11;
            }
            return this.zzd;
        }
        throw new zzgk(2008);
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    @Nullable
    public final Uri zzc() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    public final void zzd() {
        if (this.zze) {
            this.zze = false;
            zzh();
        }
        this.zza = null;
        this.zzb = null;
    }
}
