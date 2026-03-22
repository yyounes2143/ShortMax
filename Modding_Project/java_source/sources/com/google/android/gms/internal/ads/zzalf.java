package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzalf implements zzakt {
    private static final byte[] zza = {0, 7, 8, 15};
    private static final byte[] zzb = {0, 119, -120, -1};
    private static final byte[] zzc = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};
    private final Paint zzd;
    private final Paint zze;
    private final Canvas zzf;
    private final zzaky zzg;
    private final zzakx zzh;
    private final zzale zzi;
    private Bitmap zzj;

    public zzalf(List list) {
        zzen zzenVar = new zzen((byte[]) list.get(0));
        int zzq = zzenVar.zzq();
        int zzq2 = zzenVar.zzq();
        Paint paint = new Paint();
        this.zzd = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.zze = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.zzf = new Canvas();
        this.zzg = new zzaky(719, 575, 0, 719, 0, 575);
        this.zzh = new zzakx(0, zzg(), zzh(), zzi());
        this.zzi = new zzale(zzq, zzq2);
    }

    private static int zzb(int i10, int i11, int i12, int i13) {
        return (i10 << 24) | (i11 << 16) | (i12 << 8) | i13;
    }

    private static zzakx zzc(zzem zzemVar, int i10) {
        int[] iArr;
        int zzd;
        int i11;
        int zzd2;
        int zzd3;
        int i12 = 8;
        int zzd4 = zzemVar.zzd(8);
        zzemVar.zzn(8);
        int[] zzg = zzg();
        int[] zzh = zzh();
        int[] zzi = zzi();
        int i13 = i10 - 2;
        while (i13 > 0) {
            int zzd5 = zzemVar.zzd(i12);
            int zzd6 = zzemVar.zzd(i12);
            if ((zzd6 & 128) != 0) {
                iArr = zzg;
            } else if ((zzd6 & 64) != 0) {
                iArr = zzh;
            } else {
                iArr = zzi;
            }
            if ((zzd6 & 1) != 0) {
                zzd2 = zzemVar.zzd(i12);
                zzd3 = zzemVar.zzd(i12);
                zzd = zzemVar.zzd(i12);
                i11 = zzemVar.zzd(i12);
                i13 -= 6;
            } else {
                int zzd7 = zzemVar.zzd(2) << 6;
                i13 -= 4;
                zzd = zzemVar.zzd(4) << 4;
                i11 = zzd7;
                zzd2 = zzemVar.zzd(6) << 2;
                zzd3 = zzemVar.zzd(4) << 4;
            }
            if (zzd2 == 0) {
                i11 = 255;
            }
            if (zzd2 == 0) {
                zzd = 0;
            }
            if (zzd2 == 0) {
                zzd3 = 0;
            }
            double d10 = zzd2;
            String str = zzex.zza;
            double d11 = zzd3 - 128;
            double d12 = zzd - 128;
            iArr[zzd5] = zzb((byte) (255 - (i11 & 255)), Math.max(0, Math.min((int) (d10 + (1.402d * d11)), 255)), Math.max(0, Math.min((int) ((d10 - (0.34414d * d12)) - (d11 * 0.71414d)), 255)), Math.max(0, Math.min((int) (d10 + (d12 * 1.772d)), 255)));
            zzd4 = zzd4;
            i12 = 8;
        }
        return new zzakx(zzd4, zzg, zzh, zzi);
    }

    private static zzakz zzd(zzem zzemVar) {
        byte[] bArr;
        int zzd = zzemVar.zzd(16);
        zzemVar.zzn(4);
        int zzd2 = zzemVar.zzd(2);
        boolean zzp = zzemVar.zzp();
        zzemVar.zzn(1);
        byte[] bArr2 = zzex.zzb;
        if (zzd2 == 1) {
            zzemVar.zzn(zzemVar.zzd(8) * 16);
        } else if (zzd2 == 0) {
            int zzd3 = zzemVar.zzd(16);
            int zzd4 = zzemVar.zzd(16);
            if (zzd3 > 0) {
                bArr2 = new byte[zzd3];
                zzemVar.zzi(bArr2, 0, zzd3);
            }
            if (zzd4 > 0) {
                bArr = new byte[zzd4];
                zzemVar.zzi(bArr, 0, zzd4);
                return new zzakz(zzd, zzp, bArr2, bArr);
            }
        }
        bArr = bArr2;
        return new zzakz(zzd, zzp, bArr2, bArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x01ef A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0228 A[LOOP:3: B:88:0x0172->B:119:0x0228, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0222 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0181  */
    /* JADX WARN: Type inference failed for: r2v28 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void zze(byte[] r24, int[] r25, int r26, int r27, int r28, @androidx.annotation.Nullable android.graphics.Paint r29, android.graphics.Canvas r30) {
        /*
            Method dump skipped, instructions count: 584
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzalf.zze(byte[], int[], int, int, int, android.graphics.Paint, android.graphics.Canvas):void");
    }

    private static byte[] zzf(int i10, int i11, zzem zzemVar) {
        byte[] bArr = new byte[i10];
        for (int i12 = 0; i12 < i10; i12++) {
            bArr[i12] = (byte) zzemVar.zzd(i11);
        }
        return bArr;
    }

    private static int[] zzg() {
        return new int[]{0, -1, ViewCompat.MEASURED_STATE_MASK, -8421505};
    }

    private static int[] zzh() {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i15 = 1; i15 < 16; i15++) {
            int i16 = i15 & 4;
            int i17 = i15 & 2;
            int i18 = i15 & 1;
            if (i15 < 8) {
                if (1 != i18) {
                    i12 = 0;
                } else {
                    i12 = 255;
                }
                if (i17 != 0) {
                    i13 = 255;
                } else {
                    i13 = 0;
                }
                if (i16 != 0) {
                    i14 = 255;
                } else {
                    i14 = 0;
                }
                iArr[i15] = zzb(255, i12, i13, i14);
            } else {
                int i19 = 127;
                if (1 != i18) {
                    i10 = 0;
                } else {
                    i10 = 127;
                }
                if (i17 != 0) {
                    i11 = 127;
                } else {
                    i11 = 0;
                }
                if (i16 == 0) {
                    i19 = 0;
                }
                iArr[i15] = zzb(255, i10, i11, i19);
            }
        }
        return iArr;
    }

    private static int[] zzi() {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i28 = 0; i28 < 256; i28++) {
            int i29 = 255;
            if (i28 < 8) {
                int i30 = i28 & 2;
                int i31 = i28 & 4;
                if (1 != (i28 & 1)) {
                    i26 = 0;
                } else {
                    i26 = 255;
                }
                if (i30 != 0) {
                    i27 = 255;
                } else {
                    i27 = 0;
                }
                if (i31 == 0) {
                    i29 = 0;
                }
                iArr[i28] = zzb(63, i26, i27, i29);
            } else {
                int i32 = i28 & 136;
                int i33 = 170;
                int i34 = 85;
                if (i32 != 0) {
                    if (i32 != 8) {
                        int i35 = 43;
                        if (i32 != 128) {
                            if (i32 == 136) {
                                int i36 = i28 & 16;
                                int i37 = i28 & 32;
                                int i38 = i28 & 2;
                                int i39 = i28 & 64;
                                int i40 = i28 & 4;
                                if (1 != (i28 & 1)) {
                                    i22 = 0;
                                } else {
                                    i22 = 43;
                                }
                                if (i36 != 0) {
                                    i23 = 85;
                                } else {
                                    i23 = 0;
                                }
                                if (i38 != 0) {
                                    i24 = 43;
                                } else {
                                    i24 = 0;
                                }
                                if (i37 != 0) {
                                    i25 = 85;
                                } else {
                                    i25 = 0;
                                }
                                if (i40 == 0) {
                                    i35 = 0;
                                }
                                if (i39 == 0) {
                                    i34 = 0;
                                }
                                iArr[i28] = zzb(255, i22 + i23, i24 + i25, i35 + i34);
                            }
                        } else {
                            int i41 = i28 & 16;
                            int i42 = i28 & 32;
                            int i43 = i28 & 2;
                            int i44 = i28 & 64;
                            int i45 = i28 & 4;
                            if (1 != (i28 & 1)) {
                                i18 = 0;
                            } else {
                                i18 = 43;
                            }
                            int i46 = i18 + 127;
                            if (i41 != 0) {
                                i19 = 85;
                            } else {
                                i19 = 0;
                            }
                            if (i43 != 0) {
                                i20 = 43;
                            } else {
                                i20 = 0;
                            }
                            int i47 = i20 + 127;
                            if (i42 != 0) {
                                i21 = 85;
                            } else {
                                i21 = 0;
                            }
                            if (i45 == 0) {
                                i35 = 0;
                            }
                            int i48 = i35 + 127;
                            if (i44 == 0) {
                                i34 = 0;
                            }
                            iArr[i28] = zzb(255, i46 + i19, i47 + i21, i48 + i34);
                        }
                    } else {
                        int i49 = i28 & 16;
                        int i50 = i28 & 32;
                        int i51 = i28 & 2;
                        int i52 = i28 & 64;
                        int i53 = i28 & 4;
                        if (1 != (i28 & 1)) {
                            i14 = 0;
                        } else {
                            i14 = 85;
                        }
                        if (i49 != 0) {
                            i15 = 170;
                        } else {
                            i15 = 0;
                        }
                        if (i51 != 0) {
                            i16 = 85;
                        } else {
                            i16 = 0;
                        }
                        if (i50 != 0) {
                            i17 = 170;
                        } else {
                            i17 = 0;
                        }
                        if (i53 == 0) {
                            i34 = 0;
                        }
                        if (i52 == 0) {
                            i33 = 0;
                        }
                        iArr[i28] = zzb(127, i14 + i15, i16 + i17, i34 + i33);
                    }
                } else {
                    int i54 = i28 & 16;
                    int i55 = i28 & 32;
                    int i56 = i28 & 2;
                    int i57 = i28 & 64;
                    int i58 = i28 & 4;
                    if (1 != (i28 & 1)) {
                        i10 = 0;
                    } else {
                        i10 = 85;
                    }
                    if (i54 != 0) {
                        i11 = 170;
                    } else {
                        i11 = 0;
                    }
                    if (i56 != 0) {
                        i12 = 85;
                    } else {
                        i12 = 0;
                    }
                    if (i55 != 0) {
                        i13 = 170;
                    } else {
                        i13 = 0;
                    }
                    if (i58 == 0) {
                        i34 = 0;
                    }
                    if (i57 == 0) {
                        i33 = 0;
                    }
                    iArr[i28] = zzb(255, i10 + i11, i12 + i13, i34 + i33);
                }
            }
        }
        return iArr;
    }

    @Override // com.google.android.gms.internal.ads.zzakt
    public final void zza(byte[] bArr, int i10, int i11, zzaks zzaksVar, zzdn zzdnVar) {
        zzakl zzaklVar;
        char c10;
        char c11;
        char c12;
        int i12;
        zzale zzaleVar;
        zzaky zzakyVar;
        int i13;
        int i14;
        ArrayList arrayList;
        int i15;
        zzalc zzalcVar;
        int i16;
        int i17;
        int[] iArr;
        zzalc zzalcVar2;
        int i18;
        int zzd;
        int zzd2;
        int i19;
        int i20;
        int i21;
        int i22;
        zzem zzemVar = new zzem(bArr, i10 + i11);
        zzemVar.zzl(i10);
        while (zzemVar.zza() >= 48 && zzemVar.zzd(8) == 15) {
            zzale zzaleVar2 = this.zzi;
            int zzd3 = zzemVar.zzd(8);
            int zzd4 = zzemVar.zzd(16);
            int zzd5 = zzemVar.zzd(16);
            int zzb2 = zzemVar.zzb() + zzd5;
            if (zzd5 * 8 > zzemVar.zza()) {
                zzea.zzf("DvbParser", "Data field length exceeds limit");
                zzemVar.zzn(zzemVar.zza());
            } else {
                switch (zzd3) {
                    case 16:
                        if (zzd4 == zzaleVar2.zza) {
                            zzala zzalaVar = zzaleVar2.zzi;
                            int zzd6 = zzemVar.zzd(8);
                            int zzd7 = zzemVar.zzd(4);
                            int zzd8 = zzemVar.zzd(2);
                            zzemVar.zzn(2);
                            SparseArray sparseArray = new SparseArray();
                            for (int i23 = zzd5 - 2; i23 > 0; i23 -= 6) {
                                int zzd9 = zzemVar.zzd(8);
                                zzemVar.zzn(8);
                                sparseArray.put(zzd9, new zzalb(zzemVar.zzd(16), zzemVar.zzd(16)));
                            }
                            zzala zzalaVar2 = new zzala(zzd6, zzd7, zzd8, sparseArray);
                            if (zzalaVar2.zzb != 0) {
                                zzaleVar2.zzi = zzalaVar2;
                                zzaleVar2.zzc.clear();
                                zzaleVar2.zzd.clear();
                                zzaleVar2.zze.clear();
                                break;
                            } else if (zzalaVar != null) {
                                if (zzalaVar.zza != zzalaVar2.zza) {
                                    zzaleVar2.zzi = zzalaVar2;
                                    break;
                                }
                            }
                        }
                        break;
                    case 17:
                        zzala zzalaVar3 = zzaleVar2.zzi;
                        if (zzd4 == zzaleVar2.zza && zzalaVar3 != null) {
                            int zzd10 = zzemVar.zzd(8);
                            zzemVar.zzn(4);
                            boolean zzp = zzemVar.zzp();
                            zzemVar.zzn(3);
                            int zzd11 = zzemVar.zzd(16);
                            int zzd12 = zzemVar.zzd(16);
                            int zzd13 = zzemVar.zzd(3);
                            int zzd14 = zzemVar.zzd(3);
                            zzemVar.zzn(2);
                            int zzd15 = zzemVar.zzd(8);
                            int zzd16 = zzemVar.zzd(8);
                            int zzd17 = zzemVar.zzd(4);
                            int zzd18 = zzemVar.zzd(2);
                            zzemVar.zzn(2);
                            int i24 = zzd5 - 10;
                            SparseArray sparseArray2 = new SparseArray();
                            while (i24 > 0) {
                                int zzd19 = zzemVar.zzd(16);
                                int zzd20 = zzemVar.zzd(2);
                                int zzd21 = zzemVar.zzd(2);
                                int zzd22 = zzemVar.zzd(12);
                                zzemVar.zzn(4);
                                int zzd23 = zzemVar.zzd(12);
                                int i25 = i24 - 6;
                                if (zzd20 != 1) {
                                    if (zzd20 == 2) {
                                        zzd20 = 2;
                                    } else {
                                        i18 = zzd20;
                                        i24 = i25;
                                        zzd = 0;
                                        zzd2 = 0;
                                        sparseArray2.put(zzd19, new zzald(i18, zzd21, zzd22, zzd23, zzd, zzd2));
                                    }
                                }
                                i24 -= 8;
                                i18 = zzd20;
                                zzd = zzemVar.zzd(8);
                                zzd2 = zzemVar.zzd(8);
                                sparseArray2.put(zzd19, new zzald(i18, zzd21, zzd22, zzd23, zzd, zzd2));
                            }
                            zzalc zzalcVar3 = new zzalc(zzd10, zzp, zzd11, zzd12, zzd13, zzd14, zzd15, zzd16, zzd17, zzd18, sparseArray2);
                            if (zzalaVar3.zzb == 0 && (zzalcVar2 = (zzalc) zzaleVar2.zzc.get(zzalcVar3.zza)) != null) {
                                int i26 = 0;
                                while (true) {
                                    SparseArray sparseArray3 = zzalcVar2.zzj;
                                    if (i26 < sparseArray3.size()) {
                                        zzalcVar3.zzj.put(sparseArray3.keyAt(i26), (zzald) sparseArray3.valueAt(i26));
                                        i26++;
                                    }
                                }
                            }
                            zzaleVar2.zzc.put(zzalcVar3.zza, zzalcVar3);
                            break;
                        }
                        break;
                    case 18:
                        if (zzd4 == zzaleVar2.zza) {
                            zzakx zzc2 = zzc(zzemVar, zzd5);
                            zzaleVar2.zzd.put(zzc2.zza, zzc2);
                            break;
                        } else if (zzd4 == zzaleVar2.zzb) {
                            zzakx zzc3 = zzc(zzemVar, zzd5);
                            zzaleVar2.zzf.put(zzc3.zza, zzc3);
                            break;
                        }
                        break;
                    case 19:
                        if (zzd4 == zzaleVar2.zza) {
                            zzakz zzd24 = zzd(zzemVar);
                            zzaleVar2.zze.put(zzd24.zza, zzd24);
                            break;
                        } else if (zzd4 == zzaleVar2.zzb) {
                            zzakz zzd25 = zzd(zzemVar);
                            zzaleVar2.zzg.put(zzd25.zza, zzd25);
                            break;
                        }
                        break;
                    case 20:
                        if (zzd4 == zzaleVar2.zza) {
                            zzemVar.zzn(4);
                            boolean zzp2 = zzemVar.zzp();
                            zzemVar.zzn(3);
                            int zzd26 = zzemVar.zzd(16);
                            int zzd27 = zzemVar.zzd(16);
                            if (zzp2) {
                                int zzd28 = zzemVar.zzd(16);
                                i19 = zzemVar.zzd(16);
                                i22 = zzemVar.zzd(16);
                                i20 = zzemVar.zzd(16);
                                i21 = zzd28;
                            } else {
                                i19 = zzd26;
                                i20 = zzd27;
                                i21 = 0;
                                i22 = 0;
                            }
                            zzaleVar2.zzh = new zzaky(zzd26, zzd27, i21, i19, i22, i20);
                            break;
                        }
                        break;
                }
                zzemVar.zzo(zzb2 - zzemVar.zzb());
            }
        }
        zzale zzaleVar3 = this.zzi;
        zzala zzalaVar4 = zzaleVar3.zzi;
        if (zzalaVar4 == null) {
            zzaklVar = new zzakl(zzfyq.zzn(), -9223372036854775807L, -9223372036854775807L);
        } else {
            zzaky zzakyVar2 = zzaleVar3.zzh;
            if (zzakyVar2 == null) {
                zzakyVar2 = this.zzg;
            }
            Bitmap bitmap = this.zzj;
            if (bitmap == null || zzakyVar2.zza + 1 != bitmap.getWidth() || zzakyVar2.zzb + 1 != this.zzj.getHeight()) {
                Bitmap createBitmap = Bitmap.createBitmap(zzakyVar2.zza + 1, zzakyVar2.zzb + 1, Bitmap.Config.ARGB_8888);
                this.zzj = createBitmap;
                this.zzf.setBitmap(createBitmap);
            }
            ArrayList arrayList2 = new ArrayList();
            SparseArray sparseArray4 = zzalaVar4.zzc;
            int i27 = 0;
            while (i27 < sparseArray4.size()) {
                Canvas canvas = this.zzf;
                canvas.save();
                zzalb zzalbVar = (zzalb) sparseArray4.valueAt(i27);
                zzalc zzalcVar4 = (zzalc) zzaleVar3.zzc.get(sparseArray4.keyAt(i27));
                int i28 = zzalbVar.zza + zzakyVar2.zzc;
                int i29 = zzalbVar.zzb + zzakyVar2.zze;
                int i30 = zzalcVar4.zzc;
                int i31 = i28 + i30;
                int min = Math.min(i31, zzakyVar2.zzd);
                int i32 = zzalcVar4.zzd;
                int i33 = i29 + i32;
                canvas.clipRect(i28, i29, min, Math.min(i33, zzakyVar2.zzf));
                int i34 = zzalcVar4.zzf;
                zzakx zzakxVar = (zzakx) zzaleVar3.zzd.get(i34);
                if (zzakxVar == null && (zzakxVar = (zzakx) zzaleVar3.zzf.get(i34)) == null) {
                    zzakxVar = this.zzh;
                }
                SparseArray sparseArray5 = zzalcVar4.zzj;
                SparseArray sparseArray6 = sparseArray4;
                int i35 = i31;
                int i36 = 0;
                while (i36 < sparseArray5.size()) {
                    int keyAt = sparseArray5.keyAt(i36);
                    SparseArray sparseArray7 = sparseArray5;
                    zzald zzaldVar = (zzald) sparseArray5.valueAt(i36);
                    int i37 = i30;
                    zzakz zzakzVar = (zzakz) zzaleVar3.zze.get(keyAt);
                    if (zzakzVar == null) {
                        zzakzVar = (zzakz) zzaleVar3.zzg.get(keyAt);
                    }
                    if (zzakzVar != null) {
                        Paint paint = zzakzVar.zzb ? null : this.zzd;
                        int i38 = zzalcVar4.zze;
                        zzaleVar = zzaleVar3;
                        int i39 = zzaldVar.zza + i28;
                        int i40 = zzaldVar.zzb + i29;
                        int i41 = i28;
                        if (i38 == 3) {
                            iArr = zzakxVar.zzd;
                        } else if (i38 == 2) {
                            iArr = zzakxVar.zzc;
                        } else {
                            iArr = zzakxVar.zzb;
                        }
                        int[] iArr2 = iArr;
                        i14 = i27;
                        i16 = i35;
                        arrayList = arrayList2;
                        zzakyVar = zzakyVar2;
                        i17 = i37;
                        i15 = i41;
                        i13 = i32;
                        zzalcVar = zzalcVar4;
                        zze(zzakzVar.zzc, iArr2, i38, i39, i40, paint, canvas);
                        zze(zzakzVar.zzd, iArr2, i38, i39, i40 + 1, paint, canvas);
                    } else {
                        zzaleVar = zzaleVar3;
                        zzakyVar = zzakyVar2;
                        i13 = i32;
                        i14 = i27;
                        arrayList = arrayList2;
                        i15 = i28;
                        zzalcVar = zzalcVar4;
                        i16 = i35;
                        i17 = i37;
                    }
                    i36++;
                    i28 = i15;
                    zzalcVar4 = zzalcVar;
                    i35 = i16;
                    sparseArray5 = sparseArray7;
                    zzaleVar3 = zzaleVar;
                    i27 = i14;
                    arrayList2 = arrayList;
                    zzakyVar2 = zzakyVar;
                    i32 = i13;
                    i30 = i17;
                }
                zzale zzaleVar4 = zzaleVar3;
                zzaky zzakyVar3 = zzakyVar2;
                int i42 = i32;
                int i43 = i27;
                ArrayList arrayList3 = arrayList2;
                int i44 = i30;
                int i45 = i28;
                zzalc zzalcVar5 = zzalcVar4;
                int i46 = i35;
                float f10 = i29;
                float f11 = i45;
                if (zzalcVar5.zzb) {
                    int i47 = zzalcVar5.zze;
                    if (i47 == 3) {
                        i12 = zzakxVar.zzd[zzalcVar5.zzg];
                        c12 = 2;
                    } else {
                        c12 = 2;
                        if (i47 == 2) {
                            i12 = zzakxVar.zzc[zzalcVar5.zzh];
                        } else {
                            i12 = zzakxVar.zzb[zzalcVar5.zzi];
                        }
                    }
                    Paint paint2 = this.zze;
                    paint2.setColor(i12);
                    float f12 = i33;
                    float f13 = i46;
                    c10 = c12;
                    c11 = 3;
                    canvas.drawRect(f11, f10, f13, f12, paint2);
                } else {
                    c10 = 2;
                    c11 = 3;
                }
                zzcs zzcsVar = new zzcs();
                zzcsVar.zzc(Bitmap.createBitmap(this.zzj, i45, i29, i44, i42));
                zzakyVar2 = zzakyVar3;
                float f14 = zzakyVar2.zza;
                zzcsVar.zzh(f11 / f14);
                zzcsVar.zzi(0);
                float f15 = zzakyVar2.zzb;
                zzcsVar.zze(f10 / f15, 0);
                zzcsVar.zzf(0);
                zzcsVar.zzk(i44 / f14);
                zzcsVar.zzd(i42 / f15);
                arrayList3.add(zzcsVar.zzq());
                canvas.drawColor(0, PorterDuff.Mode.CLEAR);
                canvas.restore();
                sparseArray4 = sparseArray6;
                arrayList2 = arrayList3;
                i27 = i43 + 1;
                zzaleVar3 = zzaleVar4;
            }
            zzaklVar = new zzakl(arrayList2, -9223372036854775807L, -9223372036854775807L);
        }
        zzdnVar.zza(zzaklVar);
    }
}
