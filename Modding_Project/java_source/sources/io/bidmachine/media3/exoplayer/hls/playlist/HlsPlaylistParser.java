package io.bidmachine.media3.exoplayer.hls.playlist;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.browser.trusted.sharing.ShareTarget;
import cn.j0;
import cn.m0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.l;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import io.bidmachine.media3.common.DrmInitData;
import io.bidmachine.media3.common.ParserException;
import io.bidmachine.media3.exoplayer.hls.playlist.c;
import io.bidmachine.media3.exoplayer.hls.playlist.d;
import io.bidmachine.media3.exoplayer.upstream.c;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.TreeMap;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import vo.p;
import zm.f;
import zm.u;
/* loaded from: classes8.dex */
public final class HlsPlaylistParser implements c.a<nn.d> {

    /* renamed from: a  reason: collision with root package name */
    private final d f56167a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final c f56168b;

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f56126c = Pattern.compile("AVERAGE-BANDWIDTH=(\\d+)\\b");

    /* renamed from: d  reason: collision with root package name */
    private static final Pattern f56128d = Pattern.compile("VIDEO=\"(.+?)\"");

    /* renamed from: e  reason: collision with root package name */
    private static final Pattern f56130e = Pattern.compile("AUDIO=\"(.+?)\"");

    /* renamed from: f  reason: collision with root package name */
    private static final Pattern f56132f = Pattern.compile("SUBTITLES=\"(.+?)\"");

    /* renamed from: g  reason: collision with root package name */
    private static final Pattern f56134g = Pattern.compile("CLOSED-CAPTIONS=\"(.+?)\"");

    /* renamed from: h  reason: collision with root package name */
    private static final Pattern f56136h = Pattern.compile("[^-]BANDWIDTH=(\\d+)\\b");

    /* renamed from: i  reason: collision with root package name */
    private static final Pattern f56138i = Pattern.compile("CHANNELS=\"(.+?)\"");

    /* renamed from: j  reason: collision with root package name */
    private static final Pattern f56140j = Pattern.compile("VIDEO-RANGE=(SDR|PQ|HLG)");

    /* renamed from: k  reason: collision with root package name */
    private static final Pattern f56142k = Pattern.compile("CODECS=\"(.+?)\"");

    /* renamed from: l  reason: collision with root package name */
    private static final Pattern f56144l = Pattern.compile("SUPPLEMENTAL-CODECS=\"(.+?)\"");

    /* renamed from: m  reason: collision with root package name */
    private static final Pattern f56146m = Pattern.compile("RESOLUTION=(\\d+x\\d+)");

    /* renamed from: n  reason: collision with root package name */
    private static final Pattern f56148n = Pattern.compile("FRAME-RATE=([\\d\\.]+)\\b");

    /* renamed from: o  reason: collision with root package name */
    private static final Pattern f56150o = Pattern.compile("#EXT-X-TARGETDURATION:(\\d+)\\b");

    /* renamed from: p  reason: collision with root package name */
    private static final Pattern f56152p = Pattern.compile("DURATION=([\\d\\.]+)\\b");

    /* renamed from: q  reason: collision with root package name */
    private static final Pattern f56154q = Pattern.compile("[:,]DURATION=([\\d\\.]+)\\b");

    /* renamed from: r  reason: collision with root package name */
    private static final Pattern f56156r = Pattern.compile("PART-TARGET=([\\d\\.]+)\\b");

    /* renamed from: s  reason: collision with root package name */
    private static final Pattern f56158s = Pattern.compile("#EXT-X-VERSION:(\\d+)\\b");

    /* renamed from: t  reason: collision with root package name */
    private static final Pattern f56160t = Pattern.compile("#EXT-X-PLAYLIST-TYPE:(.+)\\b");

    /* renamed from: u  reason: collision with root package name */
    private static final Pattern f56161u = Pattern.compile("CAN-SKIP-UNTIL=([\\d\\.]+)\\b");

    /* renamed from: v  reason: collision with root package name */
    private static final Pattern f56162v = b("CAN-SKIP-DATERANGES");

    /* renamed from: w  reason: collision with root package name */
    private static final Pattern f56163w = Pattern.compile("SKIPPED-SEGMENTS=(\\d+)\\b");

    /* renamed from: x  reason: collision with root package name */
    private static final Pattern f56164x = Pattern.compile("[:|,]HOLD-BACK=([\\d\\.]+)\\b");

    /* renamed from: y  reason: collision with root package name */
    private static final Pattern f56165y = Pattern.compile("PART-HOLD-BACK=([\\d\\.]+)\\b");

    /* renamed from: z  reason: collision with root package name */
    private static final Pattern f56166z = b("CAN-BLOCK-RELOAD");
    private static final Pattern A = Pattern.compile("#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b");
    private static final Pattern B = Pattern.compile("#EXTINF:([\\d\\.]+)\\b");
    private static final Pattern C = Pattern.compile("#EXTINF:[\\d\\.]+\\b,(.+)");
    private static final Pattern D = Pattern.compile("LAST-MSN=(\\d+)\\b");
    private static final Pattern E = Pattern.compile("LAST-PART=(\\d+)\\b");
    private static final Pattern F = Pattern.compile("TIME-OFFSET=(-?[\\d\\.]+)\\b");
    private static final Pattern G = Pattern.compile("#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b");
    private static final Pattern H = Pattern.compile("BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\"");
    private static final Pattern I = Pattern.compile("BYTERANGE-START=(\\d+)\\b");
    private static final Pattern J = Pattern.compile("BYTERANGE-LENGTH=(\\d+)\\b");
    private static final Pattern K = Pattern.compile("METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)");
    private static final Pattern L = Pattern.compile("KEYFORMAT=\"(.+?)\"");
    private static final Pattern M = Pattern.compile("KEYFORMATVERSIONS=\"(.+?)\"");
    private static final Pattern N = Pattern.compile("URI=\"(.+?)\"");
    private static final Pattern O = Pattern.compile("IV=([^,.*]+)");
    private static final Pattern P = Pattern.compile("TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)");
    private static final Pattern Q = Pattern.compile("TYPE=(PART|MAP)");
    private static final Pattern R = Pattern.compile("LANGUAGE=\"(.+?)\"");
    private static final Pattern S = Pattern.compile("NAME=\"(.+?)\"");
    private static final Pattern T = Pattern.compile("GROUP-ID=\"(.+?)\"");
    private static final Pattern U = Pattern.compile("CHARACTERISTICS=\"(.+?)\"");
    private static final Pattern V = Pattern.compile("INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\"");
    private static final Pattern W = b("AUTOSELECT");
    private static final Pattern X = b("DEFAULT");
    private static final Pattern Y = b("FORCED");
    private static final Pattern Z = b("INDEPENDENT");

    /* renamed from: a0  reason: collision with root package name */
    private static final Pattern f56124a0 = b("GAP");

    /* renamed from: b0  reason: collision with root package name */
    private static final Pattern f56125b0 = b("PRECISE");

    /* renamed from: c0  reason: collision with root package name */
    private static final Pattern f56127c0 = Pattern.compile("VALUE=\"(.+?)\"");

    /* renamed from: d0  reason: collision with root package name */
    private static final Pattern f56129d0 = Pattern.compile("IMPORT=\"(.+?)\"");

    /* renamed from: e0  reason: collision with root package name */
    private static final Pattern f56131e0 = Pattern.compile("[:,]ID=\"(.+?)\"");

    /* renamed from: f0  reason: collision with root package name */
    private static final Pattern f56133f0 = Pattern.compile("CLASS=\"(.+?)\"");

    /* renamed from: g0  reason: collision with root package name */
    private static final Pattern f56135g0 = Pattern.compile("START-DATE=\"(.+?)\"");

    /* renamed from: h0  reason: collision with root package name */
    private static final Pattern f56137h0 = Pattern.compile("CUE=\"(.+?)\"");

    /* renamed from: i0  reason: collision with root package name */
    private static final Pattern f56139i0 = Pattern.compile("END-DATE=\"(.+?)\"");

    /* renamed from: j0  reason: collision with root package name */
    private static final Pattern f56141j0 = Pattern.compile("PLANNED-DURATION=([\\d\\.]+)\\b");

    /* renamed from: k0  reason: collision with root package name */
    private static final Pattern f56143k0 = b("END-ON-NEXT");

    /* renamed from: l0  reason: collision with root package name */
    private static final Pattern f56145l0 = Pattern.compile("X-ASSET-URI=\"(.+?)\"");

    /* renamed from: m0  reason: collision with root package name */
    private static final Pattern f56147m0 = Pattern.compile("X-ASSET-LIST=\"(.+?)\"");

    /* renamed from: n0  reason: collision with root package name */
    private static final Pattern f56149n0 = Pattern.compile("X-RESUME-OFFSET=(-?[\\d\\.]+)\\b");

    /* renamed from: o0  reason: collision with root package name */
    private static final Pattern f56151o0 = Pattern.compile("X-PLAYOUT-LIMIT=([\\d\\.]+)\\b");

    /* renamed from: p0  reason: collision with root package name */
    private static final Pattern f56153p0 = Pattern.compile("X-SNAP=\"(.+?)\"");

    /* renamed from: q0  reason: collision with root package name */
    private static final Pattern f56155q0 = Pattern.compile("X-RESTRICT=\"(.+?)\"");

    /* renamed from: r0  reason: collision with root package name */
    private static final Pattern f56157r0 = Pattern.compile("\\{\\$([a-zA-Z0-9\\-_]+)\\}");

    /* renamed from: s0  reason: collision with root package name */
    private static final Pattern f56159s0 = Pattern.compile("\\b(X-[A-Z0-9-]+)=");

    /* loaded from: classes8.dex */
    public static final class DeltaUpdateException extends IOException {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final BufferedReader f56169a;

        /* renamed from: b  reason: collision with root package name */
        private final Queue<String> f56170b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private String f56171c;

        public a(Queue<String> queue, BufferedReader bufferedReader) {
            this.f56170b = queue;
            this.f56169a = bufferedReader;
        }

        public boolean a() throws IOException {
            String trim;
            if (this.f56171c != null) {
                return true;
            }
            if (!this.f56170b.isEmpty()) {
                this.f56171c = (String) cn.a.e(this.f56170b.poll());
                return true;
            }
            do {
                String readLine = this.f56169a.readLine();
                this.f56171c = readLine;
                if (readLine != null) {
                    trim = readLine.trim();
                    this.f56171c = trim;
                } else {
                    return false;
                }
            } while (trim.isEmpty());
            return true;
        }

        public String b() throws IOException {
            if (a()) {
                String str = this.f56171c;
                this.f56171c = null;
                return str;
            }
            throw new NoSuchElementException();
        }
    }

    public HlsPlaylistParser() {
        this(d.f56266n, null);
    }

    private static String A(String str, Pattern pattern, Map<String, String> map) throws ParserException {
        String w10 = w(str, pattern, map);
        if (w10 != null) {
            return w10;
        }
        throw ParserException.e("Couldn't match " + pattern.pattern() + " in " + str, null);
    }

    private static long B(String str, Pattern pattern) throws ParserException {
        return new BigDecimal(A(str, pattern, Collections.emptyMap())).multiply(new BigDecimal(1000000L)).longValue();
    }

    private static String C(String str, Map<String, String> map) {
        Matcher matcher = f56157r0.matcher(str);
        StringBuffer stringBuffer = new StringBuffer();
        while (matcher.find()) {
            String group = matcher.group(1);
            if (map.containsKey(group)) {
                matcher.appendReplacement(stringBuffer, Matcher.quoteReplacement(map.get(group)));
            }
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    private static int D(BufferedReader bufferedReader, boolean z10, int i10) throws IOException {
        while (i10 != -1 && Character.isWhitespace(i10) && (z10 || !m0.I0(i10))) {
            i10 = bufferedReader.read();
        }
        return i10;
    }

    private static boolean a(BufferedReader bufferedReader) throws IOException {
        int read = bufferedReader.read();
        if (read == 239) {
            if (bufferedReader.read() != 187 || bufferedReader.read() != 191) {
                return false;
            }
            read = bufferedReader.read();
        }
        int D2 = D(bufferedReader, true, read);
        for (int i10 = 0; i10 < 7; i10++) {
            if (D2 != "#EXTM3U".charAt(i10)) {
                return false;
            }
            D2 = bufferedReader.read();
        }
        return m0.I0(D(bufferedReader, false, D2));
    }

    private static Pattern b(String str) {
        return Pattern.compile(str + "=(NO" + HiAnalyticsConstant.REPORT_VAL_SEPARATOR + "YES)");
    }

    private static DrmInitData c(@Nullable String str, DrmInitData.SchemeData[] schemeDataArr) {
        DrmInitData.SchemeData[] schemeDataArr2 = new DrmInitData.SchemeData[schemeDataArr.length];
        for (int i10 = 0; i10 < schemeDataArr.length; i10++) {
            schemeDataArr2[i10] = schemeDataArr[i10].b(null);
        }
        return new DrmInitData(str, schemeDataArr2);
    }

    @Nullable
    private static String d(long j10, @Nullable String str, @Nullable String str2) {
        if (str == null) {
            return null;
        }
        if (str2 != null) {
            return str2;
        }
        return Long.toHexString(j10);
    }

    @Nullable
    private static d.b e(ArrayList<d.b> arrayList, String str) {
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            d.b bVar = arrayList.get(i10);
            if (str.equals(bVar.f56284d)) {
                return bVar;
            }
        }
        return null;
    }

    @Nullable
    private static d.b f(ArrayList<d.b> arrayList, String str) {
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            d.b bVar = arrayList.get(i10);
            if (str.equals(bVar.f56285e)) {
                return bVar;
            }
        }
        return null;
    }

    @Nullable
    private static d.b g(ArrayList<d.b> arrayList, String str) {
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            d.b bVar = arrayList.get(i10);
            if (str.equals(bVar.f56283c)) {
                return bVar;
            }
        }
        return null;
    }

    private static boolean h(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
        if (!u.p(str2, str3)) {
            return false;
        }
        if (str3 == null) {
            return true;
        }
        if (str == null || str4 == null) {
            return false;
        }
        if ((str.equals("PQ") && !str4.equals("db1p")) || ((str.equals("SDR") && !str4.equals("db2g")) || (str.equals("HLG") && !str4.startsWith("db4")))) {
            return false;
        }
        return true;
    }

    private static c.b j(String str, String str2, Map<String, String> map) throws ParserException {
        int i10;
        String str3 = str2 + ContainerUtils.KEY_VALUE_DELIMITER;
        int indexOf = str.indexOf(str3) + str3.length();
        if (str.length() == indexOf + 1) {
            i10 = 1;
        } else {
            i10 = 2;
        }
        String substring = str.substring(indexOf, i10 + indexOf);
        if (substring.startsWith("\"")) {
            return new c.b(str2, A(str, Pattern.compile(str2 + "=\"(.+?)\""), map), 0);
        } else if (!substring.equals("0x") && !substring.equals("0X")) {
            return new c.b(str2, k(str, Pattern.compile(str2 + "=([\\d\\.]+)\\b")));
        } else {
            return new c.b(str2, A(str, Pattern.compile(str2 + "=(0[xX][A-F0-9]+)"), map), 1);
        }
    }

    private static double k(String str, Pattern pattern) throws ParserException {
        return Double.parseDouble(A(str, pattern, Collections.emptyMap()));
    }

    @Nullable
    private static DrmInitData.SchemeData l(String str, String str2, Map<String, String> map) throws ParserException {
        String v10 = v(str, M, "1", map);
        if ("urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed".equals(str2)) {
            String A2 = A(str, N, map);
            return new DrmInitData.SchemeData(f.f71931d, MimeTypes.VIDEO_MP4, Base64.decode(A2.substring(A2.indexOf(44)), 0));
        } else if ("com.widevine".equals(str2)) {
            return new DrmInitData.SchemeData(f.f71931d, TTVideoEngineInterface.FORMAT_TYPE_HLS, m0.u0(str));
        } else {
            if ("com.microsoft.playready".equals(str2) && "1".equals(v10)) {
                String A3 = A(str, N, map);
                byte[] decode = Base64.decode(A3.substring(A3.indexOf(44)), 0);
                UUID uuid = f.f71932e;
                return new DrmInitData.SchemeData(uuid, MimeTypes.VIDEO_MP4, p.a(uuid, decode));
            }
            return null;
        }
    }

    private static String m(String str) {
        if (!"SAMPLE-AES-CENC".equals(str) && !"SAMPLE-AES-CTR".equals(str)) {
            return C.CENC_TYPE_cbcs;
        }
        return C.CENC_TYPE_cenc;
    }

    private static int n(String str, Pattern pattern) throws ParserException {
        return Integer.parseInt(A(str, pattern, Collections.emptyMap()));
    }

    private static long o(String str, Pattern pattern) throws ParserException {
        return Long.parseLong(A(str, pattern, Collections.emptyMap()));
    }

    private static c p(d dVar, @Nullable c cVar, a aVar, String str) throws IOException {
        int i10;
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        ArrayList arrayList5;
        ArrayList arrayList6;
        ArrayList arrayList7;
        String str2;
        long j10;
        String str3;
        int i11;
        c.d dVar2;
        String w10;
        String str4;
        long j11;
        long j12;
        ArrayList arrayList8;
        String str5;
        long j13;
        long j14;
        String str6;
        DrmInitData drmInitData;
        Matcher matcher;
        char c10;
        ArrayList arrayList9;
        String[] strArr;
        char c11;
        long j15;
        d dVar3 = dVar;
        c cVar2 = cVar;
        boolean z10 = dVar3.f62986c;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        ArrayList arrayList10 = new ArrayList();
        ArrayList arrayList11 = new ArrayList();
        ArrayList arrayList12 = new ArrayList();
        ArrayList arrayList13 = new ArrayList();
        ArrayList arrayList14 = new ArrayList();
        c.h hVar = new c.h(-9223372036854775807L, false, -9223372036854775807L, -9223372036854775807L, false);
        TreeMap treeMap = new TreeMap();
        boolean z11 = false;
        String str7 = "";
        boolean z12 = z10;
        c.h hVar2 = hVar;
        int i12 = 0;
        boolean z13 = false;
        boolean z14 = false;
        int i13 = 0;
        boolean z15 = false;
        boolean z16 = false;
        int i14 = 0;
        boolean z17 = false;
        long j16 = -9223372036854775807L;
        long j17 = -9223372036854775807L;
        long j18 = -9223372036854775807L;
        long j19 = 0;
        long j20 = 0;
        long j21 = 0;
        long j22 = 0;
        long j23 = 0;
        long j24 = 0;
        long j25 = 0;
        long j26 = 0;
        String str8 = str7;
        int i15 = 1;
        DrmInitData drmInitData2 = null;
        DrmInitData drmInitData3 = null;
        String str9 = null;
        long j27 = -1;
        String str10 = null;
        String str11 = null;
        c.f fVar = null;
        ArrayList arrayList15 = arrayList11;
        c.d dVar4 = null;
        while (aVar.a()) {
            String b10 = aVar.b();
            if (b10.startsWith("#EXT")) {
                arrayList13.add(b10);
            }
            if (b10.startsWith("#EXT-X-PLAYLIST-TYPE")) {
                String A2 = A(b10, f56160t, hashMap);
                if ("VOD".equals(A2)) {
                    i12 = 1;
                } else if ("EVENT".equals(A2)) {
                    i12 = 2;
                }
            } else if (b10.equals("#EXT-X-I-FRAMES-ONLY")) {
                z17 = true;
            } else {
                if (b10.startsWith("#EXT-X-START")) {
                    arrayList = arrayList10;
                    j16 = (long) (k(b10, F) * 1000000.0d);
                    z13 = r(b10, f56125b0, z11);
                } else {
                    arrayList = arrayList10;
                    if (b10.startsWith("#EXT-X-SERVER-CONTROL")) {
                        hVar2 = z(b10);
                    } else if (b10.startsWith("#EXT-X-PART-INF")) {
                        j18 = (long) (k(b10, f56156r) * 1000000.0d);
                    } else if (b10.startsWith("#EXT-X-MAP")) {
                        String A3 = A(b10, N, hashMap);
                        String w11 = w(b10, H, hashMap);
                        if (w11 != null) {
                            String[] m12 = m0.m1(w11, "@");
                            j27 = Long.parseLong(m12[z11 ? 1 : 0]);
                            if (m12.length > 1) {
                                j21 = Long.parseLong(m12[1]);
                            }
                        }
                        int i16 = (j27 > (-1L) ? 1 : (j27 == (-1L) ? 0 : -1));
                        if (i16 == 0) {
                            j21 = 0;
                        }
                        String str12 = str9;
                        if (str12 != null && str10 == null) {
                            throw ParserException.e("The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128.", null);
                        }
                        fVar = new c.f(A3, j21, j27, str12, str10);
                        if (i16 != 0) {
                            j21 += j27;
                        }
                        arrayList10 = arrayList;
                        str9 = str12;
                        j27 = -1;
                    } else {
                        String str13 = str9;
                        String str14 = str10;
                        if (b10.startsWith("#EXT-X-TARGETDURATION")) {
                            arrayList2 = arrayList14;
                            j17 = 1000000 * n(b10, f56150o);
                        } else {
                            arrayList2 = arrayList14;
                            if (b10.startsWith("#EXT-X-MEDIA-SEQUENCE")) {
                                j24 = o(b10, A);
                                arrayList10 = arrayList;
                                str9 = str13;
                                arrayList14 = arrayList2;
                                j20 = j24;
                                str10 = str14;
                                z11 = false;
                            } else if (b10.startsWith("#EXT-X-VERSION")) {
                                i15 = n(b10, f56158s);
                            } else {
                                if (b10.startsWith("#EXT-X-DEFINE")) {
                                    String w12 = w(b10, f56129d0, hashMap);
                                    if (w12 != null) {
                                        String str15 = dVar3.f56275l.get(w12);
                                        if (str15 != null) {
                                            hashMap.put(w12, str15);
                                        }
                                    } else {
                                        hashMap.put(A(b10, S, hashMap), A(b10, f56127c0, hashMap));
                                    }
                                    arrayList3 = arrayList;
                                    arrayList4 = arrayList12;
                                    arrayList5 = arrayList15;
                                    arrayList6 = arrayList13;
                                    arrayList7 = arrayList2;
                                    str2 = str11;
                                    j10 = j24;
                                    str3 = str14;
                                    i11 = i12;
                                } else if (b10.startsWith("#EXTINF")) {
                                    j25 = B(b10, B);
                                    str8 = v(b10, C, str7, hashMap);
                                } else {
                                    String str16 = str7;
                                    if (b10.startsWith("#EXT-X-SKIP")) {
                                        int n10 = n(b10, f56163w);
                                        cn.a.g(cVar2 != null && arrayList.isEmpty());
                                        str7 = str16;
                                        int i17 = (int) (j20 - ((c) m0.i(cVar)).f56212k);
                                        int i18 = n10 + i17;
                                        if (i17 < 0 || i18 > cVar2.f56219r.size()) {
                                            throw new DeltaUpdateException();
                                        }
                                        long j28 = j23;
                                        while (i17 < i18) {
                                            c.f fVar2 = cVar2.f56219r.get(i17);
                                            ArrayList arrayList16 = arrayList15;
                                            ArrayList arrayList17 = arrayList13;
                                            if (j20 != cVar2.f56212k) {
                                                fVar2 = fVar2.b(j28, (cVar2.f56211j - i13) + fVar2.f56253d);
                                            }
                                            arrayList.add(fVar2);
                                            j28 += fVar2.f56252c;
                                            long j29 = fVar2.f56259j;
                                            if (j29 != -1) {
                                                j21 = fVar2.f56258i + j29;
                                            }
                                            int i19 = fVar2.f56253d;
                                            c.f fVar3 = fVar2.f56251b;
                                            DrmInitData drmInitData4 = fVar2.f56255f;
                                            String str17 = fVar2.f56256g;
                                            String str18 = fVar2.f56257h;
                                            if (str18 == null || !str18.equals(Long.toHexString(j24))) {
                                                str14 = fVar2.f56257h;
                                            }
                                            j24++;
                                            i17++;
                                            cVar2 = cVar;
                                            str13 = str17;
                                            j22 = j28;
                                            i14 = i19;
                                            fVar = fVar3;
                                            arrayList13 = arrayList17;
                                            drmInitData3 = drmInitData4;
                                            arrayList15 = arrayList16;
                                        }
                                        dVar3 = dVar;
                                        cVar2 = cVar;
                                        str9 = str13;
                                        j23 = j28;
                                        arrayList14 = arrayList2;
                                        str10 = str14;
                                        z11 = false;
                                    } else {
                                        ArrayList arrayList18 = arrayList15;
                                        arrayList6 = arrayList13;
                                        str7 = str16;
                                        if (b10.startsWith("#EXT-X-KEY")) {
                                            String A4 = A(b10, K, hashMap);
                                            String v10 = v(b10, L, "identity", hashMap);
                                            if ("NONE".equals(A4)) {
                                                treeMap.clear();
                                                str4 = null;
                                                w10 = null;
                                                drmInitData3 = null;
                                            } else {
                                                w10 = w(b10, O, hashMap);
                                                if ("identity".equals(v10)) {
                                                    if ("AES-128".equals(A4)) {
                                                        str4 = A(b10, N, hashMap);
                                                    }
                                                    str4 = null;
                                                } else {
                                                    String str19 = str11;
                                                    str11 = str19 == null ? m(A4) : str19;
                                                    DrmInitData.SchemeData l10 = l(b10, v10, hashMap);
                                                    if (l10 != null) {
                                                        treeMap.put(v10, l10);
                                                        str4 = null;
                                                        drmInitData3 = null;
                                                    }
                                                    str4 = null;
                                                }
                                            }
                                            cVar2 = cVar;
                                            str9 = str4;
                                            arrayList10 = arrayList;
                                            arrayList15 = arrayList18;
                                            arrayList14 = arrayList2;
                                            z11 = false;
                                            dVar3 = dVar;
                                        } else {
                                            String str20 = str11;
                                            if (b10.startsWith("#EXT-X-BYTERANGE")) {
                                                String[] m13 = m0.m1(A(b10, G, hashMap), "@");
                                                j27 = Long.parseLong(m13[0]);
                                                if (m13.length > 1) {
                                                    j21 = Long.parseLong(m13[1]);
                                                }
                                            } else if (b10.startsWith("#EXT-X-DISCONTINUITY-SEQUENCE")) {
                                                i13 = Integer.parseInt(b10.substring(b10.indexOf(58) + 1));
                                                dVar3 = dVar;
                                                cVar2 = cVar;
                                                arrayList10 = arrayList;
                                                str11 = str20;
                                                z14 = true;
                                                str9 = str13;
                                                arrayList15 = arrayList18;
                                                arrayList14 = arrayList2;
                                                str10 = str14;
                                                arrayList13 = arrayList6;
                                                z11 = false;
                                            } else if (b10.equals("#EXT-X-DISCONTINUITY")) {
                                                i14++;
                                            } else {
                                                if (b10.startsWith("#EXT-X-PROGRAM-DATE-TIME")) {
                                                    if (j19 == 0) {
                                                        j19 = m0.S0(m0.a1(b10.substring(b10.indexOf(58) + 1))) - j23;
                                                    }
                                                } else if (b10.equals("#EXT-X-GAP")) {
                                                    dVar3 = dVar;
                                                    cVar2 = cVar;
                                                    arrayList10 = arrayList;
                                                    str11 = str20;
                                                    str9 = str13;
                                                    arrayList15 = arrayList18;
                                                    arrayList14 = arrayList2;
                                                    str10 = str14;
                                                    arrayList13 = arrayList6;
                                                    z11 = false;
                                                    z16 = true;
                                                } else if (b10.equals("#EXT-X-INDEPENDENT-SEGMENTS")) {
                                                    dVar3 = dVar;
                                                    cVar2 = cVar;
                                                    arrayList10 = arrayList;
                                                    str11 = str20;
                                                    str9 = str13;
                                                    arrayList15 = arrayList18;
                                                    arrayList14 = arrayList2;
                                                    str10 = str14;
                                                    arrayList13 = arrayList6;
                                                    z11 = false;
                                                    z12 = true;
                                                } else if (b10.equals("#EXT-X-ENDLIST")) {
                                                    dVar3 = dVar;
                                                    cVar2 = cVar;
                                                    arrayList10 = arrayList;
                                                    str11 = str20;
                                                    str9 = str13;
                                                    arrayList15 = arrayList18;
                                                    arrayList14 = arrayList2;
                                                    str10 = str14;
                                                    arrayList13 = arrayList6;
                                                    z11 = false;
                                                    z15 = true;
                                                } else if (b10.startsWith("#EXT-X-RENDITION-REPORT")) {
                                                    arrayList12.add(new c.e(Uri.parse(j0.e(str, A(b10, N, hashMap))), u(b10, D, -1L), t(b10, E, -1)));
                                                } else if (b10.startsWith("#EXT-X-PRELOAD-HINT")) {
                                                    if (dVar4 == null && "PART".equals(A(b10, Q, hashMap))) {
                                                        String A5 = A(b10, N, hashMap);
                                                        long u10 = u(b10, I, -1L);
                                                        long u11 = u(b10, J, -1L);
                                                        long j30 = j24;
                                                        w10 = str14;
                                                        String d10 = d(j30, str13, w10);
                                                        if (drmInitData3 != null || treeMap.isEmpty()) {
                                                            j15 = j30;
                                                        } else {
                                                            j15 = j30;
                                                            DrmInitData.SchemeData[] schemeDataArr = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                                            DrmInitData drmInitData5 = new DrmInitData(str20, schemeDataArr);
                                                            if (drmInitData2 == null) {
                                                                drmInitData2 = c(str20, schemeDataArr);
                                                            }
                                                            drmInitData3 = drmInitData5;
                                                        }
                                                        int i20 = (u10 > (-1L) ? 1 : (u10 == (-1L) ? 0 : -1));
                                                        if (i20 == 0 || u11 != -1) {
                                                            dVar4 = new c.d(A5, fVar, 0L, i14, j22, drmInitData3, str13, d10, i20 != 0 ? u10 : 0L, u11, false, false, true);
                                                        }
                                                        dVar3 = dVar;
                                                        cVar2 = cVar;
                                                        arrayList10 = arrayList;
                                                        str11 = str20;
                                                        str9 = str13;
                                                        j24 = j15;
                                                        arrayList15 = arrayList18;
                                                        arrayList14 = arrayList2;
                                                        z11 = false;
                                                    }
                                                } else {
                                                    long j31 = j24;
                                                    str3 = str14;
                                                    if (b10.startsWith("#EXT-X-PART")) {
                                                        String d11 = d(j31, str13, str3);
                                                        String A6 = A(b10, N, hashMap);
                                                        c.d dVar5 = dVar4;
                                                        ArrayList arrayList19 = arrayList12;
                                                        long k10 = (long) (k(b10, f56152p) * 1000000.0d);
                                                        int i21 = i12;
                                                        boolean r10 = r(b10, Z, false) | (z12 && arrayList18.isEmpty());
                                                        boolean r11 = r(b10, f56124a0, false);
                                                        String w13 = w(b10, H, hashMap);
                                                        if (w13 != null) {
                                                            String[] m14 = m0.m1(w13, "@");
                                                            j12 = Long.parseLong(m14[0]);
                                                            if (m14.length > 1) {
                                                                j26 = Long.parseLong(m14[1]);
                                                            }
                                                            j11 = -1;
                                                        } else {
                                                            j11 = -1;
                                                            j12 = -1;
                                                        }
                                                        int i22 = (j12 > j11 ? 1 : (j12 == j11 ? 0 : -1));
                                                        if (i22 == 0) {
                                                            j26 = 0;
                                                        }
                                                        if (drmInitData3 == null && !treeMap.isEmpty()) {
                                                            DrmInitData.SchemeData[] schemeDataArr2 = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                                            DrmInitData drmInitData6 = new DrmInitData(str20, schemeDataArr2);
                                                            if (drmInitData2 == null) {
                                                                drmInitData2 = c(str20, schemeDataArr2);
                                                            }
                                                            drmInitData3 = drmInitData6;
                                                        }
                                                        arrayList18.add(new c.d(A6, fVar, k10, i14, j22, drmInitData3, str13, d11, j26, j12, r11, r10, false));
                                                        j22 += k10;
                                                        if (i22 != 0) {
                                                            j26 += j12;
                                                        }
                                                        arrayList12 = arrayList19;
                                                        str9 = str13;
                                                        arrayList14 = arrayList2;
                                                        i12 = i21;
                                                        dVar4 = dVar5;
                                                        z11 = false;
                                                        j24 = j31;
                                                        str11 = str20;
                                                        str10 = str3;
                                                        arrayList15 = arrayList18;
                                                        arrayList13 = arrayList6;
                                                        dVar3 = dVar;
                                                        cVar2 = cVar;
                                                    } else {
                                                        i11 = i12;
                                                        dVar2 = dVar4;
                                                        ArrayList arrayList20 = arrayList12;
                                                        arrayList5 = arrayList18;
                                                        if (!b10.startsWith("#EXT-X-DATERANGE")) {
                                                            arrayList8 = arrayList;
                                                        } else if (v(b10, f56133f0, str7, hashMap).equals("com.apple.hls.interstitial")) {
                                                            String A7 = A(b10, f56131e0, hashMap);
                                                            String w14 = w(b10, f56145l0, hashMap);
                                                            Uri parse = w14 != null ? Uri.parse(w14) : null;
                                                            String w15 = w(b10, f56147m0, hashMap);
                                                            Uri parse2 = w15 != null ? Uri.parse(w15) : null;
                                                            long S0 = m0.S0(m0.a1(A(b10, f56135g0, hashMap)));
                                                            String w16 = w(b10, f56139i0, hashMap);
                                                            long S02 = w16 != null ? m0.S0(m0.a1(w16)) : -9223372036854775807L;
                                                            ArrayList arrayList21 = new ArrayList();
                                                            String w17 = w(b10, f56137h0, hashMap);
                                                            if (w17 != null) {
                                                                String[] m15 = m0.m1(w17, ",");
                                                                str7 = str7;
                                                                int length = m15.length;
                                                                arrayList4 = arrayList20;
                                                                int i23 = 0;
                                                                while (i23 < length) {
                                                                    int i24 = length;
                                                                    String trim = m15[i23].trim();
                                                                    trim.hashCode();
                                                                    switch (trim.hashCode()) {
                                                                        case 79491:
                                                                            strArr = m15;
                                                                            if (trim.equals("PRE")) {
                                                                                c11 = 0;
                                                                                break;
                                                                            }
                                                                            c11 = 65535;
                                                                            break;
                                                                        case 2430593:
                                                                            strArr = m15;
                                                                            if (trim.equals("ONCE")) {
                                                                                c11 = 1;
                                                                                break;
                                                                            }
                                                                            c11 = 65535;
                                                                            break;
                                                                        case 2461856:
                                                                            strArr = m15;
                                                                            if (trim.equals(ShareTarget.METHOD_POST)) {
                                                                                c11 = 2;
                                                                                break;
                                                                            }
                                                                            c11 = 65535;
                                                                            break;
                                                                        default:
                                                                            strArr = m15;
                                                                            c11 = 65535;
                                                                            break;
                                                                    }
                                                                    switch (c11) {
                                                                        case 0:
                                                                        case 1:
                                                                        case 2:
                                                                            arrayList21.add(trim);
                                                                            break;
                                                                    }
                                                                    i23++;
                                                                    m15 = strArr;
                                                                    length = i24;
                                                                }
                                                            } else {
                                                                str7 = str7;
                                                                arrayList4 = arrayList20;
                                                            }
                                                            double s10 = s(b10, f56154q, -1.0d);
                                                            long j32 = s10 >= 0.0d ? (long) (s10 * 1000000.0d) : -9223372036854775807L;
                                                            double s11 = s(b10, f56141j0, -1.0d);
                                                            long j33 = s11 >= 0.0d ? (long) (s11 * 1000000.0d) : -9223372036854775807L;
                                                            boolean r12 = r(b10, f56143k0, false);
                                                            double s12 = s(b10, f56149n0, Double.MIN_VALUE);
                                                            long j34 = s12 != Double.MIN_VALUE ? (long) (s12 * 1000000.0d) : -9223372036854775807L;
                                                            double s13 = s(b10, f56151o0, -1.0d);
                                                            long j35 = s13 >= 0.0d ? (long) (s13 * 1000000.0d) : -9223372036854775807L;
                                                            ArrayList arrayList22 = new ArrayList();
                                                            String w18 = w(b10, f56153p0, hashMap);
                                                            if (w18 != null) {
                                                                String[] m16 = m0.m1(w18, ",");
                                                                int length2 = m16.length;
                                                                str5 = str20;
                                                                int i25 = 0;
                                                                while (i25 < length2) {
                                                                    String[] strArr2 = m16;
                                                                    String trim2 = m16[i25].trim();
                                                                    trim2.hashCode();
                                                                    int i26 = length2;
                                                                    if (trim2.equals("IN") || trim2.equals("OUT")) {
                                                                        arrayList22.add(trim2);
                                                                    }
                                                                    i25++;
                                                                    length2 = i26;
                                                                    m16 = strArr2;
                                                                }
                                                            } else {
                                                                str5 = str20;
                                                            }
                                                            ArrayList arrayList23 = new ArrayList();
                                                            String w19 = w(b10, f56155q0, hashMap);
                                                            if (w19 != null) {
                                                                String[] m17 = m0.m1(w19, ",");
                                                                int length3 = m17.length;
                                                                int i27 = 0;
                                                                while (i27 < length3) {
                                                                    String[] strArr3 = m17;
                                                                    String trim3 = m17[i27].trim();
                                                                    trim3.hashCode();
                                                                    int i28 = length3;
                                                                    if (trim3.equals("JUMP") || trim3.equals("SKIP")) {
                                                                        arrayList23.add(trim3);
                                                                    }
                                                                    i27++;
                                                                    length3 = i28;
                                                                    m17 = strArr3;
                                                                }
                                                            }
                                                            ImmutableList.a aVar2 = new ImmutableList.a();
                                                            String substring = b10.substring(17);
                                                            Matcher matcher2 = f56159s0.matcher(substring);
                                                            while (matcher2.find()) {
                                                                String group = matcher2.group();
                                                                group.hashCode();
                                                                switch (group.hashCode()) {
                                                                    case -2136701954:
                                                                        matcher = matcher2;
                                                                        if (group.equals("X-SNAP=")) {
                                                                            c10 = 0;
                                                                            break;
                                                                        }
                                                                        c10 = 65535;
                                                                        break;
                                                                    case -148960310:
                                                                        matcher = matcher2;
                                                                        if (group.equals("X-PLAYOUT-LIMIT=")) {
                                                                            c10 = 1;
                                                                            break;
                                                                        }
                                                                        c10 = 65535;
                                                                        break;
                                                                    case 397239341:
                                                                        matcher = matcher2;
                                                                        if (group.equals("X-ASSET-LIST=")) {
                                                                            c10 = 2;
                                                                            break;
                                                                        }
                                                                        c10 = 65535;
                                                                        break;
                                                                    case 1472528844:
                                                                        matcher = matcher2;
                                                                        if (group.equals("X-RESTRICT=")) {
                                                                            c10 = 3;
                                                                            break;
                                                                        }
                                                                        c10 = 65535;
                                                                        break;
                                                                    case 1748487807:
                                                                        matcher = matcher2;
                                                                        if (group.equals("X-RESUME-OFFSET=")) {
                                                                            c10 = 4;
                                                                            break;
                                                                        }
                                                                        c10 = 65535;
                                                                        break;
                                                                    case 1814205923:
                                                                        matcher = matcher2;
                                                                        if (group.equals("X-ASSET-URI=")) {
                                                                            c10 = 5;
                                                                            break;
                                                                        }
                                                                        c10 = 65535;
                                                                        break;
                                                                    default:
                                                                        matcher = matcher2;
                                                                        c10 = 65535;
                                                                        break;
                                                                }
                                                                switch (c10) {
                                                                    case 0:
                                                                    case 1:
                                                                    case 2:
                                                                    case 3:
                                                                    case 4:
                                                                    case 5:
                                                                        arrayList9 = arrayList;
                                                                        break;
                                                                    default:
                                                                        arrayList9 = arrayList;
                                                                        aVar2.a(j(substring, group.substring(0, group.length() - 1), hashMap));
                                                                        break;
                                                                }
                                                                matcher2 = matcher;
                                                                arrayList = arrayList9;
                                                            }
                                                            arrayList8 = arrayList;
                                                            if ((parse2 != null || parse == null) && (parse2 == null || parse != null)) {
                                                                arrayList7 = arrayList2;
                                                            } else {
                                                                arrayList7 = arrayList2;
                                                                arrayList7.add(new c.C0804c(A7, parse, parse2, S0, S02, j32, j33, arrayList21, r12, j34, j35, arrayList22, arrayList23, aVar2.k()));
                                                            }
                                                            j10 = j31;
                                                            str2 = str5;
                                                            arrayList3 = arrayList8;
                                                            cVar2 = cVar;
                                                            arrayList14 = arrayList7;
                                                            str10 = str3;
                                                            str9 = str13;
                                                            arrayList15 = arrayList5;
                                                            arrayList12 = arrayList4;
                                                            i12 = i11;
                                                            dVar4 = dVar2;
                                                            arrayList13 = arrayList6;
                                                            z11 = false;
                                                            str11 = str2;
                                                            arrayList10 = arrayList3;
                                                            j24 = j10;
                                                            dVar3 = dVar;
                                                        } else {
                                                            arrayList8 = arrayList;
                                                            str7 = str7;
                                                        }
                                                        str5 = str20;
                                                        arrayList4 = arrayList20;
                                                        arrayList7 = arrayList2;
                                                        if (!b10.startsWith("#")) {
                                                            String d12 = d(j31, str13, str3);
                                                            long j36 = j31 + 1;
                                                            String C2 = C(b10, hashMap);
                                                            c.f fVar4 = (c.f) hashMap2.get(C2);
                                                            int i29 = (j27 > (-1L) ? 1 : (j27 == (-1L) ? 0 : -1));
                                                            if (i29 == 0) {
                                                                j13 = 0;
                                                            } else {
                                                                if (z17 && fVar == null && fVar4 == null) {
                                                                    fVar4 = new c.f(C2, 0L, j21, null, null);
                                                                    hashMap2.put(C2, fVar4);
                                                                }
                                                                j13 = j21;
                                                            }
                                                            if (drmInitData3 != null || treeMap.isEmpty()) {
                                                                j14 = j36;
                                                                str6 = str5;
                                                                drmInitData = drmInitData3;
                                                            } else {
                                                                j14 = j36;
                                                                DrmInitData.SchemeData[] schemeDataArr3 = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                                                str6 = str5;
                                                                drmInitData = new DrmInitData(str6, schemeDataArr3);
                                                                if (drmInitData2 == null) {
                                                                    drmInitData2 = c(str6, schemeDataArr3);
                                                                }
                                                            }
                                                            c.f fVar5 = new c.f(C2, fVar != null ? fVar : fVar4, str8, j25, i14, j23, drmInitData, str13, d12, j13, j27, z16, arrayList5);
                                                            ArrayList arrayList24 = arrayList8;
                                                            arrayList24.add(fVar5);
                                                            j22 = j23 + j25;
                                                            ArrayList arrayList25 = new ArrayList();
                                                            if (i29 != 0) {
                                                                j13 += j27;
                                                            }
                                                            j21 = j13;
                                                            arrayList15 = arrayList25;
                                                            arrayList10 = arrayList24;
                                                            str10 = str3;
                                                            str9 = str13;
                                                            drmInitData3 = drmInitData;
                                                            j25 = 0;
                                                            str8 = str7;
                                                            j23 = j22;
                                                            arrayList12 = arrayList4;
                                                            i12 = i11;
                                                            dVar4 = dVar2;
                                                            arrayList13 = arrayList6;
                                                            z11 = false;
                                                            z16 = false;
                                                            j27 = -1;
                                                            cVar2 = cVar;
                                                            str11 = str6;
                                                            arrayList14 = arrayList7;
                                                            j24 = j14;
                                                            dVar3 = dVar;
                                                        }
                                                        j10 = j31;
                                                        str2 = str5;
                                                        arrayList3 = arrayList8;
                                                        cVar2 = cVar;
                                                        arrayList14 = arrayList7;
                                                        str10 = str3;
                                                        str9 = str13;
                                                        arrayList15 = arrayList5;
                                                        arrayList12 = arrayList4;
                                                        i12 = i11;
                                                        dVar4 = dVar2;
                                                        arrayList13 = arrayList6;
                                                        z11 = false;
                                                        str11 = str2;
                                                        arrayList10 = arrayList3;
                                                        j24 = j10;
                                                        dVar3 = dVar;
                                                    }
                                                }
                                                arrayList3 = arrayList;
                                                i11 = i12;
                                                arrayList4 = arrayList12;
                                                str2 = str20;
                                                arrayList5 = arrayList18;
                                                arrayList7 = arrayList2;
                                                j10 = j24;
                                                str3 = str14;
                                            }
                                            dVar3 = dVar;
                                            cVar2 = cVar;
                                            arrayList10 = arrayList;
                                            str11 = str20;
                                            str9 = str13;
                                            arrayList15 = arrayList18;
                                            arrayList14 = arrayList2;
                                            str10 = str14;
                                            arrayList13 = arrayList6;
                                            z11 = false;
                                        }
                                        str10 = w10;
                                        arrayList13 = arrayList6;
                                    }
                                }
                                dVar2 = dVar4;
                                cVar2 = cVar;
                                arrayList14 = arrayList7;
                                str10 = str3;
                                str9 = str13;
                                arrayList15 = arrayList5;
                                arrayList12 = arrayList4;
                                i12 = i11;
                                dVar4 = dVar2;
                                arrayList13 = arrayList6;
                                z11 = false;
                                str11 = str2;
                                arrayList10 = arrayList3;
                                j24 = j10;
                                dVar3 = dVar;
                            }
                        }
                        arrayList10 = arrayList;
                        str9 = str13;
                        arrayList14 = arrayList2;
                        str10 = str14;
                        z11 = false;
                    }
                }
                arrayList10 = arrayList;
            }
        }
        int i30 = i12;
        c.d dVar6 = dVar4;
        ArrayList arrayList26 = arrayList12;
        ArrayList arrayList27 = arrayList13;
        ArrayList arrayList28 = arrayList10;
        ArrayList arrayList29 = arrayList14;
        ArrayList arrayList30 = arrayList15;
        HashMap hashMap3 = new HashMap();
        int i31 = 0;
        while (i31 < arrayList26.size()) {
            ArrayList arrayList31 = arrayList26;
            c.e eVar = (c.e) arrayList31.get(i31);
            long j37 = eVar.f56246b;
            if (j37 == -1) {
                j37 = (j20 + arrayList28.size()) - (arrayList30.isEmpty() ? 1L : 0L);
            }
            int i32 = eVar.f56247c;
            if (i32 != -1 || j18 == -9223372036854775807L) {
                i10 = 1;
            } else {
                i10 = 1;
                i32 = (arrayList30.isEmpty() ? ((c.f) l.d(arrayList28)).f56249m : arrayList30).size() - 1;
            }
            Uri uri = eVar.f56245a;
            hashMap3.put(uri, new c.e(uri, j37, i32));
            i31 += i10;
            arrayList26 = arrayList31;
        }
        if (dVar6 != null) {
            arrayList30.add(dVar6);
        }
        return new c(i30, str, arrayList27, j16, z13, j19, z14, i13, j20, i15, j17, j18, z12, z15, j19 != 0, drmInitData2, arrayList28, arrayList30, hVar2, hashMap3, arrayList29);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x018e, code lost:
        if (r3 > 0) goto L50;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0229  */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.List] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static io.bidmachine.media3.exoplayer.hls.playlist.d q(io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistParser.a r36, java.lang.String r37) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistParser.q(io.bidmachine.media3.exoplayer.hls.playlist.HlsPlaylistParser$a, java.lang.String):io.bidmachine.media3.exoplayer.hls.playlist.d");
    }

    private static boolean r(String str, Pattern pattern, boolean z10) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            return "YES".equals(matcher.group(1));
        }
        return z10;
    }

    private static double s(String str, Pattern pattern, double d10) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            return Double.parseDouble((String) cn.a.e(matcher.group(1)));
        }
        return d10;
    }

    private static int t(String str, Pattern pattern, int i10) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            return Integer.parseInt((String) cn.a.e(matcher.group(1)));
        }
        return i10;
    }

    private static long u(String str, Pattern pattern, long j10) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            return Long.parseLong((String) cn.a.e(matcher.group(1)));
        }
        return j10;
    }

    private static String v(String str, Pattern pattern, String str2, Map<String, String> map) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            str2 = (String) cn.a.e(matcher.group(1));
        }
        if (!map.isEmpty() && str2 != null) {
            return C(str2, map);
        }
        return str2;
    }

    @Nullable
    private static String w(String str, Pattern pattern, Map<String, String> map) {
        return v(str, pattern, null, map);
    }

    private static int x(String str, Map<String, String> map) {
        String w10 = w(str, U, map);
        int i10 = 0;
        if (TextUtils.isEmpty(w10)) {
            return 0;
        }
        String[] m12 = m0.m1(w10, ",");
        if (m0.s(m12, "public.accessibility.describes-video")) {
            i10 = 512;
        }
        if (m0.s(m12, "public.accessibility.transcribes-spoken-dialog")) {
            i10 |= 4096;
        }
        if (m0.s(m12, "public.accessibility.describes-music-and-sound")) {
            i10 |= 1024;
        }
        if (m0.s(m12, "public.easy-to-read")) {
            return i10 | 8192;
        }
        return i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    private static int y(String str) {
        boolean r10 = r(str, X, false);
        ?? r02 = r10;
        if (r(str, Y, false)) {
            r02 = (r10 ? 1 : 0) | true;
        }
        if (r(str, W, false)) {
            return r02 | 4;
        }
        return r02;
    }

    private static c.h z(String str) {
        long j10;
        long j11;
        double s10 = s(str, f56161u, -9.223372036854776E18d);
        long j12 = -9223372036854775807L;
        if (s10 == -9.223372036854776E18d) {
            j10 = -9223372036854775807L;
        } else {
            j10 = (long) (s10 * 1000000.0d);
        }
        boolean r10 = r(str, f56162v, false);
        double s11 = s(str, f56164x, -9.223372036854776E18d);
        if (s11 == -9.223372036854776E18d) {
            j11 = -9223372036854775807L;
        } else {
            j11 = (long) (s11 * 1000000.0d);
        }
        double s12 = s(str, f56165y, -9.223372036854776E18d);
        if (s12 != -9.223372036854776E18d) {
            j12 = (long) (s12 * 1000000.0d);
        }
        return new c.h(j10, r10, j11, j12, r(str, f56166z, false));
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.c.a
    /* renamed from: i */
    public nn.d parse(Uri uri, InputStream inputStream) throws IOException {
        String trim;
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        ArrayDeque arrayDeque = new ArrayDeque();
        try {
            if (a(bufferedReader)) {
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        trim = readLine.trim();
                        if (!trim.isEmpty()) {
                            if (trim.startsWith("#EXT-X-STREAM-INF")) {
                                arrayDeque.add(trim);
                                return q(new a(arrayDeque, bufferedReader), uri.toString());
                            } else if (trim.startsWith("#EXT-X-TARGETDURATION") || trim.startsWith("#EXT-X-MEDIA-SEQUENCE") || trim.startsWith("#EXTINF") || trim.startsWith("#EXT-X-KEY") || trim.startsWith("#EXT-X-BYTERANGE") || trim.equals("#EXT-X-DISCONTINUITY") || trim.equals("#EXT-X-DISCONTINUITY-SEQUENCE") || trim.equals("#EXT-X-ENDLIST")) {
                                break;
                            } else {
                                arrayDeque.add(trim);
                            }
                        }
                    } else {
                        m0.m(bufferedReader);
                        throw ParserException.e("Failed to parse the playlist, could not identify any tags.", null);
                    }
                }
                arrayDeque.add(trim);
                return p(this.f56167a, this.f56168b, new a(arrayDeque, bufferedReader), uri.toString());
            }
            throw ParserException.e("Input does not start with the #EXTM3U header.", null);
        } finally {
            m0.m(bufferedReader);
        }
    }

    public HlsPlaylistParser(d dVar, @Nullable c cVar) {
        this.f56167a = dVar;
        this.f56168b = cVar;
    }
}
