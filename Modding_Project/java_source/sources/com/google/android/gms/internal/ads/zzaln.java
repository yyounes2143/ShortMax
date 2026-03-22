package com.google.android.gms.internal.ads;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaln implements zzakt {
    private static final Pattern zza = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d{3}))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d{3}))?)\\s*");
    private static final Pattern zzb = Pattern.compile("\\{\\\\.*?\\}");
    private final StringBuilder zzc = new StringBuilder();
    private final ArrayList zzd = new ArrayList();
    private final zzen zze = new zzen();

    @VisibleForTesting(otherwise = 2)
    public static float zzb(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    return 0.92f;
                }
                throw new IllegalArgumentException();
            }
            return 0.5f;
        }
        return 0.08f;
    }

    private static long zzc(Matcher matcher, int i10) {
        long j10;
        String group = matcher.group(i10 + 1);
        if (group != null) {
            j10 = Long.parseLong(group) * 3600000;
        } else {
            j10 = 0;
        }
        String group2 = matcher.group(i10 + 2);
        group2.getClass();
        long parseLong = j10 + (Long.parseLong(group2) * ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS);
        String group3 = matcher.group(i10 + 3);
        group3.getClass();
        long parseLong2 = parseLong + (Long.parseLong(group3) * 1000);
        String group4 = matcher.group(i10 + 4);
        if (group4 != null) {
            parseLong2 += Long.parseLong(group4);
        }
        return parseLong2 * 1000;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.zzakt
    public final void zza(byte[] bArr, int i10, int i11, zzaks zzaksVar, zzdn zzdnVar) {
        zzen zzenVar;
        String str;
        char c10;
        char c11;
        int i12;
        zzcu zzq;
        zzaln zzalnVar = this;
        zzen zzenVar2 = zzalnVar.zze;
        zzenVar2.zzJ(bArr, i10 + i11);
        zzenVar2.zzL(i10);
        Charset zzC = zzenVar2.zzC();
        if (zzC == null) {
            zzC = StandardCharsets.UTF_8;
        }
        while (true) {
            String zzz = zzenVar2.zzz(zzC);
            if (zzz != null) {
                if (zzz.length() != 0) {
                    try {
                        Integer.parseInt(zzz);
                        zzen zzenVar3 = zzalnVar.zze;
                        String zzz2 = zzenVar3.zzz(zzC);
                        if (zzz2 == null) {
                            zzea.zzf("SubripParser", "Unexpected end");
                            return;
                        }
                        Matcher matcher = zza.matcher(zzz2);
                        if (matcher.matches()) {
                            long zzc = zzc(matcher, 1);
                            long zzc2 = zzc(matcher, 6);
                            StringBuilder sb2 = zzalnVar.zzc;
                            int i13 = 0;
                            sb2.setLength(0);
                            ArrayList arrayList = zzalnVar.zzd;
                            arrayList.clear();
                            String zzz3 = zzenVar3.zzz(zzC);
                            while (!TextUtils.isEmpty(zzz3)) {
                                if (sb2.length() > 0) {
                                    sb2.append("<br>");
                                }
                                String trim = zzz3.trim();
                                StringBuilder sb3 = new StringBuilder(trim);
                                Matcher matcher2 = zzb.matcher(trim);
                                int i14 = i13;
                                while (matcher2.find()) {
                                    String group = matcher2.group();
                                    arrayList.add(group);
                                    int start = matcher2.start() - i14;
                                    int length = group.length();
                                    sb3.replace(start, start + length, "");
                                    i14 += length;
                                    zzenVar2 = zzenVar2;
                                }
                                sb2.append(sb3.toString());
                                zzz3 = zzenVar3.zzz(zzC);
                                i13 = 0;
                            }
                            zzenVar = zzenVar2;
                            Spanned fromHtml = Html.fromHtml(sb2.toString());
                            int i15 = 0;
                            while (true) {
                                if (i15 < arrayList.size()) {
                                    str = (String) arrayList.get(i15);
                                    if (!str.matches("\\{\\\\an[1-9]\\}")) {
                                        i15++;
                                    }
                                } else {
                                    str = null;
                                }
                            }
                            zzcs zzcsVar = new zzcs();
                            zzcsVar.zzl(fromHtml);
                            if (str == null) {
                                zzq = zzcsVar.zzq();
                            } else {
                                switch (str.hashCode()) {
                                    case -685620710:
                                        if (str.equals("{\\an1}")) {
                                            c10 = 0;
                                            break;
                                        }
                                        c10 = 65535;
                                        break;
                                    case -685620648:
                                        if (str.equals("{\\an3}")) {
                                            c10 = 3;
                                            break;
                                        }
                                        c10 = 65535;
                                        break;
                                    case -685620617:
                                        if (str.equals("{\\an4}")) {
                                            c10 = 1;
                                            break;
                                        }
                                        c10 = 65535;
                                        break;
                                    case -685620555:
                                        if (str.equals("{\\an6}")) {
                                            c10 = 4;
                                            break;
                                        }
                                        c10 = 65535;
                                        break;
                                    case -685620524:
                                        if (str.equals("{\\an7}")) {
                                            c10 = 2;
                                            break;
                                        }
                                        c10 = 65535;
                                        break;
                                    case -685620462:
                                        if (str.equals("{\\an9}")) {
                                            c10 = 5;
                                            break;
                                        }
                                        c10 = 65535;
                                        break;
                                    default:
                                        c10 = 65535;
                                        break;
                                }
                                if (c10 != 0 && c10 != 1 && c10 != 2) {
                                    if (c10 != 3 && c10 != 4 && c10 != 5) {
                                        zzcsVar.zzi(1);
                                    } else {
                                        zzcsVar.zzi(2);
                                    }
                                } else {
                                    zzcsVar.zzi(0);
                                }
                                switch (str.hashCode()) {
                                    case -685620710:
                                        if (str.equals("{\\an1}")) {
                                            c11 = 0;
                                            break;
                                        }
                                        c11 = 65535;
                                        break;
                                    case -685620679:
                                        if (str.equals("{\\an2}")) {
                                            c11 = 1;
                                            break;
                                        }
                                        c11 = 65535;
                                        break;
                                    case -685620648:
                                        if (str.equals("{\\an3}")) {
                                            c11 = 2;
                                            break;
                                        }
                                        c11 = 65535;
                                        break;
                                    case -685620524:
                                        if (str.equals("{\\an7}")) {
                                            c11 = 3;
                                            break;
                                        }
                                        c11 = 65535;
                                        break;
                                    case -685620493:
                                        if (str.equals("{\\an8}")) {
                                            c11 = 4;
                                            break;
                                        }
                                        c11 = 65535;
                                        break;
                                    case -685620462:
                                        if (str.equals("{\\an9}")) {
                                            c11 = 5;
                                            break;
                                        }
                                        c11 = 65535;
                                        break;
                                    default:
                                        c11 = 65535;
                                        break;
                                }
                                if (c11 != 0 && c11 != 1) {
                                    if (c11 != 2) {
                                        if (c11 != 3 && c11 != 4 && c11 != 5) {
                                            zzcsVar.zzf(1);
                                        } else {
                                            zzcsVar.zzf(0);
                                        }
                                        zzcsVar.zzh(zzb(zzcsVar.zzb()));
                                        zzcsVar.zze(zzb(zzcsVar.zza()), 0);
                                        zzq = zzcsVar.zzq();
                                    } else {
                                        i12 = 2;
                                    }
                                } else {
                                    i12 = 2;
                                }
                                zzcsVar.zzf(i12);
                                zzcsVar.zzh(zzb(zzcsVar.zzb()));
                                zzcsVar.zze(zzb(zzcsVar.zza()), 0);
                                zzq = zzcsVar.zzq();
                            }
                            zzdnVar.zza(new zzakl(zzfyq.zzo(zzq), zzc, zzc2 - zzc));
                        } else {
                            zzenVar = zzenVar2;
                            zzea.zzf("SubripParser", "Skipping invalid timing: ".concat(zzz2));
                        }
                    } catch (NumberFormatException unused) {
                        zzenVar = zzenVar2;
                        zzea.zzf("SubripParser", "Skipping invalid index: ".concat(zzz));
                    }
                } else {
                    zzenVar = zzenVar2;
                }
                zzalnVar = this;
                zzenVar2 = zzenVar;
            } else {
                return;
            }
        }
    }
}
