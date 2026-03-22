package w6;

import android.text.Layout;
import androidx.annotation.Nullable;
import b7.q;
import b7.s0;
import b7.t0;
import com.bytedance.vodsetting.Module;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.ttvideoengine.selector.strategy.GearStrategyConsts;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import p6.i;
/* compiled from: TtmlDecoder.java */
/* loaded from: classes4.dex */
public final class c extends p6.h {

    /* renamed from: p  reason: collision with root package name */
    private static final Pattern f69660p = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");

    /* renamed from: q  reason: collision with root package name */
    private static final Pattern f69661q = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");

    /* renamed from: r  reason: collision with root package name */
    private static final Pattern f69662r = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");

    /* renamed from: s  reason: collision with root package name */
    static final Pattern f69663s = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");

    /* renamed from: t  reason: collision with root package name */
    static final Pattern f69664t = Pattern.compile("^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$");

    /* renamed from: u  reason: collision with root package name */
    private static final Pattern f69665u = Pattern.compile("^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$");

    /* renamed from: v  reason: collision with root package name */
    private static final Pattern f69666v = Pattern.compile("^(\\d+) (\\d+)$");

    /* renamed from: w  reason: collision with root package name */
    private static final b f69667w = new b(30.0f, 1, 1);

    /* renamed from: x  reason: collision with root package name */
    private static final a f69668x = new a(32, 15);

    /* renamed from: o  reason: collision with root package name */
    private final XmlPullParserFactory f69669o;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TtmlDecoder.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final int f69670a;

        /* renamed from: b  reason: collision with root package name */
        final int f69671b;

        a(int i10, int i11) {
            this.f69670a = i10;
            this.f69671b = i11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TtmlDecoder.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final float f69672a;

        /* renamed from: b  reason: collision with root package name */
        final int f69673b;

        /* renamed from: c  reason: collision with root package name */
        final int f69674c;

        b(float f10, int i10, int i11) {
            this.f69672a = f10;
            this.f69673b = i10;
            this.f69674c = i11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TtmlDecoder.java */
    /* renamed from: w6.c$c  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0959c {

        /* renamed from: a  reason: collision with root package name */
        final int f69675a;

        /* renamed from: b  reason: collision with root package name */
        final int f69676b;

        C0959c(int i10, int i11) {
            this.f69675a = i10;
            this.f69676b = i11;
        }
    }

    public c() {
        super("TtmlDecoder");
        try {
            XmlPullParserFactory newInstance = XmlPullParserFactory.newInstance();
            this.f69669o = newInstance;
            newInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e10) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e10);
        }
    }

    private static a A(XmlPullParser xmlPullParser, a aVar) throws SubtitleDecoderException {
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "cellResolution");
        if (attributeValue == null) {
            return aVar;
        }
        Matcher matcher = f69666v.matcher(attributeValue);
        if (!matcher.matches()) {
            q.i("TtmlDecoder", "Ignoring malformed cell resolution: " + attributeValue);
            return aVar;
        }
        try {
            int parseInt = Integer.parseInt((String) b7.a.e(matcher.group(1)));
            int parseInt2 = Integer.parseInt((String) b7.a.e(matcher.group(2)));
            if (parseInt != 0 && parseInt2 != 0) {
                return new a(parseInt, parseInt2);
            }
            throw new SubtitleDecoderException("Invalid cell resolution " + parseInt + " " + parseInt2);
        } catch (NumberFormatException unused) {
            q.i("TtmlDecoder", "Ignoring malformed cell resolution: " + attributeValue);
            return aVar;
        }
    }

    private static void B(String str, g gVar) throws SubtitleDecoderException {
        Matcher matcher;
        String[] H0 = s0.H0(str, "\\s+");
        if (H0.length == 1) {
            matcher = f69662r.matcher(str);
        } else if (H0.length == 2) {
            matcher = f69662r.matcher(H0[1]);
            q.i("TtmlDecoder", "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
        } else {
            throw new SubtitleDecoderException("Invalid number of entries for fontSize: " + H0.length + ".");
        }
        if (matcher.matches()) {
            String str2 = (String) b7.a.e(matcher.group(3));
            str2.hashCode();
            char c10 = 65535;
            switch (str2.hashCode()) {
                case 37:
                    if (str2.equals("%")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 3240:
                    if (str2.equals("em")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 3592:
                    if (str2.equals("px")) {
                        c10 = 2;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    gVar.z(3);
                    break;
                case 1:
                    gVar.z(2);
                    break;
                case 2:
                    gVar.z(1);
                    break;
                default:
                    throw new SubtitleDecoderException("Invalid unit for fontSize: '" + str2 + "'.");
            }
            gVar.y(Float.parseFloat((String) b7.a.e(matcher.group(1))));
            return;
        }
        throw new SubtitleDecoderException("Invalid expression for fontSize: '" + str + "'.");
    }

    private static b C(XmlPullParser xmlPullParser) throws SubtitleDecoderException {
        int i10;
        float f10;
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRate");
        if (attributeValue != null) {
            i10 = Integer.parseInt(attributeValue);
        } else {
            i10 = 30;
        }
        String attributeValue2 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRateMultiplier");
        if (attributeValue2 != null) {
            String[] H0 = s0.H0(attributeValue2, " ");
            if (H0.length == 2) {
                f10 = Integer.parseInt(H0[0]) / Integer.parseInt(H0[1]);
            } else {
                throw new SubtitleDecoderException("frameRateMultiplier doesn't have 2 parts");
            }
        } else {
            f10 = 1.0f;
        }
        b bVar = f69667w;
        int i11 = bVar.f69673b;
        String attributeValue3 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "subFrameRate");
        if (attributeValue3 != null) {
            i11 = Integer.parseInt(attributeValue3);
        }
        int i12 = bVar.f69674c;
        String attributeValue4 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "tickRate");
        if (attributeValue4 != null) {
            i12 = Integer.parseInt(attributeValue4);
        }
        return new b(i10 * f10, i11, i12);
    }

    private static Map<String, g> D(XmlPullParser xmlPullParser, Map<String, g> map, a aVar, @Nullable C0959c c0959c, Map<String, e> map2, Map<String, String> map3) throws IOException, XmlPullParserException {
        do {
            xmlPullParser.next();
            if (t0.e(xmlPullParser, TtmlNode.TAG_STYLE)) {
                String a10 = t0.a(xmlPullParser, TtmlNode.TAG_STYLE);
                g I = I(xmlPullParser, new g());
                if (a10 != null) {
                    for (String str : J(a10)) {
                        I.a(map.get(str));
                    }
                }
                String g10 = I.g();
                if (g10 != null) {
                    map.put(g10, I);
                }
            } else if (t0.e(xmlPullParser, TtmlNode.TAG_REGION)) {
                e G = G(xmlPullParser, aVar, c0959c);
                if (G != null) {
                    map2.put(G.f69690a, G);
                }
            } else if (t0.e(xmlPullParser, TtmlNode.TAG_METADATA)) {
                E(xmlPullParser, map3);
            }
        } while (!t0.c(xmlPullParser, TtmlNode.TAG_HEAD));
        return map;
    }

    private static void E(XmlPullParser xmlPullParser, Map<String, String> map) throws IOException, XmlPullParserException {
        String a10;
        do {
            xmlPullParser.next();
            if (t0.e(xmlPullParser, "image") && (a10 = t0.a(xmlPullParser, "id")) != null) {
                map.put(a10, xmlPullParser.nextText());
            }
        } while (!t0.c(xmlPullParser, TtmlNode.TAG_METADATA));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static d F(XmlPullParser xmlPullParser, @Nullable d dVar, Map<String, e> map, b bVar) throws SubtitleDecoderException {
        long j10;
        long j11;
        char c10;
        int attributeCount = xmlPullParser.getAttributeCount();
        g I = I(xmlPullParser, null);
        String str = null;
        String str2 = "";
        long j12 = -9223372036854775807L;
        long j13 = -9223372036854775807L;
        long j14 = -9223372036854775807L;
        String[] strArr = null;
        for (int i10 = 0; i10 < attributeCount; i10++) {
            String attributeName = xmlPullParser.getAttributeName(i10);
            String attributeValue = xmlPullParser.getAttributeValue(i10);
            attributeName.hashCode();
            switch (attributeName.hashCode()) {
                case -934795532:
                    if (attributeName.equals(TtmlNode.TAG_REGION)) {
                        c10 = 0;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 99841:
                    if (attributeName.equals("dur")) {
                        c10 = 1;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 100571:
                    if (attributeName.equals("end")) {
                        c10 = 2;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 93616297:
                    if (attributeName.equals(GearStrategyConsts.EV_SELECT_BEGIN)) {
                        c10 = 3;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 109780401:
                    if (attributeName.equals(TtmlNode.TAG_STYLE)) {
                        c10 = 4;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1292595405:
                    if (attributeName.equals("backgroundImage")) {
                        c10 = 5;
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
                    if (map.containsKey(attributeValue)) {
                        str2 = attributeValue;
                        continue;
                    }
                case 1:
                    j14 = K(attributeValue, bVar);
                    break;
                case 2:
                    j13 = K(attributeValue, bVar);
                    break;
                case 3:
                    j12 = K(attributeValue, bVar);
                    break;
                case 4:
                    String[] J = J(attributeValue);
                    if (J.length > 0) {
                        strArr = J;
                        continue;
                    }
                    break;
                case 5:
                    if (attributeValue.startsWith("#")) {
                        str = attributeValue.substring(1);
                        break;
                    }
                    break;
            }
        }
        if (dVar != null) {
            long j15 = dVar.f69680d;
            j10 = -9223372036854775807L;
            if (j15 != -9223372036854775807L) {
                if (j12 != -9223372036854775807L) {
                    j12 += j15;
                }
                if (j13 != -9223372036854775807L) {
                    j13 += j15;
                }
            }
        } else {
            j10 = -9223372036854775807L;
        }
        long j16 = j12;
        if (j13 == j10) {
            if (j14 != j10) {
                j11 = j16 + j14;
            } else if (dVar != null) {
                long j17 = dVar.f69681e;
                if (j17 != j10) {
                    j11 = j17;
                }
            }
            return d.c(xmlPullParser.getName(), j16, j11, I, strArr, str2, str, dVar);
        }
        j11 = j13;
        return d.c(xmlPullParser.getName(), j16, j11, I, strArr, str2, str, dVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x01ac, code lost:
        if (r0.equals("tb") == false) goto L41;
     */
    /* JADX WARN: Removed duplicated region for block: B:48:0x017f  */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static w6.e G(org.xmlpull.v1.XmlPullParser r18, w6.c.a r19, @androidx.annotation.Nullable w6.c.C0959c r20) {
        /*
            Method dump skipped, instructions count: 572
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: w6.c.G(org.xmlpull.v1.XmlPullParser, w6.c$a, w6.c$c):w6.e");
    }

    private static float H(String str) {
        Matcher matcher = f69663s.matcher(str);
        if (!matcher.matches()) {
            q.i("TtmlDecoder", "Invalid value for shear: " + str);
            return Float.MAX_VALUE;
        }
        try {
            return Math.min(100.0f, Math.max(-100.0f, Float.parseFloat((String) b7.a.e(matcher.group(1)))));
        } catch (NumberFormatException e10) {
            q.j("TtmlDecoder", "Failed to parse shear: " + str, e10);
            return Float.MAX_VALUE;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static g I(XmlPullParser xmlPullParser, g gVar) {
        char c10;
        boolean z10;
        boolean z11;
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            String attributeValue = xmlPullParser.getAttributeValue(i10);
            String attributeName = xmlPullParser.getAttributeName(i10);
            attributeName.hashCode();
            switch (attributeName.hashCode()) {
                case -1550943582:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_FONT_STYLE)) {
                        c10 = 0;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -1224696685:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_FONT_FAMILY)) {
                        c10 = 1;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -1065511464:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_TEXT_ALIGN)) {
                        c10 = 2;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -879295043:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_TEXT_DECORATION)) {
                        c10 = 3;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -734428249:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_FONT_WEIGHT)) {
                        c10 = 4;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 3355:
                    if (attributeName.equals("id")) {
                        c10 = 5;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 3511770:
                    if (attributeName.equals("ruby")) {
                        c10 = 6;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 94842723:
                    if (attributeName.equals("color")) {
                        c10 = 7;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 109403361:
                    if (attributeName.equals("shear")) {
                        c10 = '\b';
                        break;
                    }
                    c10 = 65535;
                    break;
                case 110138194:
                    if (attributeName.equals("textCombine")) {
                        c10 = '\t';
                        break;
                    }
                    c10 = 65535;
                    break;
                case 365601008:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_FONT_SIZE)) {
                        c10 = '\n';
                        break;
                    }
                    c10 = 65535;
                    break;
                case 921125321:
                    if (attributeName.equals("textEmphasis")) {
                        c10 = 11;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1115953443:
                    if (attributeName.equals("rubyPosition")) {
                        c10 = '\f';
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1287124693:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_BACKGROUND_COLOR)) {
                        c10 = '\r';
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1754920356:
                    if (attributeName.equals("multiRowAlign")) {
                        c10 = 14;
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
                    gVar = x(gVar).B(TtmlNode.ITALIC.equalsIgnoreCase(attributeValue));
                    break;
                case 1:
                    gVar = x(gVar).x(attributeValue);
                    break;
                case 2:
                    gVar = x(gVar).H(z(attributeValue));
                    break;
                case 3:
                    String e10 = h7.a.e(attributeValue);
                    e10.hashCode();
                    switch (e10.hashCode()) {
                        case -1461280213:
                            if (e10.equals(TtmlNode.NO_UNDERLINE)) {
                                z10 = false;
                                break;
                            }
                            z10 = true;
                            break;
                        case -1026963764:
                            if (e10.equals(TtmlNode.UNDERLINE)) {
                                z10 = true;
                                break;
                            }
                            z10 = true;
                            break;
                        case 913457136:
                            if (e10.equals(TtmlNode.NO_LINETHROUGH)) {
                                z10 = true;
                                break;
                            }
                            z10 = true;
                            break;
                        case 1679736913:
                            if (e10.equals(TtmlNode.LINETHROUGH)) {
                                z10 = true;
                                break;
                            }
                            z10 = true;
                            break;
                        default:
                            z10 = true;
                            break;
                    }
                    switch (z10) {
                        case false:
                            gVar = x(gVar).K(false);
                            continue;
                        case true:
                            gVar = x(gVar).K(true);
                            continue;
                        case true:
                            gVar = x(gVar).C(false);
                            continue;
                        case true:
                            gVar = x(gVar).C(true);
                            continue;
                    }
                case 4:
                    gVar = x(gVar).v(TtmlNode.BOLD.equalsIgnoreCase(attributeValue));
                    break;
                case 5:
                    if (TtmlNode.TAG_STYLE.equals(xmlPullParser.getName())) {
                        gVar = x(gVar).A(attributeValue);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    String e11 = h7.a.e(attributeValue);
                    e11.hashCode();
                    switch (e11.hashCode()) {
                        case -618561360:
                            if (e11.equals("baseContainer")) {
                                z11 = false;
                                break;
                            }
                            z11 = true;
                            break;
                        case -410956671:
                            if (e11.equals("container")) {
                                z11 = true;
                                break;
                            }
                            z11 = true;
                            break;
                        case -250518009:
                            if (e11.equals("delimiter")) {
                                z11 = true;
                                break;
                            }
                            z11 = true;
                            break;
                        case -136074796:
                            if (e11.equals("textContainer")) {
                                z11 = true;
                                break;
                            }
                            z11 = true;
                            break;
                        case 3016401:
                            if (e11.equals("base")) {
                                z11 = true;
                                break;
                            }
                            z11 = true;
                            break;
                        case 3556653:
                            if (e11.equals(MimeTypes.BASE_TYPE_TEXT)) {
                                z11 = true;
                                break;
                            }
                            z11 = true;
                            break;
                        default:
                            z11 = true;
                            break;
                    }
                    switch (z11) {
                        case false:
                        case true:
                            gVar = x(gVar).F(2);
                            continue;
                        case true:
                            gVar = x(gVar).F(1);
                            continue;
                        case true:
                            gVar = x(gVar).F(4);
                            continue;
                        case true:
                        case true:
                            gVar = x(gVar).F(3);
                            continue;
                    }
                case 7:
                    gVar = x(gVar);
                    try {
                        gVar.w(b7.f.c(attributeValue));
                        break;
                    } catch (IllegalArgumentException unused) {
                        q.i("TtmlDecoder", "Failed parsing color value: " + attributeValue);
                        break;
                    }
                case '\b':
                    gVar = x(gVar).G(H(attributeValue));
                    break;
                case '\t':
                    String e12 = h7.a.e(attributeValue);
                    e12.hashCode();
                    if (!e12.equals(Module.ALL)) {
                        if (e12.equals(DevicePublicKeyStringDef.NONE)) {
                            gVar = x(gVar).I(false);
                            break;
                        } else {
                            break;
                        }
                    } else {
                        gVar = x(gVar).I(true);
                        break;
                    }
                case '\n':
                    try {
                        gVar = x(gVar);
                        B(attributeValue, gVar);
                        break;
                    } catch (SubtitleDecoderException unused2) {
                        q.i("TtmlDecoder", "Failed parsing fontSize value: " + attributeValue);
                        break;
                    }
                case 11:
                    gVar = x(gVar).J(w6.b.a(attributeValue));
                    break;
                case '\f':
                    String e13 = h7.a.e(attributeValue);
                    e13.hashCode();
                    if (!e13.equals("before")) {
                        if (e13.equals("after")) {
                            gVar = x(gVar).E(2);
                            break;
                        } else {
                            break;
                        }
                    } else {
                        gVar = x(gVar).E(1);
                        break;
                    }
                case '\r':
                    gVar = x(gVar);
                    try {
                        gVar.u(b7.f.c(attributeValue));
                        break;
                    } catch (IllegalArgumentException unused3) {
                        q.i("TtmlDecoder", "Failed parsing background value: " + attributeValue);
                        break;
                    }
                case 14:
                    gVar = x(gVar).D(z(attributeValue));
                    break;
            }
        }
        return gVar;
    }

    private static String[] J(String str) {
        String trim = str.trim();
        if (trim.isEmpty()) {
            return new String[0];
        }
        return s0.H0(trim, "\\s+");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00bb, code lost:
        if (r13.equals("ms") == false) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long K(java.lang.String r13, w6.c.b r14) throws com.google.android.exoplayer2.text.SubtitleDecoderException {
        /*
            Method dump skipped, instructions count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: w6.c.K(java.lang.String, w6.c$b):long");
    }

    @Nullable
    private static C0959c L(XmlPullParser xmlPullParser) {
        String a10 = t0.a(xmlPullParser, TtmlNode.ATTR_TTS_EXTENT);
        if (a10 == null) {
            return null;
        }
        Matcher matcher = f69665u.matcher(a10);
        if (!matcher.matches()) {
            q.i("TtmlDecoder", "Ignoring non-pixel tts extent: " + a10);
            return null;
        }
        try {
            return new C0959c(Integer.parseInt((String) b7.a.e(matcher.group(1))), Integer.parseInt((String) b7.a.e(matcher.group(2))));
        } catch (NumberFormatException unused) {
            q.i("TtmlDecoder", "Ignoring malformed tts extent: " + a10);
            return null;
        }
    }

    private static g x(@Nullable g gVar) {
        if (gVar == null) {
            return new g();
        }
        return gVar;
    }

    private static boolean y(String str) {
        if (!str.equals(TtmlNode.TAG_TT) && !str.equals(TtmlNode.TAG_HEAD) && !str.equals("body") && !str.equals(TtmlNode.TAG_DIV) && !str.equals(TtmlNode.TAG_P) && !str.equals(TtmlNode.TAG_SPAN) && !str.equals("br") && !str.equals(TtmlNode.TAG_STYLE) && !str.equals(TtmlNode.TAG_STYLING) && !str.equals(TtmlNode.TAG_LAYOUT) && !str.equals(TtmlNode.TAG_REGION) && !str.equals(TtmlNode.TAG_METADATA) && !str.equals("image") && !str.equals("data") && !str.equals("information")) {
            return false;
        }
        return true;
    }

    @Nullable
    private static Layout.Alignment z(String str) {
        String e10 = h7.a.e(str);
        e10.hashCode();
        char c10 = 65535;
        switch (e10.hashCode()) {
            case -1364013995:
                if (e10.equals(TtmlNode.CENTER)) {
                    c10 = 0;
                    break;
                }
                break;
            case 100571:
                if (e10.equals("end")) {
                    c10 = 1;
                    break;
                }
                break;
            case 3317767:
                if (e10.equals(TtmlNode.LEFT)) {
                    c10 = 2;
                    break;
                }
                break;
            case 108511772:
                if (e10.equals(TtmlNode.RIGHT)) {
                    c10 = 3;
                    break;
                }
                break;
            case 109757538:
                if (e10.equals("start")) {
                    c10 = 4;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return Layout.Alignment.ALIGN_CENTER;
            case 1:
            case 3:
                return Layout.Alignment.ALIGN_OPPOSITE;
            case 2:
            case 4:
                return Layout.Alignment.ALIGN_NORMAL;
            default:
                return null;
        }
    }

    @Override // p6.h
    protected i w(byte[] bArr, int i10, boolean z10) throws SubtitleDecoderException {
        b bVar;
        try {
            XmlPullParser newPullParser = this.f69669o.newPullParser();
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            HashMap hashMap3 = new HashMap();
            hashMap2.put("", new e(""));
            C0959c c0959c = null;
            newPullParser.setInput(new ByteArrayInputStream(bArr, 0, i10), null);
            ArrayDeque arrayDeque = new ArrayDeque();
            b bVar2 = f69667w;
            a aVar = f69668x;
            int i11 = 0;
            h hVar = null;
            for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.getEventType()) {
                d dVar = (d) arrayDeque.peek();
                if (i11 == 0) {
                    String name = newPullParser.getName();
                    if (eventType == 2) {
                        if (TtmlNode.TAG_TT.equals(name)) {
                            bVar2 = C(newPullParser);
                            aVar = A(newPullParser, f69668x);
                            c0959c = L(newPullParser);
                        }
                        C0959c c0959c2 = c0959c;
                        b bVar3 = bVar2;
                        a aVar2 = aVar;
                        if (!y(name)) {
                            q.f("TtmlDecoder", "Ignoring unsupported tag: " + newPullParser.getName());
                            i11++;
                            bVar2 = bVar3;
                        } else {
                            if (TtmlNode.TAG_HEAD.equals(name)) {
                                bVar = bVar3;
                                D(newPullParser, hashMap, aVar2, c0959c2, hashMap2, hashMap3);
                            } else {
                                bVar = bVar3;
                                try {
                                    d F = F(newPullParser, dVar, hashMap2, bVar);
                                    arrayDeque.push(F);
                                    if (dVar != null) {
                                        dVar.a(F);
                                    }
                                } catch (SubtitleDecoderException e10) {
                                    q.j("TtmlDecoder", "Suppressing parser error", e10);
                                    i11++;
                                }
                            }
                            bVar2 = bVar;
                        }
                        c0959c = c0959c2;
                        aVar = aVar2;
                    } else if (eventType == 4) {
                        ((d) b7.a.e(dVar)).a(d.d(newPullParser.getText()));
                    } else if (eventType == 3) {
                        if (newPullParser.getName().equals(TtmlNode.TAG_TT)) {
                            hVar = new h((d) b7.a.e((d) arrayDeque.peek()), hashMap, hashMap2, hashMap3);
                        }
                        arrayDeque.pop();
                    }
                } else if (eventType == 2) {
                    i11++;
                } else if (eventType == 3) {
                    i11--;
                }
                newPullParser.next();
            }
            if (hVar != null) {
                return hVar;
            }
            throw new SubtitleDecoderException("No TTML subtitles found");
        } catch (IOException e11) {
            throw new IllegalStateException("Unexpected error when reading input.", e11);
        } catch (XmlPullParserException e12) {
            throw new SubtitleDecoderException("Unable to decode source", e12);
        }
    }
}
