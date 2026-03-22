package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.regex.Pattern;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzamc {
    private static final Pattern zza = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");
    private static final Pattern zzb = Pattern.compile("^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$");
    private final zzen zzc = new zzen();
    private final StringBuilder zzd = new StringBuilder();

    @Nullable
    static String zza(zzen zzenVar, StringBuilder sb2) {
        zzc(zzenVar);
        if (zzenVar.zza() == 0) {
            return null;
        }
        String zzd = zzd(zzenVar, sb2);
        if (!"".equals(zzd)) {
            return zzd;
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append((char) zzenVar.zzm());
        return sb3.toString();
    }

    static void zzc(zzen zzenVar) {
        while (true) {
            for (boolean z10 = true; zzenVar.zza() > 0 && z10; z10 = false) {
                char c10 = (char) zzenVar.zzN()[zzenVar.zzc()];
                if (c10 != '\t' && c10 != '\n' && c10 != '\f' && c10 != '\r' && c10 != ' ') {
                    int zzc = zzenVar.zzc();
                    int zzd = zzenVar.zzd();
                    byte[] zzN = zzenVar.zzN();
                    if (zzc + 2 <= zzd) {
                        int i10 = zzc + 1;
                        if (zzN[zzc] == 47) {
                            int i11 = zzc + 2;
                            if (zzN[i10] == 42) {
                                while (true) {
                                    int i12 = i11 + 1;
                                    if (i12 >= zzd) {
                                        break;
                                    } else if (((char) zzN[i11]) == '*' && ((char) zzN[i12]) == '/') {
                                        zzd = i11 + 2;
                                        i11 = zzd;
                                    } else {
                                        i11 = i12;
                                    }
                                }
                                zzenVar.zzM(zzd - zzenVar.zzc());
                            }
                        } else {
                            continue;
                        }
                    }
                } else {
                    zzenVar.zzM(1);
                }
            }
            return;
        }
    }

    private static String zzd(zzen zzenVar, StringBuilder sb2) {
        sb2.setLength(0);
        int zzc = zzenVar.zzc();
        int zzd = zzenVar.zzd();
        loop0: while (true) {
            for (boolean z10 = false; zzc < zzd && !z10; z10 = true) {
                char c10 = (char) zzenVar.zzN()[zzc];
                if ((c10 >= 'A' && c10 <= 'Z') || ((c10 >= 'a' && c10 <= 'z') || ((c10 >= '0' && c10 <= '9') || c10 == '#' || c10 == '-' || c10 == '.' || c10 == '_'))) {
                    sb2.append(c10);
                    zzc++;
                }
            }
        }
        zzenVar.zzM(zzc - zzenVar.zzc());
        return sb2.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:170:0x0304, code lost:
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00aa, code lost:
        if (")".equals(zza(r6, r3)) == false) goto L8;
     */
    /* JADX WARN: Removed duplicated region for block: B:157:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x02e1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List zzb(com.google.android.gms.internal.ads.zzen r18) {
        /*
            Method dump skipped, instructions count: 773
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzamc.zzb(com.google.android.gms.internal.ads.zzen):java.util.List");
    }
}
