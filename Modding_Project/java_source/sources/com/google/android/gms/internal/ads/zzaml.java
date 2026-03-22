package com.google.android.gms.internal.ads;

import android.graphics.Color;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaml {
    public static final Pattern zza = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)((?:.|\\f)*)?$");
    private static final Pattern zzb = Pattern.compile("(\\S+?):(\\S+)");
    private static final Map zzc;
    private static final Map zzd;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("white", Integer.valueOf(Color.rgb(255, 255, 255)));
        hashMap.put("lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        hashMap.put("cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        hashMap.put("red", Integer.valueOf(Color.rgb(255, 0, 0)));
        hashMap.put("yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        hashMap.put("magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        hashMap.put("blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        hashMap.put("black", Integer.valueOf(Color.rgb(0, 0, 0)));
        zzc = Collections.unmodifiableMap(hashMap);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("bg_white", Integer.valueOf(Color.rgb(255, 255, 255)));
        hashMap2.put("bg_lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        hashMap2.put("bg_cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        hashMap2.put("bg_red", Integer.valueOf(Color.rgb(255, 0, 0)));
        hashMap2.put("bg_yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        hashMap2.put("bg_magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        hashMap2.put("bg_blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        hashMap2.put("bg_black", Integer.valueOf(Color.rgb(0, 0, 0)));
        zzd = Collections.unmodifiableMap(hashMap2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x010e, code lost:
        if (r4.equals("i") != false) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:124:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x012a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.text.SpannedString zza(@androidx.annotation.Nullable java.lang.String r17, java.lang.String r18, java.util.List r19) {
        /*
            Method dump skipped, instructions count: 552
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaml.zza(java.lang.String, java.lang.String, java.util.List):android.text.SpannedString");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzcs zzb(String str) {
        zzamj zzamjVar = new zzamj();
        zzh(str, zzamjVar);
        return zzamjVar.zza();
    }

    @Nullable
    public static zzame zzc(zzen zzenVar, List list) {
        Charset charset = StandardCharsets.UTF_8;
        String zzz = zzenVar.zzz(charset);
        if (zzz != null) {
            Pattern pattern = zza;
            Matcher matcher = pattern.matcher(zzz);
            if (!matcher.matches()) {
                String zzz2 = zzenVar.zzz(charset);
                if (zzz2 != null) {
                    Matcher matcher2 = pattern.matcher(zzz2);
                    if (matcher2.matches()) {
                        return zze(zzz.trim(), matcher2, zzenVar, list);
                    }
                }
            } else {
                return zze(null, matcher, zzenVar, list);
            }
        }
        return null;
    }

    private static int zzd(List list, @Nullable String str, zzamh zzamhVar) {
        List zzf = zzf(list, str, zzamhVar);
        for (int i10 = 0; i10 < zzf.size(); i10++) {
            zzamd zzamdVar = ((zzami) zzf.get(i10)).zzb;
            if (zzamdVar.zze() != -1) {
                return zzamdVar.zze();
            }
        }
        return -1;
    }

    @Nullable
    private static zzame zze(@Nullable String str, Matcher matcher, zzen zzenVar, List list) {
        zzamj zzamjVar = new zzamj();
        try {
            String group = matcher.group(1);
            if (group != null) {
                zzamjVar.zza = zzamn.zzb(group);
                String group2 = matcher.group(2);
                if (group2 != null) {
                    zzamjVar.zzb = zzamn.zzb(group2);
                    String group3 = matcher.group(3);
                    group3.getClass();
                    zzh(group3, zzamjVar);
                    StringBuilder sb2 = new StringBuilder();
                    String zzz = zzenVar.zzz(StandardCharsets.UTF_8);
                    while (!TextUtils.isEmpty(zzz)) {
                        if (sb2.length() > 0) {
                            sb2.append("\n");
                        }
                        sb2.append(zzz.trim());
                        zzz = zzenVar.zzz(StandardCharsets.UTF_8);
                    }
                    zzamjVar.zzc = zza(str, sb2.toString(), list);
                    return new zzame(zzamjVar.zza().zzq(), zzamjVar.zza, zzamjVar.zzb);
                }
                throw null;
            }
            throw null;
        } catch (IllegalArgumentException unused) {
            zzea.zzf("WebvttCueParser", "Skipping cue with bad header: ".concat(String.valueOf(matcher.group())));
            return null;
        }
    }

    private static List zzf(List list, @Nullable String str, zzamh zzamhVar) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            zzamd zzamdVar = (zzamd) list.get(i10);
            int zzf = zzamdVar.zzf(str, zzamhVar.zza, zzamhVar.zzd, zzamhVar.zzc);
            if (zzf > 0) {
                arrayList.add(new zzami(zzf, zzamdVar));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private static void zzg(@Nullable String str, zzamh zzamhVar, List list, SpannableStringBuilder spannableStringBuilder, List list2) {
        char c10;
        Comparator comparator;
        zzamh zzamhVar2;
        zzamh zzamhVar3;
        zzamh zzamhVar4;
        int i10;
        int i11 = zzamhVar.zzb;
        int length = spannableStringBuilder.length();
        String str2 = zzamhVar.zza;
        int hashCode = str2.hashCode();
        int i12 = -1;
        if (hashCode != 0) {
            if (hashCode != 105) {
                if (hashCode != 3314158) {
                    if (hashCode != 3511770) {
                        if (hashCode != 98) {
                            if (hashCode != 99) {
                                if (hashCode != 117) {
                                    if (hashCode == 118 && str2.equals("v")) {
                                        c10 = 5;
                                    }
                                    c10 = 65535;
                                } else {
                                    if (str2.equals("u")) {
                                        c10 = 3;
                                    }
                                    c10 = 65535;
                                }
                            } else {
                                if (str2.equals("c")) {
                                    c10 = 4;
                                }
                                c10 = 65535;
                            }
                        } else {
                            if (str2.equals(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B)) {
                                c10 = 0;
                            }
                            c10 = 65535;
                        }
                    } else {
                        if (str2.equals("ruby")) {
                            c10 = 2;
                        }
                        c10 = 65535;
                    }
                } else {
                    if (str2.equals(CommonConstant.ReqAccessTokenParam.LANGUAGE_LABEL)) {
                        c10 = 6;
                    }
                    c10 = 65535;
                }
            } else {
                if (str2.equals("i")) {
                    c10 = 1;
                }
                c10 = 65535;
            }
        } else {
            if (str2.equals("")) {
                c10 = 7;
            }
            c10 = 65535;
        }
        switch (c10) {
            case 0:
                spannableStringBuilder.setSpan(new StyleSpan(1), i11, length, 33);
                break;
            case 1:
                spannableStringBuilder.setSpan(new StyleSpan(2), i11, length, 33);
                break;
            case 2:
                int zzd2 = zzd(list2, str, zzamhVar);
                ArrayList arrayList = new ArrayList(list.size());
                arrayList.addAll(list);
                comparator = zzamg.zza;
                Collections.sort(arrayList, comparator);
                int i13 = i11;
                int i14 = 0;
                int i15 = 0;
                while (i14 < arrayList.size()) {
                    zzamhVar2 = ((zzamg) arrayList.get(i14)).zzb;
                    if ("rt".equals(zzamhVar2.zza)) {
                        zzamg zzamgVar = (zzamg) arrayList.get(i14);
                        zzamhVar3 = zzamgVar.zzb;
                        int zzd3 = zzd(list2, str, zzamhVar3);
                        if (zzd3 == i12) {
                            if (zzd2 != i12) {
                                zzd3 = zzd2;
                            } else {
                                zzd3 = 1;
                            }
                        }
                        zzamhVar4 = zzamgVar.zzb;
                        int i16 = zzamhVar4.zzb - i15;
                        i10 = zzamgVar.zzc;
                        int i17 = i10 - i15;
                        CharSequence subSequence = spannableStringBuilder.subSequence(i16, i17);
                        spannableStringBuilder.delete(i16, i17);
                        spannableStringBuilder.setSpan(new zzcz(subSequence.toString(), zzd3), i13, i16, 33);
                        i15 += subSequence.length();
                        i13 = i16;
                    }
                    i14++;
                    i12 = -1;
                }
                break;
            case 3:
                spannableStringBuilder.setSpan(new UnderlineSpan(), i11, length, 33);
                break;
            case 4:
                for (String str3 : zzamhVar.zzd) {
                    Map map = zzc;
                    if (map.containsKey(str3)) {
                        spannableStringBuilder.setSpan(new ForegroundColorSpan(((Integer) map.get(str3)).intValue()), i11, length, 33);
                    } else {
                        Map map2 = zzd;
                        if (map2.containsKey(str3)) {
                            spannableStringBuilder.setSpan(new BackgroundColorSpan(((Integer) map2.get(str3)).intValue()), i11, length, 33);
                        }
                    }
                }
                break;
            case 5:
                spannableStringBuilder.setSpan(new zzdc(zzamhVar.zzc), i11, length, 33);
                break;
            case 6:
            case 7:
                break;
            default:
                return;
        }
        List zzf = zzf(list2, str, zzamhVar);
        for (int i18 = 0; i18 < zzf.size(); i18++) {
            zzamd zzamdVar = ((zzami) zzf.get(i18)).zzb;
            if (zzamdVar != null) {
                if (zzamdVar.zzg() != -1) {
                    zzda.zzb(spannableStringBuilder, new StyleSpan(zzamdVar.zzg()), i11, length, 33);
                }
                if (zzamdVar.zzz()) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), i11, length, 33);
                }
                if (zzamdVar.zzy()) {
                    zzda.zzb(spannableStringBuilder, new ForegroundColorSpan(zzamdVar.zzc()), i11, length, 33);
                }
                if (zzamdVar.zzx()) {
                    zzda.zzb(spannableStringBuilder, new BackgroundColorSpan(zzamdVar.zzb()), i11, length, 33);
                }
                if (zzamdVar.zzr() != null) {
                    zzda.zzb(spannableStringBuilder, new TypefaceSpan(zzamdVar.zzr()), i11, length, 33);
                }
                int zzd4 = zzamdVar.zzd();
                if (zzd4 != 1) {
                    if (zzd4 != 2) {
                        if (zzd4 == 3) {
                            zzda.zzb(spannableStringBuilder, new RelativeSizeSpan(zzamdVar.zza() / 100.0f), i11, length, 33);
                        }
                    } else {
                        zzda.zzb(spannableStringBuilder, new RelativeSizeSpan(zzamdVar.zza()), i11, length, 33);
                    }
                } else {
                    zzda.zzb(spannableStringBuilder, new AbsoluteSizeSpan((int) zzamdVar.zza(), true), i11, length, 33);
                }
                if (zzamdVar.zzw()) {
                    spannableStringBuilder.setSpan(new zzcy(), i11, length, 33);
                }
            }
        }
    }

    private static void zzh(String str, zzamj zzamjVar) {
        Matcher matcher = zzb.matcher(str);
        while (matcher.find()) {
            int i10 = 1;
            String group = matcher.group(1);
            group.getClass();
            int i11 = 2;
            String group2 = matcher.group(2);
            group2.getClass();
            try {
                char c10 = 65535;
                if (!"line".equals(group)) {
                    if (!"align".equals(group)) {
                        if (!"position".equals(group)) {
                            if ("size".equals(group)) {
                                zzamjVar.zzj = zzamn.zza(group2);
                            } else if (!"vertical".equals(group)) {
                                zzea.zzf("WebvttCueParser", "Unknown cue setting " + group + ":" + group2);
                            } else {
                                int hashCode = group2.hashCode();
                                if (hashCode != 3462) {
                                    if (hashCode == 3642 && group2.equals("rl")) {
                                        c10 = 0;
                                    }
                                } else if (group2.equals("lr")) {
                                    c10 = 1;
                                }
                                if (c10 != 0) {
                                    if (c10 != 1) {
                                        zzea.zzf("WebvttCueParser", "Invalid 'vertical' value: ".concat(group2));
                                        i10 = Integer.MIN_VALUE;
                                    } else {
                                        i10 = 2;
                                    }
                                }
                                zzamjVar.zzk = i10;
                            }
                        } else {
                            int indexOf = group2.indexOf(44);
                            if (indexOf != -1) {
                                String substring = group2.substring(indexOf + 1);
                                switch (substring.hashCode()) {
                                    case -1842484672:
                                        if (substring.equals("line-left")) {
                                            c10 = 0;
                                            break;
                                        }
                                        break;
                                    case -1364013995:
                                        if (substring.equals(TtmlNode.CENTER)) {
                                            c10 = 2;
                                            break;
                                        }
                                        break;
                                    case -1276788989:
                                        if (substring.equals("line-right")) {
                                            c10 = 4;
                                            break;
                                        }
                                        break;
                                    case -1074341483:
                                        if (substring.equals("middle")) {
                                            c10 = 3;
                                            break;
                                        }
                                        break;
                                    case 100571:
                                        if (substring.equals("end")) {
                                            c10 = 5;
                                            break;
                                        }
                                        break;
                                    case 109757538:
                                        if (substring.equals("start")) {
                                            c10 = 1;
                                            break;
                                        }
                                        break;
                                }
                                if (c10 != 0 && c10 != 1) {
                                    if (c10 != 2 && c10 != 3) {
                                        if (c10 != 4 && c10 != 5) {
                                            zzea.zzf("WebvttCueParser", "Invalid anchor value: ".concat(substring));
                                            i10 = Integer.MIN_VALUE;
                                        } else {
                                            i10 = 2;
                                        }
                                    }
                                } else {
                                    i10 = 0;
                                }
                                zzamjVar.zzi = i10;
                                group2 = group2.substring(0, indexOf);
                            }
                            zzamjVar.zzh = zzamn.zza(group2);
                        }
                    } else {
                        switch (group2.hashCode()) {
                            case -1364013995:
                                if (group2.equals(TtmlNode.CENTER)) {
                                    c10 = 2;
                                    break;
                                }
                                break;
                            case -1074341483:
                                if (group2.equals("middle")) {
                                    c10 = 3;
                                    break;
                                }
                                break;
                            case 100571:
                                if (group2.equals("end")) {
                                    c10 = 4;
                                    break;
                                }
                                break;
                            case 3317767:
                                if (group2.equals(TtmlNode.LEFT)) {
                                    c10 = 1;
                                    break;
                                }
                                break;
                            case 108511772:
                                if (group2.equals(TtmlNode.RIGHT)) {
                                    c10 = 5;
                                    break;
                                }
                                break;
                            case 109757538:
                                if (group2.equals("start")) {
                                    c10 = 0;
                                    break;
                                }
                                break;
                        }
                        if (c10 != 0) {
                            if (c10 != 1) {
                                if (c10 != 2 && c10 != 3) {
                                    if (c10 != 4) {
                                        if (c10 != 5) {
                                            zzea.zzf("WebvttCueParser", "Invalid alignment value: ".concat(group2));
                                        } else {
                                            i10 = 5;
                                        }
                                    } else {
                                        i10 = 3;
                                    }
                                }
                                i10 = 2;
                            } else {
                                i10 = 4;
                            }
                        }
                        zzamjVar.zzd = i10;
                    }
                } else {
                    int indexOf2 = group2.indexOf(44);
                    if (indexOf2 != -1) {
                        String substring2 = group2.substring(indexOf2 + 1);
                        switch (substring2.hashCode()) {
                            case -1364013995:
                                if (substring2.equals(TtmlNode.CENTER)) {
                                    c10 = 1;
                                    break;
                                }
                                break;
                            case -1074341483:
                                if (substring2.equals("middle")) {
                                    c10 = 2;
                                    break;
                                }
                                break;
                            case 100571:
                                if (substring2.equals("end")) {
                                    c10 = 3;
                                    break;
                                }
                                break;
                            case 109757538:
                                if (substring2.equals("start")) {
                                    c10 = 0;
                                    break;
                                }
                                break;
                        }
                        if (c10 != 0) {
                            if (c10 != 1 && c10 != 2) {
                                if (c10 != 3) {
                                    zzea.zzf("WebvttCueParser", "Invalid anchor value: ".concat(substring2));
                                    i11 = Integer.MIN_VALUE;
                                }
                            } else {
                                i11 = 1;
                            }
                        } else {
                            i11 = 0;
                        }
                        zzamjVar.zzg = i11;
                        group2 = group2.substring(0, indexOf2);
                    }
                    if (group2.endsWith("%")) {
                        zzamjVar.zze = zzamn.zza(group2);
                        zzamjVar.zzf = 0;
                    } else {
                        zzamjVar.zze = Integer.parseInt(group2);
                        zzamjVar.zzf = 1;
                    }
                }
            } catch (NumberFormatException unused) {
                zzea.zzf("WebvttCueParser", "Skipping bad cue setting: ".concat(String.valueOf(matcher.group())));
            }
        }
    }
}
