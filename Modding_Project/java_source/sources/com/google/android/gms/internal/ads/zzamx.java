package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzamx implements zzamz {
    private final zzen zza;
    @Nullable
    private final String zzc;
    private final int zzd;
    private String zzf;
    private zzafb zzg;
    private int zzi;
    private int zzj;
    private long zzk;
    private zzz zzl;
    private int zzm;
    private int zzn;
    private int zzh = 0;
    private long zzq = -9223372036854775807L;
    private final AtomicInteger zzb = new AtomicInteger();
    private int zzo = -1;
    private int zzp = -1;
    private final String zze = "video/mp2t";

    public zzamx(@Nullable String str, int i10, int i11, String str2) {
        this.zza = new zzen(new byte[i11]);
        this.zzc = str;
        this.zzd = i10;
    }

    private final void zzf(zzads zzadsVar) {
        int i10;
        zzx zzb;
        int i11 = zzadsVar.zzb;
        if (i11 != -2147483647 && (i10 = zzadsVar.zzc) != -1) {
            zzz zzzVar = this.zzl;
            if (zzzVar == null || i10 != zzzVar.zzG || i11 != zzzVar.zzH || !Objects.equals(zzadsVar.zza, zzzVar.zzo)) {
                zzz zzzVar2 = this.zzl;
                if (zzzVar2 == null) {
                    zzb = new zzx();
                } else {
                    zzb = zzzVar2.zzb();
                }
                zzb.zzS(this.zzf);
                zzb.zzG(this.zze);
                zzb.zzah(zzadsVar.zza);
                zzb.zzD(i10);
                zzb.zzai(i11);
                zzb.zzW(this.zzc);
                zzb.zzaf(this.zzd);
                zzz zzan = zzb.zzan();
                this.zzl = zzan;
                this.zzg.zzm(zzan);
            }
        }
    }

    private final boolean zzg(zzen zzenVar, byte[] bArr, int i10) {
        int min = Math.min(zzenVar.zza(), i10 - this.zzi);
        zzenVar.zzH(bArr, this.zzi, min);
        int i11 = this.zzi + min;
        this.zzi = i11;
        if (i11 == i10) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01dc  */
    @Override // com.google.android.gms.internal.ads.zzamz
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.ads.zzen r21) throws com.google.android.gms.internal.ads.zzaz {
        /*
            Method dump skipped, instructions count: 666
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzamx.zza(com.google.android.gms.internal.ads.zzen):void");
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zzb(zzady zzadyVar, zzaon zzaonVar) {
        zzaonVar.zzc();
        this.zzf = zzaonVar.zzb();
        this.zzg = zzadyVar.zzw(zzaonVar.zza(), 1);
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zzd(long j10, int i10) {
        this.zzq = j10;
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zze() {
        this.zzh = 0;
        this.zzi = 0;
        this.zzj = 0;
        this.zzq = -9223372036854775807L;
        this.zzb.set(0);
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zzc(boolean z10) {
    }
}
