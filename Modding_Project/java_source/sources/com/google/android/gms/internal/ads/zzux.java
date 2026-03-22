package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzux implements zzgj {
    private final zzgj zza;
    private final int zzb;
    private final zzuw zzc;
    private final byte[] zzd;
    private int zze;

    public zzux(zzgj zzgjVar, int i10, zzuw zzuwVar) {
        boolean z10;
        if (i10 > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zzd(z10);
        this.zza = zzgjVar;
        this.zzb = i10;
        this.zzc = zzuwVar;
        this.zzd = new byte[1];
        this.zze = i10;
    }

    @Override // com.google.android.gms.internal.ads.zzl
    public final int zza(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = this.zze;
        if (i12 == 0) {
            zzgj zzgjVar = this.zza;
            byte[] bArr2 = this.zzd;
            int i13 = 0;
            if (zzgjVar.zza(bArr2, 0, 1) != -1) {
                int i14 = (bArr2[0] & 255) << 4;
                if (i14 != 0) {
                    byte[] bArr3 = new byte[i14];
                    int i15 = i14;
                    while (i15 > 0) {
                        int zza = zzgjVar.zza(bArr3, i13, i15);
                        if (zza != -1) {
                            i13 += zza;
                            i15 -= zza;
                        }
                    }
                    while (i14 > 0) {
                        int i16 = i14 - 1;
                        if (bArr3[i16] != 0) {
                            break;
                        }
                        i14 = i16;
                    }
                    if (i14 > 0) {
                        this.zzc.zza(new zzen(bArr3, i14));
                    }
                }
                i12 = this.zzb;
                this.zze = i12;
            }
            return -1;
        }
        int zza2 = this.zza.zza(bArr, i10, Math.min(i12, i11));
        if (zza2 != -1) {
            this.zze -= zza2;
        }
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    public final long zzb(zzgo zzgoVar) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    @Nullable
    public final Uri zzc() {
        return this.zza.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    public final void zzd() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    public final Map zze() {
        return this.zza.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    public final void zzf(zzhj zzhjVar) {
        zzhjVar.getClass();
        this.zza.zzf(zzhjVar);
    }
}
