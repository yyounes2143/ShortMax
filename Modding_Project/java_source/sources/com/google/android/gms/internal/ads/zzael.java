package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.EOFException;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzael {
    private final zzen zza = new zzen(10);

    @Nullable
    public final zzav zza(zzadw zzadwVar, @Nullable zzahc zzahcVar) throws IOException {
        zzav zzavVar = null;
        int i10 = 0;
        while (true) {
            try {
                zzen zzenVar = this.zza;
                zzadwVar.zzh(zzenVar.zzN(), 0, 10);
                zzenVar.zzL(0);
                if (zzenVar.zzo() != 4801587) {
                    break;
                }
                zzenVar.zzM(3);
                int zzl = zzenVar.zzl();
                int i11 = zzl + 10;
                if (zzavVar == null) {
                    byte[] bArr = new byte[i11];
                    System.arraycopy(zzenVar.zzN(), 0, bArr, 0, 10);
                    zzadwVar.zzh(bArr, 10, zzl);
                    zzavVar = zzahe.zza(bArr, i11, zzahcVar, new zzagq());
                } else {
                    zzadwVar.zzg(zzl);
                }
                i10 += i11;
            } catch (EOFException unused) {
            }
        }
        zzadwVar.zzj();
        zzadwVar.zzg(i10);
        return zzavVar;
    }
}
