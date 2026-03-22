package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.startshorts.androidplayer.bean.search.RedeemCodeVip;
import java.nio.ByteOrder;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaeg {
    public final int zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final int zzh;
    public final int zzi;
    public final long zzj;
    @Nullable
    public final zzaef zzk;
    @Nullable
    private final zzav zzl;

    private zzaeg(int i10, int i11, int i12, int i13, int i14, int i15, int i16, long j10, @Nullable zzaef zzaefVar, @Nullable zzav zzavVar) {
        this.zza = i10;
        this.zzb = i11;
        this.zzc = i12;
        this.zzd = i13;
        this.zze = i14;
        this.zzf = zzi(i14);
        this.zzg = i15;
        this.zzh = i16;
        this.zzi = zzh(i16);
        this.zzj = j10;
        this.zzk = zzaefVar;
        this.zzl = zzavVar;
    }

    private static int zzh(int i10) {
        if (i10 != 8) {
            if (i10 != 12) {
                if (i10 != 16) {
                    if (i10 != 20) {
                        if (i10 != 24) {
                            if (i10 != 32) {
                                return -1;
                            }
                            return 7;
                        }
                        return 6;
                    }
                    return 5;
                }
                return 4;
            }
            return 2;
        }
        return 1;
    }

    private static int zzi(int i10) {
        switch (i10) {
            case 8000:
                return 4;
            case 16000:
                return 5;
            case 22050:
                return 6;
            case 24000:
                return 7;
            case RedeemCodeVip.REDEMPTION_MEMBER_CANNOT_CLAIM /* 32000 */:
                return 8;
            case 44100:
                return 9;
            case 48000:
                return 10;
            case 88200:
                return 1;
            case 96000:
                return 11;
            case 176400:
                return 2;
            case 192000:
                return 3;
            default:
                return -1;
        }
    }

    public final long zza() {
        long j10 = this.zzj;
        if (j10 == 0) {
            return -9223372036854775807L;
        }
        return (j10 * 1000000) / this.zze;
    }

    public final long zzb(long j10) {
        String str = zzex.zza;
        return Math.max(0L, Math.min((j10 * this.zze) / 1000000, this.zzj - 1));
    }

    public final zzz zzc(byte[] bArr, @Nullable zzav zzavVar) {
        bArr[4] = ByteCompanionObject.MIN_VALUE;
        zzav zzd = zzd(zzavVar);
        zzx zzxVar = new zzx();
        zzxVar.zzah(MimeTypes.AUDIO_FLAC);
        int i10 = this.zzd;
        if (i10 <= 0) {
            i10 = -1;
        }
        zzxVar.zzX(i10);
        zzxVar.zzD(this.zzg);
        zzxVar.zzai(this.zze);
        zzxVar.zzab(zzex.zzn(this.zzh, ByteOrder.LITTLE_ENDIAN));
        zzxVar.zzT(Collections.singletonList(bArr));
        zzxVar.zzaa(zzd);
        return zzxVar.zzan();
    }

    @Nullable
    public final zzav zzd(@Nullable zzav zzavVar) {
        zzav zzavVar2 = this.zzl;
        if (zzavVar2 == null) {
            return zzavVar;
        }
        return zzavVar2.zzd(zzavVar);
    }

    public final zzaeg zze(List list) {
        return new zzaeg(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzg, this.zzh, this.zzj, this.zzk, zzd(new zzav(list)));
    }

    public final zzaeg zzf(@Nullable zzaef zzaefVar) {
        return new zzaeg(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzg, this.zzh, this.zzj, zzaefVar, this.zzl);
    }

    public final zzaeg zzg(List list) {
        return new zzaeg(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzg, this.zzh, this.zzj, this.zzk, zzd(zzafh.zzb(list)));
    }

    public zzaeg(byte[] bArr, int i10) {
        zzem zzemVar = new zzem(bArr, bArr.length);
        zzemVar.zzl(i10 * 8);
        this.zza = zzemVar.zzd(16);
        this.zzb = zzemVar.zzd(16);
        this.zzc = zzemVar.zzd(24);
        this.zzd = zzemVar.zzd(24);
        int zzd = zzemVar.zzd(20);
        this.zze = zzd;
        this.zzf = zzi(zzd);
        this.zzg = zzemVar.zzd(3) + 1;
        int zzd2 = zzemVar.zzd(5) + 1;
        this.zzh = zzd2;
        this.zzi = zzh(zzd2);
        this.zzj = zzemVar.zze(36);
        this.zzk = null;
        this.zzl = null;
    }
}
