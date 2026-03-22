package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.inmobi.commons.core.configs.AdConfig;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzajc {
    public final zzafb zza;
    public zzajs zzd;
    public zzaiy zze;
    public int zzf;
    public int zzg;
    public int zzh;
    public int zzi;
    private final String zzj;
    private boolean zzm;
    public final zzajr zzb = new zzajr();
    public final zzen zzc = new zzen();
    private final zzen zzk = new zzen(1);
    private final zzen zzl = new zzen();

    public zzajc(zzafb zzafbVar, zzajs zzajsVar, zzaiy zzaiyVar, String str) {
        this.zza = zzafbVar;
        this.zzd = zzajsVar;
        this.zze = zzaiyVar;
        this.zzj = str;
        zzh(zzajsVar, zzaiyVar);
    }

    public final int zza() {
        int i10;
        if (!this.zzm) {
            i10 = this.zzd.zzg[this.zzf];
        } else if (this.zzb.zzj[this.zzf]) {
            i10 = 1;
        } else {
            i10 = 0;
        }
        if (zzf() != null) {
            return i10 | 1073741824;
        }
        return i10;
    }

    public final int zzb() {
        if (!this.zzm) {
            return this.zzd.zzd[this.zzf];
        }
        return this.zzb.zzh[this.zzf];
    }

    public final int zzc(int i10, int i11) {
        zzen zzenVar;
        boolean z10;
        int i12;
        zzajq zzf = zzf();
        if (zzf == null) {
            return 0;
        }
        int i13 = zzf.zzd;
        if (i13 != 0) {
            zzenVar = this.zzb.zzn;
        } else {
            byte[] bArr = zzf.zze;
            String str = zzex.zza;
            zzen zzenVar2 = this.zzl;
            int length = bArr.length;
            zzenVar2.zzJ(bArr, length);
            zzenVar = zzenVar2;
            i13 = length;
        }
        zzajr zzajrVar = this.zzb;
        boolean zzb = zzajrVar.zzb(this.zzf);
        if (zzb || i11 != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzen zzenVar3 = this.zzk;
        if (true != z10) {
            i12 = 0;
        } else {
            i12 = 128;
        }
        zzenVar3.zzN()[0] = (byte) (i12 | i13);
        zzenVar3.zzL(0);
        zzafb zzafbVar = this.zza;
        zzafbVar.zzs(zzenVar3, 1, 1);
        zzafbVar.zzs(zzenVar, i13, 1);
        if (!z10) {
            return i13 + 1;
        }
        if (!zzb) {
            zzen zzenVar4 = this.zzc;
            zzenVar4.zzI(8);
            byte[] zzN = zzenVar4.zzN();
            zzN[0] = 0;
            zzN[1] = 1;
            zzN[2] = 0;
            zzN[3] = (byte) i11;
            zzN[4] = (byte) ((i10 >> 24) & 255);
            zzN[5] = (byte) ((i10 >> 16) & 255);
            zzN[6] = (byte) ((i10 >> 8) & 255);
            zzN[7] = (byte) (i10 & 255);
            zzafbVar.zzs(zzenVar4, 8, 1);
            return i13 + 9;
        }
        int i14 = i13 + 1;
        zzen zzenVar5 = zzajrVar.zzn;
        int zzq = zzenVar5.zzq();
        zzenVar5.zzM(-2);
        int i15 = (zzq * 6) + 2;
        if (i11 != 0) {
            zzen zzenVar6 = this.zzc;
            zzenVar6.zzI(i15);
            byte[] zzN2 = zzenVar6.zzN();
            zzenVar5.zzH(zzN2, 0, i15);
            int i16 = (((zzN2[2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | (zzN2[3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED)) + i11;
            zzN2[2] = (byte) ((i16 >> 8) & 255);
            zzN2[3] = (byte) (i16 & 255);
            zzenVar5 = zzenVar6;
        }
        zzafbVar.zzs(zzenVar5, i15, 1);
        return i14 + i15;
    }

    public final long zzd() {
        if (!this.zzm) {
            return this.zzd.zzc[this.zzf];
        }
        return this.zzb.zzf[this.zzh];
    }

    public final long zze() {
        if (!this.zzm) {
            return this.zzd.zzf[this.zzf];
        }
        zzajr zzajrVar = this.zzb;
        return zzajrVar.zzi[this.zzf];
    }

    @Nullable
    public final zzajq zzf() {
        if (!this.zzm) {
            return null;
        }
        zzajr zzajrVar = this.zzb;
        zzaiy zzaiyVar = zzajrVar.zza;
        String str = zzex.zza;
        int i10 = zzaiyVar.zza;
        zzajq zzajqVar = zzajrVar.zzm;
        if (zzajqVar == null) {
            zzajqVar = this.zzd.zza.zzb(i10);
        }
        if (zzajqVar == null || !zzajqVar.zza) {
            return null;
        }
        return zzajqVar;
    }

    public final void zzh(zzajs zzajsVar, zzaiy zzaiyVar) {
        this.zzd = zzajsVar;
        this.zze = zzaiyVar;
        zzx zzb = zzajsVar.zza.zzg.zzb();
        zzb.zzG(this.zzj);
        this.zza.zzm(zzb.zzan());
        zzi();
    }

    public final void zzi() {
        zzajr zzajrVar = this.zzb;
        zzajrVar.zzd = 0;
        zzajrVar.zzp = 0L;
        zzajrVar.zzq = false;
        zzajrVar.zzk = false;
        zzajrVar.zzo = false;
        zzajrVar.zzm = null;
        this.zzf = 0;
        this.zzh = 0;
        this.zzg = 0;
        this.zzi = 0;
        this.zzm = false;
    }

    public final void zzj(zzs zzsVar) {
        String str;
        zzajp zzajpVar = this.zzd.zza;
        zzaiy zzaiyVar = this.zzb.zza;
        String str2 = zzex.zza;
        zzajq zzb = zzajpVar.zzb(zzaiyVar.zza);
        if (zzb != null) {
            str = zzb.zzb;
        } else {
            str = null;
        }
        zzs zzb2 = zzsVar.zzb(str);
        zzz zzzVar = this.zzd.zza.zzg;
        String str3 = this.zzj;
        zzx zzb3 = zzzVar.zzb();
        zzb3.zzG(str3);
        zzb3.zzL(zzb2);
        this.zza.zzm(zzb3.zzan());
    }

    public final boolean zzl() {
        this.zzf++;
        if (!this.zzm) {
            return false;
        }
        int i10 = this.zzg + 1;
        this.zzg = i10;
        int[] iArr = this.zzb.zzg;
        int i11 = this.zzh;
        if (i10 != iArr[i11]) {
            return true;
        }
        this.zzh = i11 + 1;
        this.zzg = 0;
        return false;
    }
}
