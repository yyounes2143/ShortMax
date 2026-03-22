package okhttp3.internal.http2;

import androidx.browser.trusted.sharing.ShareTarget;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import androidx.webkit.ProxyConfig;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar;
import com.ss.texturerender.TextureRenderKeys;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
import okio.Source;
import org.jetbrains.annotations.NotNull;
/* compiled from: Hpack.kt */
@Metadata
/* loaded from: classes8.dex */
public final class Hpack {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final Hpack f63925a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final Header[] f63926b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final Map<ByteString, Integer> f63927c;

    static {
        Hpack hpack = new Hpack();
        f63925a = hpack;
        Header header = new Header(Header.f63921j, "");
        ByteString byteString = Header.f63918g;
        Header header2 = new Header(byteString, ShareTarget.METHOD_GET);
        Header header3 = new Header(byteString, ShareTarget.METHOD_POST);
        ByteString byteString2 = Header.f63919h;
        Header header4 = new Header(byteString2, DomExceptionUtils.SEPARATOR);
        Header header5 = new Header(byteString2, "/index.html");
        ByteString byteString3 = Header.f63920i;
        Header header6 = new Header(byteString3, ProxyConfig.MATCH_HTTP);
        Header header7 = new Header(byteString3, "https");
        ByteString byteString4 = Header.f63917f;
        f63926b = new Header[]{header, header2, header3, header4, header5, header6, header7, new Header(byteString4, "200"), new Header(byteString4, "204"), new Header(byteString4, "206"), new Header(byteString4, "304"), new Header(byteString4, "400"), new Header(byteString4, "404"), new Header(byteString4, "500"), new Header("accept-charset", ""), new Header("accept-encoding", "gzip, deflate"), new Header("accept-language", ""), new Header("accept-ranges", ""), new Header("accept", ""), new Header("access-control-allow-origin", ""), new Header("age", ""), new Header("allow", ""), new Header("authorization", ""), new Header("cache-control", ""), new Header("content-disposition", ""), new Header("content-encoding", ""), new Header("content-language", ""), new Header("content-length", ""), new Header("content-location", ""), new Header("content-range", ""), new Header("content-type", ""), new Header("cookie", ""), new Header("date", ""), new Header(DownloadModel.ETAG, ""), new Header("expect", ""), new Header("expires", ""), new Header("from", ""), new Header(TextureRenderKeys.KEY_IS_BMF_VQSCORE_HOST, ""), new Header("if-match", ""), new Header("if-modified-since", ""), new Header("if-none-match", ""), new Header("if-range", ""), new Header("if-unmodified-since", ""), new Header("last-modified", ""), new Header("link", ""), new Header("location", ""), new Header("max-forwards", ""), new Header("proxy-authenticate", ""), new Header("proxy-authorization", ""), new Header("range", ""), new Header("referer", ""), new Header(ToolBar.REFRESH, ""), new Header("retry-after", ""), new Header("server", ""), new Header("set-cookie", ""), new Header("strict-transport-security", ""), new Header("transfer-encoding", ""), new Header("user-agent", ""), new Header("vary", ""), new Header("via", ""), new Header("www-authenticate", "")};
        f63927c = hpack.d();
    }

    private Hpack() {
    }

    private final Map<ByteString, Integer> d() {
        Header[] headerArr = f63926b;
        LinkedHashMap linkedHashMap = new LinkedHashMap(headerArr.length);
        int length = headerArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            Header[] headerArr2 = f63926b;
            if (!linkedHashMap.containsKey(headerArr2[i10].f63922a)) {
                linkedHashMap.put(headerArr2[i10].f63922a, Integer.valueOf(i10));
            }
        }
        Map<ByteString, Integer> unmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        Intrinsics.checkNotNullExpressionValue(unmodifiableMap, "unmodifiableMap(result)");
        return unmodifiableMap;
    }

    @NotNull
    public final ByteString a(@NotNull ByteString name) throws IOException {
        Intrinsics.checkNotNullParameter(name, "name");
        int size = name.size();
        for (int i10 = 0; i10 < size; i10++) {
            byte b10 = name.getByte(i10);
            if (65 <= b10 && b10 < 91) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + name.utf8());
            }
        }
        return name;
    }

    @NotNull
    public final Map<ByteString, Integer> b() {
        return f63927c;
    }

    @NotNull
    public final Header[] c() {
        return f63926b;
    }

    /* compiled from: Hpack.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Reader {

        /* renamed from: a  reason: collision with root package name */
        private final int f63928a;

        /* renamed from: b  reason: collision with root package name */
        private int f63929b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final List<Header> f63930c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final BufferedSource f63931d;
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        public Header[] f63932e;

        /* renamed from: f  reason: collision with root package name */
        private int f63933f;

        /* renamed from: g  reason: collision with root package name */
        public int f63934g;

        /* renamed from: h  reason: collision with root package name */
        public int f63935h;

        public Reader(@NotNull Source source, int i10, int i11) {
            Intrinsics.checkNotNullParameter(source, "source");
            this.f63928a = i10;
            this.f63929b = i11;
            this.f63930c = new ArrayList();
            this.f63931d = Okio.buffer(source);
            Header[] headerArr = new Header[8];
            this.f63932e = headerArr;
            this.f63933f = headerArr.length - 1;
        }

        private final void a() {
            int i10 = this.f63929b;
            int i11 = this.f63935h;
            if (i10 < i11) {
                if (i10 == 0) {
                    b();
                } else {
                    d(i11 - i10);
                }
            }
        }

        private final void b() {
            n.H(this.f63932e, null, 0, 0, 6, null);
            this.f63933f = this.f63932e.length - 1;
            this.f63934g = 0;
            this.f63935h = 0;
        }

        private final int c(int i10) {
            return this.f63933f + 1 + i10;
        }

        private final int d(int i10) {
            int i11;
            int i12 = 0;
            if (i10 > 0) {
                int length = this.f63932e.length;
                while (true) {
                    length--;
                    i11 = this.f63933f;
                    if (length < i11 || i10 <= 0) {
                        break;
                    }
                    Header header = this.f63932e[length];
                    Intrinsics.checkNotNull(header);
                    int i13 = header.f63924c;
                    i10 -= i13;
                    this.f63935h -= i13;
                    this.f63934g--;
                    i12++;
                }
                Header[] headerArr = this.f63932e;
                System.arraycopy(headerArr, i11 + 1, headerArr, i11 + 1 + i12, this.f63934g);
                this.f63933f += i12;
            }
            return i12;
        }

        private final ByteString f(int i10) throws IOException {
            if (h(i10)) {
                return Hpack.f63925a.c()[i10].f63922a;
            }
            int c10 = c(i10 - Hpack.f63925a.c().length);
            if (c10 >= 0) {
                Header[] headerArr = this.f63932e;
                if (c10 < headerArr.length) {
                    Header header = headerArr[c10];
                    Intrinsics.checkNotNull(header);
                    return header.f63922a;
                }
            }
            throw new IOException("Header index too large " + (i10 + 1));
        }

        private final void g(int i10, Header header) {
            this.f63930c.add(header);
            int i11 = header.f63924c;
            if (i10 != -1) {
                Header header2 = this.f63932e[c(i10)];
                Intrinsics.checkNotNull(header2);
                i11 -= header2.f63924c;
            }
            int i12 = this.f63929b;
            if (i11 > i12) {
                b();
                return;
            }
            int d10 = d((this.f63935h + i11) - i12);
            if (i10 == -1) {
                int i13 = this.f63934g + 1;
                Header[] headerArr = this.f63932e;
                if (i13 > headerArr.length) {
                    Header[] headerArr2 = new Header[headerArr.length * 2];
                    System.arraycopy(headerArr, 0, headerArr2, headerArr.length, headerArr.length);
                    this.f63933f = this.f63932e.length - 1;
                    this.f63932e = headerArr2;
                }
                int i14 = this.f63933f;
                this.f63933f = i14 - 1;
                this.f63932e[i14] = header;
                this.f63934g++;
            } else {
                this.f63932e[i10 + c(i10) + d10] = header;
            }
            this.f63935h += i11;
        }

        private final boolean h(int i10) {
            if (i10 >= 0 && i10 <= Hpack.f63925a.c().length - 1) {
                return true;
            }
            return false;
        }

        private final int i() throws IOException {
            return Util.d(this.f63931d.readByte(), 255);
        }

        private final void l(int i10) throws IOException {
            if (h(i10)) {
                this.f63930c.add(Hpack.f63925a.c()[i10]);
                return;
            }
            int c10 = c(i10 - Hpack.f63925a.c().length);
            if (c10 >= 0) {
                Header[] headerArr = this.f63932e;
                if (c10 < headerArr.length) {
                    Header header = headerArr[c10];
                    Intrinsics.checkNotNull(header);
                    this.f63930c.add(header);
                    return;
                }
            }
            throw new IOException("Header index too large " + (i10 + 1));
        }

        private final void n(int i10) throws IOException {
            g(-1, new Header(f(i10), j()));
        }

        private final void o() throws IOException {
            g(-1, new Header(Hpack.f63925a.a(j()), j()));
        }

        private final void p(int i10) throws IOException {
            this.f63930c.add(new Header(f(i10), j()));
        }

        private final void q() throws IOException {
            this.f63930c.add(new Header(Hpack.f63925a.a(j()), j()));
        }

        @NotNull
        public final List<Header> e() {
            List<Header> d12 = CollectionsKt.d1(this.f63930c);
            this.f63930c.clear();
            return d12;
        }

        @NotNull
        public final ByteString j() throws IOException {
            boolean z10;
            int i10 = i();
            if ((i10 & 128) == 128) {
                z10 = true;
            } else {
                z10 = false;
            }
            long m10 = m(i10, 127);
            if (z10) {
                Buffer buffer = new Buffer();
                Huffman.f64081a.b(this.f63931d, m10, buffer);
                return buffer.readByteString();
            }
            return this.f63931d.readByteString(m10);
        }

        public final void k() throws IOException {
            while (!this.f63931d.exhausted()) {
                int d10 = Util.d(this.f63931d.readByte(), 255);
                if (d10 != 128) {
                    if ((d10 & 128) == 128) {
                        l(m(d10, 127) - 1);
                    } else if (d10 == 64) {
                        o();
                    } else if ((d10 & 64) == 64) {
                        n(m(d10, 63) - 1);
                    } else if ((d10 & 32) == 32) {
                        int m10 = m(d10, 31);
                        this.f63929b = m10;
                        if (m10 >= 0 && m10 <= this.f63928a) {
                            a();
                        } else {
                            throw new IOException("Invalid dynamic table size update " + this.f63929b);
                        }
                    } else if (d10 != 16 && d10 != 0) {
                        p(m(d10, 15) - 1);
                    } else {
                        q();
                    }
                } else {
                    throw new IOException("index == 0");
                }
            }
        }

        public final int m(int i10, int i11) throws IOException {
            int i12 = i10 & i11;
            if (i12 < i11) {
                return i12;
            }
            int i13 = 0;
            while (true) {
                int i14 = i();
                if ((i14 & 128) != 0) {
                    i11 += (i14 & 127) << i13;
                    i13 += 7;
                } else {
                    return i11 + (i14 << i13);
                }
            }
        }

        public /* synthetic */ Reader(Source source, int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
            this(source, i10, (i12 & 4) != 0 ? i10 : i11);
        }
    }

    /* compiled from: Hpack.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Writer {

        /* renamed from: a  reason: collision with root package name */
        public int f63936a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f63937b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final Buffer f63938c;

        /* renamed from: d  reason: collision with root package name */
        private int f63939d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f63940e;

        /* renamed from: f  reason: collision with root package name */
        public int f63941f;
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        public Header[] f63942g;

        /* renamed from: h  reason: collision with root package name */
        private int f63943h;

        /* renamed from: i  reason: collision with root package name */
        public int f63944i;

        /* renamed from: j  reason: collision with root package name */
        public int f63945j;

        public Writer(int i10, boolean z10, @NotNull Buffer out) {
            Intrinsics.checkNotNullParameter(out, "out");
            this.f63936a = i10;
            this.f63937b = z10;
            this.f63938c = out;
            this.f63939d = Integer.MAX_VALUE;
            this.f63941f = i10;
            Header[] headerArr = new Header[8];
            this.f63942g = headerArr;
            this.f63943h = headerArr.length - 1;
        }

        private final void a() {
            int i10 = this.f63941f;
            int i11 = this.f63945j;
            if (i10 < i11) {
                if (i10 == 0) {
                    b();
                } else {
                    c(i11 - i10);
                }
            }
        }

        private final void b() {
            n.H(this.f63942g, null, 0, 0, 6, null);
            this.f63943h = this.f63942g.length - 1;
            this.f63944i = 0;
            this.f63945j = 0;
        }

        private final int c(int i10) {
            int i11;
            int i12 = 0;
            if (i10 > 0) {
                int length = this.f63942g.length;
                while (true) {
                    length--;
                    i11 = this.f63943h;
                    if (length < i11 || i10 <= 0) {
                        break;
                    }
                    Header header = this.f63942g[length];
                    Intrinsics.checkNotNull(header);
                    i10 -= header.f63924c;
                    int i13 = this.f63945j;
                    Header header2 = this.f63942g[length];
                    Intrinsics.checkNotNull(header2);
                    this.f63945j = i13 - header2.f63924c;
                    this.f63944i--;
                    i12++;
                }
                Header[] headerArr = this.f63942g;
                System.arraycopy(headerArr, i11 + 1, headerArr, i11 + 1 + i12, this.f63944i);
                Header[] headerArr2 = this.f63942g;
                int i14 = this.f63943h;
                Arrays.fill(headerArr2, i14 + 1, i14 + 1 + i12, (Object) null);
                this.f63943h += i12;
            }
            return i12;
        }

        private final void d(Header header) {
            int i10 = header.f63924c;
            int i11 = this.f63941f;
            if (i10 > i11) {
                b();
                return;
            }
            c((this.f63945j + i10) - i11);
            int i12 = this.f63944i + 1;
            Header[] headerArr = this.f63942g;
            if (i12 > headerArr.length) {
                Header[] headerArr2 = new Header[headerArr.length * 2];
                System.arraycopy(headerArr, 0, headerArr2, headerArr.length, headerArr.length);
                this.f63943h = this.f63942g.length - 1;
                this.f63942g = headerArr2;
            }
            int i13 = this.f63943h;
            this.f63943h = i13 - 1;
            this.f63942g[i13] = header;
            this.f63944i++;
            this.f63945j += i10;
        }

        public final void e(int i10) {
            this.f63936a = i10;
            int min = Math.min(i10, 16384);
            int i11 = this.f63941f;
            if (i11 == min) {
                return;
            }
            if (min < i11) {
                this.f63939d = Math.min(this.f63939d, min);
            }
            this.f63940e = true;
            this.f63941f = min;
            a();
        }

        public final void f(@NotNull ByteString data) throws IOException {
            Intrinsics.checkNotNullParameter(data, "data");
            if (this.f63937b) {
                Huffman huffman = Huffman.f64081a;
                if (huffman.d(data) < data.size()) {
                    Buffer buffer = new Buffer();
                    huffman.c(data, buffer);
                    ByteString readByteString = buffer.readByteString();
                    h(readByteString.size(), 127, 128);
                    this.f63938c.write(readByteString);
                    return;
                }
            }
            h(data.size(), 127, 0);
            this.f63938c.write(data);
        }

        public final void g(@NotNull List<Header> headerBlock) throws IOException {
            int i10;
            int i11;
            Intrinsics.checkNotNullParameter(headerBlock, "headerBlock");
            if (this.f63940e) {
                int i12 = this.f63939d;
                if (i12 < this.f63941f) {
                    h(i12, 31, 32);
                }
                this.f63940e = false;
                this.f63939d = Integer.MAX_VALUE;
                h(this.f63941f, 31, 32);
            }
            int size = headerBlock.size();
            for (int i13 = 0; i13 < size; i13++) {
                Header header = headerBlock.get(i13);
                ByteString asciiLowercase = header.f63922a.toAsciiLowercase();
                ByteString byteString = header.f63923b;
                Hpack hpack = Hpack.f63925a;
                Integer num = hpack.b().get(asciiLowercase);
                if (num != null) {
                    int intValue = num.intValue();
                    i11 = intValue + 1;
                    if (2 <= i11 && i11 < 8) {
                        if (Intrinsics.areEqual(hpack.c()[intValue].f63923b, byteString)) {
                            i10 = i11;
                        } else if (Intrinsics.areEqual(hpack.c()[i11].f63923b, byteString)) {
                            i10 = i11;
                            i11 = intValue + 2;
                        }
                    }
                    i10 = i11;
                    i11 = -1;
                } else {
                    i10 = -1;
                    i11 = -1;
                }
                if (i11 == -1) {
                    int i14 = this.f63943h + 1;
                    int length = this.f63942g.length;
                    while (true) {
                        if (i14 >= length) {
                            break;
                        }
                        Header header2 = this.f63942g[i14];
                        Intrinsics.checkNotNull(header2);
                        if (Intrinsics.areEqual(header2.f63922a, asciiLowercase)) {
                            Header header3 = this.f63942g[i14];
                            Intrinsics.checkNotNull(header3);
                            if (Intrinsics.areEqual(header3.f63923b, byteString)) {
                                i11 = Hpack.f63925a.c().length + (i14 - this.f63943h);
                                break;
                            } else if (i10 == -1) {
                                i10 = (i14 - this.f63943h) + Hpack.f63925a.c().length;
                            }
                        }
                        i14++;
                    }
                }
                if (i11 != -1) {
                    h(i11, 127, 128);
                } else if (i10 == -1) {
                    this.f63938c.writeByte(64);
                    f(asciiLowercase);
                    f(byteString);
                    d(header);
                } else if (asciiLowercase.startsWith(Header.f63916e) && !Intrinsics.areEqual(Header.f63921j, asciiLowercase)) {
                    h(i10, 15, 0);
                    f(byteString);
                } else {
                    h(i10, 63, 64);
                    f(byteString);
                    d(header);
                }
            }
        }

        public final void h(int i10, int i11, int i12) {
            if (i10 < i11) {
                this.f63938c.writeByte(i10 | i12);
                return;
            }
            this.f63938c.writeByte(i12 | i11);
            int i13 = i10 - i11;
            while (i13 >= 128) {
                this.f63938c.writeByte(128 | (i13 & 127));
                i13 >>>= 7;
            }
            this.f63938c.writeByte(i13);
        }

        public /* synthetic */ Writer(int i10, boolean z10, Buffer buffer, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? 4096 : i10, (i11 & 2) != 0 ? true : z10, buffer);
        }
    }
}
