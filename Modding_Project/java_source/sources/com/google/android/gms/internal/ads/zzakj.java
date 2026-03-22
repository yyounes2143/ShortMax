package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzakj extends zzakh {
    @Nullable
    private zzaki zza;
    private int zzb;
    private boolean zzc;
    @Nullable
    private zzafg zzd;
    @Nullable
    private zzafe zze;

    @Override // com.google.android.gms.internal.ads.zzakh
    protected final long zza(zzen zzenVar) {
        int i10;
        int i11 = 0;
        if ((zzenVar.zzN()[0] & 1) == 1) {
            return -1L;
        }
        byte b10 = zzenVar.zzN()[0];
        zzaki zzakiVar = this.zza;
        zzdd.zzb(zzakiVar);
        if (!zzakiVar.zzd[(b10 >> 1) & (255 >>> (8 - zzakiVar.zze))].zza) {
            i10 = zzakiVar.zza.zze;
        } else {
            i10 = zzakiVar.zza.zzf;
        }
        if (this.zzc) {
            i11 = (this.zzb + i10) / 4;
        }
        if (zzenVar.zzb() < zzenVar.zzd() + 4) {
            byte[] copyOf = Arrays.copyOf(zzenVar.zzN(), zzenVar.zzd() + 4);
            zzenVar.zzJ(copyOf, copyOf.length);
        } else {
            zzenVar.zzK(zzenVar.zzd() + 4);
        }
        long j10 = i11;
        byte[] zzN = zzenVar.zzN();
        zzN[zzenVar.zzd() - 4] = (byte) (j10 & 255);
        zzN[zzenVar.zzd() - 3] = (byte) ((j10 >>> 8) & 255);
        zzN[zzenVar.zzd() - 2] = (byte) ((j10 >>> 16) & 255);
        zzN[zzenVar.zzd() - 1] = (byte) ((j10 >>> 24) & 255);
        this.zzc = true;
        this.zzb = i10;
        return j10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzakh
    public final void zzb(boolean z10) {
        super.zzb(z10);
        if (z10) {
            this.zza = null;
            this.zzd = null;
            this.zze = null;
        }
        this.zzb = 0;
        this.zzc = false;
    }

    @Override // com.google.android.gms.internal.ads.zzakh
    protected final boolean zzc(zzen zzenVar, long j10, zzake zzakeVar) throws IOException {
        zzaki zzakiVar;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        zzafg zzafgVar;
        long j11;
        int i15;
        int i16;
        int i17;
        boolean z10;
        if (this.zza != null) {
            zzakeVar.zza.getClass();
            return false;
        }
        zzafg zzafgVar2 = this.zzd;
        int i18 = 4;
        if (zzafgVar2 == null) {
            zzafh.zzd(1, zzenVar, false);
            int zzj = zzenVar.zzj();
            int zzm = zzenVar.zzm();
            int zzj2 = zzenVar.zzj();
            int zzi = zzenVar.zzi();
            if (zzi <= 0) {
                i15 = -1;
            } else {
                i15 = zzi;
            }
            int zzi2 = zzenVar.zzi();
            if (zzi2 <= 0) {
                i16 = -1;
            } else {
                i16 = zzi2;
            }
            int zzi3 = zzenVar.zzi();
            if (zzi3 <= 0) {
                i17 = -1;
            } else {
                i17 = zzi3;
            }
            int zzm2 = zzenVar.zzm();
            int pow = (int) Math.pow(2.0d, zzm2 & 15);
            int pow2 = (int) Math.pow(2.0d, (zzm2 & 240) >> 4);
            if (1 != (zzenVar.zzm() & 1)) {
                z10 = false;
            } else {
                z10 = true;
            }
            this.zzd = new zzafg(zzj, zzm, zzj2, i15, i16, i17, pow, pow2, z10, Arrays.copyOf(zzenVar.zzN(), zzenVar.zzd()));
        } else {
            zzafe zzafeVar = this.zze;
            if (zzafeVar == null) {
                this.zze = zzafh.zzc(zzenVar, true, true);
            } else {
                byte[] bArr = new byte[zzenVar.zzd()];
                System.arraycopy(zzenVar.zzN(), 0, bArr, 0, zzenVar.zzd());
                int i19 = zzafgVar2.zza;
                int i20 = 5;
                zzafh.zzd(5, zzenVar, false);
                int zzm3 = zzenVar.zzm() + 1;
                zzafd zzafdVar = new zzafd(zzenVar.zzN());
                zzafdVar.zzc(zzenVar.zzc() * 8);
                int i21 = 0;
                while (true) {
                    int i22 = 2;
                    int i23 = 16;
                    if (i21 < zzm3) {
                        if (zzafdVar.zzb(24) == 5653314) {
                            int zzb = zzafdVar.zzb(16);
                            int zzb2 = zzafdVar.zzb(24);
                            if (!zzafdVar.zzd()) {
                                boolean zzd = zzafdVar.zzd();
                                for (int i24 = 0; i24 < zzb2; i24++) {
                                    if (zzd) {
                                        if (zzafdVar.zzd()) {
                                            zzafdVar.zzc(5);
                                        }
                                    } else {
                                        zzafdVar.zzc(5);
                                    }
                                }
                            } else {
                                zzafdVar.zzc(5);
                                for (int i25 = 0; i25 < zzb2; i25 += zzafdVar.zzb(zzafh.zza(zzb2 - i25))) {
                                }
                            }
                            int zzb3 = zzafdVar.zzb(i18);
                            if (zzb3 <= 2) {
                                if (zzb3 != 1) {
                                    if (zzb3 != 2) {
                                        zzafgVar = zzafgVar2;
                                        i21++;
                                        zzafgVar2 = zzafgVar;
                                        i18 = 4;
                                    }
                                } else {
                                    i22 = zzb3;
                                }
                                zzafdVar.zzc(32);
                                zzafdVar.zzc(32);
                                int zzb4 = zzafdVar.zzb(i18) + 1;
                                zzafdVar.zzc(1);
                                if (i22 == 1) {
                                    if (zzb != 0) {
                                        zzafgVar = zzafgVar2;
                                        j11 = (long) Math.floor(Math.pow(zzb2, 1.0d / zzb));
                                    } else {
                                        zzafgVar = zzafgVar2;
                                        j11 = 0;
                                    }
                                } else {
                                    zzafgVar = zzafgVar2;
                                    j11 = zzb * zzb2;
                                }
                                zzafdVar.zzc((int) (j11 * zzb4));
                                i21++;
                                zzafgVar2 = zzafgVar;
                                i18 = 4;
                            } else {
                                throw zzaz.zza("lookup type greater than 2 not decodable: " + zzb3, null);
                            }
                        } else {
                            throw zzaz.zza("expected code book to start with [0x56, 0x43, 0x42] at " + zzafdVar.zza(), null);
                        }
                    } else {
                        zzafg zzafgVar3 = zzafgVar2;
                        int i26 = 6;
                        int zzb5 = zzafdVar.zzb(6) + 1;
                        for (int i27 = 0; i27 < zzb5; i27++) {
                            if (zzafdVar.zzb(16) != 0) {
                                throw zzaz.zza("placeholder of time domain transforms not zeroed out", null);
                            }
                        }
                        int i28 = 1;
                        int zzb6 = zzafdVar.zzb(6) + 1;
                        int i29 = 0;
                        while (true) {
                            int i30 = 3;
                            if (i29 < zzb6) {
                                int zzb7 = zzafdVar.zzb(i23);
                                if (zzb7 != 0) {
                                    if (zzb7 == i28) {
                                        int zzb8 = zzafdVar.zzb(i20);
                                        int[] iArr = new int[zzb8];
                                        int i31 = -1;
                                        for (int i32 = 0; i32 < zzb8; i32++) {
                                            int zzb9 = zzafdVar.zzb(4);
                                            iArr[i32] = zzb9;
                                            if (zzb9 > i31) {
                                                i31 = zzb9;
                                            }
                                        }
                                        int i33 = i31 + 1;
                                        int[] iArr2 = new int[i33];
                                        int i34 = 0;
                                        while (i34 < i33) {
                                            iArr2[i34] = zzafdVar.zzb(i30) + 1;
                                            int zzb10 = zzafdVar.zzb(i22);
                                            if (zzb10 > 0) {
                                                i14 = 8;
                                                zzafdVar.zzc(8);
                                            } else {
                                                i14 = 8;
                                            }
                                            int i35 = zzb6;
                                            int i36 = 0;
                                            for (int i37 = 1; i36 < (i37 << zzb10); i37 = 1) {
                                                zzafdVar.zzc(i14);
                                                i36++;
                                                i14 = 8;
                                            }
                                            i34++;
                                            zzb6 = i35;
                                            i22 = 2;
                                            i30 = 3;
                                        }
                                        i13 = zzb6;
                                        zzafdVar.zzc(i22);
                                        int zzb11 = zzafdVar.zzb(4);
                                        int i38 = 0;
                                        int i39 = 0;
                                        for (int i40 = 0; i40 < zzb8; i40++) {
                                            i38 += iArr2[iArr[i40]];
                                            while (i39 < i38) {
                                                zzafdVar.zzc(zzb11);
                                                i39++;
                                            }
                                        }
                                    } else {
                                        throw zzaz.zza("floor type greater than 1 not decodable: " + zzb7, null);
                                    }
                                } else {
                                    i13 = zzb6;
                                    int i41 = 8;
                                    zzafdVar.zzc(8);
                                    zzafdVar.zzc(16);
                                    zzafdVar.zzc(16);
                                    zzafdVar.zzc(6);
                                    zzafdVar.zzc(8);
                                    int zzb12 = zzafdVar.zzb(4) + 1;
                                    int i42 = 0;
                                    while (i42 < zzb12) {
                                        zzafdVar.zzc(i41);
                                        i42++;
                                        i41 = 8;
                                    }
                                }
                                i29++;
                                zzb6 = i13;
                                i26 = 6;
                                i22 = 2;
                                i23 = 16;
                                i28 = 1;
                                i20 = 5;
                            } else {
                                int i43 = 1;
                                int zzb13 = zzafdVar.zzb(i26) + 1;
                                int i44 = 0;
                                while (i44 < zzb13) {
                                    if (zzafdVar.zzb(16) <= 2) {
                                        zzafdVar.zzc(24);
                                        zzafdVar.zzc(24);
                                        zzafdVar.zzc(24);
                                        int zzb14 = zzafdVar.zzb(i26) + i43;
                                        int i45 = 8;
                                        zzafdVar.zzc(8);
                                        int[] iArr3 = new int[zzb14];
                                        for (int i46 = 0; i46 < zzb14; i46++) {
                                            int zzb15 = zzafdVar.zzb(3);
                                            if (zzafdVar.zzd()) {
                                                i12 = zzafdVar.zzb(5);
                                            } else {
                                                i12 = 0;
                                            }
                                            iArr3[i46] = (i12 * 8) + zzb15;
                                        }
                                        int i47 = 0;
                                        while (i47 < zzb14) {
                                            int i48 = 0;
                                            while (i48 < i45) {
                                                if ((iArr3[i47] & (1 << i48)) != 0) {
                                                    zzafdVar.zzc(i45);
                                                }
                                                i48++;
                                                i45 = 8;
                                            }
                                            i47++;
                                            i45 = 8;
                                        }
                                        i44++;
                                        i26 = 6;
                                        i43 = 1;
                                    } else {
                                        throw zzaz.zza("residueType greater than 2 is not decodable", null);
                                    }
                                }
                                int zzb16 = zzafdVar.zzb(i26) + 1;
                                for (int i49 = 0; i49 < zzb16; i49++) {
                                    int zzb17 = zzafdVar.zzb(16);
                                    if (zzb17 != 0) {
                                        zzea.zzc("VorbisUtil", "mapping type other than 0 not supported: " + zzb17);
                                    } else {
                                        if (zzafdVar.zzd()) {
                                            i10 = 1;
                                            i11 = zzafdVar.zzb(4) + 1;
                                        } else {
                                            i10 = 1;
                                            i11 = 1;
                                        }
                                        if (zzafdVar.zzd()) {
                                            int zzb18 = zzafdVar.zzb(8) + i10;
                                            for (int i50 = 0; i50 < zzb18; i50++) {
                                                int i51 = i19 - 1;
                                                zzafdVar.zzc(zzafh.zza(i51));
                                                zzafdVar.zzc(zzafh.zza(i51));
                                            }
                                        }
                                        if (zzafdVar.zzb(2) == 0) {
                                            if (i11 > 1) {
                                                for (int i52 = 0; i52 < i19; i52++) {
                                                    zzafdVar.zzc(4);
                                                }
                                            }
                                            for (int i53 = 0; i53 < i11; i53++) {
                                                zzafdVar.zzc(8);
                                                zzafdVar.zzc(8);
                                                zzafdVar.zzc(8);
                                            }
                                        } else {
                                            throw zzaz.zza("to reserved bits must be zero after mapping coupling steps", null);
                                        }
                                    }
                                }
                                int zzb19 = zzafdVar.zzb(6);
                                int i54 = zzb19 + 1;
                                zzaff[] zzaffVarArr = new zzaff[i54];
                                for (int i55 = 0; i55 < i54; i55++) {
                                    zzaffVarArr[i55] = new zzaff(zzafdVar.zzd(), zzafdVar.zzb(16), zzafdVar.zzb(16), zzafdVar.zzb(8));
                                }
                                if (zzafdVar.zzd()) {
                                    zzakiVar = new zzaki(zzafgVar3, zzafeVar, bArr, zzaffVarArr, zzafh.zza(zzb19));
                                } else {
                                    throw zzaz.zza("framing bit after modes not set as expected", null);
                                }
                            }
                        }
                    }
                }
            }
        }
        zzakiVar = null;
        this.zza = zzakiVar;
        if (zzakiVar == null) {
            return true;
        }
        ArrayList arrayList = new ArrayList();
        zzafg zzafgVar4 = zzakiVar.zza;
        arrayList.add(zzafgVar4.zzg);
        arrayList.add(zzakiVar.zzc);
        zzav zzb20 = zzafh.zzb(zzfyq.zzm(zzakiVar.zzb.zza));
        zzx zzxVar = new zzx();
        zzxVar.zzG("audio/ogg");
        zzxVar.zzah(MimeTypes.AUDIO_VORBIS);
        zzxVar.zzC(zzafgVar4.zzd);
        zzxVar.zzac(zzafgVar4.zzc);
        zzxVar.zzD(zzafgVar4.zza);
        zzxVar.zzai(zzafgVar4.zzb);
        zzxVar.zzT(arrayList);
        zzxVar.zzaa(zzb20);
        zzakeVar.zza = zzxVar.zzan();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzakh
    public final void zzi(long j10) {
        boolean z10;
        super.zzi(j10);
        int i10 = 0;
        if (j10 != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.zzc = z10;
        zzafg zzafgVar = this.zzd;
        if (zzafgVar != null) {
            i10 = zzafgVar.zze;
        }
        this.zzb = i10;
    }
}
