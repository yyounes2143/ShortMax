package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzacz {
    public final List zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final int zzh;
    public final int zzi;
    public final int zzj;
    public final float zzk;
    @Nullable
    public final String zzl;

    private zzacz(List list, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, float f10, @Nullable String str) {
        this.zza = list;
        this.zzb = i10;
        this.zzc = i11;
        this.zzd = i12;
        this.zze = i13;
        this.zzf = i14;
        this.zzg = i15;
        this.zzh = i16;
        this.zzi = i17;
        this.zzj = i18;
        this.zzk = f10;
        this.zzl = str;
    }

    public static zzacz zza(zzen zzenVar) throws zzaz {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        String str;
        float f10;
        try {
            zzenVar.zzM(4);
            int zzm = (zzenVar.zzm() & 3) + 1;
            if (zzm != 3) {
                ArrayList arrayList = new ArrayList();
                int zzm2 = zzenVar.zzm() & 31;
                for (int i18 = 0; i18 < zzm2; i18++) {
                    arrayList.add(zzb(zzenVar));
                }
                int zzm3 = zzenVar.zzm();
                for (int i19 = 0; i19 < zzm3; i19++) {
                    arrayList.add(zzb(zzenVar));
                }
                if (zzm2 > 0) {
                    byte[] bArr = zzfv.zza;
                    zzfu zzg = zzfv.zzg((byte[]) arrayList.get(0), 5, ((byte[]) arrayList.get(0)).length);
                    int i20 = zzg.zze;
                    int i21 = zzg.zzf;
                    int i22 = zzg.zzj;
                    int i23 = zzg.zzk;
                    int i24 = zzg.zzl;
                    int i25 = zzg.zzm;
                    float f11 = zzg.zzg;
                    str = zzdk.zzc(zzg.zza, zzg.zzb, zzg.zzc);
                    i16 = i24;
                    i17 = i25;
                    f10 = f11;
                    i13 = zzg.zzi + 8;
                    i14 = i22;
                    i15 = i23;
                    i10 = i20;
                    i11 = i21;
                    i12 = zzg.zzh + 8;
                } else {
                    i10 = -1;
                    i11 = -1;
                    i12 = -1;
                    i13 = -1;
                    i14 = -1;
                    i15 = -1;
                    i16 = -1;
                    i17 = 16;
                    str = null;
                    f10 = 1.0f;
                }
                return new zzacz(arrayList, zzm, i10, i11, i12, i13, i14, i15, i16, i17, f10, str);
            }
            throw new IllegalStateException();
        } catch (ArrayIndexOutOfBoundsException e10) {
            throw zzaz.zza("Error parsing AVC config", e10);
        }
    }

    private static byte[] zzb(zzen zzenVar) {
        int zzq = zzenVar.zzq();
        int zzc = zzenVar.zzc();
        zzenVar.zzM(zzq);
        return zzdk.zze(zzenVar.zzN(), zzc, zzq);
    }
}
