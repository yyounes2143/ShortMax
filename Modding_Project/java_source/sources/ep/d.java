package ep;

import android.text.Layout;
import androidx.annotation.Nullable;
import cn.j;
import cn.l;
import cn.m0;
import cn.n0;
import com.bytedance.vodsetting.Module;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.ttvideoengine.selector.strategy.GearStrategyConsts;
import io.bidmachine.media3.extractor.text.SubtitleDecoderException;
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
import yo.i;
import yo.k;
import yo.r;
/* compiled from: TtmlParser.java */
/* loaded from: classes8.dex */
public final class d implements r {

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f51470b = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f51471c = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");

    /* renamed from: d  reason: collision with root package name */
    private static final Pattern f51472d = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");

    /* renamed from: e  reason: collision with root package name */
    static final Pattern f51473e = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");

    /* renamed from: f  reason: collision with root package name */
    static final Pattern f51474f = Pattern.compile("^([-+]?\\d+\\.?\\d*?)% ([-+]?\\d+\\.?\\d*?)%$");

    /* renamed from: g  reason: collision with root package name */
    private static final Pattern f51475g = Pattern.compile("^([-+]?\\d+\\.?\\d*?)px ([-+]?\\d+\\.?\\d*?)px$");

    /* renamed from: h  reason: collision with root package name */
    private static final Pattern f51476h = Pattern.compile("^(\\d+) (\\d+)$");

    /* renamed from: i  reason: collision with root package name */
    private static final a f51477i = new a(30.0f, 1, 1);

    /* renamed from: a  reason: collision with root package name */
    private final XmlPullParserFactory f51478a;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TtmlParser.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final float f51479a;

        /* renamed from: b  reason: collision with root package name */
        final int f51480b;

        /* renamed from: c  reason: collision with root package name */
        final int f51481c;

        a(float f10, int i10, int i11) {
            this.f51479a = f10;
            this.f51480b = i10;
            this.f51481c = i11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TtmlParser.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final int f51482a;

        /* renamed from: b  reason: collision with root package name */
        final int f51483b;

        b(int i10, int i11) {
            this.f51482a = i10;
            this.f51483b = i11;
        }
    }

    public d() {
        try {
            XmlPullParserFactory newInstance = XmlPullParserFactory.newInstance();
            this.f51478a = newInstance;
            newInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e10) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e10);
        }
    }

    private static g d(@Nullable g gVar) {
        if (gVar == null) {
            return new g();
        }
        return gVar;
    }

    private static boolean e(String str) {
        if (!str.equals(TtmlNode.TAG_TT) && !str.equals(TtmlNode.TAG_HEAD) && !str.equals("body") && !str.equals(TtmlNode.TAG_DIV) && !str.equals(TtmlNode.TAG_P) && !str.equals(TtmlNode.TAG_SPAN) && !str.equals("br") && !str.equals(TtmlNode.TAG_STYLE) && !str.equals(TtmlNode.TAG_STYLING) && !str.equals(TtmlNode.TAG_LAYOUT) && !str.equals(TtmlNode.TAG_REGION) && !str.equals(TtmlNode.TAG_METADATA) && !str.equals("image") && !str.equals("data") && !str.equals("information")) {
            return false;
        }
        return true;
    }

    @Nullable
    private static Layout.Alignment f(String str) {
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

    private static int g(XmlPullParser xmlPullParser, int i10) {
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "cellResolution");
        if (attributeValue == null) {
            return i10;
        }
        Matcher matcher = f51476h.matcher(attributeValue);
        if (!matcher.matches()) {
            cn.r.h("TtmlParser", "Ignoring malformed cell resolution: " + attributeValue);
            return i10;
        }
        boolean z10 = true;
        try {
            int parseInt = Integer.parseInt((String) cn.a.e(matcher.group(1)));
            int parseInt2 = Integer.parseInt((String) cn.a.e(matcher.group(2)));
            if (parseInt == 0 || parseInt2 == 0) {
                z10 = false;
            }
            cn.a.b(z10, "Invalid cell resolution " + parseInt + " " + parseInt2);
            return parseInt2;
        } catch (NumberFormatException unused) {
            cn.r.h("TtmlParser", "Ignoring malformed cell resolution: " + attributeValue);
            return i10;
        }
    }

    private static void h(String str, g gVar) throws SubtitleDecoderException {
        Matcher matcher;
        String[] m12 = m0.m1(str, "\\s+");
        if (m12.length == 1) {
            matcher = f51472d.matcher(str);
        } else if (m12.length == 2) {
            matcher = f51472d.matcher(m12[1]);
            cn.r.h("TtmlParser", "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
        } else {
            throw new SubtitleDecoderException("Invalid number of entries for fontSize: " + m12.length + ".");
        }
        if (matcher.matches()) {
            String str2 = (String) cn.a.e(matcher.group(3));
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
                    gVar.C(3);
                    break;
                case 1:
                    gVar.C(2);
                    break;
                case 2:
                    gVar.C(1);
                    break;
                default:
                    throw new SubtitleDecoderException("Invalid unit for fontSize: '" + str2 + "'.");
            }
            gVar.B(Float.parseFloat((String) cn.a.e(matcher.group(1))));
            return;
        }
        throw new SubtitleDecoderException("Invalid expression for fontSize: '" + str + "'.");
    }

    private static a i(XmlPullParser xmlPullParser) {
        int i10;
        float f10;
        String[] m12;
        boolean z10;
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRate");
        if (attributeValue != null) {
            i10 = Integer.parseInt(attributeValue);
        } else {
            i10 = 30;
        }
        String attributeValue2 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRateMultiplier");
        if (attributeValue2 != null) {
            if (m0.m1(attributeValue2, " ").length == 2) {
                z10 = true;
            } else {
                z10 = false;
            }
            cn.a.b(z10, "frameRateMultiplier doesn't have 2 parts");
            f10 = Integer.parseInt(m12[0]) / Integer.parseInt(m12[1]);
        } else {
            f10 = 1.0f;
        }
        a aVar = f51477i;
        int i11 = aVar.f51480b;
        String attributeValue3 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "subFrameRate");
        if (attributeValue3 != null) {
            i11 = Integer.parseInt(attributeValue3);
        }
        int i12 = aVar.f51481c;
        String attributeValue4 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "tickRate");
        if (attributeValue4 != null) {
            i12 = Integer.parseInt(attributeValue4);
        }
        return new a(i10 * f10, i11, i12);
    }

    private static Map<String, g> j(XmlPullParser xmlPullParser, Map<String, g> map, int i10, @Nullable b bVar, Map<String, e> map2, Map<String, String> map3) throws IOException, XmlPullParserException {
        do {
            xmlPullParser.next();
            if (n0.f(xmlPullParser, TtmlNode.TAG_STYLE)) {
                String a10 = n0.a(xmlPullParser, TtmlNode.TAG_STYLE);
                g o10 = o(xmlPullParser, new g());
                if (a10 != null) {
                    for (String str : p(a10)) {
                        o10.a(map.get(str));
                    }
                }
                String h10 = o10.h();
                if (h10 != null) {
                    map.put(h10, o10);
                }
            } else if (n0.f(xmlPullParser, TtmlNode.TAG_REGION)) {
                e m10 = m(xmlPullParser, i10, bVar, map);
                if (m10 != null) {
                    map2.put(m10.f51484a, m10);
                }
            } else if (n0.f(xmlPullParser, TtmlNode.TAG_METADATA)) {
                k(xmlPullParser, map3);
            }
        } while (!n0.d(xmlPullParser, TtmlNode.TAG_HEAD));
        return map;
    }

    private static void k(XmlPullParser xmlPullParser, Map<String, String> map) throws IOException, XmlPullParserException {
        String a10;
        do {
            xmlPullParser.next();
            if (n0.f(xmlPullParser, "image") && (a10 = n0.a(xmlPullParser, "id")) != null) {
                map.put(a10, xmlPullParser.nextText());
            }
        } while (!n0.d(xmlPullParser, TtmlNode.TAG_METADATA));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static c l(XmlPullParser xmlPullParser, @Nullable c cVar, Map<String, e> map, a aVar) throws SubtitleDecoderException {
        long j10;
        long j11;
        char c10;
        int attributeCount = xmlPullParser.getAttributeCount();
        g o10 = o(xmlPullParser, null);
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
                    j14 = q(attributeValue, aVar);
                    break;
                case 2:
                    j13 = q(attributeValue, aVar);
                    break;
                case 3:
                    j12 = q(attributeValue, aVar);
                    break;
                case 4:
                    String[] p10 = p(attributeValue);
                    if (p10.length > 0) {
                        strArr = p10;
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
        if (cVar != null) {
            long j15 = cVar.f51460d;
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
            } else if (cVar != null) {
                long j17 = cVar.f51461e;
                if (j17 != j10) {
                    j11 = j17;
                }
            }
            return c.c(xmlPullParser.getName(), j16, j11, o10, strArr, str2, str, cVar);
        }
        j11 = j13;
        return c.c(xmlPullParser.getName(), j16, j11, o10, strArr, str2, str, cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x01ff  */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static ep.e m(org.xmlpull.v1.XmlPullParser r18, int r19, @androidx.annotation.Nullable ep.d.b r20, java.util.Map<java.lang.String, ep.g> r21) {
        /*
            Method dump skipped, instructions count: 610
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ep.d.m(org.xmlpull.v1.XmlPullParser, int, ep.d$b, java.util.Map):ep.e");
    }

    private static float n(String str) {
        Matcher matcher = f51473e.matcher(str);
        if (!matcher.matches()) {
            cn.r.h("TtmlParser", "Invalid value for shear: " + str);
            return Float.MAX_VALUE;
        }
        try {
            return Math.min(100.0f, Math.max(-100.0f, Float.parseFloat((String) cn.a.e(matcher.group(1)))));
        } catch (NumberFormatException e10) {
            cn.r.i("TtmlParser", "Failed to parse shear: " + str, e10);
            return Float.MAX_VALUE;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static g o(XmlPullParser xmlPullParser, g gVar) {
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
                case -1289044182:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_EXTENT)) {
                        c10 = 1;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -1224696685:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_FONT_FAMILY)) {
                        c10 = 2;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -1065511464:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_TEXT_ALIGN)) {
                        c10 = 3;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -1008619738:
                    if (attributeName.equals("origin")) {
                        c10 = 4;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -879295043:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_TEXT_DECORATION)) {
                        c10 = 5;
                        break;
                    }
                    c10 = 65535;
                    break;
                case -734428249:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_FONT_WEIGHT)) {
                        c10 = 6;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 3355:
                    if (attributeName.equals("id")) {
                        c10 = 7;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 3511770:
                    if (attributeName.equals("ruby")) {
                        c10 = '\b';
                        break;
                    }
                    c10 = 65535;
                    break;
                case 94842723:
                    if (attributeName.equals("color")) {
                        c10 = '\t';
                        break;
                    }
                    c10 = 65535;
                    break;
                case 109403361:
                    if (attributeName.equals("shear")) {
                        c10 = '\n';
                        break;
                    }
                    c10 = 65535;
                    break;
                case 110138194:
                    if (attributeName.equals("textCombine")) {
                        c10 = 11;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 365601008:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_FONT_SIZE)) {
                        c10 = '\f';
                        break;
                    }
                    c10 = 65535;
                    break;
                case 921125321:
                    if (attributeName.equals("textEmphasis")) {
                        c10 = '\r';
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1115953443:
                    if (attributeName.equals("rubyPosition")) {
                        c10 = 14;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1287124693:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_BACKGROUND_COLOR)) {
                        c10 = 15;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 1754920356:
                    if (attributeName.equals("multiRowAlign")) {
                        c10 = 16;
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
                    gVar = d(gVar).E(TtmlNode.ITALIC.equalsIgnoreCase(attributeValue));
                    break;
                case 1:
                    gVar = d(gVar).y(attributeValue);
                    break;
                case 2:
                    gVar = d(gVar).A(attributeValue);
                    break;
                case 3:
                    gVar = d(gVar).L(f(attributeValue));
                    break;
                case 4:
                    gVar = d(gVar).H(attributeValue);
                    break;
                case 5:
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
                            gVar = d(gVar).O(false);
                            continue;
                        case true:
                            gVar = d(gVar).O(true);
                            continue;
                        case true:
                            gVar = d(gVar).F(false);
                            continue;
                        case true:
                            gVar = d(gVar).F(true);
                            continue;
                    }
                case 6:
                    gVar = d(gVar).x(TtmlNode.BOLD.equalsIgnoreCase(attributeValue));
                    break;
                case 7:
                    if (TtmlNode.TAG_STYLE.equals(xmlPullParser.getName())) {
                        gVar = d(gVar).D(attributeValue);
                        break;
                    } else {
                        break;
                    }
                case '\b':
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
                            gVar = d(gVar).J(2);
                            continue;
                        case true:
                            gVar = d(gVar).J(1);
                            continue;
                        case true:
                            gVar = d(gVar).J(4);
                            continue;
                        case true:
                        case true:
                            gVar = d(gVar).J(3);
                            continue;
                    }
                case '\t':
                    gVar = d(gVar);
                    try {
                        gVar.z(j.c(attributeValue));
                        break;
                    } catch (IllegalArgumentException unused) {
                        cn.r.h("TtmlParser", "Failed parsing color value: " + attributeValue);
                        break;
                    }
                case '\n':
                    gVar = d(gVar).K(n(attributeValue));
                    break;
                case 11:
                    String e12 = h7.a.e(attributeValue);
                    e12.hashCode();
                    if (!e12.equals(Module.ALL)) {
                        if (e12.equals(DevicePublicKeyStringDef.NONE)) {
                            gVar = d(gVar).M(false);
                            break;
                        } else {
                            break;
                        }
                    } else {
                        gVar = d(gVar).M(true);
                        break;
                    }
                case '\f':
                    try {
                        gVar = d(gVar);
                        h(attributeValue, gVar);
                        break;
                    } catch (SubtitleDecoderException unused2) {
                        cn.r.h("TtmlParser", "Failed parsing fontSize value: " + attributeValue);
                        break;
                    }
                case '\r':
                    gVar = d(gVar).N(ep.b.a(attributeValue));
                    break;
                case 14:
                    String e13 = h7.a.e(attributeValue);
                    e13.hashCode();
                    if (!e13.equals("before")) {
                        if (e13.equals("after")) {
                            gVar = d(gVar).I(2);
                            break;
                        } else {
                            break;
                        }
                    } else {
                        gVar = d(gVar).I(1);
                        break;
                    }
                case 15:
                    gVar = d(gVar);
                    try {
                        gVar.w(j.c(attributeValue));
                        break;
                    } catch (IllegalArgumentException unused3) {
                        cn.r.h("TtmlParser", "Failed parsing background value: " + attributeValue);
                        break;
                    }
                case 16:
                    gVar = d(gVar).G(f(attributeValue));
                    break;
            }
        }
        return gVar;
    }

    private static String[] p(String str) {
        String trim = str.trim();
        if (trim.isEmpty()) {
            return new String[0];
        }
        return m0.m1(trim, "\\s+");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00bb, code lost:
        if (r13.equals("ms") == false) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long q(java.lang.String r13, ep.d.a r14) throws io.bidmachine.media3.extractor.text.SubtitleDecoderException {
        /*
            Method dump skipped, instructions count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ep.d.q(java.lang.String, ep.d$a):long");
    }

    @Nullable
    private static b r(XmlPullParser xmlPullParser) {
        String a10 = n0.a(xmlPullParser, TtmlNode.ATTR_TTS_EXTENT);
        if (a10 == null) {
            return null;
        }
        Matcher matcher = f51475g.matcher(a10);
        if (!matcher.matches()) {
            cn.r.h("TtmlParser", "Ignoring non-pixel tts extent: " + a10);
            return null;
        }
        try {
            return new b(Integer.parseInt((String) cn.a.e(matcher.group(1))), Integer.parseInt((String) cn.a.e(matcher.group(2))));
        } catch (NumberFormatException unused) {
            cn.r.h("TtmlParser", "Ignoring malformed tts extent: " + a10);
            return null;
        }
    }

    @Override // yo.r
    public void a(byte[] bArr, int i10, int i11, r.b bVar, l<yo.e> lVar) {
        i.c(c(bArr, i10, i11), bVar, lVar);
    }

    @Override // yo.r
    public int b() {
        return 1;
    }

    @Override // yo.r
    public k c(byte[] bArr, int i10, int i11) {
        char c10;
        a aVar;
        try {
            XmlPullParser newPullParser = this.f51478a.newPullParser();
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            HashMap hashMap3 = new HashMap();
            hashMap2.put("", new e(""));
            b bVar = null;
            newPullParser.setInput(new ByteArrayInputStream(bArr, i10, i11), null);
            ArrayDeque arrayDeque = new ArrayDeque();
            a aVar2 = f51477i;
            h hVar = null;
            int i12 = 0;
            int i13 = 15;
            for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.getEventType()) {
                c cVar = (c) arrayDeque.peek();
                if (i12 == 0) {
                    String name = newPullParser.getName();
                    if (eventType == 2) {
                        if (TtmlNode.TAG_TT.equals(name)) {
                            aVar2 = i(newPullParser);
                            c10 = 15;
                            i13 = g(newPullParser, 15);
                            bVar = r(newPullParser);
                        } else {
                            c10 = 15;
                        }
                        b bVar2 = bVar;
                        a aVar3 = aVar2;
                        int i14 = i13;
                        if (!e(name)) {
                            cn.r.f("TtmlParser", "Ignoring unsupported tag: " + newPullParser.getName());
                            i12++;
                            aVar2 = aVar3;
                            bVar = bVar2;
                            i13 = i14;
                        } else {
                            if (TtmlNode.TAG_HEAD.equals(name)) {
                                aVar = aVar3;
                                j(newPullParser, hashMap, i14, bVar2, hashMap2, hashMap3);
                            } else {
                                aVar = aVar3;
                                try {
                                    c l10 = l(newPullParser, cVar, hashMap2, aVar);
                                    arrayDeque.push(l10);
                                    if (cVar != null) {
                                        cVar.a(l10);
                                    }
                                } catch (SubtitleDecoderException e10) {
                                    cn.r.i("TtmlParser", "Suppressing parser error", e10);
                                    i12++;
                                }
                            }
                            aVar2 = aVar;
                            bVar = bVar2;
                            i13 = i14;
                        }
                    } else if (eventType == 4) {
                        ((c) cn.a.e(cVar)).a(c.d(newPullParser.getText()));
                    } else if (eventType == 3) {
                        if (newPullParser.getName().equals(TtmlNode.TAG_TT)) {
                            hVar = new h((c) cn.a.e((c) arrayDeque.peek()), hashMap, hashMap2, hashMap3);
                        }
                        arrayDeque.pop();
                    }
                } else if (eventType == 2) {
                    i12++;
                } else if (eventType == 3) {
                    i12--;
                }
                newPullParser.next();
            }
            return (k) cn.a.e(hVar);
        } catch (IOException e11) {
            throw new IllegalStateException("Unexpected error when reading input.", e11);
        } catch (XmlPullParserException e12) {
            throw new IllegalStateException("Unable to decode source", e12);
        }
    }
}
