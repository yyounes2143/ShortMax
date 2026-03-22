package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaed {
    @Nullable
    public static zzav zza(zzadw zzadwVar, boolean z10) throws IOException {
        zzahc zzahcVar;
        if (z10) {
            zzahcVar = null;
        } else {
            zzahcVar = zzahe.zza;
        }
        zzav zza = new zzael().zza(zzadwVar, zzahcVar);
        if (zza == null || zza.zza() == 0) {
            return null;
        }
        return zza;
    }

    public static zzaef zzb(zzen zzenVar) {
        zzenVar.zzM(1);
        int zzo = zzenVar.zzo();
        long zzc = zzenVar.zzc();
        long j10 = zzo;
        int i10 = zzo / 18;
        long[] jArr = new long[i10];
        long[] jArr2 = new long[i10];
        int i11 = 0;
        while (true) {
            if (i11 >= i10) {
                break;
            }
            long zzt = zzenVar.zzt();
            if (zzt == -1) {
                jArr = Arrays.copyOf(jArr, i11);
                jArr2 = Arrays.copyOf(jArr2, i11);
                break;
            }
            jArr[i11] = zzt;
            jArr2[i11] = zzenVar.zzt();
            zzenVar.zzM(2);
            i11++;
        }
        zzenVar.zzM((int) ((zzc + j10) - zzenVar.zzc()));
        return new zzaef(jArr, jArr2);
    }
}
