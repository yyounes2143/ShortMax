package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzajn {
    private static final zzfwe zza = zzfwe.zzb(zzfva.zzc(':'));
    private static final zzfwe zzb = zzfwe.zzb(zzfva.zzc('*'));
    private final List zzc = new ArrayList();
    private int zzd = 0;
    private int zze;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final int zza(zzadw zzadwVar, zzaer zzaerVar, List list) throws IOException {
        int i10;
        boolean z10;
        char c10;
        int i11 = this.zzd;
        if (i11 != 0) {
            int i12 = 2;
            if (i11 != 1) {
                short s10 = 2817;
                short s11 = 2816;
                short s12 = 2192;
                if (i11 != 2) {
                    long zzf = zzadwVar.zzf();
                    int zzd = (int) ((zzadwVar.zzd() - zzadwVar.zzf()) - this.zze);
                    zzen zzenVar = new zzen(zzd);
                    zzadwVar.zzi(zzenVar.zzN(), 0, zzd);
                    int i13 = 0;
                    while (true) {
                        List list2 = this.zzc;
                        if (i13 < list2.size()) {
                            zzajm zzajmVar = (zzajm) list2.get(i13);
                            zzenVar.zzL((int) (zzajmVar.zza - zzf));
                            zzenVar.zzM(4);
                            int zzi = zzenVar.zzi();
                            Charset charset = StandardCharsets.UTF_8;
                            String zzB = zzenVar.zzB(zzi, charset);
                            switch (zzB.hashCode()) {
                                case -1711564334:
                                    if (zzB.equals("SlowMotion_Data")) {
                                        z10 = false;
                                        break;
                                    }
                                    z10 = true;
                                    break;
                                case -1332107749:
                                    if (zzB.equals("Super_SlowMotion_Edit_Data")) {
                                        z10 = true;
                                        break;
                                    }
                                    z10 = true;
                                    break;
                                case -1251387154:
                                    if (zzB.equals("Super_SlowMotion_Data")) {
                                        z10 = true;
                                        break;
                                    }
                                    z10 = true;
                                    break;
                                case -830665521:
                                    if (zzB.equals("Super_SlowMotion_Deflickering_On")) {
                                        z10 = true;
                                        break;
                                    }
                                    z10 = true;
                                    break;
                                case 1760745220:
                                    if (zzB.equals("Super_SlowMotion_BGM")) {
                                        z10 = true;
                                        break;
                                    }
                                    z10 = true;
                                    break;
                                default:
                                    z10 = true;
                                    break;
                            }
                            if (z10) {
                                if (!z10) {
                                    if (!z10) {
                                        if (!z10) {
                                            if (z10) {
                                                c10 = 2820;
                                            } else {
                                                throw zzaz.zza("Invalid SEF name", null);
                                            }
                                        } else {
                                            c10 = 2819;
                                        }
                                    } else {
                                        c10 = 2817;
                                    }
                                } else {
                                    c10 = 2816;
                                }
                            } else {
                                c10 = 2192;
                            }
                            int i14 = zzajmVar.zzb - (zzi + 8);
                            if (c10 != 2192) {
                                if (c10 != 2816 && c10 != 2817 && c10 != 2819 && c10 != 2820) {
                                    throw new IllegalStateException();
                                }
                            } else {
                                ArrayList arrayList = new ArrayList();
                                List zzf2 = zzb.zzf(zzenVar.zzB(i14, charset));
                                for (int i15 = 0; i15 < zzf2.size(); i15++) {
                                    List zzf3 = zza.zzf((CharSequence) zzf2.get(i15));
                                    if (zzf3.size() == 3) {
                                        try {
                                            arrayList.add(new zzahn(Long.parseLong((String) zzf3.get(0)), Long.parseLong((String) zzf3.get(1)), 1 << (Integer.parseInt((String) zzf3.get(2)) - 1)));
                                        } catch (NumberFormatException e10) {
                                            throw zzaz.zza(null, e10);
                                        }
                                    } else {
                                        throw zzaz.zza(null, null);
                                    }
                                }
                                list.add(new zzaho(arrayList));
                            }
                            i13++;
                        } else {
                            zzaerVar.zza = 0L;
                            return 1;
                        }
                    }
                } else {
                    long zzd2 = zzadwVar.zzd();
                    int i16 = this.zze - 20;
                    zzen zzenVar2 = new zzen(i16);
                    zzadwVar.zzi(zzenVar2.zzN(), 0, i16);
                    int i17 = 0;
                    while (i17 < i16 / 12) {
                        zzenVar2.zzM(i12);
                        short zzD = zzenVar2.zzD();
                        if (zzD != s12 && zzD != s11 && zzD != s10 && zzD != 2819 && zzD != 2820) {
                            zzenVar2.zzM(8);
                            i10 = i16;
                        } else {
                            i10 = i16;
                            this.zzc.add(new zzajm(zzD, (zzd2 - this.zze) - zzenVar2.zzi(), zzenVar2.zzi()));
                        }
                        i17++;
                        i16 = i10;
                        i12 = 2;
                        s10 = 2817;
                        s11 = 2816;
                        s12 = 2192;
                    }
                    List list3 = this.zzc;
                    if (list3.isEmpty()) {
                        zzaerVar.zza = 0L;
                    } else {
                        this.zzd = 3;
                        zzaerVar.zza = ((zzajm) list3.get(0)).zza;
                    }
                }
            } else {
                zzen zzenVar3 = new zzen(8);
                zzadwVar.zzi(zzenVar3.zzN(), 0, 8);
                this.zze = zzenVar3.zzi() + 8;
                if (zzenVar3.zzg() != 1397048916) {
                    zzaerVar.zza = 0L;
                } else {
                    zzaerVar.zza = zzadwVar.zzf() - (this.zze - 12);
                    this.zzd = 2;
                }
            }
            return 1;
        }
        long zzd3 = zzadwVar.zzd();
        zzaerVar.zza = (zzd3 == -1 || zzd3 < 8) ? 0L : zzd3 - 8;
        this.zzd = 1;
        return 1;
    }

    public final void zzb() {
        this.zzc.clear();
        this.zzd = 0;
    }
}
