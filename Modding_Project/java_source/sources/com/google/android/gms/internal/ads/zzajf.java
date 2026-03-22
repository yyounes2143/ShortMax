package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.mbridge.msdk.playercommon.exoplayer2.C;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzajf {
    @Nullable
    public static zzau zza(zzen zzenVar) {
        String str;
        int zzc = zzenVar.zzc() + zzenVar.zzg();
        int zzg = zzenVar.zzg();
        int i10 = (zzg >> 24) & 255;
        zzau zzauVar = null;
        try {
            if (i10 != 169 && i10 != 253) {
                if (zzg == 1735291493) {
                    String zza = zzahg.zza(zzb(zzenVar) - 1);
                    if (zza != null) {
                        zzauVar = new zzahk("TCON", null, zzfyq.zzo(zza));
                    } else {
                        zzea.zzf("MetadataUtil", "Failed to parse standard genre code");
                    }
                } else if (zzg == 1684632427) {
                    zzauVar = zzd(1684632427, "TPOS", zzenVar);
                } else if (zzg == 1953655662) {
                    zzauVar = zzd(1953655662, "TRCK", zzenVar);
                } else if (zzg == 1953329263) {
                    zzauVar = zzc(1953329263, "TBPM", zzenVar, true, false);
                } else if (zzg == 1668311404) {
                    zzauVar = zzc(1668311404, "TCMP", zzenVar, true, true);
                } else if (zzg == 1668249202) {
                    int zzg2 = zzenVar.zzg();
                    if (zzenVar.zzg() == 1684108385) {
                        int zzg3 = zzenVar.zzg();
                        int i11 = zzaix.zza;
                        int i12 = zzg3 & ViewCompat.MEASURED_SIZE_MASK;
                        if (i12 == 13) {
                            str = "image/jpeg";
                        } else if (i12 == 14) {
                            str = "image/png";
                            i12 = 14;
                        } else {
                            str = null;
                        }
                        if (str == null) {
                            zzea.zzf("MetadataUtil", "Unrecognized cover art flags: " + i12);
                        } else {
                            zzenVar.zzM(4);
                            int i13 = zzg2 - 16;
                            byte[] bArr = new byte[i13];
                            zzenVar.zzH(bArr, 0, i13);
                            zzauVar = new zzagw(str, null, 3, bArr);
                        }
                    } else {
                        zzea.zzf("MetadataUtil", "Failed to parse cover art attribute");
                    }
                } else if (zzg == 1631670868) {
                    zzauVar = zze(1631670868, "TPE2", zzenVar);
                } else if (zzg == 1936682605) {
                    zzauVar = zze(1936682605, "TSOT", zzenVar);
                } else if (zzg == 1936679276) {
                    zzauVar = zze(1936679276, "TSOA", zzenVar);
                } else if (zzg == 1936679282) {
                    zzauVar = zze(1936679282, "TSOP", zzenVar);
                } else if (zzg == 1936679265) {
                    zzauVar = zze(1936679265, "TSO2", zzenVar);
                } else if (zzg == 1936679791) {
                    zzauVar = zze(1936679791, "TSOC", zzenVar);
                } else if (zzg == 1920233063) {
                    zzauVar = zzc(1920233063, "ITUNESADVISORY", zzenVar, false, false);
                } else if (zzg == 1885823344) {
                    zzauVar = zzc(1885823344, "ITUNESGAPLESS", zzenVar, false, true);
                } else if (zzg == 1936683886) {
                    zzauVar = zze(1936683886, "TVSHOWSORT", zzenVar);
                } else if (zzg == 1953919848) {
                    zzauVar = zze(1953919848, "TVSHOW", zzenVar);
                } else {
                    if (zzg == 757935405) {
                        int i14 = -1;
                        int i15 = -1;
                        String str2 = null;
                        String str3 = null;
                        while (zzenVar.zzc() < zzc) {
                            int zzc2 = zzenVar.zzc();
                            int zzg4 = zzenVar.zzg();
                            int zzg5 = zzenVar.zzg();
                            zzenVar.zzM(4);
                            if (zzg5 == 1835360622) {
                                str2 = zzenVar.zzA(zzg4 - 12);
                            } else {
                                int i16 = zzg4 - 12;
                                if (zzg5 == 1851878757) {
                                    str3 = zzenVar.zzA(i16);
                                } else {
                                    if (zzg5 == 1684108385) {
                                        i15 = zzg4;
                                    }
                                    if (zzg5 == 1684108385) {
                                        i14 = zzc2;
                                    }
                                    zzenVar.zzM(i16);
                                }
                            }
                        }
                        if (str2 != null && str3 != null && i14 != -1) {
                            zzenVar.zzL(i14);
                            zzenVar.zzM(16);
                            zzauVar = new zzahh(str2, str3, zzenVar.zzA(i15 - 16));
                        }
                    }
                    zzea.zzb("MetadataUtil", "Skipped unknown metadata entry: " + zzff.zze(zzg));
                }
            } else {
                int i17 = zzg & ViewCompat.MEASURED_SIZE_MASK;
                if (i17 == 6516084) {
                    int zzg6 = zzenVar.zzg();
                    if (zzenVar.zzg() == 1684108385) {
                        zzenVar.zzM(8);
                        String zzA = zzenVar.zzA(zzg6 - 16);
                        zzauVar = new zzaha(C.LANGUAGE_UNDETERMINED, zzA, zzA);
                    } else {
                        zzea.zzf("MetadataUtil", "Failed to parse comment attribute: ".concat(zzff.zze(zzg)));
                    }
                } else {
                    if (i17 != 7233901 && i17 != 7631467) {
                        if (i17 != 6516589 && i17 != 7828084) {
                            if (i17 == 6578553) {
                                zzauVar = zze(zzg, "TDRC", zzenVar);
                            } else if (i17 == 4280916) {
                                zzauVar = zze(zzg, "TPE1", zzenVar);
                            } else if (i17 == 7630703) {
                                zzauVar = zze(zzg, "TSSE", zzenVar);
                            } else if (i17 == 6384738) {
                                zzauVar = zze(zzg, "TALB", zzenVar);
                            } else if (i17 == 7108978) {
                                zzauVar = zze(zzg, "USLT", zzenVar);
                            } else if (i17 == 6776174) {
                                zzauVar = zze(zzg, "TCON", zzenVar);
                            } else {
                                if (i17 == 6779504) {
                                    zzauVar = zze(zzg, "TIT1", zzenVar);
                                }
                                zzea.zzb("MetadataUtil", "Skipped unknown metadata entry: " + zzff.zze(zzg));
                            }
                        }
                        zzauVar = zze(zzg, "TCOM", zzenVar);
                    }
                    zzauVar = zze(zzg, "TIT2", zzenVar);
                }
            }
            return zzauVar;
        } finally {
            zzenVar.zzL(zzc);
        }
    }

    private static int zzb(zzen zzenVar) {
        int zzg = zzenVar.zzg();
        if (zzenVar.zzg() == 1684108385) {
            zzenVar.zzM(8);
            int i10 = zzg - 16;
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 4 && (zzenVar.zzf() & 128) == 0) {
                            return zzenVar.zzp();
                        }
                    } else {
                        return zzenVar.zzo();
                    }
                } else {
                    return zzenVar.zzq();
                }
            } else {
                return zzenVar.zzm();
            }
        }
        zzea.zzf("MetadataUtil", "Failed to parse data atom to int");
        return -1;
    }

    @Nullable
    private static zzahf zzc(int i10, String str, zzen zzenVar, boolean z10, boolean z11) {
        int zzb = zzb(zzenVar);
        if (z11) {
            zzb = Math.min(1, zzb);
        }
        if (zzb >= 0) {
            if (z10) {
                return new zzahk(str, null, zzfyq.zzo(Integer.toString(zzb)));
            }
            return new zzaha(C.LANGUAGE_UNDETERMINED, str, Integer.toString(zzb));
        }
        zzea.zzf("MetadataUtil", "Failed to parse uint8 attribute: ".concat(zzff.zze(i10)));
        return null;
    }

    @Nullable
    private static zzahk zzd(int i10, String str, zzen zzenVar) {
        int zzg = zzenVar.zzg();
        if (zzenVar.zzg() == 1684108385 && zzg >= 22) {
            zzenVar.zzM(10);
            int zzq = zzenVar.zzq();
            if (zzq > 0) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(zzq);
                String sb3 = sb2.toString();
                int zzq2 = zzenVar.zzq();
                if (zzq2 > 0) {
                    sb3 = sb3 + DomExceptionUtils.SEPARATOR + zzq2;
                }
                return new zzahk(str, null, zzfyq.zzo(sb3));
            }
        }
        zzea.zzf("MetadataUtil", "Failed to parse index/count attribute: ".concat(zzff.zze(i10)));
        return null;
    }

    @Nullable
    private static zzahk zze(int i10, String str, zzen zzenVar) {
        int zzg = zzenVar.zzg();
        if (zzenVar.zzg() == 1684108385) {
            zzenVar.zzM(8);
            return new zzahk(str, null, zzfyq.zzo(zzenVar.zzA(zzg - 16)));
        }
        zzea.zzf("MetadataUtil", "Failed to parse text attribute: ".concat(zzff.zze(i10)));
        return null;
    }
}
