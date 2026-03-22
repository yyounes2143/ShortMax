package kn;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import android.util.Xml;
import androidx.annotation.Nullable;
import androidx.compose.material.TextFieldImplKt;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import cn.j0;
import cn.m0;
import cn.n0;
import cn.r;
import com.applovin.sdk.AppLovinMediationProvider;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttm.player.MediaFormat;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.unity3d.ads.core.data.model.exception.GatewayException;
import io.bidmachine.media3.common.DrmInitData;
import io.bidmachine.media3.common.ParserException;
import io.bidmachine.media3.common.a;
import io.bidmachine.media3.exoplayer.upstream.c;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kn.k;
import org.xml.sax.helpers.DefaultHandler;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import org.xmlpull.v1.XmlSerializer;
import zm.p;
import zm.u;
/* compiled from: DashManifestParser.java */
/* loaded from: classes8.dex */
public class d extends DefaultHandler implements c.a<c> {

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f60818b = Pattern.compile("(\\d+)(?:/(\\d+))?");

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f60819c = Pattern.compile("CC([1-4])=.*");

    /* renamed from: d  reason: collision with root package name */
    private static final Pattern f60820d = Pattern.compile("([1-9]|[1-5][0-9]|6[0-3])=.*");

    /* renamed from: e  reason: collision with root package name */
    private static final int[] f60821e = {2, 1, 2, 2, 2, 2, 1, 2, 2, 1, 1, 1, 1, 2, 1, 1, 2, 2, 2};

    /* renamed from: f  reason: collision with root package name */
    private static final int[] f60822f = {-1, 1, 2, 3, 4, 5, 6, 8, 2, 3, 4, 7, 8, 24, 8, 12, 10, 12, 14, 12, 14};

    /* renamed from: a  reason: collision with root package name */
    private final XmlPullParserFactory f60823a;

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: DashManifestParser.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final io.bidmachine.media3.common.a f60824a;

        /* renamed from: b  reason: collision with root package name */
        public final ImmutableList<b> f60825b;

        /* renamed from: c  reason: collision with root package name */
        public final k f60826c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public final String f60827d;

        /* renamed from: e  reason: collision with root package name */
        public final ArrayList<DrmInitData.SchemeData> f60828e;

        /* renamed from: f  reason: collision with root package name */
        public final ArrayList<e> f60829f;

        /* renamed from: g  reason: collision with root package name */
        public final long f60830g;

        /* renamed from: h  reason: collision with root package name */
        public final List<e> f60831h;

        /* renamed from: i  reason: collision with root package name */
        public final List<e> f60832i;

        public a(io.bidmachine.media3.common.a aVar, List<b> list, k kVar, @Nullable String str, ArrayList<DrmInitData.SchemeData> arrayList, ArrayList<e> arrayList2, List<e> list2, List<e> list3, long j10) {
            this.f60824a = aVar;
            this.f60825b = ImmutableList.u(list);
            this.f60826c = kVar;
            this.f60827d = str;
            this.f60828e = arrayList;
            this.f60829f = arrayList2;
            this.f60831h = list2;
            this.f60832i = list3;
            this.f60830g = j10;
        }
    }

    public d() {
        try {
            this.f60823a = XmlPullParserFactory.newInstance();
        } catch (XmlPullParserException e10) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e10);
        }
    }

    protected static int C(List<e> list) {
        String str;
        for (int i10 = 0; i10 < list.size(); i10++) {
            e eVar = list.get(i10);
            if ("urn:scte:dash:cc:cea-608:2015".equals(eVar.f60833a) && (str = eVar.f60834b) != null) {
                Matcher matcher = f60819c.matcher(str);
                if (matcher.matches()) {
                    return Integer.parseInt(matcher.group(1));
                }
                r.h("MpdParser", "Unable to parse CEA-608 channel number from: " + eVar.f60834b);
            }
        }
        return -1;
    }

    protected static int D(List<e> list) {
        String str;
        for (int i10 = 0; i10 < list.size(); i10++) {
            e eVar = list.get(i10);
            if ("urn:scte:dash:cc:cea-708:2015".equals(eVar.f60833a) && (str = eVar.f60834b) != null) {
                Matcher matcher = f60820d.matcher(str);
                if (matcher.matches()) {
                    return Integer.parseInt(matcher.group(1));
                }
                r.h("MpdParser", "Unable to parse CEA-708 service block number from: " + eVar.f60834b);
            }
        }
        return -1;
    }

    protected static long G(XmlPullParser xmlPullParser, String str, long j10) throws ParserException {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue == null) {
            return j10;
        }
        return m0.a1(attributeValue);
    }

    protected static e H(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        String t02 = t0(xmlPullParser, "schemeIdUri", "");
        String t03 = t0(xmlPullParser, AppMeasurementSdk.ConditionalUserProperty.VALUE, null);
        String t04 = t0(xmlPullParser, "id", null);
        do {
            xmlPullParser.next();
        } while (!n0.d(xmlPullParser, str));
        return new e(t02, t03, t04);
    }

    protected static int I(XmlPullParser xmlPullParser, String str) {
        String attributeValue = xmlPullParser.getAttributeValue(null, AppMeasurementSdk.ConditionalUserProperty.VALUE);
        if (attributeValue != null && attributeValue.length() == 6) {
            int parseInt = Integer.parseInt(attributeValue, 16);
            if ((8388608 & parseInt) != 0) {
                return K(str);
            }
            return J(parseInt);
        }
        return -1;
    }

    private static int J(int i10) {
        int i11 = 0;
        int i12 = 0;
        while (true) {
            int[] iArr = f60821e;
            if (i11 >= iArr.length) {
                break;
            }
            i12 += ((i10 >> i11) & 1) * iArr[i11];
            i11++;
        }
        if (i12 == 0) {
            return -1;
        }
        return i12;
    }

    private static int K(String str) {
        String[] o12 = m0.o1(str);
        if (o12.length == 0) {
            return -1;
        }
        List<String> f10 = com.google.common.base.b.d('.').f(h7.a.e(o12[0].trim()));
        if (f10.size() != 4 || !f10.get(0).equals("ac-4")) {
            return -1;
        }
        String str2 = f10.get(3);
        str2.hashCode();
        if (!str2.equals("03")) {
            if (!str2.equals("04")) {
                return -1;
            }
            return 21;
        }
        return 18;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    protected static int L(XmlPullParser xmlPullParser) {
        char c10;
        String attributeValue = xmlPullParser.getAttributeValue(null, AppMeasurementSdk.ConditionalUserProperty.VALUE);
        if (attributeValue == null) {
            return -1;
        }
        String e10 = h7.a.e(attributeValue);
        e10.hashCode();
        switch (e10.hashCode()) {
            case 1596796:
                if (e10.equals("4000")) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case 2937391:
                if (e10.equals("a000")) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case 3094034:
                if (e10.equals("f800")) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case 3094035:
                if (e10.equals("f801")) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case 3133436:
                if (e10.equals("fa01")) {
                    c10 = 4;
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
            case 2:
                return 5;
            case 3:
                return 6;
            case 4:
                return 8;
            default:
                return -1;
        }
    }

    protected static int M(XmlPullParser xmlPullParser) {
        int W = W(xmlPullParser, AppMeasurementSdk.ConditionalUserProperty.VALUE, -1);
        if (W <= 0 || W >= 33) {
            return -1;
        }
        return W;
    }

    protected static int N(XmlPullParser xmlPullParser) {
        int bitCount;
        String attributeValue = xmlPullParser.getAttributeValue(null, AppMeasurementSdk.ConditionalUserProperty.VALUE);
        if (attributeValue == null || (bitCount = Integer.bitCount(Integer.parseInt(attributeValue, 16))) == 0) {
            return -1;
        }
        return bitCount;
    }

    protected static long O(XmlPullParser xmlPullParser, String str, long j10) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue == null) {
            return j10;
        }
        return m0.b1(attributeValue);
    }

    protected static String P(List<e> list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            e eVar = list.get(i10);
            String str = eVar.f60833a;
            if (!"tag:dolby.com,2018:dash:EC3_ExtensionType:2018".equals(str) || !"JOC".equals(eVar.f60834b)) {
                if ("tag:dolby.com,2014:dash:DolbyDigitalPlusExtensionType:2014".equals(str) && "ec+3".equals(eVar.f60834b)) {
                    return MimeTypes.AUDIO_E_AC3_JOC;
                }
            } else {
                return MimeTypes.AUDIO_E_AC3_JOC;
            }
        }
        return MimeTypes.AUDIO_E_AC3;
    }

    protected static float T(XmlPullParser xmlPullParser, String str, float f10) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue != null) {
            return Float.parseFloat(attributeValue);
        }
        return f10;
    }

    protected static float U(XmlPullParser xmlPullParser, float f10) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "frameRate");
        if (attributeValue != null) {
            Matcher matcher = f60818b.matcher(attributeValue);
            if (matcher.matches()) {
                int parseInt = Integer.parseInt(matcher.group(1));
                String group = matcher.group(2);
                if (!TextUtils.isEmpty(group)) {
                    return parseInt / Integer.parseInt(group);
                }
                return parseInt;
            }
            return f10;
        }
        return f10;
    }

    protected static int W(XmlPullParser xmlPullParser, String str, int i10) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue != null) {
            return Integer.parseInt(attributeValue);
        }
        return i10;
    }

    protected static long Y(List<e> list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            e eVar = list.get(i10);
            if (h7.a.a("http://dashif.org/guidelines/last-segment-number", eVar.f60833a)) {
                return Long.parseLong(eVar.f60834b);
            }
        }
        return -1L;
    }

    protected static long Z(XmlPullParser xmlPullParser, String str, long j10) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue != null) {
            return Long.parseLong(attributeValue);
        }
        return j10;
    }

    private long a(List<k.d> list, long j10, long j11, int i10, long j12) {
        int l10;
        if (i10 >= 0) {
            l10 = i10 + 1;
        } else {
            l10 = (int) m0.l(j12 - j10, j11);
        }
        for (int i11 = 0; i11 < l10; i11++) {
            list.add(l(j10, j11));
            j10 += j11;
        }
        return j10;
    }

    protected static int b0(XmlPullParser xmlPullParser) {
        int W = W(xmlPullParser, AppMeasurementSdk.ConditionalUserProperty.VALUE, -1);
        if (W < 0) {
            return -1;
        }
        int[] iArr = f60822f;
        if (W >= iArr.length) {
            return -1;
        }
        return iArr[W];
    }

    private static int o(int i10, int i11) {
        boolean z10;
        if (i10 == -1) {
            return i11;
        }
        if (i11 == -1) {
            return i10;
        }
        if (i10 == i11) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        return i10;
    }

    @Nullable
    private static String p(@Nullable String str, @Nullable String str2) {
        if (str == null) {
            return str2;
        }
        if (str2 == null) {
            return str;
        }
        cn.a.g(str.equals(str2));
        return str;
    }

    private static void q(ArrayList<DrmInitData.SchemeData> arrayList) {
        String str;
        int i10 = 0;
        while (true) {
            if (i10 < arrayList.size()) {
                DrmInitData.SchemeData schemeData = arrayList.get(i10);
                if (zm.f.f71930c.equals(schemeData.f55107b) && (str = schemeData.f55108c) != null) {
                    arrayList.remove(i10);
                    break;
                }
                i10++;
            } else {
                str = null;
                break;
            }
        }
        if (str == null) {
            return;
        }
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            DrmInitData.SchemeData schemeData2 = arrayList.get(i11);
            if (zm.f.f71929b.equals(schemeData2.f55107b) && schemeData2.f55108c == null) {
                arrayList.set(i11, new DrmInitData.SchemeData(zm.f.f71930c, str, schemeData2.f55109d, schemeData2.f55110e));
            }
        }
    }

    private static void r(ArrayList<DrmInitData.SchemeData> arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            DrmInitData.SchemeData schemeData = arrayList.get(size);
            if (!schemeData.c()) {
                int i10 = 0;
                while (true) {
                    if (i10 >= arrayList.size()) {
                        break;
                    } else if (arrayList.get(i10).a(schemeData)) {
                        arrayList.remove(size);
                        break;
                    } else {
                        i10++;
                    }
                }
            }
        }
    }

    private static long s(long j10, long j11) {
        if (j11 != -9223372036854775807L) {
            j10 = j11;
        }
        if (j10 == Long.MAX_VALUE) {
            return -9223372036854775807L;
        }
        return j10;
    }

    @Nullable
    private static String t(@Nullable String str, @Nullable String str2) {
        if (u.o(str)) {
            return u.c(str2);
        }
        if (u.t(str)) {
            return u.n(str2);
        }
        if (u.s(str)) {
            return str;
        }
        if (u.q(str)) {
            return str;
        }
        if (MimeTypes.APPLICATION_MP4.equals(str)) {
            String g10 = u.g(str2);
            if (MimeTypes.TEXT_VTT.equals(g10)) {
                return MimeTypes.APPLICATION_MP4VTT;
            }
            return g10;
        }
        return null;
    }

    protected static String t0(XmlPullParser xmlPullParser, String str, String str2) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue != null) {
            return attributeValue;
        }
        return str2;
    }

    private boolean u(String[] strArr) {
        for (String str : strArr) {
            if (str.startsWith("urn:dvb:dash:profile:dvb-dash:")) {
                return true;
            }
        }
        return false;
    }

    protected static String u0(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        String str2 = "";
        do {
            xmlPullParser.next();
            if (xmlPullParser.getEventType() == 4) {
                str2 = xmlPullParser.getText();
            } else {
                v(xmlPullParser);
            }
        } while (!n0.d(xmlPullParser, str));
        return str2;
    }

    public static void v(XmlPullParser xmlPullParser) throws IOException, XmlPullParserException {
        if (!n0.e(xmlPullParser)) {
            return;
        }
        int i10 = 1;
        while (i10 != 0) {
            xmlPullParser.next();
            if (n0.e(xmlPullParser)) {
                i10++;
            } else if (n0.c(xmlPullParser)) {
                i10--;
            }
        }
    }

    protected long A(XmlPullParser xmlPullParser, long j10) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "availabilityTimeOffset");
        if (attributeValue == null) {
            return j10;
        }
        if ("INF".equals(attributeValue)) {
            return Long.MAX_VALUE;
        }
        return Float.parseFloat(attributeValue) * 1000000.0f;
    }

    protected List<b> B(XmlPullParser xmlPullParser, List<b> list, boolean z10) throws XmlPullParserException, IOException {
        int i10;
        String str;
        String attributeValue = xmlPullParser.getAttributeValue(null, "dvb:priority");
        int i11 = 1;
        if (attributeValue != null) {
            i10 = Integer.parseInt(attributeValue);
        } else if (z10) {
            i10 = 1;
        } else {
            i10 = Integer.MIN_VALUE;
        }
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "dvb:weight");
        if (attributeValue2 != null) {
            i11 = Integer.parseInt(attributeValue2);
        }
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "serviceLocation");
        String u02 = u0(xmlPullParser, "BaseURL");
        if (j0.c(u02)) {
            if (attributeValue3 == null) {
                attributeValue3 = u02;
            }
            return Lists.j(new b(u02, attributeValue3, i10, i11));
        }
        ArrayList arrayList = new ArrayList();
        for (int i12 = 0; i12 < list.size(); i12++) {
            b bVar = list.get(i12);
            String e10 = j0.e(bVar.f60801a, u02);
            if (attributeValue3 == null) {
                str = e10;
            } else {
                str = attributeValue3;
            }
            if (z10) {
                i10 = bVar.f60803c;
                i11 = bVar.f60804d;
                str = bVar.f60802b;
            }
            arrayList.add(new b(e10, str, i10, i11));
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0126  */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4, types: [byte[]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected android.util.Pair<java.lang.String, io.bidmachine.media3.common.DrmInitData.SchemeData> E(org.xmlpull.v1.XmlPullParser r12) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kn.d.E(org.xmlpull.v1.XmlPullParser):android.util.Pair");
    }

    protected int F(XmlPullParser xmlPullParser) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "contentType");
        if (TextUtils.isEmpty(attributeValue)) {
            return -1;
        }
        if ("audio".equals(attributeValue)) {
            return 1;
        }
        if ("video".equals(attributeValue)) {
            return 2;
        }
        if (MimeTypes.BASE_TYPE_TEXT.equals(attributeValue)) {
            return 3;
        }
        if (!"image".equals(attributeValue)) {
            return -1;
        }
        return 4;
    }

    protected Pair<Long, mo.a> Q(XmlPullParser xmlPullParser, String str, String str2, long j10, long j11, ByteArrayOutputStream byteArrayOutputStream) throws IOException, XmlPullParserException {
        long Z = Z(xmlPullParser, "id", 0L);
        long Z2 = Z(xmlPullParser, "duration", -9223372036854775807L);
        long Z3 = Z(xmlPullParser, "presentationTime", 0L);
        long f12 = m0.f1(Z2, 1000L, j10);
        long f13 = m0.f1(Z3 - j11, 1000000L, j10);
        String t02 = t0(xmlPullParser, "messageData", null);
        byte[] R = R(xmlPullParser, byteArrayOutputStream);
        Long valueOf = Long.valueOf(f13);
        if (t02 != null) {
            R = m0.u0(t02);
        }
        return Pair.create(valueOf, c(str, str2, Z, f12, R));
    }

    protected byte[] R(XmlPullParser xmlPullParser, ByteArrayOutputStream byteArrayOutputStream) throws XmlPullParserException, IOException {
        byteArrayOutputStream.reset();
        XmlSerializer newSerializer = Xml.newSerializer();
        newSerializer.setOutput(byteArrayOutputStream, StandardCharsets.UTF_8.name());
        xmlPullParser.nextToken();
        while (!n0.d(xmlPullParser, "Event")) {
            switch (xmlPullParser.getEventType()) {
                case 0:
                    newSerializer.startDocument(null, Boolean.FALSE);
                    break;
                case 1:
                    newSerializer.endDocument();
                    break;
                case 2:
                    newSerializer.startTag(xmlPullParser.getNamespace(), xmlPullParser.getName());
                    for (int i10 = 0; i10 < xmlPullParser.getAttributeCount(); i10++) {
                        newSerializer.attribute(xmlPullParser.getAttributeNamespace(i10), xmlPullParser.getAttributeName(i10), xmlPullParser.getAttributeValue(i10));
                    }
                    break;
                case 3:
                    newSerializer.endTag(xmlPullParser.getNamespace(), xmlPullParser.getName());
                    break;
                case 4:
                    newSerializer.text(xmlPullParser.getText());
                    break;
                case 5:
                    newSerializer.cdsect(xmlPullParser.getText());
                    break;
                case 6:
                    newSerializer.entityRef(xmlPullParser.getText());
                    break;
                case 7:
                    newSerializer.ignorableWhitespace(xmlPullParser.getText());
                    break;
                case 8:
                    newSerializer.processingInstruction(xmlPullParser.getText());
                    break;
                case 9:
                    newSerializer.comment(xmlPullParser.getText());
                    break;
                case 10:
                    newSerializer.docdecl(xmlPullParser.getText());
                    break;
            }
            xmlPullParser.nextToken();
        }
        newSerializer.flush();
        return byteArrayOutputStream.toByteArray();
    }

    protected f S(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        ByteArrayOutputStream byteArrayOutputStream;
        long j10;
        ArrayList arrayList;
        String t02 = t0(xmlPullParser, "schemeIdUri", "");
        String t03 = t0(xmlPullParser, AppMeasurementSdk.ConditionalUserProperty.VALUE, "");
        long Z = Z(xmlPullParser, "timescale", 1L);
        long Z2 = Z(xmlPullParser, "presentationTimeOffset", 0L);
        ArrayList arrayList2 = new ArrayList();
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream(512);
        while (true) {
            xmlPullParser.next();
            if (n0.f(xmlPullParser, "Event")) {
                byteArrayOutputStream = byteArrayOutputStream2;
                long j11 = Z2;
                j10 = Z2;
                arrayList = arrayList2;
                arrayList.add(Q(xmlPullParser, t02, t03, Z, j11, byteArrayOutputStream));
            } else {
                byteArrayOutputStream = byteArrayOutputStream2;
                j10 = Z2;
                arrayList = arrayList2;
                v(xmlPullParser);
            }
            if (n0.d(xmlPullParser, "EventStream")) {
                break;
            }
            arrayList2 = arrayList;
            byteArrayOutputStream2 = byteArrayOutputStream;
            Z2 = j10;
        }
        long[] jArr = new long[arrayList.size()];
        mo.a[] aVarArr = new mo.a[arrayList.size()];
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            Pair pair = (Pair) arrayList.get(i10);
            jArr[i10] = ((Long) pair.first).longValue();
            aVarArr[i10] = (mo.a) pair.second;
        }
        return d(t02, t03, Z, jArr, aVarArr);
    }

    protected i V(XmlPullParser xmlPullParser) {
        return f0(xmlPullParser, "sourceURL", "range");
    }

    protected p X(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        return new p(xmlPullParser.getAttributeValue(null, CommonConstant.ReqAccessTokenParam.LANGUAGE_LABEL), u0(xmlPullParser, TextFieldImplKt.LabelId));
    }

    /* JADX WARN: Removed duplicated region for block: B:77:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01e6 A[LOOP:0: B:24:0x00a2->B:81:0x01e6, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01a2 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected kn.c a0(org.xmlpull.v1.XmlPullParser r47, android.net.Uri r48) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 500
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kn.d.a0(org.xmlpull.v1.XmlPullParser, android.net.Uri):kn.c");
    }

    protected kn.a b(long j10, int i10, List<j> list, List<e> list2, List<e> list3, List<e> list4) {
        return new kn.a(j10, i10, list, list2, list3, list4);
    }

    protected mo.a c(String str, String str2, long j10, long j11, byte[] bArr) {
        return new mo.a(str, str2, j11, j10, bArr);
    }

    protected Pair<g, Long> c0(XmlPullParser xmlPullParser, List<b> list, long j10, long j11, long j12, long j13, boolean z10) throws XmlPullParserException, IOException {
        long j14;
        long j15;
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        Object obj;
        long j16;
        k n02;
        ArrayList arrayList4;
        d dVar = this;
        XmlPullParser xmlPullParser2 = xmlPullParser;
        Object obj2 = null;
        String attributeValue = xmlPullParser2.getAttributeValue(null, "id");
        long O = O(xmlPullParser2, "start", j10);
        long j17 = -9223372036854775807L;
        if (j12 != -9223372036854775807L) {
            j14 = j12 + O;
        } else {
            j14 = -9223372036854775807L;
        }
        long O2 = O(xmlPullParser2, "duration", -9223372036854775807L);
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        ArrayList arrayList7 = new ArrayList();
        long j18 = j11;
        boolean z11 = false;
        long j19 = -9223372036854775807L;
        k.e eVar = null;
        e eVar2 = null;
        while (true) {
            xmlPullParser.next();
            if (n0.f(xmlPullParser2, "BaseURL")) {
                if (!z11) {
                    j18 = dVar.A(xmlPullParser2, j18);
                    z11 = true;
                }
                arrayList7.addAll(dVar.B(xmlPullParser2, list, z10));
                arrayList3 = arrayList6;
                arrayList = arrayList7;
                j16 = j17;
                obj = obj2;
                arrayList2 = arrayList5;
            } else {
                if (n0.f(xmlPullParser2, "AdaptationSet")) {
                    if (!arrayList7.isEmpty()) {
                        arrayList4 = arrayList7;
                    } else {
                        arrayList4 = list;
                    }
                    j15 = j18;
                    arrayList = arrayList7;
                    arrayList2 = arrayList5;
                    arrayList2.add(x(xmlPullParser, arrayList4, eVar, O2, j18, j19, j14, j13, z10));
                    xmlPullParser2 = xmlPullParser;
                    arrayList3 = arrayList6;
                } else {
                    j15 = j18;
                    ArrayList arrayList8 = arrayList6;
                    arrayList = arrayList7;
                    arrayList2 = arrayList5;
                    xmlPullParser2 = xmlPullParser;
                    if (n0.f(xmlPullParser2, "EventStream")) {
                        arrayList8.add(S(xmlPullParser));
                        arrayList3 = arrayList8;
                    } else if (n0.f(xmlPullParser2, "SegmentBase")) {
                        arrayList3 = arrayList8;
                        eVar = l0(xmlPullParser2, null);
                        obj = null;
                        j18 = j15;
                        j16 = -9223372036854775807L;
                    } else {
                        arrayList3 = arrayList8;
                        if (n0.f(xmlPullParser2, "SegmentList")) {
                            long A = A(xmlPullParser2, -9223372036854775807L);
                            obj = null;
                            n02 = m0(xmlPullParser, null, j14, O2, j15, A, j13);
                            j19 = A;
                            j18 = j15;
                            j16 = -9223372036854775807L;
                        } else {
                            obj = null;
                            if (n0.f(xmlPullParser2, "SegmentTemplate")) {
                                long A2 = A(xmlPullParser2, -9223372036854775807L);
                                j16 = -9223372036854775807L;
                                n02 = n0(xmlPullParser, null, ImmutableList.A(), j14, O2, j15, A2, j13);
                                j19 = A2;
                                j18 = j15;
                            } else {
                                j16 = -9223372036854775807L;
                                if (n0.f(xmlPullParser2, "AssetIdentifier")) {
                                    eVar2 = H(xmlPullParser2, "AssetIdentifier");
                                } else {
                                    v(xmlPullParser);
                                }
                                j18 = j15;
                            }
                        }
                        eVar = n02;
                    }
                }
                obj = null;
                j16 = -9223372036854775807L;
                j18 = j15;
            }
            if (n0.d(xmlPullParser2, "Period")) {
                return Pair.create(g(attributeValue, O, arrayList2, arrayList3, eVar2), Long.valueOf(O2));
            }
            arrayList5 = arrayList2;
            arrayList7 = arrayList;
            obj2 = obj;
            arrayList6 = arrayList3;
            j17 = j16;
            dVar = this;
        }
    }

    protected f d(String str, String str2, long j10, long[] jArr, mo.a[] aVarArr) {
        return new f(str, str2, j10, jArr, aVarArr);
    }

    protected String[] d0(XmlPullParser xmlPullParser, String str, String[] strArr) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue == null) {
            return strArr;
        }
        return attributeValue.split(",");
    }

    protected io.bidmachine.media3.common.a e(@Nullable String str, @Nullable String str2, int i10, int i11, float f10, int i12, int i13, int i14, @Nullable String str3, List<e> list, List<e> list2, @Nullable String str4, @Nullable String str5, @Nullable String str6, List<e> list3, List<e> list4) {
        String str7 = str5;
        String str8 = str4;
        String t10 = t(str2, str8);
        if (MimeTypes.AUDIO_E_AC3.equals(t10)) {
            t10 = P(list4);
            if (MimeTypes.AUDIO_E_AC3_JOC.equals(t10)) {
                str8 = "ec+3";
            }
        }
        if (u.p(str8, str7)) {
            if (str7 == null) {
                str7 = str8;
            }
            t10 = "video/dolby-vision";
            str8 = str7;
        }
        int r02 = r0(list);
        int k02 = k0(list) | h0(list2) | j0(list3) | j0(list4);
        Pair<Integer, Integer> v02 = v0(list3);
        a.b j02 = new a.b().f0(str).U(str2).u0(t10).S(str8).p0(i14).w0(r02).s0(k02).j0(str3);
        int i15 = -1;
        a.b A0 = j02.z0(v02 != null ? ((Integer) v02.first).intValue() : -1).A0(v02 != null ? ((Integer) v02.second).intValue() : -1);
        if (u.t(t10)) {
            A0.B0(i10).d0(i11).b0(f10);
        } else if (u.o(t10)) {
            A0.R(i12).v0(i13);
        } else if (u.s(t10)) {
            if (MimeTypes.APPLICATION_CEA608.equals(t10)) {
                i15 = C(list2);
            } else if (MimeTypes.APPLICATION_CEA708.equals(t10)) {
                i15 = D(list2);
            }
            A0.O(i15);
        } else if (u.q(t10)) {
            A0.B0(i10).d0(i11);
        }
        return A0.N();
    }

    protected h e0(XmlPullParser xmlPullParser) throws IOException, XmlPullParserException {
        String str = null;
        String t02 = t0(xmlPullParser, "moreInformationURL", null);
        String t03 = t0(xmlPullParser, CommonConstant.ReqAccessTokenParam.LANGUAGE_LABEL, null);
        String str2 = null;
        String str3 = null;
        while (true) {
            xmlPullParser.next();
            if (n0.f(xmlPullParser, "Title")) {
                str = xmlPullParser.nextText();
            } else if (n0.f(xmlPullParser, "Source")) {
                str2 = xmlPullParser.nextText();
            } else if (n0.f(xmlPullParser, ExifInterface.TAG_COPYRIGHT)) {
                str3 = xmlPullParser.nextText();
            } else {
                v(xmlPullParser);
            }
            String str4 = str3;
            if (n0.d(xmlPullParser, "ProgramInformation")) {
                return new h(str, str2, str4, t02, t03);
            }
            str3 = str4;
        }
    }

    protected c f(long j10, long j11, long j12, boolean z10, long j13, long j14, long j15, long j16, @Nullable h hVar, @Nullable o oVar, @Nullable l lVar, @Nullable Uri uri, List<g> list) {
        return new c(j10, j11, j12, z10, j13, j14, j15, j16, hVar, oVar, lVar, uri, list);
    }

    protected i f0(XmlPullParser xmlPullParser, String str, String str2) {
        long j10;
        long j11;
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        String attributeValue2 = xmlPullParser.getAttributeValue(null, str2);
        if (attributeValue2 != null) {
            String[] split = attributeValue2.split("-");
            j10 = Long.parseLong(split[0]);
            if (split.length == 2) {
                j11 = (Long.parseLong(split[1]) - j10) + 1;
                return h(attributeValue, j10, j11);
            }
        } else {
            j10 = 0;
        }
        j11 = -1;
        return h(attributeValue, j10, j11);
    }

    protected g g(@Nullable String str, long j10, List<kn.a> list, List<f> list2, @Nullable e eVar) {
        return new g(str, j10, list, list2, eVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x021c A[LOOP:0: B:3:0x007a->B:59:0x021c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01c0 A[EDGE_INSN: B:60:0x01c0->B:49:0x01c0 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected kn.d.a g0(org.xmlpull.v1.XmlPullParser r39, java.util.List<kn.b> r40, @androidx.annotation.Nullable java.lang.String r41, @androidx.annotation.Nullable java.lang.String r42, @androidx.annotation.Nullable java.lang.String r43, @androidx.annotation.Nullable java.lang.String r44, int r45, int r46, float r47, int r48, int r49, @androidx.annotation.Nullable java.lang.String r50, java.util.List<kn.e> r51, java.util.List<kn.e> r52, java.util.List<kn.e> r53, java.util.List<kn.e> r54, @androidx.annotation.Nullable kn.k r55, long r56, long r58, long r60, long r62, long r64, boolean r66) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 556
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kn.d.g0(org.xmlpull.v1.XmlPullParser, java.util.List, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, int, float, int, int, java.lang.String, java.util.List, java.util.List, java.util.List, java.util.List, kn.k, long, long, long, long, long, boolean):kn.d$a");
    }

    protected i h(String str, long j10, long j11) {
        return new i(str, j10, j11);
    }

    protected int h0(List<e> list) {
        int w02;
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            e eVar = list.get(i11);
            if (h7.a.a("urn:mpeg:dash:role:2011", eVar.f60833a)) {
                w02 = i0(eVar.f60834b);
            } else if (h7.a.a("urn:tva:metadata:cs:AudioPurposeCS:2007", eVar.f60833a)) {
                w02 = w0(eVar.f60834b);
            }
            i10 |= w02;
        }
        return i10;
    }

    protected j i(a aVar, @Nullable String str, List<p> list, @Nullable String str2, ArrayList<DrmInitData.SchemeData> arrayList, ArrayList<e> arrayList2) {
        a.b b10 = aVar.f60824a.b();
        if (str != null && list.isEmpty()) {
            b10.h0(str);
        } else {
            b10.i0(list);
        }
        String str3 = aVar.f60827d;
        if (str3 == null) {
            str3 = str2;
        }
        ArrayList<DrmInitData.SchemeData> arrayList3 = aVar.f60828e;
        arrayList3.addAll(arrayList);
        if (!arrayList3.isEmpty()) {
            q(arrayList3);
            r(arrayList3);
            b10.Y(new DrmInitData(str3, arrayList3));
        }
        ArrayList<e> arrayList4 = aVar.f60829f;
        arrayList4.addAll(arrayList2);
        return j.n(aVar.f60830g, b10.N(), aVar.f60825b, aVar.f60826c, arrayList4, aVar.f60831h, aVar.f60832i, null);
    }

    protected int i0(@Nullable String str) {
        if (str == null) {
            return 0;
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case -2060497896:
                if (str.equals(MediaFormat.KEY_SUBTITLE)) {
                    c10 = 0;
                    break;
                }
                break;
            case -1724546052:
                if (str.equals(InMobiNetworkValues.DESCRIPTION)) {
                    c10 = 1;
                    break;
                }
                break;
            case -1580883024:
                if (str.equals("enhanced-audio-intelligibility")) {
                    c10 = 2;
                    break;
                }
                break;
            case -1574842690:
                if (str.equals("forced_subtitle")) {
                    c10 = 3;
                    break;
                }
                break;
            case -1408024454:
                if (str.equals("alternate")) {
                    c10 = 4;
                    break;
                }
                break;
            case -1396432756:
                if (str.equals("forced-subtitle")) {
                    c10 = 5;
                    break;
                }
                break;
            case 99825:
                if (str.equals("dub")) {
                    c10 = 6;
                    break;
                }
                break;
            case 3343801:
                if (str.equals("main")) {
                    c10 = 7;
                    break;
                }
                break;
            case 3530173:
                if (str.equals("sign")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 552573414:
                if (str.equals("caption")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 899152809:
                if (str.equals("commentary")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 1629013393:
                if (str.equals("emergency")) {
                    c10 = 11;
                    break;
                }
                break;
            case 1855372047:
                if (str.equals("supplementary")) {
                    c10 = '\f';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 3:
            case 5:
                return 128;
            case 1:
                return 512;
            case 2:
                return 2048;
            case 4:
                return 2;
            case 6:
                return 16;
            case 7:
                return 1;
            case '\b':
                return 256;
            case '\t':
                return 64;
            case '\n':
                return 8;
            case 11:
                return 32;
            case '\f':
                return 4;
            default:
                return 0;
        }
    }

    protected k.b j(i iVar, long j10, long j11, long j12, long j13, @Nullable List<k.d> list, long j14, @Nullable List<i> list2, long j15, long j16) {
        return new k.b(iVar, j10, j11, j12, j13, list, j14, list2, m0.S0(j15), m0.S0(j16));
    }

    protected int j0(List<e> list) {
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            if (h7.a.a("http://dashif.org/guidelines/trickmode", list.get(i11).f60833a)) {
                i10 = 16384;
            }
        }
        return i10;
    }

    protected k.c k(i iVar, long j10, long j11, long j12, long j13, long j14, List<k.d> list, long j15, @Nullable n nVar, @Nullable n nVar2, long j16, long j17) {
        return new k.c(iVar, j10, j11, j12, j13, j14, list, j15, nVar, nVar2, m0.S0(j16), m0.S0(j17));
    }

    protected int k0(List<e> list) {
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            e eVar = list.get(i11);
            if (h7.a.a("urn:mpeg:dash:role:2011", eVar.f60833a)) {
                i10 |= i0(eVar.f60834b);
            }
        }
        return i10;
    }

    protected k.d l(long j10, long j11) {
        return new k.d(j10, j11);
    }

    protected k.e l0(XmlPullParser xmlPullParser, @Nullable k.e eVar) throws XmlPullParserException, IOException {
        long j10;
        long j11;
        long j12;
        long j13;
        long j14;
        if (eVar != null) {
            j10 = eVar.f60870b;
        } else {
            j10 = 1;
        }
        long Z = Z(xmlPullParser, "timescale", j10);
        long j15 = 0;
        if (eVar != null) {
            j11 = eVar.f60871c;
        } else {
            j11 = 0;
        }
        long Z2 = Z(xmlPullParser, "presentationTimeOffset", j11);
        if (eVar != null) {
            j12 = eVar.f60884d;
        } else {
            j12 = 0;
        }
        if (eVar != null) {
            j15 = eVar.f60885e;
        }
        i iVar = null;
        String attributeValue = xmlPullParser.getAttributeValue(null, "indexRange");
        if (attributeValue != null) {
            String[] split = attributeValue.split("-");
            j14 = Long.parseLong(split[0]);
            j13 = (Long.parseLong(split[1]) - j14) + 1;
        } else {
            j13 = j15;
            j14 = j12;
        }
        if (eVar != null) {
            iVar = eVar.f60869a;
        }
        do {
            xmlPullParser.next();
            if (n0.f(xmlPullParser, "Initialization")) {
                iVar = V(xmlPullParser);
            } else {
                v(xmlPullParser);
            }
        } while (!n0.d(xmlPullParser, "SegmentBase"));
        return m(iVar, Z, Z2, j14, j13);
    }

    protected k.e m(i iVar, long j10, long j11, long j12, long j13) {
        return new k.e(iVar, j10, j11, j12, j13);
    }

    protected k.b m0(XmlPullParser xmlPullParser, @Nullable k.b bVar, long j10, long j11, long j12, long j13, long j14) throws XmlPullParserException, IOException {
        long j15;
        long j16;
        long j17;
        long j18 = 1;
        if (bVar != null) {
            j15 = bVar.f60870b;
        } else {
            j15 = 1;
        }
        long Z = Z(xmlPullParser, "timescale", j15);
        if (bVar != null) {
            j16 = bVar.f60871c;
        } else {
            j16 = 0;
        }
        long Z2 = Z(xmlPullParser, "presentationTimeOffset", j16);
        if (bVar != null) {
            j17 = bVar.f60873e;
        } else {
            j17 = -9223372036854775807L;
        }
        long Z3 = Z(xmlPullParser, "duration", j17);
        if (bVar != null) {
            j18 = bVar.f60872d;
        }
        long Z4 = Z(xmlPullParser, "startNumber", j18);
        long s10 = s(j12, j13);
        List<k.d> list = null;
        List<i> list2 = null;
        i iVar = null;
        do {
            xmlPullParser.next();
            if (n0.f(xmlPullParser, "Initialization")) {
                iVar = V(xmlPullParser);
            } else if (n0.f(xmlPullParser, "SegmentTimeline")) {
                list = o0(xmlPullParser, Z, j11);
            } else if (n0.f(xmlPullParser, "SegmentURL")) {
                if (list2 == null) {
                    list2 = new ArrayList<>();
                }
                list2.add(p0(xmlPullParser));
            } else {
                v(xmlPullParser);
            }
        } while (!n0.d(xmlPullParser, "SegmentList"));
        if (bVar != null) {
            if (iVar == null) {
                iVar = bVar.f60869a;
            }
            if (list == null) {
                list = bVar.f60874f;
            }
            if (list2 == null) {
                list2 = bVar.f60878j;
            }
        }
        return j(iVar, Z, Z2, Z4, Z3, list, s10, list2, j14, j10);
    }

    protected o n(String str, String str2) {
        return new o(str, str2);
    }

    protected k.c n0(XmlPullParser xmlPullParser, @Nullable k.c cVar, List<e> list, long j10, long j11, long j12, long j13, long j14) throws XmlPullParserException, IOException {
        long j15;
        long j16;
        long j17;
        n nVar;
        n nVar2;
        long j18 = 1;
        if (cVar != null) {
            j15 = cVar.f60870b;
        } else {
            j15 = 1;
        }
        long Z = Z(xmlPullParser, "timescale", j15);
        if (cVar != null) {
            j16 = cVar.f60871c;
        } else {
            j16 = 0;
        }
        long Z2 = Z(xmlPullParser, "presentationTimeOffset", j16);
        if (cVar != null) {
            j17 = cVar.f60873e;
        } else {
            j17 = -9223372036854775807L;
        }
        long Z3 = Z(xmlPullParser, "duration", j17);
        if (cVar != null) {
            j18 = cVar.f60872d;
        }
        long Z4 = Z(xmlPullParser, "startNumber", j18);
        long Y = Y(list);
        long s10 = s(j12, j13);
        List<k.d> list2 = null;
        if (cVar != null) {
            nVar = cVar.f60880k;
        } else {
            nVar = null;
        }
        n x02 = x0(xmlPullParser, "media", nVar);
        if (cVar != null) {
            nVar2 = cVar.f60879j;
        } else {
            nVar2 = null;
        }
        n x03 = x0(xmlPullParser, GatewayException.GATEWAY_RESPONSE_DEPTH_INITIALIZATION, nVar2);
        i iVar = null;
        while (true) {
            xmlPullParser.next();
            if (n0.f(xmlPullParser, "Initialization")) {
                iVar = V(xmlPullParser);
            } else if (n0.f(xmlPullParser, "SegmentTimeline")) {
                list2 = o0(xmlPullParser, Z, j11);
            } else {
                v(xmlPullParser);
            }
            if (n0.d(xmlPullParser, "SegmentTemplate")) {
                break;
            }
        }
        if (cVar != null) {
            if (iVar == null) {
                iVar = cVar.f60869a;
            }
            if (list2 == null) {
                list2 = cVar.f60874f;
            }
        }
        return k(iVar, Z, Z2, Z4, Y, Z3, list2, s10, x03, x02, j14, j10);
    }

    protected List<k.d> o0(XmlPullParser xmlPullParser, long j10, long j11) throws XmlPullParserException, IOException {
        ArrayList arrayList = new ArrayList();
        long j12 = 0;
        long j13 = -9223372036854775807L;
        boolean z10 = false;
        int i10 = 0;
        do {
            xmlPullParser.next();
            if (n0.f(xmlPullParser, ExifInterface.LATITUDE_SOUTH)) {
                long Z = Z(xmlPullParser, IVideoEventLogger.LOG_CALLBACK_TIME, -9223372036854775807L);
                if (z10) {
                    j12 = a(arrayList, j12, j13, i10, Z);
                }
                if (Z == -9223372036854775807L) {
                    Z = j12;
                }
                j13 = Z(xmlPullParser, "d", -9223372036854775807L);
                i10 = W(xmlPullParser, "r", 0);
                z10 = true;
                j12 = Z;
            } else {
                v(xmlPullParser);
            }
        } while (!n0.d(xmlPullParser, "SegmentTimeline"));
        if (z10) {
            a(arrayList, j12, j13, i10, m0.f1(j11, j10, 1000L));
        }
        return arrayList;
    }

    protected i p0(XmlPullParser xmlPullParser) {
        return f0(xmlPullParser, "media", "mediaRange");
    }

    protected int q0(@Nullable String str) {
        if (str == null) {
            return 0;
        }
        if (!str.equals("forced_subtitle") && !str.equals("forced-subtitle")) {
            return 0;
        }
        return 2;
    }

    protected int r0(List<e> list) {
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            e eVar = list.get(i11);
            if (h7.a.a("urn:mpeg:dash:role:2011", eVar.f60833a)) {
                i10 |= q0(eVar.f60834b);
            }
        }
        return i10;
    }

    protected l s0(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        long j10 = -9223372036854775807L;
        long j11 = -9223372036854775807L;
        long j12 = -9223372036854775807L;
        float f10 = -3.4028235E38f;
        float f11 = -3.4028235E38f;
        while (true) {
            xmlPullParser.next();
            if (n0.f(xmlPullParser, "Latency")) {
                j10 = Z(xmlPullParser, TypedValues.AttributesType.S_TARGET, -9223372036854775807L);
                j11 = Z(xmlPullParser, "min", -9223372036854775807L);
                j12 = Z(xmlPullParser, AppLovinMediationProvider.MAX, -9223372036854775807L);
            } else if (n0.f(xmlPullParser, "PlaybackRate")) {
                f10 = T(xmlPullParser, "min", -3.4028235E38f);
                f11 = T(xmlPullParser, AppLovinMediationProvider.MAX, -3.4028235E38f);
            }
            long j13 = j10;
            long j14 = j11;
            long j15 = j12;
            float f12 = f10;
            float f13 = f11;
            if (n0.d(xmlPullParser, "ServiceDescription")) {
                return new l(j13, j14, j15, f12, f13);
            }
            j10 = j13;
            j11 = j14;
            j12 = j15;
            f10 = f12;
            f11 = f13;
        }
    }

    @Nullable
    protected Pair<Integer, Integer> v0(List<e> list) {
        String str;
        for (int i10 = 0; i10 < list.size(); i10++) {
            e eVar = list.get(i10);
            if ((h7.a.a("http://dashif.org/thumbnail_tile", eVar.f60833a) || h7.a.a("http://dashif.org/guidelines/thumbnail_tile", eVar.f60833a)) && (str = eVar.f60834b) != null) {
                String[] m12 = m0.m1(str, TextureRenderKeys.KEY_IS_X);
                if (m12.length == 2) {
                    try {
                        return Pair.create(Integer.valueOf(Integer.parseInt(m12[0])), Integer.valueOf(Integer.parseInt(m12[1])));
                    } catch (NumberFormatException unused) {
                        continue;
                    }
                }
            }
        }
        return null;
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.c.a
    /* renamed from: w */
    public c parse(Uri uri, InputStream inputStream) throws IOException {
        try {
            XmlPullParser newPullParser = this.f60823a.newPullParser();
            newPullParser.setInput(inputStream, null);
            if (newPullParser.next() == 2 && "MPD".equals(newPullParser.getName())) {
                return a0(newPullParser, uri);
            }
            throw ParserException.e("inputStream does not contain a valid media presentation description", null);
        } catch (XmlPullParserException e10) {
            throw ParserException.e(null, e10);
        }
    }

    protected int w0(@Nullable String str) {
        if (str == null) {
            return 0;
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case 49:
                if (str.equals("1")) {
                    c10 = 0;
                    break;
                }
                break;
            case 50:
                if (str.equals("2")) {
                    c10 = 1;
                    break;
                }
                break;
            case 51:
                if (str.equals("3")) {
                    c10 = 2;
                    break;
                }
                break;
            case 52:
                if (str.equals("4")) {
                    c10 = 3;
                    break;
                }
                break;
            case 54:
                if (str.equals(SubsSku.SCENE_AD_2_PAY)) {
                    c10 = 4;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 512;
            case 1:
                return 2048;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 1;
            default:
                return 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x0361 A[LOOP:0: B:3:0x008c->B:76:0x0361, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x031f A[EDGE_INSN: B:77:0x031f->B:70:0x031f ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected kn.a x(org.xmlpull.v1.XmlPullParser r61, java.util.List<kn.b> r62, @androidx.annotation.Nullable kn.k r63, long r64, long r66, long r68, long r70, long r72, boolean r74) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 891
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kn.d.x(org.xmlpull.v1.XmlPullParser, java.util.List, kn.k, long, long, long, long, long, boolean):kn.a");
    }

    @Nullable
    protected n x0(XmlPullParser xmlPullParser, String str, @Nullable n nVar) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue != null) {
            return n.b(attributeValue);
        }
        return nVar;
    }

    protected void y(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        v(xmlPullParser);
    }

    protected o y0(XmlPullParser xmlPullParser) {
        return n(xmlPullParser.getAttributeValue(null, "schemeIdUri"), xmlPullParser.getAttributeValue(null, AppMeasurementSdk.ConditionalUserProperty.VALUE));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    protected int z(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        char c10;
        String t02 = t0(xmlPullParser, "schemeIdUri", null);
        t02.hashCode();
        int i10 = -1;
        switch (t02.hashCode()) {
            case -2128649360:
                if (t02.equals("urn:dts:dash:audio_channel_configuration:2012")) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case -2060825028:
                if (t02.equals("tag:dolby.com,2015:dash:audio_channel_configuration:2015")) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case -1352850286:
                if (t02.equals("urn:mpeg:dash:23003:3:audio_channel_configuration:2011")) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case -1138141449:
                if (t02.equals("tag:dolby.com,2014:dash:audio_channel_configuration:2011")) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case -986633423:
                if (t02.equals("urn:mpeg:mpegB:cicp:ChannelConfiguration")) {
                    c10 = 4;
                    break;
                }
                c10 = 65535;
                break;
            case -79006963:
                if (t02.equals("tag:dts.com,2014:dash:audio_channel_configuration:2012")) {
                    c10 = 5;
                    break;
                }
                c10 = 65535;
                break;
            case 312179081:
                if (t02.equals("tag:dts.com,2018:uhd:audio_channel_configuration")) {
                    c10 = 6;
                    break;
                }
                c10 = 65535;
                break;
            case 2036691300:
                if (t02.equals("urn:dolby:dash:audio_channel_configuration:2011")) {
                    c10 = 7;
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
            case 5:
                i10 = M(xmlPullParser);
                break;
            case 1:
                i10 = I(xmlPullParser, str);
                break;
            case 2:
                i10 = W(xmlPullParser, AppMeasurementSdk.ConditionalUserProperty.VALUE, -1);
                break;
            case 3:
            case 7:
                i10 = L(xmlPullParser);
                break;
            case 4:
                i10 = b0(xmlPullParser);
                break;
            case 6:
                i10 = N(xmlPullParser);
                break;
        }
        do {
            xmlPullParser.next();
        } while (!n0.d(xmlPullParser, "AudioChannelConfiguration"));
        return i10;
    }
}
