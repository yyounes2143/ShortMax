package com.google.android.gms.internal.ads;

import android.text.Layout;
import androidx.annotation.Nullable;
import com.bytedance.vodsetting.Module;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzalt implements zzakt {
    private final XmlPullParserFactory zzi;
    private static final Pattern zzc = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");
    private static final Pattern zzd = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");
    private static final Pattern zze = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");
    static final Pattern zza = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");
    static final Pattern zzb = Pattern.compile("^([-+]?\\d+\\.?\\d*?)% ([-+]?\\d+\\.?\\d*?)%$");
    private static final Pattern zzf = Pattern.compile("^([-+]?\\d+\\.?\\d*?)px ([-+]?\\d+\\.?\\d*?)px$");
    private static final Pattern zzg = Pattern.compile("^(\\d+) (\\d+)$");
    private static final zzalr zzh = new zzalr(30.0f, 1, 1);

    public zzalt() {
        try {
            XmlPullParserFactory newInstance = XmlPullParserFactory.newInstance();
            this.zzi = newInstance;
            newInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e10) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e10);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00c7, code lost:
        if (r13.equals("s") != false) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long zzc(java.lang.String r13, com.google.android.gms.internal.ads.zzalr r14) throws com.google.android.gms.internal.ads.zzakp {
        /*
            Method dump skipped, instructions count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzalt.zzc(java.lang.String, com.google.android.gms.internal.ads.zzalr):long");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Nullable
    private static Layout.Alignment zzd(String str) {
        char c10;
        String zza2 = zzfuv.zza(str);
        switch (zza2.hashCode()) {
            case -1364013995:
                if (zza2.equals(TtmlNode.CENTER)) {
                    c10 = 4;
                    break;
                }
                c10 = 65535;
                break;
            case 100571:
                if (zza2.equals("end")) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case 3317767:
                if (zza2.equals(TtmlNode.LEFT)) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case 108511772:
                if (zza2.equals(TtmlNode.RIGHT)) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case 109757538:
                if (zza2.equals("start")) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        if (c10 != 0 && c10 != 1) {
            if (c10 != 2 && c10 != 3) {
                if (c10 != 4) {
                    return null;
                }
                return Layout.Alignment.ALIGN_CENTER;
            }
            return Layout.Alignment.ALIGN_OPPOSITE;
        }
        return Layout.Alignment.ALIGN_NORMAL;
    }

    private static zzalw zze(@Nullable zzalw zzalwVar) {
        if (zzalwVar == null) {
            return new zzalw();
        }
        return zzalwVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v16 */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v19 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v20 */
    /* JADX WARN: Type inference failed for: r11v21 */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r11v23 */
    /* JADX WARN: Type inference failed for: r11v24 */
    /* JADX WARN: Type inference failed for: r11v25 */
    /* JADX WARN: Type inference failed for: r11v26 */
    /* JADX WARN: Type inference failed for: r11v27 */
    /* JADX WARN: Type inference failed for: r11v28 */
    /* JADX WARN: Type inference failed for: r11v29 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v30 */
    /* JADX WARN: Type inference failed for: r11v31 */
    /* JADX WARN: Type inference failed for: r11v32 */
    /* JADX WARN: Type inference failed for: r11v33 */
    /* JADX WARN: Type inference failed for: r11v34 */
    /* JADX WARN: Type inference failed for: r11v35 */
    /* JADX WARN: Type inference failed for: r11v36 */
    /* JADX WARN: Type inference failed for: r11v37 */
    /* JADX WARN: Type inference failed for: r11v38 */
    /* JADX WARN: Type inference failed for: r11v39 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v40 */
    /* JADX WARN: Type inference failed for: r11v41 */
    /* JADX WARN: Type inference failed for: r11v42 */
    /* JADX WARN: Type inference failed for: r11v43 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v21 */
    /* JADX WARN: Type inference failed for: r7v23 */
    /* JADX WARN: Type inference failed for: r7v25 */
    /* JADX WARN: Type inference failed for: r7v27 */
    /* JADX WARN: Type inference failed for: r7v29 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v31 */
    /* JADX WARN: Type inference failed for: r7v33 */
    /* JADX WARN: Type inference failed for: r7v34 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v71 */
    /* JADX WARN: Type inference failed for: r7v9 */
    private static zzalw zzf(XmlPullParser xmlPullParser, zzalw zzalwVar) {
        ?? r72;
        Matcher matcher;
        int attributeCount = xmlPullParser.getAttributeCount();
        boolean z10 = false;
        zzalw zzalwVar2 = zzalwVar;
        int i10 = 0;
        while (i10 < attributeCount) {
            String attributeValue = xmlPullParser.getAttributeValue(i10);
            String attributeName = xmlPullParser.getAttributeName(i10);
            ?? r11 = -1;
            r11 = -1;
            r11 = -1;
            r11 = -1;
            r11 = -1;
            ?? r112 = -1;
            r11 = -1;
            r11 = -1;
            ?? r113 = -1;
            r11 = -1;
            r11 = -1;
            r11 = -1;
            r11 = -1;
            r11 = -1;
            r11 = -1;
            ?? r114 = -1;
            r11 = -1;
            r11 = -1;
            ?? r115 = -1;
            r11 = -1;
            r11 = -1;
            r11 = -1;
            switch (attributeName.hashCode()) {
                case -1550943582:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_FONT_STYLE)) {
                        r72 = 6;
                        break;
                    }
                    r72 = -1;
                    break;
                case -1289044182:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_EXTENT)) {
                        r72 = 16;
                        break;
                    }
                    r72 = -1;
                    break;
                case -1224696685:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_FONT_FAMILY)) {
                        r72 = 3;
                        break;
                    }
                    r72 = -1;
                    break;
                case -1065511464:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_TEXT_ALIGN)) {
                        r72 = 7;
                        break;
                    }
                    r72 = -1;
                    break;
                case -1008619738:
                    if (attributeName.equals("origin")) {
                        r72 = 15;
                        break;
                    }
                    r72 = -1;
                    break;
                case -879295043:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_TEXT_DECORATION)) {
                        r72 = 12;
                        break;
                    }
                    r72 = -1;
                    break;
                case -734428249:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_FONT_WEIGHT)) {
                        r72 = 5;
                        break;
                    }
                    r72 = -1;
                    break;
                case 3355:
                    if (attributeName.equals("id")) {
                        r72 = z10;
                        break;
                    }
                    r72 = -1;
                    break;
                case 3511770:
                    if (attributeName.equals("ruby")) {
                        r72 = 10;
                        break;
                    }
                    r72 = -1;
                    break;
                case 94842723:
                    if (attributeName.equals("color")) {
                        r72 = 2;
                        break;
                    }
                    r72 = -1;
                    break;
                case 109403361:
                    if (attributeName.equals("shear")) {
                        r72 = 14;
                        break;
                    }
                    r72 = -1;
                    break;
                case 110138194:
                    if (attributeName.equals("textCombine")) {
                        r72 = 9;
                        break;
                    }
                    r72 = -1;
                    break;
                case 365601008:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_FONT_SIZE)) {
                        r72 = 4;
                        break;
                    }
                    r72 = -1;
                    break;
                case 921125321:
                    if (attributeName.equals("textEmphasis")) {
                        r72 = 13;
                        break;
                    }
                    r72 = -1;
                    break;
                case 1115953443:
                    if (attributeName.equals("rubyPosition")) {
                        r72 = 11;
                        break;
                    }
                    r72 = -1;
                    break;
                case 1287124693:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_BACKGROUND_COLOR)) {
                        r72 = 1;
                        break;
                    }
                    r72 = -1;
                    break;
                case 1754920356:
                    if (attributeName.equals("multiRowAlign")) {
                        r72 = 8;
                        break;
                    }
                    r72 = -1;
                    break;
                default:
                    r72 = -1;
                    break;
            }
            switch (r72) {
                case 0:
                    if (!TtmlNode.TAG_STYLE.equals(xmlPullParser.getName())) {
                        break;
                    } else {
                        zzalwVar2 = zze(zzalwVar2);
                        zzalwVar2.zzt(attributeValue);
                        break;
                    }
                case 1:
                    zzalwVar2 = zze(zzalwVar2);
                    try {
                        zzalwVar2.zzm(zzdl.zzb(attributeValue));
                        break;
                    } catch (IllegalArgumentException unused) {
                        zzea.zzf("TtmlParser", "Failed parsing background value: ".concat(String.valueOf(attributeValue)));
                        break;
                    }
                case 2:
                    zzalwVar2 = zze(zzalwVar2);
                    try {
                        zzalwVar2.zzp(zzdl.zzb(attributeValue));
                        break;
                    } catch (IllegalArgumentException unused2) {
                        zzea.zzf("TtmlParser", "Failed parsing color value: ".concat(String.valueOf(attributeValue)));
                        break;
                    }
                case 3:
                    zzalwVar2 = zze(zzalwVar2);
                    zzalwVar2.zzq(attributeValue);
                    break;
                case 4:
                    try {
                        zzalwVar2 = zze(zzalwVar2);
                        String str = zzex.zza;
                        String[] split = attributeValue.split("\\s+", -1);
                        int length = split.length;
                        if (length == 1) {
                            matcher = zze.matcher(attributeValue);
                        } else if (length == 2) {
                            matcher = zze.matcher(split[1]);
                            zzea.zzf("TtmlParser", "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
                        } else {
                            throw new zzakp("Invalid number of entries for fontSize: " + length + ".");
                        }
                        if (matcher.matches()) {
                            String group = matcher.group(3);
                            if (group != null) {
                                int hashCode = group.hashCode();
                                if (hashCode != 37) {
                                    if (hashCode != 3240) {
                                        if (hashCode == 3592 && group.equals("px")) {
                                            r11 = 0;
                                        }
                                    } else if (group.equals("em")) {
                                        r11 = 1;
                                    }
                                } else if (group.equals("%")) {
                                    r11 = 2;
                                }
                                if (r11 != 0) {
                                    if (r11 != 1) {
                                        if (r11 == 2) {
                                            zzalwVar2.zzs(3);
                                        } else {
                                            throw new zzakp("Invalid unit for fontSize: '" + group + "'.");
                                        }
                                    } else {
                                        zzalwVar2.zzs(2);
                                    }
                                } else {
                                    zzalwVar2.zzs(1);
                                }
                                String group2 = matcher.group(1);
                                if (group2 != null) {
                                    zzalwVar2.zzr(Float.parseFloat(group2));
                                    break;
                                } else {
                                    throw null;
                                }
                            } else {
                                throw null;
                            }
                        } else {
                            throw new zzakp("Invalid expression for fontSize: '" + attributeValue + "'.");
                        }
                    } catch (zzakp unused3) {
                        zzea.zzf("TtmlParser", "Failed parsing fontSize value: ".concat(String.valueOf(attributeValue)));
                        break;
                    }
                case 5:
                    zzalwVar2 = zze(zzalwVar2);
                    zzalwVar2.zzn(TtmlNode.BOLD.equalsIgnoreCase(attributeValue));
                    break;
                case 6:
                    zzalwVar2 = zze(zzalwVar2);
                    zzalwVar2.zzu(TtmlNode.ITALIC.equalsIgnoreCase(attributeValue));
                    break;
                case 7:
                    zzalwVar2 = zze(zzalwVar2);
                    zzalwVar2.zzB(zzd(attributeValue));
                    break;
                case 8:
                    zzalwVar2 = zze(zzalwVar2);
                    zzalwVar2.zzw(zzd(attributeValue));
                    break;
                case 9:
                    String zza2 = zzfuv.zza(attributeValue);
                    int hashCode2 = zza2.hashCode();
                    if (hashCode2 != 96673) {
                        if (hashCode2 == 3387192 && zza2.equals(DevicePublicKeyStringDef.NONE)) {
                            r115 = z10;
                        }
                    } else if (zza2.equals(Module.ALL)) {
                        r115 = 1;
                    }
                    if (r115 != 0) {
                        if (r115 == 1) {
                            zzalwVar2 = zze(zzalwVar2);
                            zzalwVar2.zzC(true);
                            break;
                        } else {
                            break;
                        }
                    } else {
                        zzalwVar2 = zze(zzalwVar2);
                        zzalwVar2.zzC(z10);
                        break;
                    }
                case 10:
                    String zza3 = zzfuv.zza(attributeValue);
                    switch (zza3.hashCode()) {
                        case -618561360:
                            if (zza3.equals("baseContainer")) {
                                r114 = 2;
                                break;
                            }
                            break;
                        case -410956671:
                            if (zza3.equals("container")) {
                                r114 = z10;
                                break;
                            }
                            break;
                        case -250518009:
                            if (zza3.equals("delimiter")) {
                                r114 = 5;
                                break;
                            }
                            break;
                        case -136074796:
                            if (zza3.equals("textContainer")) {
                                r114 = 4;
                                break;
                            }
                            break;
                        case 3016401:
                            if (zza3.equals("base")) {
                                r114 = 1;
                                break;
                            }
                            break;
                        case 3556653:
                            if (zza3.equals(MimeTypes.BASE_TYPE_TEXT)) {
                                r114 = 3;
                                break;
                            }
                            break;
                    }
                    if (r114 != 0) {
                        if (r114 != 1 && r114 != 2) {
                            if (r114 != 3 && r114 != 4) {
                                if (r114 == 5) {
                                    zzalwVar2 = zze(zzalwVar2);
                                    zzalwVar2.zzz(4);
                                    break;
                                } else {
                                    break;
                                }
                            } else {
                                zzalwVar2 = zze(zzalwVar2);
                                zzalwVar2.zzz(3);
                                break;
                            }
                        } else {
                            zzalwVar2 = zze(zzalwVar2);
                            zzalwVar2.zzz(2);
                            break;
                        }
                    } else {
                        zzalwVar2 = zze(zzalwVar2);
                        zzalwVar2.zzz(1);
                        break;
                    }
                case 11:
                    String zza4 = zzfuv.zza(attributeValue);
                    int hashCode3 = zza4.hashCode();
                    if (hashCode3 != -1392885889) {
                        if (hashCode3 == 92734940 && zza4.equals("after")) {
                            r113 = 1;
                        }
                    } else if (zza4.equals("before")) {
                        r113 = z10;
                    }
                    if (r113 != 0) {
                        if (r113 == 1) {
                            zzalwVar2 = zze(zzalwVar2);
                            zzalwVar2.zzy(2);
                            break;
                        } else {
                            break;
                        }
                    } else {
                        zzalwVar2 = zze(zzalwVar2);
                        zzalwVar2.zzy(1);
                        break;
                    }
                    break;
                case 12:
                    String zza5 = zzfuv.zza(attributeValue);
                    switch (zza5.hashCode()) {
                        case -1461280213:
                            if (zza5.equals(TtmlNode.NO_UNDERLINE)) {
                                r112 = 3;
                                break;
                            }
                            break;
                        case -1026963764:
                            if (zza5.equals(TtmlNode.UNDERLINE)) {
                                r112 = 2;
                                break;
                            }
                            break;
                        case 913457136:
                            if (zza5.equals(TtmlNode.NO_LINETHROUGH)) {
                                r112 = 1;
                                break;
                            }
                            break;
                        case 1679736913:
                            if (zza5.equals(TtmlNode.LINETHROUGH)) {
                                r112 = z10;
                                break;
                            }
                            break;
                    }
                    if (r112 != 0) {
                        if (r112 != 1) {
                            if (r112 != 2) {
                                if (r112 == 3) {
                                    zzalwVar2 = zze(zzalwVar2);
                                    zzalwVar2.zzE(z10);
                                    break;
                                } else {
                                    break;
                                }
                            } else {
                                zzalwVar2 = zze(zzalwVar2);
                                zzalwVar2.zzE(true);
                                break;
                            }
                        } else {
                            zzalwVar2 = zze(zzalwVar2);
                            zzalwVar2.zzv(z10);
                            break;
                        }
                    } else {
                        zzalwVar2 = zze(zzalwVar2);
                        zzalwVar2.zzv(true);
                        break;
                    }
                case 13:
                    zzalwVar2 = zze(zzalwVar2);
                    zzalwVar2.zzD(zzalp.zza(attributeValue));
                    break;
                case 14:
                    zzalw zze2 = zze(zzalwVar2);
                    Matcher matcher2 = zza.matcher(attributeValue);
                    float f10 = Float.MAX_VALUE;
                    if (!matcher2.matches()) {
                        zzea.zzf("TtmlParser", "Invalid value for shear: ".concat(String.valueOf(attributeValue)));
                    } else {
                        try {
                            String group3 = matcher2.group(1);
                            if (group3 != null) {
                                f10 = Math.min(100.0f, Math.max(-100.0f, Float.parseFloat(group3)));
                            } else {
                                throw null;
                                break;
                            }
                        } catch (NumberFormatException e10) {
                            zzea.zzg("TtmlParser", "Failed to parse shear: ".concat(String.valueOf(attributeValue)), e10);
                        }
                    }
                    zze2.zzA(f10);
                    zzalwVar2 = zze2;
                    break;
                case 15:
                    zzalwVar2 = zze(zzalwVar2);
                    zzalwVar2.zzx(attributeValue);
                    break;
                case 16:
                    zzalwVar2 = zze(zzalwVar2);
                    zzalwVar2.zzo(attributeValue);
                    break;
            }
            i10++;
            z10 = false;
        }
        return zzalwVar2;
    }

    private static String[] zzg(String str) {
        String trim = str.trim();
        if (trim.isEmpty()) {
            return new String[0];
        }
        String str2 = zzex.zza;
        return trim.split("\\s+", -1);
    }

    @Override // com.google.android.gms.internal.ads.zzakt
    public final void zza(byte[] bArr, int i10, int i11, zzaks zzaksVar, zzdn zzdnVar) {
        zzakn.zza(zzb(bArr, i10, i11), zzaksVar, zzdnVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Can't wrap try/catch for region: R(9:279|(6:280|281|282|(6:284|285|286|(2:291|(2:293|(3:295|(2:297|(2:299|(3:304|305|(1:307)))(2:314|(1:316)))(2:317|(1:319))|301)(3:320|321|322))(1:326))(1:327)|302|303)|347|348)|(4:(5:350|351|352|353|(4:355|(1:357)(1:394)|358|(1:360)(9:393|362|(2:364|(1:366)(2:(5:381|382|383|384|(1:386))(1:391)|387))(1:392)|367|368|369|370|371|(1:373)))(1:395))(1:399)|370|371|(0))|361|362|(0)(0)|367|368|369) */
    /* JADX WARN: Code restructure failed: missing block: B:416:0x079a, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:417:0x079b, code lost:
        r4 = r26;
     */
    /* JADX WARN: Removed duplicated region for block: B:127:0x02bb A[Catch: IOException -> 0x00a3, XmlPullParserException -> 0x00a7, LOOP:1: B:127:0x02bb->B:306:0x05fe, LOOP_START, PHI: r3 r6 r8 r10 r30 r31 r32 r33 r34 r37 
      PHI: (r3v28 com.google.android.gms.internal.ads.zzalr) = (r3v11 com.google.android.gms.internal.ads.zzalr), (r3v65 com.google.android.gms.internal.ads.zzalr) binds: [B:126:0x02b9, B:306:0x05fe] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r6v12 java.lang.String) = (r6v9 java.lang.String), (r6v43 java.lang.String) binds: [B:126:0x02b9, B:306:0x05fe] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r8v11 java.lang.String) = (r8v1 java.lang.String), (r8v36 java.lang.String) binds: [B:126:0x02b9, B:306:0x05fe] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r10v44 java.lang.String) = (r10v4 java.lang.String), (r10v51 java.lang.String) binds: [B:126:0x02b9, B:306:0x05fe] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r30v1 java.util.HashMap) = (r30v0 java.util.HashMap), (r30v2 java.util.HashMap) binds: [B:126:0x02b9, B:306:0x05fe] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r31v2 java.lang.String) = (r31v1 java.lang.String), (r31v16 java.lang.String) binds: [B:126:0x02b9, B:306:0x05fe] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r32v10 java.lang.String) = (r32v7 java.lang.String), (r32v26 java.lang.String) binds: [B:126:0x02b9, B:306:0x05fe] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r33v6 java.lang.String) = (r33v3 java.lang.String), (r33v25 java.lang.String) binds: [B:126:0x02b9, B:306:0x05fe] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r34v10 java.util.HashMap) = (r34v7 java.util.HashMap), (r34v22 java.util.HashMap) binds: [B:126:0x02b9, B:306:0x05fe] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r37v8 java.lang.String) = (r37v1 java.lang.String), (r37v12 java.lang.String) binds: [B:126:0x02b9, B:306:0x05fe] A[DONT_GENERATE, DONT_INLINE], TryCatch #21 {IOException -> 0x00a3, XmlPullParserException -> 0x00a7, blocks: (B:3:0x0010, B:5:0x0071, B:7:0x0079, B:10:0x0086, B:13:0x0094, B:15:0x009c, B:22:0x00ae, B:25:0x00ba, B:29:0x00cd, B:31:0x00e9, B:33:0x00f3, B:34:0x00f7, B:36:0x0103, B:38:0x010e, B:72:0x01aa, B:92:0x020b, B:95:0x0219, B:97:0x021f, B:99:0x0227, B:101:0x022f, B:103:0x0237, B:105:0x023f, B:107:0x0247, B:109:0x024d, B:111:0x0255, B:113:0x025d, B:115:0x0263, B:117:0x0269, B:119:0x026f, B:121:0x0277, B:124:0x0280, B:444:0x0826, B:125:0x02b5, B:127:0x02bb, B:129:0x02c4, B:131:0x02d3, B:133:0x02de, B:135:0x02f2, B:137:0x02f8, B:303:0x05ee, B:140:0x030f, B:142:0x0317, B:144:0x031d, B:146:0x0326, B:148:0x032e, B:151:0x033f, B:155:0x0359, B:301:0x05e4, B:160:0x0376, B:162:0x037e, B:164:0x0384, B:166:0x038c, B:168:0x0392, B:171:0x03a9, B:173:0x03af, B:175:0x03bd, B:205:0x0464, B:207:0x046a, B:209:0x0470, B:211:0x0478, B:213:0x047e, B:216:0x0493, B:218:0x0499, B:220:0x04a7, B:249:0x053a, B:251:0x0542, B:271:0x0588, B:273:0x0590, B:299:0x05d7, B:222:0x04b9, B:224:0x04bb, B:225:0x04bc, B:228:0x04ce, B:231:0x04d8, B:234:0x04e5, B:236:0x04eb, B:238:0x04f2, B:240:0x04f8, B:242:0x050c, B:246:0x0514, B:245:0x0513, B:247:0x0520, B:178:0x03d5, B:180:0x03d7, B:181:0x03d8, B:182:0x03e9, B:185:0x03f5, B:189:0x040e, B:191:0x0414, B:193:0x041b, B:195:0x0421, B:197:0x0433, B:201:0x043b, B:200:0x043a, B:203:0x0445, B:308:0x0624, B:311:0x0646, B:345:0x06a2, B:347:0x06aa, B:420:0x07a6, B:353:0x06c1, B:356:0x06cb, B:360:0x06d9, B:363:0x06e5, B:364:0x06ed, B:372:0x0707, B:404:0x0774, B:406:0x0782, B:408:0x0787, B:395:0x075b, B:75:0x01b3, B:77:0x01bf, B:80:0x01ca, B:82:0x01d0, B:84:0x01db, B:86:0x01e8, B:88:0x01ea, B:89:0x01eb, B:42:0x0127, B:45:0x0135, B:48:0x013e, B:50:0x0144, B:52:0x014b, B:54:0x0151, B:60:0x0167, B:62:0x016e, B:71:0x01a1, B:67:0x0193, B:70:0x01a0, B:424:0x07d2, B:426:0x07df, B:429:0x07e3, B:431:0x07ed, B:433:0x07f7, B:437:0x0803, B:435:0x0800, B:440:0x081a, B:443:0x0823, B:448:0x0846), top: B:488:0x0010, inners: #7, #10, #19 }] */
    /* JADX WARN: Removed duplicated region for block: B:265:0x056d  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x057c  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x0590 A[Catch: IOException -> 0x00a3, XmlPullParserException -> 0x00a7, TRY_LEAVE, TryCatch #21 {IOException -> 0x00a3, XmlPullParserException -> 0x00a7, blocks: (B:3:0x0010, B:5:0x0071, B:7:0x0079, B:10:0x0086, B:13:0x0094, B:15:0x009c, B:22:0x00ae, B:25:0x00ba, B:29:0x00cd, B:31:0x00e9, B:33:0x00f3, B:34:0x00f7, B:36:0x0103, B:38:0x010e, B:72:0x01aa, B:92:0x020b, B:95:0x0219, B:97:0x021f, B:99:0x0227, B:101:0x022f, B:103:0x0237, B:105:0x023f, B:107:0x0247, B:109:0x024d, B:111:0x0255, B:113:0x025d, B:115:0x0263, B:117:0x0269, B:119:0x026f, B:121:0x0277, B:124:0x0280, B:444:0x0826, B:125:0x02b5, B:127:0x02bb, B:129:0x02c4, B:131:0x02d3, B:133:0x02de, B:135:0x02f2, B:137:0x02f8, B:303:0x05ee, B:140:0x030f, B:142:0x0317, B:144:0x031d, B:146:0x0326, B:148:0x032e, B:151:0x033f, B:155:0x0359, B:301:0x05e4, B:160:0x0376, B:162:0x037e, B:164:0x0384, B:166:0x038c, B:168:0x0392, B:171:0x03a9, B:173:0x03af, B:175:0x03bd, B:205:0x0464, B:207:0x046a, B:209:0x0470, B:211:0x0478, B:213:0x047e, B:216:0x0493, B:218:0x0499, B:220:0x04a7, B:249:0x053a, B:251:0x0542, B:271:0x0588, B:273:0x0590, B:299:0x05d7, B:222:0x04b9, B:224:0x04bb, B:225:0x04bc, B:228:0x04ce, B:231:0x04d8, B:234:0x04e5, B:236:0x04eb, B:238:0x04f2, B:240:0x04f8, B:242:0x050c, B:246:0x0514, B:245:0x0513, B:247:0x0520, B:178:0x03d5, B:180:0x03d7, B:181:0x03d8, B:182:0x03e9, B:185:0x03f5, B:189:0x040e, B:191:0x0414, B:193:0x041b, B:195:0x0421, B:197:0x0433, B:201:0x043b, B:200:0x043a, B:203:0x0445, B:308:0x0624, B:311:0x0646, B:345:0x06a2, B:347:0x06aa, B:420:0x07a6, B:353:0x06c1, B:356:0x06cb, B:360:0x06d9, B:363:0x06e5, B:364:0x06ed, B:372:0x0707, B:404:0x0774, B:406:0x0782, B:408:0x0787, B:395:0x075b, B:75:0x01b3, B:77:0x01bf, B:80:0x01ca, B:82:0x01d0, B:84:0x01db, B:86:0x01e8, B:88:0x01ea, B:89:0x01eb, B:42:0x0127, B:45:0x0135, B:48:0x013e, B:50:0x0144, B:52:0x014b, B:54:0x0151, B:60:0x0167, B:62:0x016e, B:71:0x01a1, B:67:0x0193, B:70:0x01a0, B:424:0x07d2, B:426:0x07df, B:429:0x07e3, B:431:0x07ed, B:433:0x07f7, B:437:0x0803, B:435:0x0800, B:440:0x081a, B:443:0x0823, B:448:0x0846), top: B:488:0x0010, inners: #7, #10, #19 }] */
    /* JADX WARN: Removed duplicated region for block: B:292:0x05c9  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x05e4 A[Catch: IOException -> 0x00a3, XmlPullParserException -> 0x00a7, TryCatch #21 {IOException -> 0x00a3, XmlPullParserException -> 0x00a7, blocks: (B:3:0x0010, B:5:0x0071, B:7:0x0079, B:10:0x0086, B:13:0x0094, B:15:0x009c, B:22:0x00ae, B:25:0x00ba, B:29:0x00cd, B:31:0x00e9, B:33:0x00f3, B:34:0x00f7, B:36:0x0103, B:38:0x010e, B:72:0x01aa, B:92:0x020b, B:95:0x0219, B:97:0x021f, B:99:0x0227, B:101:0x022f, B:103:0x0237, B:105:0x023f, B:107:0x0247, B:109:0x024d, B:111:0x0255, B:113:0x025d, B:115:0x0263, B:117:0x0269, B:119:0x026f, B:121:0x0277, B:124:0x0280, B:444:0x0826, B:125:0x02b5, B:127:0x02bb, B:129:0x02c4, B:131:0x02d3, B:133:0x02de, B:135:0x02f2, B:137:0x02f8, B:303:0x05ee, B:140:0x030f, B:142:0x0317, B:144:0x031d, B:146:0x0326, B:148:0x032e, B:151:0x033f, B:155:0x0359, B:301:0x05e4, B:160:0x0376, B:162:0x037e, B:164:0x0384, B:166:0x038c, B:168:0x0392, B:171:0x03a9, B:173:0x03af, B:175:0x03bd, B:205:0x0464, B:207:0x046a, B:209:0x0470, B:211:0x0478, B:213:0x047e, B:216:0x0493, B:218:0x0499, B:220:0x04a7, B:249:0x053a, B:251:0x0542, B:271:0x0588, B:273:0x0590, B:299:0x05d7, B:222:0x04b9, B:224:0x04bb, B:225:0x04bc, B:228:0x04ce, B:231:0x04d8, B:234:0x04e5, B:236:0x04eb, B:238:0x04f2, B:240:0x04f8, B:242:0x050c, B:246:0x0514, B:245:0x0513, B:247:0x0520, B:178:0x03d5, B:180:0x03d7, B:181:0x03d8, B:182:0x03e9, B:185:0x03f5, B:189:0x040e, B:191:0x0414, B:193:0x041b, B:195:0x0421, B:197:0x0433, B:201:0x043b, B:200:0x043a, B:203:0x0445, B:308:0x0624, B:311:0x0646, B:345:0x06a2, B:347:0x06aa, B:420:0x07a6, B:353:0x06c1, B:356:0x06cb, B:360:0x06d9, B:363:0x06e5, B:364:0x06ed, B:372:0x0707, B:404:0x0774, B:406:0x0782, B:408:0x0787, B:395:0x075b, B:75:0x01b3, B:77:0x01bf, B:80:0x01ca, B:82:0x01d0, B:84:0x01db, B:86:0x01e8, B:88:0x01ea, B:89:0x01eb, B:42:0x0127, B:45:0x0135, B:48:0x013e, B:50:0x0144, B:52:0x014b, B:54:0x0151, B:60:0x0167, B:62:0x016e, B:71:0x01a1, B:67:0x0193, B:70:0x01a0, B:424:0x07d2, B:426:0x07df, B:429:0x07e3, B:431:0x07ed, B:433:0x07f7, B:437:0x0803, B:435:0x0800, B:440:0x081a, B:443:0x0823, B:448:0x0846), top: B:488:0x0010, inners: #7, #10, #19 }] */
    /* JADX WARN: Removed duplicated region for block: B:302:0x05ec  */
    /* JADX WARN: Removed duplicated region for block: B:306:0x05fe A[LOOP:1: B:127:0x02bb->B:306:0x05fe, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:307:0x0614  */
    /* JADX WARN: Removed duplicated region for block: B:390:0x074a  */
    /* JADX WARN: Removed duplicated region for block: B:403:0x076f  */
    /* JADX WARN: Removed duplicated region for block: B:408:0x0787 A[Catch: IOException -> 0x00a3, XmlPullParserException -> 0x00a7, zzakp -> 0x078b, TRY_LEAVE, TryCatch #18 {zzakp -> 0x078b, blocks: (B:406:0x0782, B:408:0x0787), top: B:485:0x0782 }] */
    /* JADX WARN: Removed duplicated region for block: B:508:0x05f4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01b3 A[Catch: IOException -> 0x00a3, XmlPullParserException -> 0x00a7, TryCatch #21 {IOException -> 0x00a3, XmlPullParserException -> 0x00a7, blocks: (B:3:0x0010, B:5:0x0071, B:7:0x0079, B:10:0x0086, B:13:0x0094, B:15:0x009c, B:22:0x00ae, B:25:0x00ba, B:29:0x00cd, B:31:0x00e9, B:33:0x00f3, B:34:0x00f7, B:36:0x0103, B:38:0x010e, B:72:0x01aa, B:92:0x020b, B:95:0x0219, B:97:0x021f, B:99:0x0227, B:101:0x022f, B:103:0x0237, B:105:0x023f, B:107:0x0247, B:109:0x024d, B:111:0x0255, B:113:0x025d, B:115:0x0263, B:117:0x0269, B:119:0x026f, B:121:0x0277, B:124:0x0280, B:444:0x0826, B:125:0x02b5, B:127:0x02bb, B:129:0x02c4, B:131:0x02d3, B:133:0x02de, B:135:0x02f2, B:137:0x02f8, B:303:0x05ee, B:140:0x030f, B:142:0x0317, B:144:0x031d, B:146:0x0326, B:148:0x032e, B:151:0x033f, B:155:0x0359, B:301:0x05e4, B:160:0x0376, B:162:0x037e, B:164:0x0384, B:166:0x038c, B:168:0x0392, B:171:0x03a9, B:173:0x03af, B:175:0x03bd, B:205:0x0464, B:207:0x046a, B:209:0x0470, B:211:0x0478, B:213:0x047e, B:216:0x0493, B:218:0x0499, B:220:0x04a7, B:249:0x053a, B:251:0x0542, B:271:0x0588, B:273:0x0590, B:299:0x05d7, B:222:0x04b9, B:224:0x04bb, B:225:0x04bc, B:228:0x04ce, B:231:0x04d8, B:234:0x04e5, B:236:0x04eb, B:238:0x04f2, B:240:0x04f8, B:242:0x050c, B:246:0x0514, B:245:0x0513, B:247:0x0520, B:178:0x03d5, B:180:0x03d7, B:181:0x03d8, B:182:0x03e9, B:185:0x03f5, B:189:0x040e, B:191:0x0414, B:193:0x041b, B:195:0x0421, B:197:0x0433, B:201:0x043b, B:200:0x043a, B:203:0x0445, B:308:0x0624, B:311:0x0646, B:345:0x06a2, B:347:0x06aa, B:420:0x07a6, B:353:0x06c1, B:356:0x06cb, B:360:0x06d9, B:363:0x06e5, B:364:0x06ed, B:372:0x0707, B:404:0x0774, B:406:0x0782, B:408:0x0787, B:395:0x075b, B:75:0x01b3, B:77:0x01bf, B:80:0x01ca, B:82:0x01d0, B:84:0x01db, B:86:0x01e8, B:88:0x01ea, B:89:0x01eb, B:42:0x0127, B:45:0x0135, B:48:0x013e, B:50:0x0144, B:52:0x014b, B:54:0x0151, B:60:0x0167, B:62:0x016e, B:71:0x01a1, B:67:0x0193, B:70:0x01a0, B:424:0x07d2, B:426:0x07df, B:429:0x07e3, B:431:0x07ed, B:433:0x07f7, B:437:0x0803, B:435:0x0800, B:440:0x081a, B:443:0x0823, B:448:0x0846), top: B:488:0x0010, inners: #7, #10, #19 }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0219 A[Catch: IOException -> 0x00a3, XmlPullParserException -> 0x00a7, TRY_ENTER, TryCatch #21 {IOException -> 0x00a3, XmlPullParserException -> 0x00a7, blocks: (B:3:0x0010, B:5:0x0071, B:7:0x0079, B:10:0x0086, B:13:0x0094, B:15:0x009c, B:22:0x00ae, B:25:0x00ba, B:29:0x00cd, B:31:0x00e9, B:33:0x00f3, B:34:0x00f7, B:36:0x0103, B:38:0x010e, B:72:0x01aa, B:92:0x020b, B:95:0x0219, B:97:0x021f, B:99:0x0227, B:101:0x022f, B:103:0x0237, B:105:0x023f, B:107:0x0247, B:109:0x024d, B:111:0x0255, B:113:0x025d, B:115:0x0263, B:117:0x0269, B:119:0x026f, B:121:0x0277, B:124:0x0280, B:444:0x0826, B:125:0x02b5, B:127:0x02bb, B:129:0x02c4, B:131:0x02d3, B:133:0x02de, B:135:0x02f2, B:137:0x02f8, B:303:0x05ee, B:140:0x030f, B:142:0x0317, B:144:0x031d, B:146:0x0326, B:148:0x032e, B:151:0x033f, B:155:0x0359, B:301:0x05e4, B:160:0x0376, B:162:0x037e, B:164:0x0384, B:166:0x038c, B:168:0x0392, B:171:0x03a9, B:173:0x03af, B:175:0x03bd, B:205:0x0464, B:207:0x046a, B:209:0x0470, B:211:0x0478, B:213:0x047e, B:216:0x0493, B:218:0x0499, B:220:0x04a7, B:249:0x053a, B:251:0x0542, B:271:0x0588, B:273:0x0590, B:299:0x05d7, B:222:0x04b9, B:224:0x04bb, B:225:0x04bc, B:228:0x04ce, B:231:0x04d8, B:234:0x04e5, B:236:0x04eb, B:238:0x04f2, B:240:0x04f8, B:242:0x050c, B:246:0x0514, B:245:0x0513, B:247:0x0520, B:178:0x03d5, B:180:0x03d7, B:181:0x03d8, B:182:0x03e9, B:185:0x03f5, B:189:0x040e, B:191:0x0414, B:193:0x041b, B:195:0x0421, B:197:0x0433, B:201:0x043b, B:200:0x043a, B:203:0x0445, B:308:0x0624, B:311:0x0646, B:345:0x06a2, B:347:0x06aa, B:420:0x07a6, B:353:0x06c1, B:356:0x06cb, B:360:0x06d9, B:363:0x06e5, B:364:0x06ed, B:372:0x0707, B:404:0x0774, B:406:0x0782, B:408:0x0787, B:395:0x075b, B:75:0x01b3, B:77:0x01bf, B:80:0x01ca, B:82:0x01d0, B:84:0x01db, B:86:0x01e8, B:88:0x01ea, B:89:0x01eb, B:42:0x0127, B:45:0x0135, B:48:0x013e, B:50:0x0144, B:52:0x014b, B:54:0x0151, B:60:0x0167, B:62:0x016e, B:71:0x01a1, B:67:0x0193, B:70:0x01a0, B:424:0x07d2, B:426:0x07df, B:429:0x07e3, B:431:0x07ed, B:433:0x07f7, B:437:0x0803, B:435:0x0800, B:440:0x081a, B:443:0x0823, B:448:0x0846), top: B:488:0x0010, inners: #7, #10, #19 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzako zzb(byte[] r50, int r51, int r52) {
        /*
            Method dump skipped, instructions count: 2162
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzalt.zzb(byte[], int, int):com.google.android.gms.internal.ads.zzako");
    }
}
