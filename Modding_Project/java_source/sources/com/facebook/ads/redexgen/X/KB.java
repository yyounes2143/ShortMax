package com.facebook.ads.redexgen.X;

import android.graphics.Color;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.model.VideoRef;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.ByteCompanionObject;
/* loaded from: assets/audience_network.dex */
public abstract class KB {
    public static byte[] A00;
    public static String[] A01 = {"6VJGxYRVGzkOFylAWqo", "TQDRStRjVTcp84EAqriMHD1W", "Y0YMWliml1c9R0RakThzWHnpZrTCSrBu", "hjS3TiOTsIfHHkhXtOFrFHFAaycKEbQY", "GvjOo5wC83Psjizly91M8Dr7lGNbFkes", "VFbjP0ZwmY6IK0pKGb7V8NSJj5u1SgyV", "T0F9FjreghpLds1JHOV1Zh8xCqpA0ysb", "F9ZBXP7xE9Rr53rKOaE"};
    public static final Pattern A02;
    public static final Map<String, Integer> A03;
    public static final Map<String, Integer> A04;
    public static final Pattern A05;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 5 out of bounds for length 5
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    public static int A06(List<C1496Jz> list, String str, K7 k72) {
        List<K8> A0E = A0E(list, str, k72);
        for (int i10 = 0; i10 < A0E.size(); i10++) {
            C1496Jz c1496Jz = A0E.get(i10).A01;
            if (c1496Jz.A07() != -1) {
                return c1496Jz.A07();
            }
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x007e, code lost:
        if (r10 != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0080, code lost:
        r0 = r4 - 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0091, code lost:
        if (r10 != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0094, code lost:
        r0 = r4 - 1;
     */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 19 out of bounds for length 14
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.text.SpannedString A07(java.lang.String r11, java.lang.String r12, java.util.List<com.facebook.ads.redexgen.X.C1496Jz> r13) {
        /*
            Method dump skipped, instructions count: 402
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.KB.A07(java.lang.String, java.lang.String, java.util.List):android.text.SpannedString");
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 6 out of bounds for length 6
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    public static K3 A0A(C4J c4j, List<C1496Jz> list) {
        String A0T = c4j.A0T();
        if (A0T == null) {
            return null;
        }
        Matcher matcher = A02.matcher(A0T);
        if (matcher.matches()) {
            return A0B(null, matcher, c4j, list);
        }
        String A0T2 = c4j.A0T();
        if (A0T2 == null) {
            return null;
        }
        Matcher matcher2 = A02.matcher(A0T2);
        if (matcher2.matches()) {
            return A0B(A0T.trim(), matcher2, c4j, list);
        }
        return null;
    }

    public static String A0C(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 6);
        }
        return new String(copyOfRange);
    }

    public static void A0F() {
        A00 = new byte[]{81, 0, 85, 68, 48, 63, 71, 83, 69, 86, 68, 48, 63, 71, 69, 0, 106, 118, 51, 20, 12, 27, 22, 19, 30, 90, 93, 12, 31, 8, 14, 19, 25, 27, 22, 93, 90, 12, 27, 22, 15, 31, 64, 90, 63, 24, 0, 23, 26, 31, 18, 86, 23, 26, 31, 17, 24, 27, 19, 24, 2, 86, 0, 23, 26, 3, 19, 76, 86, 82, 117, 109, 122, 119, 114, ByteCompanionObject.MAX_VALUE, 59, 122, 117, 120, 115, 116, 105, 59, 109, 122, 119, 110, 126, 33, 59, 46, 22, 20, 13, 13, 20, 19, 26, 93, 31, 28, 25, 93, 30, 8, 24, 93, 14, 24, 9, 9, 20, 19, 26, 71, 93, 63, 7, 5, 28, 28, 5, 2, 11, 76, 15, 25, 9, 76, 27, 5, 24, 4, 76, 14, 13, 8, 76, 4, 9, 13, 8, 9, 30, 86, 76, 53, 14, 11, 14, 15, 23, 14, 64, 3, 21, 5, 64, 19, 5, 20, 20, 9, 14, 7, 64, 10, 56, 63, 43, 41, 41, 30, 40, 56, 13, 60, 47, 46, 56, 47, 40, 83, 47, 93, 46, 123, 13, 121, 118, 14, 12, 121, 86, 14, 8, 8, 27, 121, 86, 14, 13, 121, 118, 14, 12, 13, 11, 15, 12, 26, 1, 81, 92, 89, 87, 94, 10, 6, 27, 45, 93, 88, 96, 93, 83, 94, 92, 84, 4, 1, 57, 4, 10, 19, 3, 119, 114, 74, 118, 108, 116, 123, 118, 115, 75, 120, 125, 121, 113, 7, 2, 58, 8, 4, 2, 0, 11, 17, 4, 39, 34, 26, 55, 32, 33, 64, 69, 125, 85, 74, 75, 86, 71, 91, 94, 102, 64, 92, 85, 85, 86, 78, 6, 8, 5, 7, 15, 15, 1, 24, 8, 7, 101, 99, 104, 114, 99, 116, 7, 29, 5, 10, 117, 126, 116, 65, 82, 0, 3, 13, 4, 5, 24, 3, 4, 13, 74, 31, 4, 25, 31, 26, 26, 5, 24, 30, 15, 14, 74, 15, 4, 30, 3, 30, 19, 80, 74, 77, 76, 90, 87, 88, 81, 69, 76, 79, 93, 107, 110, 106, 98, 65, 68, 67, 72, 35, 38, 33, 42, 98, 35, 42, 41, 59, 113, 116, 115, 120, 48, 111, 116, 122, 117, 105, 106, 116, 113, 105, 79, 67, 69, 71, 76, 86, 67, 5, 1, 12, 12, 4, 13, 53, 57, 40, 43, 29, 2, 30, 4, 25, 4, 2, 3, 73, 94, 95, 84, 79, 65, 78, 82, 37, 59, 69, 67, 7, 0, 23, 12, 86, 76, 95, 64, 0, 7, 18, 1, 7, 110, 124, 44, 63, 40, 46, 51, 57, 59, 54, 68, 91, 90, 71, 86, 52, 40, 33, 33, 34, 58};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 19 out of bounds for length 15
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    public static void A0H(SpannableStringBuilder spannableStringBuilder, String str, K7 k72, List<K6> list, List<C1496Jz> list2) {
        K7 k73;
        K7 k74;
        K7 k75;
        int i10;
        int A06 = A06(list2, str, k72);
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.addAll(list);
        Collections.sort(arrayList, K6.A03());
        int i11 = 0;
        int i12 = k72.A00;
        for (int i13 = 0; i13 < arrayList.size(); i13++) {
            k73 = ((K6) arrayList.get(i13)).A01;
            if (A0C(415, 2, 49).equals(k73.A01)) {
                K6 k62 = (K6) arrayList.get(i13);
                k74 = k62.A01;
                int A002 = A00(A06(list2, str, k74), A06, 1);
                k75 = k62.A01;
                int i14 = k75.A00 - i11;
                i10 = k62.A00;
                int i15 = i10 - i11;
                CharSequence subSequence = spannableStringBuilder.subSequence(i14, i15);
                spannableStringBuilder.delete(i14, i15);
                spannableStringBuilder.setSpan(new C2740nv(subSequence.toString(), A002), i12, i14, 33);
                i11 += subSequence.length();
                i12 = i14;
            }
        }
    }

    static {
        A0F();
        A02 = Pattern.compile(A0C(187, 26, 35));
        A05 = Pattern.compile(A0C(3, 12, 106));
        HashMap hashMap = new HashMap();
        hashMap.put(A0C(TTVideoEngineInterface.PLAYER_OPTION_AUDIO_PROCESSOR_ADDR, 5, 53), Integer.valueOf(Color.rgb(255, 255, 255)));
        hashMap.put(A0C(349, 4, 1), Integer.valueOf(Color.rgb(0, 255, 0)));
        hashMap.put(A0C(300, 4, 98), Integer.valueOf(Color.rgb(0, 255, 255)));
        hashMap.put(A0C(405, 3, 61), Integer.valueOf(Color.rgb(255, 0, 0)));
        hashMap.put(A0C(445, 6, 75), Integer.valueOf(Color.rgb(255, 255, 0)));
        hashMap.put(A0C(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_STALL_COUNTER, 7, 36), Integer.valueOf(Color.rgb(255, 0, 255)));
        hashMap.put(A0C(MediaPlayer.MEDIA_PLAYER_OPTION_READ_CACHE_MODE, 4, 107), Integer.valueOf(Color.rgb(0, 0, 255)));
        hashMap.put(A0C(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_VSYNC_HELPER, 5, 98), Integer.valueOf(Color.rgb(0, 0, 0)));
        Map<String, Integer> defaultColors = Collections.unmodifiableMap(hashMap);
        A04 = defaultColors;
        HashMap hashMap2 = new HashMap();
        hashMap2.put(A0C(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SAVED_HOST_TIME, 8, 36), Integer.valueOf(Color.rgb(255, 255, 255)));
        hashMap2.put(A0C(244, 7, 18), Integer.valueOf(Color.rgb(0, 255, 0)));
        hashMap2.put(A0C(VideoRef.VALUE_VIDEO_REF_PALLAS_VID_LABELS, 7, 19), Integer.valueOf(Color.rgb(0, 255, 255)));
        hashMap2.put(A0C(MediaPlayer.MEDIA_PLAYER_OPTION_SET_RADIO_MODE, 6, 67), Integer.valueOf(Color.rgb(255, 0, 0)));
        hashMap2.put(A0C(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_RES_FINSIH_TIME, 9, 63), Integer.valueOf(Color.rgb(255, 255, 0)));
        hashMap2.put(A0C(251, 10, 99), Integer.valueOf(Color.rgb(255, 0, 255)));
        hashMap2.put(A0C(230, 7, 96), Integer.valueOf(Color.rgb(0, 0, 255)));
        hashMap2.put(A0C(222, 8, 57), Integer.valueOf(Color.rgb(0, 0, 0)));
        Map<String, Integer> defaultBackgroundColors = Collections.unmodifiableMap(hashMap2);
        A03 = defaultBackgroundColors;
    }

    public static int A00(int i10, int i11, int i12) {
        if (i10 != -1) {
            return i10;
        }
        if (i11 != -1) {
            return i11;
        }
        if (i12 != -1) {
            return i12;
        }
        throw new IllegalArgumentException();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int A01(String str) {
        char c10;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals(A0C(MediaPlayer.MEDIA_PLAYER_OPTION_DANGER_BUFFER_THRESHOLD, 6, 0))) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case -1074341483:
                if (A01[1].length() != 9) {
                    A01[4] = "zDr3pXiReOD9C2voGl4pNyTssnTsthj2";
                    if (str.equals(A0C(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_POST_STALL_500, 6, 110))) {
                        c10 = 2;
                        break;
                    }
                    c10 = 65535;
                    break;
                } else {
                    throw new RuntimeException();
                }
            case 100571:
                if (str.equals(A0C(304, 3, 22))) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case 109757538:
                if (str.equals(A0C(425, 5, 117))) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        switch (c10) {
            case 0:
                return 0;
            case 1:
            case 2:
                return 1;
            case 3:
                return 2;
            default:
                AnonymousClass44.A07(A0C(167, 15, 91), A0C(69, 22, 29) + str);
                return Integer.MIN_VALUE;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int A02(String str) {
        char c10;
        switch (str.hashCode()) {
            case -1842484672:
                if (str.equals(A0C(357, 9, 73))) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case -1364013995:
                if (str.equals(A0C(MediaPlayer.MEDIA_PLAYER_OPTION_DANGER_BUFFER_THRESHOLD, 6, 0))) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case -1276788989:
                if (str.equals(A0C(MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_DECODE_TIME, 10, 27))) {
                    c10 = 4;
                    break;
                }
                c10 = 65535;
                break;
            case -1074341483:
                if (str.equals(A0C(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_POST_STALL_500, 6, 110))) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case 100571:
                if (str.equals(A0C(304, 3, 22))) {
                    c10 = 5;
                    break;
                }
                c10 = 65535;
                break;
            case 109757538:
                if (str.equals(A0C(425, 5, 117))) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        switch (c10) {
            case 0:
            case 1:
                return 0;
            case 2:
            case 3:
                return 1;
            case 4:
            case 5:
                return 2;
            default:
                AnonymousClass44.A07(A0C(167, 15, 91), A0C(69, 22, 29) + str);
                return Integer.MIN_VALUE;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int A03(String str) {
        char c10;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals(A0C(MediaPlayer.MEDIA_PLAYER_OPTION_DANGER_BUFFER_THRESHOLD, 6, 0))) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case -1074341483:
                if (str.equals(A0C(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_POST_STALL_500, 6, 110))) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case 100571:
                if (str.equals(A0C(304, 3, 22))) {
                    c10 = 4;
                    break;
                }
                c10 = 65535;
                break;
            case 3317767:
                if (str.equals(A0C(345, 4, 47))) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case 108511772:
                if (str.equals(A0C(408, 5, 32))) {
                    c10 = 5;
                    break;
                }
                c10 = 65535;
                break;
            case 109757538:
                if (str.equals(A0C(425, 5, 117))) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        switch (c10) {
            case 0:
                return 1;
            case 1:
                return 4;
            case 2:
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 5;
            default:
                AnonymousClass44.A07(A0C(167, 15, 91), A0C(44, 25, 112) + str);
                return 2;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int A04(String str) {
        char c10;
        switch (str.hashCode()) {
            case 3462:
                if (str.equals(A0C(MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_AUDIO_QUERY, 2, 0))) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case 3642:
                if (str.equals(A0C(413, 2, 81))) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        switch (c10) {
            case 0:
                return 1;
            case 1:
                return 2;
            default:
                AnonymousClass44.A07(A0C(167, 15, 91), A0C(18, 26, 124) + str);
                return Integer.MIN_VALUE;
        }
    }

    public static int A05(String str, int i10) {
        int indexOf = str.indexOf(62, i10);
        if (indexOf == -1) {
            int index = str.length();
            return index;
        }
        int index2 = indexOf + 1;
        return index2;
    }

    public static C3C A08(String str) {
        KA builder = new KA();
        A0L(str, builder);
        return builder.A07();
    }

    public static C2747o2 A09(CharSequence charSequence) {
        KA infoBuilder = new KA();
        infoBuilder.A0A = charSequence;
        return infoBuilder.A07().A0H();
    }

    public static K3 A0B(String str, Matcher matcher, C4J c4j, List<C1496Jz> list) {
        KA ka2 = new KA();
        try {
            ka2.A09 = KC.A01((String) C3M.A01(matcher.group(1)));
            ka2.A08 = KC.A01((String) C3M.A01(matcher.group(2)));
            A0L((String) C3M.A01(matcher.group(3)), ka2);
            StringBuilder sb2 = new StringBuilder();
            String A0T = c4j.A0T();
            while (true) {
                boolean isEmpty = TextUtils.isEmpty(A0T);
                if (A01[5].charAt(2) == 'h') {
                    throw new RuntimeException();
                }
                A01[1] = "2AwiW2AhFaTR";
                if (!isEmpty) {
                    if (sb2.length() > 0) {
                        sb2.append(A0C(0, 1, 93));
                    }
                    sb2.append(A0T.trim());
                    A0T = c4j.A0T();
                } else {
                    ka2.A0A = A07(str, sb2.toString(), list);
                    return ka2.A08();
                }
            }
        } catch (NumberFormatException unused) {
            AnonymousClass44.A07(A0C(167, 15, 91), A0C(117, 30, 106) + matcher.group());
            return null;
        }
    }

    public static String A0D(String str) {
        String trim = str.trim();
        C3M.A07(!trim.isEmpty());
        return AbstractC10974a.A1P(trim, A0C(182, 5, 117))[0];
    }

    public static List<K8> A0E(List<C1496Jz> list, String str, K7 k72) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            C1496Jz c1496Jz = list.get(i10);
            int i11 = c1496Jz.A09(str, k72.A01, k72.A03, k72.A02);
            if (i11 > 0) {
                arrayList.add(new K8(i11, c1496Jz));
            }
        }
        Collections.sort(arrayList);
        if (A01[3].charAt(21) != 'Z') {
            A01[3] = "10DtqaDx3Mjis7pngfRsmCfeCaw0vB2Q";
            return arrayList;
        }
        throw new RuntimeException();
    }

    public static void A0G(SpannableStringBuilder spannableStringBuilder, C1496Jz c1496Jz, int i10, int i11) {
        if (c1496Jz == null) {
            return;
        }
        if (c1496Jz.A08() != -1) {
            C3H.A00(spannableStringBuilder, new StyleSpan(c1496Jz.A08()), i10, i11, 33);
        }
        if (c1496Jz.A0S()) {
            spannableStringBuilder.setSpan(new StrikethroughSpan(), i10, i11, 33);
        }
        boolean A0T = c1496Jz.A0T();
        if (A01[3].charAt(21) != 'Z') {
            A01[3] = "1YLI45HvZzSZe2yut9V0MUcCwjpGC5gE";
            if (A0T) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i10, i11, 33);
            }
            if (c1496Jz.A0R()) {
                C3H.A00(spannableStringBuilder, new ForegroundColorSpan(c1496Jz.A05()), i10, i11, 33);
            }
            if (c1496Jz.A0Q()) {
                C3H.A00(spannableStringBuilder, new BackgroundColorSpan(c1496Jz.A04()), i10, i11, 33);
            }
            if (c1496Jz.A0K() != null) {
                C3H.A00(spannableStringBuilder, new TypefaceSpan(c1496Jz.A0K()), i10, i11, 33);
            }
            switch (c1496Jz.A06()) {
                case 1:
                    C3H.A00(spannableStringBuilder, new AbsoluteSizeSpan((int) c1496Jz.A03(), true), i10, i11, 33);
                    break;
                case 2:
                    C3H.A00(spannableStringBuilder, new RelativeSizeSpan(c1496Jz.A03()), i10, i11, 33);
                    break;
                case 3:
                    C3H.A00(spannableStringBuilder, new RelativeSizeSpan(c1496Jz.A03() / 100.0f), i10, i11, 33);
                    break;
            }
            if (c1496Jz.A0P()) {
                spannableStringBuilder.setSpan(new C2741nw(), i10, i11, 33);
                return;
            }
            return;
        }
        throw new RuntimeException();
    }

    public static void A0I(SpannableStringBuilder spannableStringBuilder, Set<String> set, int i10, int i11) {
        for (String str : set) {
            boolean containsKey = A04.containsKey(str);
            if (A01[1].length() == 9) {
                throw new RuntimeException();
            }
            A01[5] = "YNIn8hUAyZDjSH3JhERqEXsouXgj93JS";
            if (containsKey) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(A04.get(str).intValue()), i10, i11, 33);
            } else {
                Map<String, Integer> map = A03;
                String className = A01[3];
                if (className.charAt(21) != 'Z') {
                    A01[3] = "z1JdxX10iLj514Di1TKQv9nGlpU0X7eV";
                    if (map.containsKey(str)) {
                        spannableStringBuilder.setSpan(new BackgroundColorSpan(A03.get(str).intValue()), i10, i11, 33);
                    }
                } else if (map.containsKey(str)) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(A03.get(str).intValue()), i10, i11, 33);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x000b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void A0J(java.lang.String r4, android.text.SpannableStringBuilder r5) {
        /*
            int r0 = r4.hashCode()
            switch(r0) {
                case 3309: goto L96;
                case 3464: goto Lc7;
                case 96708: goto L6a;
                case 3374865: goto L59;
                default: goto L7;
            }
        L7:
            r0 = -1
        L8:
            switch(r0) {
                case 0: goto L53;
                case 1: goto L4d;
                case 2: goto L47;
                case 3: goto L41;
                default: goto Lb;
            }
        Lb:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r2 = 310(0x136, float:4.34E-43)
            r1 = 31
            r0 = 108(0x6c, float:1.51E-43)
            java.lang.String r0 = A0C(r2, r1, r0)
            java.lang.StringBuilder r0 = r3.append(r0)
            java.lang.StringBuilder r3 = r0.append(r4)
            r2 = 16
            r1 = 2
            r0 = 87
            java.lang.String r0 = A0C(r2, r1, r0)
            java.lang.StringBuilder r0 = r3.append(r0)
            java.lang.String r3 = r0.toString()
            r2 = 167(0xa7, float:2.34E-43)
            r1 = 15
            r0 = 91
            java.lang.String r0 = A0C(r2, r1, r0)
            com.facebook.ads.redexgen.X.AnonymousClass44.A07(r0, r3)
        L40:
            return
        L41:
            r0 = 38
            r5.append(r0)
            goto L40
        L47:
            r0 = 32
            r5.append(r0)
            goto L40
        L4d:
            r0 = 62
            r5.append(r0)
            goto L40
        L53:
            r0 = 60
            r5.append(r0)
            goto L40
        L59:
            r2 = 393(0x189, float:5.51E-43)
            r1 = 4
            r0 = 93
            java.lang.String r0 = A0C(r2, r1, r0)
            boolean r0 = r4.equals(r0)
            if (r0 == 0) goto L7
            r0 = 2
            goto L8
        L6a:
            r2 = 218(0xda, float:3.05E-43)
            r1 = 3
            r0 = 109(0x6d, float:1.53E-43)
            java.lang.String r0 = A0C(r2, r1, r0)
            boolean r3 = r4.equals(r0)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.KB.A01
            r0 = 5
            r1 = r1[r0]
            r0 = 2
            char r1 = r1.charAt(r0)
            r0 = 104(0x68, float:1.46E-43)
            if (r1 == r0) goto Lb5
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.KB.A01
            java.lang.String r1 = "0e7ADHSVMy4QvuNOaRsoWPMCToECBQOy"
            r0 = 2
            r2[r0] = r1
            java.lang.String r1 = "0jhJvpoe9graGazv1ZIcpM6WWqxYTLD3"
            r0 = 6
            r2[r0] = r1
            if (r3 == 0) goto L7
            r0 = 3
            goto L8
        L96:
            r2 = 307(0x133, float:4.3E-43)
            r1 = 2
            r0 = 32
            java.lang.String r0 = A0C(r2, r1, r0)
            boolean r3 = r4.equals(r0)
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.KB.A01
            r0 = 0
            r1 = r2[r0]
            r0 = 7
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto Lbb
        Lb5:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        Lbb:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.KB.A01
            java.lang.String r1 = "Z6Yq6aysKH1bmBhKZFPJxCKyS02If"
            r0 = 1
            r2[r0] = r1
            if (r3 == 0) goto L7
            r0 = 1
            goto L8
        Lc7:
            r2 = 378(0x17a, float:5.3E-43)
            r1 = 2
            r0 = 27
            java.lang.String r0 = A0C(r2, r1, r0)
            boolean r0 = r4.equals(r0)
            if (r0 == 0) goto L7
            r0 = 0
            goto L8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.KB.A0J(java.lang.String, android.text.SpannableStringBuilder):void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Incorrect condition in loop: B:43:0x00ee */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void A0K(java.lang.String r8, com.facebook.ads.redexgen.X.K7 r9, java.util.List<com.facebook.ads.redexgen.X.K6> r10, android.text.SpannableStringBuilder r11, java.util.List<com.facebook.ads.redexgen.X.C1496Jz> r12) {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.KB.A0K(java.lang.String, com.facebook.ads.redexgen.X.K7, java.util.List, android.text.SpannableStringBuilder, java.util.List):void");
    }

    public static void A0L(String str, KA ka2) {
        String value = A0C(167, 15, 91);
        Matcher matcher = A05.matcher(str);
        while (matcher.find()) {
            Object A012 = C3M.A01(matcher.group(1));
            String[] strArr = A01;
            if (strArr[2].charAt(10) == strArr[6].charAt(10)) {
                throw new RuntimeException();
            }
            A01[3] = "IuLRiWa83LmFflMS6GnqXQo4BkpBDAaM";
            String str2 = (String) A012;
            String str3 = (String) C3M.A01(matcher.group(2));
            try {
                if (A0C(353, 4, 43).equals(str2)) {
                    A0M(str3, ka2);
                } else if (A0C(213, 5, 54).equals(str2)) {
                    ka2.A06 = A03(str3);
                } else if (A0C(MediaPlayer.MEDIA_PLAYER_OPTION_HURRY_MILLISECOND, 8, 107).equals(str2)) {
                    A0N(str3, ka2);
                } else if (A0C(421, 4, 35).equals(str2)) {
                    ka2.A02 = KC.A00(str3);
                } else if (A0C(TTVideoEngineInterface.PLAYER_OPTION_ENABLE_h266, 8, 92).equals(str2)) {
                    ka2.A07 = A04(str3);
                } else {
                    AnonymousClass44.A07(value, A0C(147, 20, 102) + str2 + A0C(15, 1, 60) + str3);
                }
            } catch (NumberFormatException unused) {
                AnonymousClass44.A07(value, A0C(91, 26, 123) + matcher.group());
            }
        }
    }

    public static void A0M(String str, KA ka2) {
        int indexOf = str.indexOf(44);
        if (indexOf != -1) {
            int commaIndex = indexOf + 1;
            ka2.A03 = A01(str.substring(commaIndex));
            str = str.substring(0, indexOf);
        }
        if (str.endsWith(A0C(2, 1, 118))) {
            ka2.A00 = KC.A00(str);
            ka2.A04 = 0;
            return;
        }
        int commaIndex2 = Integer.parseInt(str);
        ka2.A00 = commaIndex2;
        ka2.A04 = 1;
    }

    public static void A0N(String str, KA ka2) {
        int indexOf = str.indexOf(44);
        if (indexOf != -1) {
            int commaIndex = indexOf + 1;
            ka2.A05 = A02(str.substring(commaIndex));
            str = str.substring(0, indexOf);
        }
        ka2.A01 = KC.A00(str);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x007f, code lost:
        if (r7.equals(A0C(com.ss.ttvideoengine.TTVideoEngineInterface.PLAYER_OPTION_ACCURATE_LAYOUT, 1, 12)) != false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0081, code lost:
        r0 = 7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0093, code lost:
        if (r7.equals(A0C(com.ss.ttvideoengine.TTVideoEngineInterface.PLAYER_OPTION_ACCURATE_LAYOUT, 1, 6)) != false) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean A0O(java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.KB.A0O(java.lang.String):boolean");
    }
}
