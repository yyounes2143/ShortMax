package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzz {
    public static final /* synthetic */ int zzO = 0;
    public final int zzA;
    public final float zzB;
    @Nullable
    public final byte[] zzC;
    public final int zzD;
    @Nullable
    public final zzk zzE;
    public final int zzF;
    public final int zzG;
    public final int zzH;
    public final int zzI;
    public final int zzJ;
    public final int zzK;
    public final int zzL;
    public final int zzM;
    public final int zzN;
    private int zzP;
    @Nullable
    public final String zza;
    @Nullable
    public final String zzb;
    public final List zzc;
    @Nullable
    public final String zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final int zzh;
    public final int zzi;
    public final int zzj;
    @Nullable
    public final String zzk;
    @Nullable
    public final zzav zzl;
    @Nullable
    public final Object zzm;
    @Nullable
    public final String zzn;
    @Nullable
    public final String zzo;
    public final int zzp;
    public final int zzq;
    public final List zzr;
    @Nullable
    public final zzs zzs;
    public final long zzt;
    public final boolean zzu;
    public final int zzv;
    public final int zzw;
    public final int zzx;
    public final int zzy;
    public final float zzz;

    static {
        new zzz(new zzx());
        String str = zzex.zza;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
        Integer.toString(5, 36);
        Integer.toString(6, 36);
        Integer.toString(7, 36);
        Integer.toString(8, 36);
        Integer.toString(9, 36);
        Integer.toString(10, 36);
        Integer.toString(11, 36);
        Integer.toString(12, 36);
        Integer.toString(13, 36);
        Integer.toString(14, 36);
        Integer.toString(15, 36);
        Integer.toString(16, 36);
        Integer.toString(17, 36);
        Integer.toString(18, 36);
        Integer.toString(19, 36);
        Integer.toString(20, 36);
        Integer.toString(21, 36);
        Integer.toString(22, 36);
        Integer.toString(23, 36);
        Integer.toString(24, 36);
        Integer.toString(25, 36);
        Integer.toString(26, 36);
        Integer.toString(27, 36);
        Integer.toString(28, 36);
        Integer.toString(29, 36);
        Integer.toString(30, 36);
        Integer.toString(31, 36);
        Integer.toString(32, 36);
        Integer.toString(33, 36);
        Integer.toString(34, 36);
        Integer.toString(35, 36);
        Integer.toString(36, 36);
    }

    public final boolean equals(@Nullable Object obj) {
        int i10;
        if (this == obj) {
            return true;
        }
        if (obj != null && zzz.class == obj.getClass()) {
            zzz zzzVar = (zzz) obj;
            int i11 = this.zzP;
            if ((i11 == 0 || (i10 = zzzVar.zzP) == 0 || i11 == i10) && this.zze == zzzVar.zze && this.zzf == zzzVar.zzf && this.zzg == zzzVar.zzg && this.zzh == zzzVar.zzh && this.zzi == zzzVar.zzi && this.zzp == zzzVar.zzp && this.zzt == zzzVar.zzt && this.zzv == zzzVar.zzv && this.zzw == zzzVar.zzw && this.zzx == zzzVar.zzx && this.zzy == zzzVar.zzy && this.zzA == zzzVar.zzA && this.zzD == zzzVar.zzD && this.zzF == zzzVar.zzF && this.zzG == zzzVar.zzG && this.zzH == zzzVar.zzH && this.zzI == zzzVar.zzI && this.zzJ == zzzVar.zzJ && this.zzK == zzzVar.zzK && this.zzL == zzzVar.zzL && this.zzN == zzzVar.zzN && Float.compare(this.zzz, zzzVar.zzz) == 0 && Float.compare(this.zzB, zzzVar.zzB) == 0 && Objects.equals(this.zza, zzzVar.zza) && Objects.equals(this.zzb, zzzVar.zzb) && this.zzc.equals(zzzVar.zzc) && Objects.equals(this.zzk, zzzVar.zzk) && Objects.equals(this.zzn, zzzVar.zzn) && Objects.equals(this.zzo, zzzVar.zzo) && Objects.equals(this.zzd, zzzVar.zzd) && Arrays.equals(this.zzC, zzzVar.zzC) && Objects.equals(this.zzl, zzzVar.zzl) && Objects.equals(this.zzE, zzzVar.zzE) && Objects.equals(this.zzs, zzzVar.zzs) && zzd(zzzVar)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6;
        int i10 = this.zzP;
        if (i10 == 0) {
            String str = this.zza;
            int i11 = 0;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            String str2 = this.zzb;
            if (str2 == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = str2.hashCode();
            }
            int hashCode7 = ((((hashCode + TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER) * 31) + hashCode2) * 31) + this.zzc.hashCode();
            String str3 = this.zzd;
            if (str3 == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = str3.hashCode();
            }
            int i12 = ((((((((((((hashCode7 * 31) + hashCode3) * 31) + this.zze) * 31) + this.zzf) * 31) + this.zzg) * 31) + this.zzh) * 31) + this.zzi) * 31;
            String str4 = this.zzk;
            if (str4 == null) {
                hashCode4 = 0;
            } else {
                hashCode4 = str4.hashCode();
            }
            int i13 = (i12 + hashCode4) * 31;
            zzav zzavVar = this.zzl;
            if (zzavVar == null) {
                hashCode5 = 0;
            } else {
                hashCode5 = zzavVar.hashCode();
            }
            int i14 = i13 + hashCode5;
            String str5 = this.zzn;
            if (str5 == null) {
                hashCode6 = 0;
            } else {
                hashCode6 = str5.hashCode();
            }
            int i15 = ((i14 * 961) + hashCode6) * 31;
            String str6 = this.zzo;
            if (str6 != null) {
                i11 = str6.hashCode();
            }
            int floatToIntBits = ((((((((((((((((((((((((((((((((((((((((i15 + i11) * 31) + this.zzp) * 31) + ((int) this.zzt)) * 31) + this.zzv) * 31) + this.zzw) * 31) + this.zzx) * 31) + this.zzy) * 31) + Float.floatToIntBits(this.zzz)) * 31) + this.zzA) * 31) + Float.floatToIntBits(this.zzB)) * 31) + this.zzD) * 31) + this.zzF) * 31) + this.zzG) * 31) + this.zzH) * 31) + this.zzI) * 31) + this.zzJ) * 31) + this.zzK) * 31) + this.zzL) * 31) - 1) * 31) - 1) * 31) + this.zzN;
            this.zzP = floatToIntBits;
            return floatToIntBits;
        }
        return i10;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzE);
        return "Format(" + this.zza + ", " + this.zzb + ", " + this.zzn + ", " + this.zzo + ", " + this.zzk + ", " + this.zzj + ", " + this.zzd + ", [" + this.zzv + ", " + this.zzw + ", " + this.zzz + ", " + valueOf + "], [" + this.zzG + ", " + this.zzH + "])";
    }

    public final int zza() {
        int i10;
        int i11 = this.zzv;
        if (i11 == -1 || (i10 = this.zzw) == -1) {
            return -1;
        }
        return i11 * i10;
    }

    public final zzx zzb() {
        return new zzx(this, null);
    }

    public final zzz zzc(int i10) {
        zzx zzxVar = new zzx(this, null);
        zzxVar.zzH(i10);
        return new zzz(zzxVar);
    }

    public final boolean zzd(zzz zzzVar) {
        List list = this.zzr;
        int size = list.size();
        List list2 = zzzVar.zzr;
        if (size != list2.size()) {
            return false;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (!Arrays.equals((byte[]) list.get(i10), (byte[]) list2.get(i10))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x008a, code lost:
        if (r0 == null) goto L60;
     */
    /* JADX WARN: Incorrect condition in loop: B:26:0x0097 */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01df A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private zzz(com.google.android.gms.internal.ads.zzx r8) {
        /*
            Method dump skipped, instructions count: 491
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzz.<init>(com.google.android.gms.internal.ads.zzx):void");
    }
}
