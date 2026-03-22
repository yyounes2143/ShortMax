package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import kotlin.jvm.internal.ByteCompanionObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzahy implements zzadv {
    private static final byte[] zza = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
    private static final byte[] zzb;
    private static final byte[] zzc;
    private static final byte[] zzd;
    private static final UUID zze;
    private static final Map zzf;
    private long zzA;
    private boolean zzB;
    @Nullable
    private zzahw zzC;
    private boolean zzD;
    private int zzE;
    private long zzF;
    private boolean zzG;
    private long zzH;
    private long zzI;
    private long zzJ;
    @Nullable
    private zzeb zzK;
    @Nullable
    private zzeb zzL;
    private boolean zzM;
    private boolean zzN;
    private int zzO;
    private long zzP;
    private long zzQ;
    private int zzR;
    private int zzS;
    private int[] zzT;
    private int zzU;
    private int zzV;
    private int zzW;
    private int zzX;
    private boolean zzY;
    private long zzZ;
    private int zzaa;
    private int zzab;
    private int zzac;
    private boolean zzad;
    private boolean zzae;
    private boolean zzaf;
    private int zzag;
    private byte zzah;
    private boolean zzai;
    private zzady zzaj;
    private final zzaht zzak;
    private final zzaia zzg;
    private final SparseArray zzh;
    private final boolean zzi;
    private final boolean zzj;
    private final zzakr zzk;
    private final zzen zzl;
    private final zzen zzm;
    private final zzen zzn;
    private final zzen zzo;
    private final zzen zzp;
    private final zzen zzq;
    private final zzen zzr;
    private final zzen zzs;
    private final zzen zzt;
    private final zzen zzu;
    private ByteBuffer zzv;
    private long zzw;
    private long zzx;
    private long zzy;
    private long zzz;

    static {
        String str = zzex.zza;
        zzb = "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text".getBytes(StandardCharsets.UTF_8);
        zzc = new byte[]{68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};
        zzd = new byte[]{87, 69, 66, 86, 84, 84, 10, 10, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 10};
        zze = new UUID(72057594037932032L, -9223371306706625679L);
        HashMap hashMap = new HashMap();
        hashMap.put("htc_video_rotA-000", 0);
        hashMap.put("htc_video_rotA-090", 90);
        hashMap.put("htc_video_rotA-180", 180);
        hashMap.put("htc_video_rotA-270", 270);
        zzf = Collections.unmodifiableMap(hashMap);
    }

    @Deprecated
    public zzahy() {
        this(new zzaht(), 2, zzakr.zza);
    }

    private final int zzp(zzadw zzadwVar, zzahw zzahwVar, int i10, boolean z10) throws IOException {
        int i11;
        if ("S_TEXT/UTF8".equals(zzahwVar.zzc)) {
            zzx(zzadwVar, zza, i10);
            int i12 = this.zzab;
            zzw();
            return i12;
        } else if (!"S_TEXT/ASS".equals(zzahwVar.zzc) && !"S_TEXT/SSA".equals(zzahwVar.zzc)) {
            if ("S_TEXT/WEBVTT".equals(zzahwVar.zzc)) {
                zzx(zzadwVar, zzd, i10);
                int i13 = this.zzab;
                zzw();
                return i13;
            }
            zzafb zzafbVar = zzahwVar.zzX;
            boolean z11 = true;
            if (!this.zzad) {
                if (zzahwVar.zzh) {
                    this.zzW &= -1073741825;
                    int i14 = 128;
                    if (!this.zzae) {
                        zzen zzenVar = this.zzn;
                        zzadwVar.zzi(zzenVar.zzN(), 0, 1);
                        this.zzaa++;
                        if ((zzenVar.zzN()[0] & ByteCompanionObject.MIN_VALUE) != 128) {
                            this.zzah = zzenVar.zzN()[0];
                            this.zzae = true;
                        } else {
                            throw zzaz.zza("Extension bit is set in signal byte", null);
                        }
                    }
                    byte b10 = this.zzah;
                    if ((b10 & 1) == 1) {
                        int i15 = b10 & 2;
                        this.zzW |= 1073741824;
                        if (!this.zzai) {
                            zzen zzenVar2 = this.zzs;
                            zzadwVar.zzi(zzenVar2.zzN(), 0, 8);
                            this.zzaa += 8;
                            this.zzai = true;
                            zzen zzenVar3 = this.zzn;
                            if (i15 != 2) {
                                i14 = 0;
                            }
                            zzenVar3.zzN()[0] = (byte) (i14 | 8);
                            zzenVar3.zzL(0);
                            zzafbVar.zzs(zzenVar3, 1, 1);
                            this.zzab++;
                            zzenVar2.zzL(0);
                            zzafbVar.zzs(zzenVar2, 8, 1);
                            this.zzab += 8;
                        }
                        if (i15 == 2) {
                            if (!this.zzaf) {
                                zzen zzenVar4 = this.zzn;
                                zzadwVar.zzi(zzenVar4.zzN(), 0, 1);
                                this.zzaa++;
                                zzenVar4.zzL(0);
                                this.zzag = zzenVar4.zzm();
                                this.zzaf = true;
                            }
                            int i16 = this.zzag * 4;
                            zzen zzenVar5 = this.zzn;
                            zzenVar5.zzI(i16);
                            zzadwVar.zzi(zzenVar5.zzN(), 0, i16);
                            this.zzaa += i16;
                            int i17 = (this.zzag >> 1) + 1;
                            int i18 = (i17 * 6) + 2;
                            ByteBuffer byteBuffer = this.zzv;
                            if (byteBuffer == null || byteBuffer.capacity() < i18) {
                                this.zzv = ByteBuffer.allocate(i18);
                            }
                            this.zzv.position(0);
                            this.zzv.putShort((short) i17);
                            int i19 = 0;
                            int i20 = 0;
                            while (true) {
                                i11 = this.zzag;
                                if (i19 >= i11) {
                                    break;
                                }
                                int zzp = zzenVar5.zzp();
                                int i21 = zzp - i20;
                                if (i19 % 2 == 0) {
                                    this.zzv.putShort((short) i21);
                                } else {
                                    this.zzv.putInt(i21);
                                }
                                i19++;
                                i20 = zzp;
                            }
                            int i22 = (i10 - this.zzaa) - i20;
                            if ((i11 & 1) == 1) {
                                this.zzv.putInt(i22);
                            } else {
                                this.zzv.putShort((short) i22);
                                this.zzv.putInt(0);
                            }
                            zzen zzenVar6 = this.zzt;
                            zzenVar6.zzJ(this.zzv.array(), i18);
                            zzafbVar.zzs(zzenVar6, i18, 1);
                            this.zzab += i18;
                        }
                    }
                } else {
                    byte[] bArr = zzahwVar.zzi;
                    if (bArr != null) {
                        this.zzq.zzJ(bArr, bArr.length);
                    }
                }
                if (!"A_OPUS".equals(zzahwVar.zzc) ? zzahwVar.zzg > 0 : z10) {
                    this.zzW |= 268435456;
                    this.zzu.zzI(0);
                    int zzd2 = (this.zzq.zzd() + i10) - this.zzaa;
                    zzen zzenVar7 = this.zzn;
                    zzenVar7.zzI(4);
                    zzenVar7.zzN()[0] = (byte) ((zzd2 >> 24) & 255);
                    zzenVar7.zzN()[1] = (byte) ((zzd2 >> 16) & 255);
                    zzenVar7.zzN()[2] = (byte) ((zzd2 >> 8) & 255);
                    zzenVar7.zzN()[3] = (byte) (zzd2 & 255);
                    zzafbVar.zzs(zzenVar7, 4, 2);
                    this.zzab += 4;
                }
                this.zzad = true;
            }
            zzen zzenVar8 = this.zzq;
            int zzd3 = i10 + zzenVar8.zzd();
            if (!"V_MPEG4/ISO/AVC".equals(zzahwVar.zzc) && !"V_MPEGH/ISO/HEVC".equals(zzahwVar.zzc)) {
                if (zzahwVar.zzU != null) {
                    if (zzenVar8.zzd() != 0) {
                        z11 = false;
                    }
                    zzdd.zzf(z11);
                    zzahwVar.zzU.zzd(zzadwVar);
                }
                while (true) {
                    int i23 = this.zzaa;
                    if (i23 >= zzd3) {
                        break;
                    }
                    int zzq = zzq(zzadwVar, zzafbVar, zzd3 - i23);
                    this.zzaa += zzq;
                    this.zzab += zzq;
                }
            } else {
                zzen zzenVar9 = this.zzm;
                byte[] zzN = zzenVar9.zzN();
                zzN[0] = 0;
                zzN[1] = 0;
                zzN[2] = 0;
                int i24 = zzahwVar.zzY;
                int i25 = 4 - i24;
                while (this.zzaa < zzd3) {
                    int i26 = this.zzac;
                    if (i26 == 0) {
                        int min = Math.min(i24, zzenVar8.zza());
                        zzadwVar.zzi(zzN, i25 + min, i24 - min);
                        if (min > 0) {
                            zzenVar8.zzH(zzN, i25, min);
                        }
                        this.zzaa += i24;
                        zzenVar9.zzL(0);
                        this.zzac = zzenVar9.zzp();
                        zzen zzenVar10 = this.zzl;
                        zzenVar10.zzL(0);
                        zzafbVar.zzr(zzenVar10, 4);
                        this.zzab += 4;
                    } else {
                        int zzq2 = zzq(zzadwVar, zzafbVar, i26);
                        this.zzaa += zzq2;
                        this.zzab += zzq2;
                        this.zzac -= zzq2;
                    }
                }
            }
            if ("A_VORBIS".equals(zzahwVar.zzc)) {
                zzen zzenVar11 = this.zzo;
                zzenVar11.zzL(0);
                zzafbVar.zzr(zzenVar11, 4);
                this.zzab += 4;
            }
            int i27 = this.zzab;
            zzw();
            return i27;
        } else {
            zzx(zzadwVar, zzc, i10);
            int i28 = this.zzab;
            zzw();
            return i28;
        }
    }

    private final int zzq(zzadw zzadwVar, zzafb zzafbVar, int i10) throws IOException {
        zzen zzenVar = this.zzq;
        int zza2 = zzenVar.zza();
        if (zza2 > 0) {
            int min = Math.min(i10, zza2);
            zzafbVar.zzr(zzenVar, min);
            return min;
        }
        return zzafbVar.zzf(zzadwVar, i10, false);
    }

    private final long zzr(long j10) throws zzaz {
        long j11 = this.zzy;
        if (j11 != -9223372036854775807L) {
            return zzex.zzu(j10, j11, 1000L, RoundingMode.DOWN);
        }
        throw zzaz.zza("Can't scale timecode prior to timecodeScale being set.", null);
    }

    private final void zzs(int i10) throws zzaz {
        if (this.zzK != null && this.zzL != null) {
            return;
        }
        throw zzaz.zza("Element " + i10 + " must be in a Cues", null);
    }

    private final void zzt(int i10) throws zzaz {
        if (this.zzC != null) {
            return;
        }
        throw zzaz.zza("Element " + i10 + " must be in a TrackEntry", null);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzu(com.google.android.gms.internal.ads.zzahw r18, long r19, int r21, int r22, int r23) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzahy.zzu(com.google.android.gms.internal.ads.zzahw, long, int, int, int):void");
    }

    private final void zzv(zzadw zzadwVar, int i10) throws IOException {
        zzen zzenVar = this.zzn;
        if (zzenVar.zzd() >= i10) {
            return;
        }
        if (zzenVar.zzb() < i10) {
            int zzb2 = zzenVar.zzb();
            zzenVar.zzF(Math.max(zzb2 + zzb2, i10));
        }
        zzadwVar.zzi(zzenVar.zzN(), zzenVar.zzd(), i10 - zzenVar.zzd());
        zzenVar.zzK(i10);
    }

    private final void zzw() {
        this.zzaa = 0;
        this.zzab = 0;
        this.zzac = 0;
        this.zzad = false;
        this.zzae = false;
        this.zzaf = false;
        this.zzag = 0;
        this.zzah = (byte) 0;
        this.zzai = false;
        this.zzq.zzI(0);
    }

    private final void zzx(zzadw zzadwVar, byte[] bArr, int i10) throws IOException {
        int length = bArr.length;
        int i11 = length + i10;
        zzen zzenVar = this.zzr;
        if (zzenVar.zzb() < i11) {
            byte[] copyOf = Arrays.copyOf(bArr, i11 + i10);
            zzenVar.zzJ(copyOf, copyOf.length);
        } else {
            System.arraycopy(bArr, 0, zzenVar.zzN(), 0, length);
        }
        zzadwVar.zzi(zzenVar.zzN(), length, i10);
        zzenVar.zzL(0);
        zzenVar.zzK(i11);
    }

    private static byte[] zzy(long j10, String str, long j11) {
        boolean z10;
        if (j10 != -9223372036854775807L) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zzd(z10);
        Locale locale = Locale.US;
        int i10 = (int) (j10 / 3600000000L);
        Integer valueOf = Integer.valueOf(i10);
        long j12 = j10 - (i10 * 3600000000L);
        int i11 = (int) (j12 / 60000000);
        Integer valueOf2 = Integer.valueOf(i11);
        long j13 = j12 - (i11 * 60000000);
        int i12 = (int) (j13 / 1000000);
        String format = String.format(locale, str, valueOf, valueOf2, Integer.valueOf(i12), Integer.valueOf((int) ((j13 - (i12 * 1000000)) / j11)));
        String str2 = zzex.zza;
        return format.getBytes(StandardCharsets.UTF_8);
    }

    private static int[] zzz(@Nullable int[] iArr, int i10) {
        if (iArr == null) {
            return new int[i10];
        }
        int length = iArr.length;
        if (length >= i10) {
            return iArr;
        }
        return new int[Math.max(length + length, i10)];
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final int zzb(zzadw zzadwVar, zzaer zzaerVar) throws IOException {
        int i10 = 0;
        this.zzN = false;
        while (!this.zzN) {
            if (this.zzak.zzc(zzadwVar)) {
                long zzf2 = zzadwVar.zzf();
                if (this.zzG) {
                    this.zzI = zzf2;
                    zzaerVar.zza = this.zzH;
                    this.zzG = false;
                    return 1;
                } else if (this.zzD) {
                    long j10 = this.zzI;
                    if (j10 != -1) {
                        zzaerVar.zza = j10;
                        this.zzI = -1L;
                        return 1;
                    }
                }
            } else {
                while (true) {
                    SparseArray sparseArray = this.zzh;
                    if (i10 < sparseArray.size()) {
                        zzahw zzahwVar = (zzahw) sparseArray.valueAt(i10);
                        zzahw.zzd(zzahwVar);
                        zzafc zzafcVar = zzahwVar.zzU;
                        if (zzafcVar != null) {
                            zzafcVar.zza(zzahwVar.zzX, zzahwVar.zzj);
                        }
                        i10++;
                    } else {
                        return -1;
                    }
                }
            }
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final /* synthetic */ List zzd() {
        return zzfyq.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final void zze(zzady zzadyVar) {
        if (this.zzj) {
            zzadyVar = new zzaku(zzadyVar, this.zzk);
        }
        this.zzaj = zzadyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    @CallSuper
    public final void zzf(long j10, long j11) {
        this.zzJ = -9223372036854775807L;
        int i10 = 0;
        this.zzO = 0;
        this.zzak.zzb();
        this.zzg.zze();
        zzw();
        while (true) {
            SparseArray sparseArray = this.zzh;
            if (i10 < sparseArray.size()) {
                zzafc zzafcVar = ((zzahw) sparseArray.valueAt(i10)).zzU;
                if (zzafcVar != null) {
                    zzafcVar.zzb();
                }
                i10++;
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0255, code lost:
        throw com.google.android.gms.internal.ads.zzaz.zza("EBML lacing sample size out of range.", null);
     */
    /* JADX WARN: Removed duplicated region for block: B:111:0x028c  */
    @androidx.annotation.CallSuper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzh(int r25, int r26, com.google.android.gms.internal.ads.zzadw r27) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 765
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzahy.zzh(int, int, com.google.android.gms.internal.ads.zzadw):void");
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final boolean zzi(zzadw zzadwVar) throws IOException {
        return new zzahz().zza(zzadwVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x025c, code lost:
        if (r1.equals("V_AV1") != false) goto L101;
     */
    @androidx.annotation.CallSuper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzj(int r19) throws com.google.android.gms.internal.ads.zzaz {
        /*
            Method dump skipped, instructions count: 1146
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzahy.zzj(int):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @CallSuper
    public final void zzk(int i10, double d10) throws zzaz {
        if (i10 != 181) {
            if (i10 != 17545) {
                switch (i10) {
                    case 21969:
                        zzt(i10);
                        this.zzC.zzE = (float) d10;
                        return;
                    case 21970:
                        zzt(i10);
                        this.zzC.zzF = (float) d10;
                        return;
                    case 21971:
                        zzt(i10);
                        this.zzC.zzG = (float) d10;
                        return;
                    case 21972:
                        zzt(i10);
                        this.zzC.zzH = (float) d10;
                        return;
                    case 21973:
                        zzt(i10);
                        this.zzC.zzI = (float) d10;
                        return;
                    case 21974:
                        zzt(i10);
                        this.zzC.zzJ = (float) d10;
                        return;
                    case 21975:
                        zzt(i10);
                        this.zzC.zzK = (float) d10;
                        return;
                    case 21976:
                        zzt(i10);
                        this.zzC.zzL = (float) d10;
                        return;
                    case 21977:
                        zzt(i10);
                        this.zzC.zzM = (float) d10;
                        return;
                    case 21978:
                        zzt(i10);
                        this.zzC.zzN = (float) d10;
                        return;
                    default:
                        switch (i10) {
                            case 30323:
                                zzt(i10);
                                this.zzC.zzt = (float) d10;
                                return;
                            case 30324:
                                zzt(i10);
                                this.zzC.zzu = (float) d10;
                                return;
                            case 30325:
                                zzt(i10);
                                this.zzC.zzv = (float) d10;
                                return;
                            default:
                                return;
                        }
                }
            }
            this.zzz = (long) d10;
            return;
        }
        zzt(i10);
        this.zzC.zzR = (int) d10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @CallSuper
    public final void zzl(int i10, long j10) throws zzaz {
        if (i10 != 20529) {
            if (i10 != 20530) {
                boolean z10 = false;
                switch (i10) {
                    case 131:
                        zzt(i10);
                        this.zzC.zze = (int) j10;
                        return;
                    case 136:
                        if (j10 == 1) {
                            z10 = true;
                        }
                        zzt(i10);
                        this.zzC.zzW = z10;
                        return;
                    case 155:
                        this.zzQ = zzr(j10);
                        return;
                    case 159:
                        zzt(i10);
                        this.zzC.zzP = (int) j10;
                        return;
                    case 176:
                        zzt(i10);
                        this.zzC.zzm = (int) j10;
                        return;
                    case 179:
                        zzs(i10);
                        this.zzK.zzc(zzr(j10));
                        return;
                    case 186:
                        zzt(i10);
                        this.zzC.zzn = (int) j10;
                        return;
                    case 215:
                        zzt(i10);
                        this.zzC.zzd = (int) j10;
                        return;
                    case 231:
                        this.zzJ = zzr(j10);
                        return;
                    case 238:
                        this.zzX = (int) j10;
                        return;
                    case 241:
                        if (!this.zzM) {
                            zzs(i10);
                            this.zzL.zzc(j10);
                            this.zzM = true;
                            return;
                        }
                        return;
                    case 251:
                        this.zzY = true;
                        return;
                    case 16871:
                        zzt(i10);
                        zzahw.zzb(this.zzC, (int) j10);
                        return;
                    case 16980:
                        if (j10 != 3) {
                            throw zzaz.zza("ContentCompAlgo " + j10 + " not supported", null);
                        }
                        return;
                    case 17029:
                        if (j10 < 1 || j10 > 2) {
                            throw zzaz.zza("DocTypeReadVersion " + j10 + " not supported", null);
                        }
                        return;
                    case 17143:
                        if (j10 != 1) {
                            throw zzaz.zza("EBMLReadVersion " + j10 + " not supported", null);
                        }
                        return;
                    case 18401:
                        if (j10 != 5) {
                            throw zzaz.zza("ContentEncAlgo " + j10 + " not supported", null);
                        }
                        return;
                    case 18408:
                        if (j10 != 1) {
                            throw zzaz.zza("AESSettingsCipherMode " + j10 + " not supported", null);
                        }
                        return;
                    case 21420:
                        this.zzF = j10 + this.zzx;
                        return;
                    case 21432:
                        int i11 = (int) j10;
                        zzt(i10);
                        if (i11 != 0) {
                            if (i11 != 1) {
                                if (i11 != 3) {
                                    if (i11 == 15) {
                                        this.zzC.zzx = 3;
                                        return;
                                    }
                                    return;
                                }
                                this.zzC.zzx = 1;
                                return;
                            }
                            this.zzC.zzx = 2;
                            return;
                        }
                        this.zzC.zzx = 0;
                        return;
                    case 21680:
                        zzt(i10);
                        this.zzC.zzp = (int) j10;
                        return;
                    case 21682:
                        zzt(i10);
                        this.zzC.zzr = (int) j10;
                        return;
                    case 21690:
                        zzt(i10);
                        this.zzC.zzq = (int) j10;
                        return;
                    case 21930:
                        if (j10 == 1) {
                            z10 = true;
                        }
                        zzt(i10);
                        this.zzC.zzV = z10;
                        return;
                    case 21938:
                        zzt(i10);
                        zzahw zzahwVar = this.zzC;
                        zzahwVar.zzy = true;
                        zzahwVar.zzo = (int) j10;
                        return;
                    case 21998:
                        zzt(i10);
                        this.zzC.zzg = (int) j10;
                        return;
                    case 22186:
                        zzt(i10);
                        this.zzC.zzS = j10;
                        return;
                    case 22203:
                        zzt(i10);
                        this.zzC.zzT = j10;
                        return;
                    case 25188:
                        zzt(i10);
                        this.zzC.zzQ = (int) j10;
                        return;
                    case 30114:
                        this.zzZ = j10;
                        return;
                    case 30321:
                        int i12 = (int) j10;
                        zzt(i10);
                        if (i12 != 0) {
                            if (i12 != 1) {
                                if (i12 != 2) {
                                    if (i12 == 3) {
                                        this.zzC.zzs = 3;
                                        return;
                                    }
                                    return;
                                }
                                this.zzC.zzs = 2;
                                return;
                            }
                            this.zzC.zzs = 1;
                            return;
                        }
                        this.zzC.zzs = 0;
                        return;
                    case 2352003:
                        zzt(i10);
                        this.zzC.zzf = (int) j10;
                        return;
                    case 2807729:
                        this.zzy = j10;
                        return;
                    default:
                        switch (i10) {
                            case 21945:
                                int i13 = (int) j10;
                                zzt(i10);
                                if (i13 != 1) {
                                    if (i13 == 2) {
                                        this.zzC.zzB = 1;
                                        return;
                                    }
                                    return;
                                }
                                this.zzC.zzB = 2;
                                return;
                            case 21946:
                                zzt(i10);
                                int zzb2 = zzk.zzb((int) j10);
                                if (zzb2 != -1) {
                                    this.zzC.zzA = zzb2;
                                    return;
                                }
                                return;
                            case 21947:
                                zzt(i10);
                                this.zzC.zzy = true;
                                int zza2 = zzk.zza((int) j10);
                                if (zza2 != -1) {
                                    this.zzC.zzz = zza2;
                                    return;
                                }
                                return;
                            case 21948:
                                zzt(i10);
                                this.zzC.zzC = (int) j10;
                                return;
                            case 21949:
                                zzt(i10);
                                this.zzC.zzD = (int) j10;
                                return;
                            default:
                                return;
                        }
                }
            } else if (j10 != 1) {
                throw zzaz.zza("ContentEncodingScope " + j10 + " not supported", null);
            }
        } else if (j10 == 0) {
        } else {
            throw zzaz.zza("ContentEncodingOrder " + j10 + " not supported", null);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @CallSuper
    public final void zzm(int i10, long j10, long j11) throws zzaz {
        zzdd.zzb(this.zzaj);
        if (i10 != 160) {
            if (i10 != 174) {
                if (i10 != 187) {
                    if (i10 != 19899) {
                        if (i10 != 20533) {
                            if (i10 != 21968) {
                                if (i10 != 408125543) {
                                    if (i10 != 475249515) {
                                        if (i10 == 524531317 && !this.zzD) {
                                            if (this.zzi && this.zzH != -1) {
                                                this.zzG = true;
                                                return;
                                            }
                                            this.zzaj.zzP(new zzaet(this.zzA, 0L));
                                            this.zzD = true;
                                            return;
                                        }
                                        return;
                                    }
                                    this.zzK = new zzeb(32);
                                    this.zzL = new zzeb(32);
                                    return;
                                }
                                long j12 = this.zzx;
                                if (j12 != -1 && j12 != j10) {
                                    throw zzaz.zza("Multiple Segment elements not supported", null);
                                }
                                this.zzx = j10;
                                this.zzw = j11;
                                return;
                            }
                            zzt(i10);
                            this.zzC.zzy = true;
                            return;
                        }
                        zzt(i10);
                        this.zzC.zzh = true;
                        return;
                    }
                    this.zzE = -1;
                    this.zzF = -1L;
                    return;
                }
                this.zzM = false;
                return;
            }
            zzahw zzahwVar = new zzahw();
            this.zzC = zzahwVar;
            zzahwVar.zza = this.zzB;
            return;
        }
        this.zzY = false;
        this.zzZ = 0L;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @CallSuper
    public final void zzn(int i10, String str) throws zzaz {
        if (i10 != 134) {
            if (i10 != 17026) {
                if (i10 != 21358) {
                    if (i10 != 2274716) {
                        return;
                    }
                    zzt(i10);
                    zzahw.zzc(this.zzC, str);
                    return;
                }
                zzt(i10);
                this.zzC.zzb = str;
                return;
            } else if (!"webm".equals(str) && !"matroska".equals(str)) {
                throw zzaz.zza("DocType " + str + " not supported", null);
            } else {
                this.zzB = Objects.equals(str, "webm");
                return;
            }
        }
        zzt(i10);
        this.zzC.zzc = str;
    }

    zzahy(zzaht zzahtVar, int i10, zzakr zzakrVar) {
        this.zzx = -1L;
        this.zzy = -9223372036854775807L;
        this.zzz = -9223372036854775807L;
        this.zzA = -9223372036854775807L;
        this.zzH = -1L;
        this.zzI = -1L;
        this.zzJ = -9223372036854775807L;
        this.zzak = zzahtVar;
        zzahtVar.zza(new zzahv(this, null));
        this.zzk = zzakrVar;
        this.zzi = 1 == ((i10 & 1) ^ 1);
        this.zzj = (i10 & 2) == 0;
        this.zzg = new zzaia();
        this.zzh = new SparseArray();
        this.zzn = new zzen(4);
        this.zzo = new zzen(ByteBuffer.allocate(4).putInt(-1).array());
        this.zzp = new zzen(4);
        this.zzl = new zzen(zzfv.zza);
        this.zzm = new zzen(4);
        this.zzq = new zzen();
        this.zzr = new zzen();
        this.zzs = new zzen(8);
        this.zzt = new zzen();
        this.zzu = new zzen();
        this.zzT = new int[1];
    }

    public zzahy(zzakr zzakrVar, int i10) {
        this(new zzaht(), 0, zzakrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final /* synthetic */ zzadv zzc() {
        return this;
    }
}
