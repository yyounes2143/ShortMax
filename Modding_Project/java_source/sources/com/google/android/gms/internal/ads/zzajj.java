package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzajj implements zzadv, zzaeu {
    private long zzA;
    private int zzB;
    @Nullable
    private zzahm zzC;
    private final zzakr zza;
    private final int zzb;
    private final zzen zzc;
    private final zzen zzd;
    private final zzen zze;
    private final zzen zzf;
    private final ArrayDeque zzg;
    private final zzajn zzh;
    private final List zzi;
    private zzfyq zzj;
    private int zzk;
    private int zzl;
    private long zzm;
    private int zzn;
    @Nullable
    private zzen zzo;
    private int zzp;
    private int zzq;
    private int zzr;
    private int zzs;
    private boolean zzt;
    private boolean zzu;
    private long zzv;
    private zzady zzw;
    private zzaji[] zzx;
    private long[][] zzy;
    private int zzz;

    @Deprecated
    public zzajj() {
        this(zzakr.zza, 16);
    }

    private static int zzj(int i10) {
        if (i10 != 1751476579) {
            if (i10 != 1903435808) {
                return 0;
            }
            return 1;
        }
        return 2;
    }

    private static int zzk(zzajs zzajsVar, long j10) {
        int zza = zzajsVar.zza(j10);
        if (zza == -1) {
            return zzajsVar.zzb(j10);
        }
        return zza;
    }

    private static long zzl(zzajs zzajsVar, long j10, long j11) {
        int zzk = zzk(zzajsVar, j10);
        if (zzk == -1) {
            return j11;
        }
        return Math.min(zzajsVar.zzc[zzk], j11);
    }

    private final void zzm() {
        this.zzk = 0;
        this.zzn = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void zzn(long j10) throws zzaz {
        int i10;
        zzav zzavVar;
        boolean z10;
        zzav zzavVar2;
        int i11;
        int i12;
        List list;
        int i13;
        zzaej zzaejVar;
        zzav zzavVar3;
        zzav zzavVar4;
        zzav zzavVar5;
        zzav zzavVar6;
        long j11;
        ArrayList arrayList;
        int i14;
        int i15;
        zzajj zzajjVar = this;
        int i16 = 0;
        int i17 = 1;
        while (true) {
            ArrayDeque arrayDeque = zzajjVar.zzg;
            if (arrayDeque.isEmpty() || ((zzfc) arrayDeque.peek()).zza != j10) {
                break;
            }
            zzfc zzfcVar = (zzfc) arrayDeque.pop();
            if (zzfcVar.zzd == 1836019574) {
                zzfc zza = zzfcVar.zza(1835365473);
                new ArrayList();
                if (zza != null) {
                    zzavVar = zzaix.zzb(zza);
                } else {
                    zzavVar = null;
                }
                ArrayList arrayList2 = new ArrayList();
                if (zzajjVar.zzB == i17) {
                    z10 = i17;
                } else {
                    z10 = i16;
                }
                zzaej zzaejVar2 = new zzaej();
                zzfd zzb = zzfcVar.zzb(1969517665);
                if (zzb != null) {
                    zzav zzc = zzaix.zzc(zzb);
                    zzaejVar2.zzb(zzc);
                    zzavVar2 = zzc;
                } else {
                    zzavVar2 = null;
                }
                zzfd zzb2 = zzfcVar.zzb(1836476516);
                zzb2.getClass();
                zzau[] zzauVarArr = new zzau[i17];
                zzauVarArr[i16] = zzaix.zzd(zzb2.zza);
                ArrayList arrayList3 = arrayList2;
                zzav zzavVar7 = new zzav(-9223372036854775807L, zzauVarArr);
                int i18 = zzajjVar.zzb;
                if (i17 != (i18 & 1)) {
                    i11 = i16;
                } else {
                    i11 = i17;
                }
                zzav zzavVar8 = zzavVar7;
                zzav zzavVar9 = zzavVar2;
                boolean z11 = i11;
                zzaej zzaejVar3 = zzaejVar2;
                List zzf = zzaix.zzf(zzfcVar, zzaejVar2, -9223372036854775807L, null, z11, z10, new zzfve() { // from class: com.google.android.gms.internal.ads.zzajh
                    @Override // com.google.android.gms.internal.ads.zzfve
                    public final Object apply(Object obj) {
                        return (zzajp) obj;
                    }
                });
                String zza2 = zzajg.zza(zzf);
                long j12 = -9223372036854775807L;
                int i19 = 0;
                int i20 = 0;
                int i21 = -1;
                while (i19 < zzf.size()) {
                    zzajs zzajsVar = (zzajs) zzf.get(i19);
                    if (zzajsVar.zzb == 0) {
                        list = zzf;
                        i12 = i19;
                        zzavVar6 = zzavVar9;
                        zzavVar5 = zzavVar8;
                        arrayList = arrayList3;
                    } else {
                        zzajp zzajpVar = zzajsVar.zza;
                        zzady zzadyVar = zzajjVar.zzw;
                        int i22 = i20 + 1;
                        int i23 = zzajpVar.zzb;
                        zzaji zzajiVar = new zzaji(zzajpVar, zzajsVar, zzadyVar.zzw(i20, i23));
                        i12 = i19;
                        long j13 = zzajpVar.zze;
                        if (j13 == -9223372036854775807L) {
                            j13 = zzajsVar.zzh;
                        }
                        list = zzf;
                        zzafb zzafbVar = zzajiVar.zzc;
                        zzafbVar.zzl(j13);
                        long max = Math.max(j12, j13);
                        zzz zzzVar = zzajpVar.zzg;
                        if (MimeTypes.AUDIO_TRUEHD.equals(zzzVar.zzo)) {
                            i13 = zzajsVar.zze * 16;
                        } else {
                            i13 = zzajsVar.zze + 30;
                        }
                        zzx zzb3 = zzzVar.zzb();
                        zzb3.zzX(i13);
                        if (i23 == 2) {
                            int i24 = zzzVar.zzf;
                            if ((i18 & 8) != 0) {
                                if (i21 == -1) {
                                    i15 = 1;
                                } else {
                                    i15 = 2;
                                }
                                i24 |= i15;
                            }
                            zzb3.zzaf(i24);
                            i23 = 2;
                        }
                        if (i23 == 1 && zzaejVar3.zza()) {
                            zzaejVar = zzaejVar3;
                            zzb3.zzM(zzaejVar.zza);
                            zzb3.zzN(zzaejVar.zzb);
                        } else {
                            zzaejVar = zzaejVar3;
                        }
                        zzav zzavVar10 = zzzVar.zzl;
                        List list2 = zzajjVar.zzi;
                        if (list2.isEmpty()) {
                            zzaejVar3 = zzaejVar;
                            zzavVar4 = zzavVar9;
                            zzavVar3 = null;
                        } else {
                            zzaejVar3 = zzaejVar;
                            zzavVar3 = new zzav(list2);
                            zzavVar4 = zzavVar9;
                        }
                        zzav[] zzavVarArr = {zzavVar3, zzavVar4, zzavVar8};
                        if (zzavVar10 != null) {
                            zzavVar5 = zzavVar8;
                            zzavVar6 = zzavVar4;
                            j11 = max;
                        } else {
                            zzavVar5 = zzavVar8;
                            zzavVar6 = zzavVar4;
                            j11 = max;
                            zzavVar10 = new zzav(-9223372036854775807L, new zzau[0]);
                        }
                        if (zzavVar != null) {
                            int i25 = 0;
                            while (i25 < zzavVar.zza()) {
                                zzau zzb4 = zzavVar.zzb(i25);
                                if (zzb4 instanceof zzfa) {
                                    zzfa zzfaVar = (zzfa) zzb4;
                                    if (zzfaVar.zza.equals("com.android.capture.fps")) {
                                        if (i23 == 2) {
                                            i14 = 1;
                                            zzavVar10 = zzavVar10.zzc(zzfaVar);
                                        } else {
                                            i14 = 1;
                                        }
                                    } else {
                                        i14 = 1;
                                        zzavVar10 = zzavVar10.zzc(zzfaVar);
                                    }
                                } else {
                                    i14 = 1;
                                }
                                i25 += i14;
                            }
                        }
                        for (int i26 = 0; i26 < 3; i26++) {
                            zzavVar10 = zzavVar10.zzd(zzavVarArr[i26]);
                        }
                        if (zzavVar10.zza() > 0) {
                            zzb3.zzaa(zzavVar10);
                        }
                        zzb3.zzG(zza2);
                        zzafbVar.zzm(zzb3.zzan());
                        if (i23 == 2 && i21 == -1) {
                            i21 = arrayList3.size();
                        }
                        arrayList = arrayList3;
                        arrayList.add(zzajiVar);
                        i20 = i22;
                        j12 = j11;
                    }
                    i19 = i12 + 1;
                    arrayList3 = arrayList;
                    zzavVar8 = zzavVar5;
                    zzf = list;
                    zzavVar9 = zzavVar6;
                }
                int i27 = -1;
                zzajjVar.zzz = i21;
                zzajjVar.zzA = j12;
                zzaji[] zzajiVarArr = (zzaji[]) arrayList3.toArray(new zzaji[0]);
                zzajjVar.zzx = zzajiVarArr;
                int length = zzajiVarArr.length;
                long[][] jArr = new long[length];
                int[] iArr = new int[length];
                long[] jArr2 = new long[length];
                boolean[] zArr = new boolean[length];
                for (int i28 = 0; i28 < zzajiVarArr.length; i28++) {
                    jArr[i28] = new long[zzajiVarArr[i28].zzb.zzb];
                    jArr2[i28] = zzajiVarArr[i28].zzb.zzf[0];
                }
                int i29 = 0;
                long j14 = 0;
                int i30 = 0;
                while (i30 < zzajiVarArr.length) {
                    long j15 = Long.MAX_VALUE;
                    int i31 = i27;
                    for (int i32 = i29; i32 < zzajiVarArr.length; i32++) {
                        if (!zArr[i32]) {
                            long j16 = jArr2[i32];
                            if (j16 <= j15) {
                                i31 = i32;
                                j15 = j16;
                            }
                        }
                    }
                    int i33 = iArr[i31];
                    long[] jArr3 = jArr[i31];
                    jArr3[i33] = j14;
                    zzajs zzajsVar2 = zzajiVarArr[i31].zzb;
                    zzaji[] zzajiVarArr2 = zzajiVarArr;
                    j14 += zzajsVar2.zzd[i33];
                    int i34 = i33 + 1;
                    iArr[i31] = i34;
                    if (i34 < jArr3.length) {
                        jArr2[i31] = zzajsVar2.zzf[i34];
                    } else {
                        zArr[i31] = true;
                        i30++;
                    }
                    i27 = -1;
                    i29 = 0;
                    zzajjVar = this;
                    zzajiVarArr = zzajiVarArr2;
                }
                i10 = 1;
                zzajjVar.zzy = jArr;
                zzajjVar.zzw.zzG();
                zzajjVar.zzw.zzP(zzajjVar);
                arrayDeque.clear();
                zzajjVar.zzk = 2;
            } else {
                i10 = i17;
                if (!arrayDeque.isEmpty()) {
                    ((zzfc) arrayDeque.peek()).zzc(zzfcVar);
                }
            }
            i17 = i10;
            i16 = 0;
        }
        if (zzajjVar.zzk != 2) {
            zzm();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaeu
    public final long zza() {
        return this.zzA;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01e5, code lost:
        r1 = r1 | 67108864;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x01e8, code lost:
        if (r6 == null) goto L260;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01ea, code lost:
        r6.zzc(r5, r7, r1, r10, 0, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01ff, code lost:
        if ((r9 + 1) != r14.zzb) goto L258;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0201, code lost:
        r6.zza(r5, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0206, code lost:
        r5.zzt(r7, r1, r10, 0, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0215, code lost:
        r3.zze++;
        r33.zzp = -1;
        r33.zzq = 0;
        r33.zzr = 0;
        r33.zzs = 0;
        r33.zzt = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0229, code lost:
        r35.zza = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x022c, code lost:
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x022d, code lost:
        r5 = r33.zzm - r33.zzn;
        r9 = r34.zzf() + r5;
        r3 = r33.zzo;
     */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x0026, code lost:
        if (r35.zza != 0) goto L168;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x023b, code lost:
        if (r3 == null) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x023d, code lost:
        r34.zzi(r3.zzN(), r33.zzn, (int) r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0249, code lost:
        if (r33.zzl != 1718909296) goto L151;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x024b, code lost:
        r33.zzu = true;
        r3.zzL(8);
        r5 = zzj(r3.zzg());
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0259, code lost:
        if (r5 == 0) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x025c, code lost:
        r3.zzM(4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0264, code lost:
        if (r3.zza() <= 0) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0266, code lost:
        r5 = zzj(r3.zzg());
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0028, code lost:
        zzm();
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x026e, code lost:
        if (r5 == 0) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0271, code lost:
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0272, code lost:
        r33.zzB = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0274, code lost:
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0276, code lost:
        r5 = r33.zzg;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x027c, code lost:
        if (r5.isEmpty() != false) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x027e, code lost:
        ((com.google.android.gms.internal.ads.zzfc) r5.peek()).zzd(new com.google.android.gms.internal.ads.zzfd(r33.zzl, r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0291, code lost:
        if (r33.zzu != false) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x002b, code lost:
        return r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0298, code lost:
        if (r33.zzl != 1835295092) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x029a, code lost:
        r33.zzB = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x02a2, code lost:
        if (r5 >= 262144) goto L162;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x02a4, code lost:
        r34.zzk((int) r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x02a9, code lost:
        r35.zza = r34.zzf() + r5;
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x02b1, code lost:
        zzn(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x02b4, code lost:
        if (r3 == false) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002c, code lost:
        r7 = r34.zzf();
        r14 = r33.zzp;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x02b9, code lost:
        if (r33.zzk == 2) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x02bb, code lost:
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0032, code lost:
        if (r14 != (-1)) goto L210;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0034, code lost:
        r21 = r6;
        r28 = r21;
        r26 = -1;
        r27 = -1;
        r19 = Long.MAX_VALUE;
        r22 = Long.MAX_VALUE;
        r24 = Long.MAX_VALUE;
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0048, code lost:
        r3 = r33.zzx;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x004b, code lost:
        if (r14 >= r3.length) goto L198;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004d, code lost:
        r3 = r3[r14];
        r9 = r3.zze;
        r3 = r3.zzb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0055, code lost:
        if (r9 != r3.zzb) goto L176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0058, code lost:
        r29 = r3.zzc[r9];
        r3 = r33.zzy;
        r5 = com.google.android.gms.internal.ads.zzex.zza;
        r31 = r3[r14][r9];
        r29 = r29 - r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0068, code lost:
        if (r29 < 0) goto L196;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x006c, code lost:
        if (r29 < 262144) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x006e, code lost:
        r3 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0070, code lost:
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0071, code lost:
        if (r3 != 0) goto L195;
     */
    /* JADX WARN: Code restructure failed: missing block: B:280:?, code lost:
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:?, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0073, code lost:
        if (r28 != 0) goto L194;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0075, code lost:
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0077, code lost:
        r5 = r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0079, code lost:
        if (r3 != r5) goto L187;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x007d, code lost:
        if (r29 >= r24) goto L187;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x007f, code lost:
        r28 = r3;
        r27 = r14;
        r24 = r29;
        r22 = r31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0088, code lost:
        r28 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x008c, code lost:
        if (r31 >= r19) goto L193;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x008e, code lost:
        r21 = r3;
        r26 = r14;
        r19 = r31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0094, code lost:
        r14 = r14 + r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0098, code lost:
        if (r19 == Long.MAX_VALUE) goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x009a, code lost:
        if (r21 == 0) goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00a3, code lost:
        if (r22 < (r19 + 10485760)) goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00a5, code lost:
        r14 = r26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00a8, code lost:
        r14 = r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00aa, code lost:
        r33.zzp = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00ac, code lost:
        if (r14 != (-1)) goto L210;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00b1, code lost:
        r3 = r33.zzx[r14];
        r5 = r3.zzc;
        r9 = r3.zze;
        r14 = r3.zzb;
        r12 = r14.zzc[r9] + r33.zzv;
        r4 = r14.zzd;
        r17 = r4[r9];
        r6 = r3.zzd;
        r7 = (r12 - r7) + r33.zzq;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00d3, code lost:
        if (r7 < 0) goto L275;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00da, code lost:
        if (r7 < 262144) goto L214;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00e0, code lost:
        r2 = r3.zza;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00e5, code lost:
        if (r2.zzh != 1) goto L217;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00e7, code lost:
        r7 = r7 + 8;
        r17 = r17 - 8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00ec, code lost:
        r10 = r17;
        r34.zzk((int) r7);
        r7 = r2.zzg;
        r8 = r7.zzo;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00fc, code lost:
        if (java.util.Objects.equals(r8, "video/avc") != false) goto L220;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00fe, code lost:
        java.util.Objects.equals(r8, "video/hevc");
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0103, code lost:
        r33.zzt = true;
        r2 = r2.zzk;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0108, code lost:
        if (r2 == 0) goto L261;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x010a, code lost:
        r8 = r33.zzd;
        r12 = r8.zzN();
        r12[0] = 0;
        r12[1] = 0;
        r12[2] = 0;
        r13 = 4 - r2;
        r10 = r10 + r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x011e, code lost:
        if (r33.zzr >= r10) goto L250;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0120, code lost:
        r11 = r33.zzs;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0122, code lost:
        if (r11 != 0) goto L248;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0126, code lost:
        if (r33.zzt != false) goto L247;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0128, code lost:
        r16 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0134, code lost:
        if ((com.google.android.gms.internal.ads.zzfv.zzb(r7) + r2) > (r4[r9] - r33.zzq)) goto L246;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0136, code lost:
        r4 = com.google.android.gms.internal.ads.zzfv.zzb(r7);
        r11 = r2 + r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x013d, code lost:
        r11 = r2;
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0140, code lost:
        r16 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0143, code lost:
        r34.zzi(r12, r13, r11);
        r33.zzq += r11;
        r8.zzL(0);
        r15 = r8.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0153, code lost:
        if (r15 < 0) goto L243;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0155, code lost:
        r33.zzs = r15 - r4;
        r15 = r33.zzc;
        r15.zzL(0);
        r5.zzr(r15, 4);
        r33.zzr += 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0166, code lost:
        if (r4 <= 0) goto L242;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0168, code lost:
        r5.zzr(r8, r4);
        r33.zzr += r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0017, code lost:
        if (r7 == r6) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0174, code lost:
        if (com.google.android.gms.internal.ads.zzfv.zzj(r12, 4, r4, r7) == false) goto L241;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0176, code lost:
        r33.zzt = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0179, code lost:
        r4 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0183, code lost:
        throw com.google.android.gms.internal.ads.zzaz.zza("Invalid NAL length", null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0184, code lost:
        r16 = r4;
        r11 = r5.zzf(r34, r11, false);
        r33.zzq += r11;
        r33.zzr += r11;
        r33.zzs -= r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01a1, code lost:
        if ("audio/ac4".equals(r8) == false) goto L273;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01a5, code lost:
        if (r33.zzr != 0) goto L272;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0019, code lost:
        if (r7 == 2) goto L169;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01a7, code lost:
        r2 = r33.zze;
        com.google.android.gms.internal.ads.zzacy.zzc(r10, r2);
        r4 = 7;
        r5.zzr(r2, 7);
        r33.zzr += 7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01b6, code lost:
        r4 = 7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01b7, code lost:
        r10 = r10 + r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01b9, code lost:
        if (r6 == null) goto L267;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01bb, code lost:
        r6.zzd(r34);
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01be, code lost:
        r2 = r33.zzr;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01c0, code lost:
        if (r2 >= r10) goto L271;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01c2, code lost:
        r2 = r5.zzf(r34, r10 - r2, false);
        r33.zzq += r2;
        r33.zzr += r2;
        r33.zzs -= r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01d9, code lost:
        r7 = r14.zzf[r9];
        r1 = r14.zzg[r9];
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01e3, code lost:
        if (r33.zzt != false) goto L254;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001b, code lost:
        r33.zzh.zza(r34, r35, r33.zzi);
     */
    @Override // com.google.android.gms.internal.ads.zzadv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzb(com.google.android.gms.internal.ads.zzadw r34, com.google.android.gms.internal.ads.zzaer r35) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzajj.zzb(com.google.android.gms.internal.ads.zzadw, com.google.android.gms.internal.ads.zzaer):int");
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final /* synthetic */ List zzd() {
        return this.zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final void zze(zzady zzadyVar) {
        if ((this.zzb & 16) == 0) {
            zzadyVar = new zzaku(zzadyVar, this.zza);
        }
        this.zzw = zzadyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final void zzf(long j10, long j11) {
        zzaji[] zzajiVarArr;
        this.zzg.clear();
        this.zzn = 0;
        this.zzp = -1;
        this.zzq = 0;
        this.zzr = 0;
        this.zzs = 0;
        this.zzt = false;
        if (j10 == 0) {
            if (this.zzk != 3) {
                zzm();
                return;
            }
            this.zzh.zzb();
            this.zzi.clear();
            return;
        }
        for (zzaji zzajiVar : this.zzx) {
            zzajs zzajsVar = zzajiVar.zzb;
            int zza = zzajsVar.zza(j11);
            if (zza == -1) {
                zza = zzajsVar.zzb(j11);
            }
            zzajiVar.zze = zza;
            zzafc zzafcVar = zzajiVar.zzd;
            if (zzafcVar != null) {
                zzafcVar.zzb();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaeu
    public final zzaes zzg(long j10) {
        long j11;
        long j12;
        long j13;
        long j14;
        int zzb;
        long j15 = j10;
        zzaji[] zzajiVarArr = this.zzx;
        if (zzajiVarArr.length == 0) {
            zzaev zzaevVar = zzaev.zza;
            return new zzaes(zzaevVar, zzaevVar);
        }
        int i10 = this.zzz;
        if (i10 != -1) {
            zzajs zzajsVar = zzajiVarArr[i10].zzb;
            int zzk = zzk(zzajsVar, j15);
            if (zzk == -1) {
                zzaev zzaevVar2 = zzaev.zza;
                return new zzaes(zzaevVar2, zzaevVar2);
            }
            long[] jArr = zzajsVar.zzf;
            long j16 = jArr[zzk];
            long[] jArr2 = zzajsVar.zzc;
            j11 = jArr2[zzk];
            if (j16 < j15 && zzk < zzajsVar.zzb - 1 && (zzb = zzajsVar.zzb(j15)) != -1 && zzb != zzk) {
                j14 = jArr[zzb];
                j13 = jArr2[zzb];
            } else {
                j14 = -9223372036854775807L;
                j13 = -1;
            }
            j12 = j14;
            j15 = j16;
        } else {
            j11 = Long.MAX_VALUE;
            j12 = -9223372036854775807L;
            j13 = -1;
        }
        int i11 = 0;
        while (true) {
            zzaji[] zzajiVarArr2 = this.zzx;
            if (i11 >= zzajiVarArr2.length) {
                break;
            }
            if (i11 != this.zzz) {
                zzajs zzajsVar2 = zzajiVarArr2[i11].zzb;
                long zzl = zzl(zzajsVar2, j15, j11);
                if (j12 != -9223372036854775807L) {
                    j13 = zzl(zzajsVar2, j12, j13);
                }
                j11 = zzl;
            }
            i11++;
        }
        zzaev zzaevVar3 = new zzaev(j15, j11);
        if (j12 == -9223372036854775807L) {
            return new zzaes(zzaevVar3, zzaevVar3);
        }
        return new zzaes(zzaevVar3, new zzaev(j12, j13));
    }

    @Override // com.google.android.gms.internal.ads.zzaeu
    public final boolean zzh() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final boolean zzi(zzadw zzadwVar) throws IOException {
        boolean z10;
        zzfyq zzn;
        if ((this.zzb & 2) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzaey zzb = zzajo.zzb(zzadwVar, z10);
        if (zzb != null) {
            zzn = zzfyq.zzo(zzb);
        } else {
            zzn = zzfyq.zzn();
        }
        this.zzj = zzn;
        if (zzb != null) {
            return false;
        }
        return true;
    }

    public zzajj(zzakr zzakrVar, int i10) {
        this.zza = zzakrVar;
        this.zzb = i10;
        this.zzj = zzfyq.zzn();
        this.zzk = (i10 & 4) != 0 ? 3 : 0;
        this.zzh = new zzajn();
        this.zzi = new ArrayList();
        this.zzf = new zzen(16);
        this.zzg = new ArrayDeque();
        this.zzc = new zzen(zzfv.zza);
        this.zzd = new zzen(6);
        this.zze = new zzen();
        this.zzp = -1;
        this.zzw = zzady.zza;
        this.zzx = new zzaji[0];
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final /* synthetic */ zzadv zzc() {
        return this;
    }
}
