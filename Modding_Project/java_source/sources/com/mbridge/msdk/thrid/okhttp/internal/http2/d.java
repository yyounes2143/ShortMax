package com.mbridge.msdk.thrid.okhttp.internal.http2;

import androidx.browser.trusted.sharing.ShareTarget;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import androidx.webkit.ProxyConfig;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar;
import com.mbridge.msdk.thrid.okio.s;
import com.ss.texturerender.TextureRenderKeys;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.ByteCompanionObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Hpack.java */
/* loaded from: classes6.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    static final c[] f29762a;

    /* renamed from: b  reason: collision with root package name */
    static final Map<com.mbridge.msdk.thrid.okio.f, Integer> f29763b;

    /* compiled from: Hpack.java */
    /* loaded from: classes6.dex */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final List<c> f29764a;

        /* renamed from: b  reason: collision with root package name */
        private final com.mbridge.msdk.thrid.okio.e f29765b;

        /* renamed from: c  reason: collision with root package name */
        private final int f29766c;

        /* renamed from: d  reason: collision with root package name */
        private int f29767d;

        /* renamed from: e  reason: collision with root package name */
        c[] f29768e;

        /* renamed from: f  reason: collision with root package name */
        int f29769f;

        /* renamed from: g  reason: collision with root package name */
        int f29770g;

        /* renamed from: h  reason: collision with root package name */
        int f29771h;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(int i10, s sVar) {
            this(i10, i10, sVar);
        }

        private void a() {
            int i10 = this.f29767d;
            int i11 = this.f29771h;
            if (i10 < i11) {
                if (i10 == 0) {
                    b();
                } else {
                    b(i11 - i10);
                }
            }
        }

        private void b() {
            Arrays.fill(this.f29768e, (Object) null);
            this.f29769f = this.f29768e.length - 1;
            this.f29770g = 0;
            this.f29771h = 0;
        }

        private boolean d(int i10) {
            return i10 >= 0 && i10 <= d.f29762a.length - 1;
        }

        private void e(int i10) throws IOException {
            if (d(i10)) {
                this.f29764a.add(d.f29762a[i10]);
                return;
            }
            int a10 = a(i10 - d.f29762a.length);
            if (a10 >= 0) {
                c[] cVarArr = this.f29768e;
                if (a10 < cVarArr.length) {
                    this.f29764a.add(cVarArr[a10]);
                    return;
                }
            }
            throw new IOException("Header index too large " + (i10 + 1));
        }

        private void g(int i10) throws IOException {
            this.f29764a.add(new c(c(i10), e()));
        }

        private void h() throws IOException {
            this.f29764a.add(new c(d.a(e()), e()));
        }

        public List<c> c() {
            ArrayList arrayList = new ArrayList(this.f29764a);
            this.f29764a.clear();
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void f() throws IOException {
            while (!this.f29765b.f()) {
                byte readByte = this.f29765b.readByte();
                int i10 = readByte & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
                if (i10 == 128) {
                    throw new IOException("index == 0");
                }
                if ((readByte & ByteCompanionObject.MIN_VALUE) == 128) {
                    e(a(i10, 127) - 1);
                } else if (i10 == 64) {
                    g();
                } else if ((readByte & 64) == 64) {
                    f(a(i10, 63) - 1);
                } else if ((readByte & 32) == 32) {
                    int a10 = a(i10, 31);
                    this.f29767d = a10;
                    if (a10 >= 0 && a10 <= this.f29766c) {
                        a();
                    } else {
                        throw new IOException("Invalid dynamic table size update " + this.f29767d);
                    }
                } else if (i10 != 16 && i10 != 0) {
                    g(a(i10, 15) - 1);
                } else {
                    h();
                }
            }
        }

        a(int i10, int i11, s sVar) {
            this.f29764a = new ArrayList();
            this.f29768e = new c[8];
            this.f29769f = 7;
            this.f29770g = 0;
            this.f29771h = 0;
            this.f29766c = i10;
            this.f29767d = i11;
            this.f29765b = com.mbridge.msdk.thrid.okio.l.a(sVar);
        }

        private int d() throws IOException {
            return this.f29765b.readByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        }

        private com.mbridge.msdk.thrid.okio.f c(int i10) throws IOException {
            if (d(i10)) {
                return d.f29762a[i10].f29759a;
            }
            int a10 = a(i10 - d.f29762a.length);
            if (a10 >= 0) {
                c[] cVarArr = this.f29768e;
                if (a10 < cVarArr.length) {
                    return cVarArr[a10].f29759a;
                }
            }
            throw new IOException("Header index too large " + (i10 + 1));
        }

        private int a(int i10) {
            return this.f29769f + 1 + i10;
        }

        private void g() throws IOException {
            a(-1, new c(d.a(e()), e()));
        }

        private void a(int i10, c cVar) {
            this.f29764a.add(cVar);
            int i11 = cVar.f29761c;
            if (i10 != -1) {
                i11 -= this.f29768e[a(i10)].f29761c;
            }
            int i12 = this.f29767d;
            if (i11 > i12) {
                b();
                return;
            }
            int b10 = b((this.f29771h + i11) - i12);
            if (i10 == -1) {
                int i13 = this.f29770g + 1;
                c[] cVarArr = this.f29768e;
                if (i13 > cVarArr.length) {
                    c[] cVarArr2 = new c[cVarArr.length * 2];
                    System.arraycopy(cVarArr, 0, cVarArr2, cVarArr.length, cVarArr.length);
                    this.f29769f = this.f29768e.length - 1;
                    this.f29768e = cVarArr2;
                }
                int i14 = this.f29769f;
                this.f29769f = i14 - 1;
                this.f29768e[i14] = cVar;
                this.f29770g++;
            } else {
                this.f29768e[i10 + a(i10) + b10] = cVar;
            }
            this.f29771h += i11;
        }

        private int b(int i10) {
            int i11;
            int i12 = 0;
            if (i10 > 0) {
                int length = this.f29768e.length;
                while (true) {
                    length--;
                    i11 = this.f29769f;
                    if (length < i11 || i10 <= 0) {
                        break;
                    }
                    int i13 = this.f29768e[length].f29761c;
                    i10 -= i13;
                    this.f29771h -= i13;
                    this.f29770g--;
                    i12++;
                }
                c[] cVarArr = this.f29768e;
                int i14 = i11 + 1;
                System.arraycopy(cVarArr, i14, cVarArr, i14 + i12, this.f29770g);
                this.f29769f += i12;
            }
            return i12;
        }

        com.mbridge.msdk.thrid.okio.f e() throws IOException {
            int d10 = d();
            boolean z10 = (d10 & 128) == 128;
            int a10 = a(d10, 127);
            if (z10) {
                return com.mbridge.msdk.thrid.okio.f.a(k.b().a(this.f29765b.c(a10)));
            }
            return this.f29765b.b(a10);
        }

        private void f(int i10) throws IOException {
            a(-1, new c(c(i10), e()));
        }

        int a(int i10, int i11) throws IOException {
            int i12 = i10 & i11;
            if (i12 < i11) {
                return i12;
            }
            int i13 = 0;
            while (true) {
                int d10 = d();
                if ((d10 & 128) == 0) {
                    return i11 + (d10 << i13);
                }
                i11 += (d10 & 127) << i13;
                i13 += 7;
            }
        }
    }

    /* compiled from: Hpack.java */
    /* loaded from: classes6.dex */
    static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final com.mbridge.msdk.thrid.okio.c f29772a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f29773b;

        /* renamed from: c  reason: collision with root package name */
        private int f29774c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f29775d;

        /* renamed from: e  reason: collision with root package name */
        int f29776e;

        /* renamed from: f  reason: collision with root package name */
        int f29777f;

        /* renamed from: g  reason: collision with root package name */
        c[] f29778g;

        /* renamed from: h  reason: collision with root package name */
        int f29779h;

        /* renamed from: i  reason: collision with root package name */
        int f29780i;

        /* renamed from: j  reason: collision with root package name */
        int f29781j;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(com.mbridge.msdk.thrid.okio.c cVar) {
            this(4096, true, cVar);
        }

        private int a(int i10) {
            int i11;
            int i12 = 0;
            if (i10 > 0) {
                int length = this.f29778g.length;
                while (true) {
                    length--;
                    i11 = this.f29779h;
                    if (length < i11 || i10 <= 0) {
                        break;
                    }
                    int i13 = this.f29778g[length].f29761c;
                    i10 -= i13;
                    this.f29781j -= i13;
                    this.f29780i--;
                    i12++;
                }
                c[] cVarArr = this.f29778g;
                int i14 = i11 + 1;
                System.arraycopy(cVarArr, i14, cVarArr, i14 + i12, this.f29780i);
                c[] cVarArr2 = this.f29778g;
                int i15 = this.f29779h + 1;
                Arrays.fill(cVarArr2, i15, i15 + i12, (Object) null);
                this.f29779h += i12;
            }
            return i12;
        }

        private void b() {
            Arrays.fill(this.f29778g, (Object) null);
            this.f29779h = this.f29778g.length - 1;
            this.f29780i = 0;
            this.f29781j = 0;
        }

        b(int i10, boolean z10, com.mbridge.msdk.thrid.okio.c cVar) {
            this.f29774c = Integer.MAX_VALUE;
            this.f29778g = new c[8];
            this.f29779h = 7;
            this.f29780i = 0;
            this.f29781j = 0;
            this.f29776e = i10;
            this.f29777f = i10;
            this.f29773b = z10;
            this.f29772a = cVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void b(int i10) {
            this.f29776e = i10;
            int min = Math.min(i10, 16384);
            int i11 = this.f29777f;
            if (i11 == min) {
                return;
            }
            if (min < i11) {
                this.f29774c = Math.min(this.f29774c, min);
            }
            this.f29775d = true;
            this.f29777f = min;
            a();
        }

        private void a(c cVar) {
            int i10 = cVar.f29761c;
            int i11 = this.f29777f;
            if (i10 > i11) {
                b();
                return;
            }
            a((this.f29781j + i10) - i11);
            int i12 = this.f29780i + 1;
            c[] cVarArr = this.f29778g;
            if (i12 > cVarArr.length) {
                c[] cVarArr2 = new c[cVarArr.length * 2];
                System.arraycopy(cVarArr, 0, cVarArr2, cVarArr.length, cVarArr.length);
                this.f29779h = this.f29778g.length - 1;
                this.f29778g = cVarArr2;
            }
            int i13 = this.f29779h;
            this.f29779h = i13 - 1;
            this.f29778g[i13] = cVar;
            this.f29780i++;
            this.f29781j += i10;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(List<c> list) throws IOException {
            int i10;
            int i11;
            if (this.f29775d) {
                int i12 = this.f29774c;
                if (i12 < this.f29777f) {
                    a(i12, 31, 32);
                }
                this.f29775d = false;
                this.f29774c = Integer.MAX_VALUE;
                a(this.f29777f, 31, 32);
            }
            int size = list.size();
            for (int i13 = 0; i13 < size; i13++) {
                c cVar = list.get(i13);
                com.mbridge.msdk.thrid.okio.f f10 = cVar.f29759a.f();
                com.mbridge.msdk.thrid.okio.f fVar = cVar.f29760b;
                Integer num = d.f29763b.get(f10);
                if (num != null) {
                    int intValue = num.intValue();
                    i11 = intValue + 1;
                    if (i11 > 1 && i11 < 8) {
                        c[] cVarArr = d.f29762a;
                        if (com.mbridge.msdk.thrid.okhttp.internal.c.a(cVarArr[intValue].f29760b, fVar)) {
                            i10 = i11;
                        } else if (com.mbridge.msdk.thrid.okhttp.internal.c.a(cVarArr[i11].f29760b, fVar)) {
                            i11 = intValue + 2;
                            i10 = i11;
                        }
                    }
                    i10 = i11;
                    i11 = -1;
                } else {
                    i10 = -1;
                    i11 = -1;
                }
                if (i11 == -1) {
                    int i14 = this.f29779h + 1;
                    int length = this.f29778g.length;
                    while (true) {
                        if (i14 >= length) {
                            break;
                        }
                        if (com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f29778g[i14].f29759a, f10)) {
                            if (com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f29778g[i14].f29760b, fVar)) {
                                i11 = (i14 - this.f29779h) + d.f29762a.length;
                                break;
                            } else if (i10 == -1) {
                                i10 = (i14 - this.f29779h) + d.f29762a.length;
                            }
                        }
                        i14++;
                    }
                }
                if (i11 != -1) {
                    a(i11, 127, 128);
                } else if (i10 == -1) {
                    this.f29772a.writeByte(64);
                    a(f10);
                    a(fVar);
                    a(cVar);
                } else if (f10.b(c.f29753d) && !c.f29758i.equals(f10)) {
                    a(i10, 15, 0);
                    a(fVar);
                } else {
                    a(i10, 63, 64);
                    a(fVar);
                    a(cVar);
                }
            }
        }

        void a(int i10, int i11, int i12) {
            if (i10 < i11) {
                this.f29772a.writeByte(i10 | i12);
                return;
            }
            this.f29772a.writeByte(i12 | i11);
            int i13 = i10 - i11;
            while (i13 >= 128) {
                this.f29772a.writeByte(128 | (i13 & 127));
                i13 >>>= 7;
            }
            this.f29772a.writeByte(i13);
        }

        void a(com.mbridge.msdk.thrid.okio.f fVar) throws IOException {
            if (this.f29773b && k.b().a(fVar) < fVar.e()) {
                com.mbridge.msdk.thrid.okio.c cVar = new com.mbridge.msdk.thrid.okio.c();
                k.b().a(fVar, cVar);
                com.mbridge.msdk.thrid.okio.f o10 = cVar.o();
                a(o10.e(), 127, 128);
                this.f29772a.a(o10);
                return;
            }
            a(fVar.e(), 127, 0);
            this.f29772a.a(fVar);
        }

        private void a() {
            int i10 = this.f29777f;
            int i11 = this.f29781j;
            if (i10 < i11) {
                if (i10 == 0) {
                    b();
                } else {
                    a(i11 - i10);
                }
            }
        }
    }

    static {
        c cVar = new c(c.f29758i, "");
        com.mbridge.msdk.thrid.okio.f fVar = c.f29755f;
        c cVar2 = new c(fVar, ShareTarget.METHOD_GET);
        c cVar3 = new c(fVar, ShareTarget.METHOD_POST);
        com.mbridge.msdk.thrid.okio.f fVar2 = c.f29756g;
        c cVar4 = new c(fVar2, DomExceptionUtils.SEPARATOR);
        c cVar5 = new c(fVar2, "/index.html");
        com.mbridge.msdk.thrid.okio.f fVar3 = c.f29757h;
        c cVar6 = new c(fVar3, ProxyConfig.MATCH_HTTP);
        c cVar7 = new c(fVar3, "https");
        com.mbridge.msdk.thrid.okio.f fVar4 = c.f29754e;
        f29762a = new c[]{cVar, cVar2, cVar3, cVar4, cVar5, cVar6, cVar7, new c(fVar4, "200"), new c(fVar4, "204"), new c(fVar4, "206"), new c(fVar4, "304"), new c(fVar4, "400"), new c(fVar4, "404"), new c(fVar4, "500"), new c("accept-charset", ""), new c("accept-encoding", "gzip, deflate"), new c("accept-language", ""), new c("accept-ranges", ""), new c("accept", ""), new c("access-control-allow-origin", ""), new c("age", ""), new c("allow", ""), new c("authorization", ""), new c("cache-control", ""), new c("content-disposition", ""), new c("content-encoding", ""), new c("content-language", ""), new c("content-length", ""), new c("content-location", ""), new c("content-range", ""), new c("content-type", ""), new c("cookie", ""), new c("date", ""), new c(DownloadModel.ETAG, ""), new c("expect", ""), new c("expires", ""), new c("from", ""), new c(TextureRenderKeys.KEY_IS_BMF_VQSCORE_HOST, ""), new c("if-match", ""), new c("if-modified-since", ""), new c("if-none-match", ""), new c("if-range", ""), new c("if-unmodified-since", ""), new c("last-modified", ""), new c("link", ""), new c("location", ""), new c("max-forwards", ""), new c("proxy-authenticate", ""), new c("proxy-authorization", ""), new c("range", ""), new c("referer", ""), new c(ToolBar.REFRESH, ""), new c("retry-after", ""), new c("server", ""), new c("set-cookie", ""), new c("strict-transport-security", ""), new c("transfer-encoding", ""), new c("user-agent", ""), new c("vary", ""), new c("via", ""), new c("www-authenticate", "")};
        f29763b = a();
    }

    private static Map<com.mbridge.msdk.thrid.okio.f, Integer> a() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(f29762a.length);
        int i10 = 0;
        while (true) {
            c[] cVarArr = f29762a;
            if (i10 < cVarArr.length) {
                if (!linkedHashMap.containsKey(cVarArr[i10].f29759a)) {
                    linkedHashMap.put(cVarArr[i10].f29759a, Integer.valueOf(i10));
                }
                i10++;
            } else {
                return Collections.unmodifiableMap(linkedHashMap);
            }
        }
    }

    static com.mbridge.msdk.thrid.okio.f a(com.mbridge.msdk.thrid.okio.f fVar) throws IOException {
        int e10 = fVar.e();
        for (int i10 = 0; i10 < e10; i10++) {
            byte a10 = fVar.a(i10);
            if (a10 >= 65 && a10 <= 90) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + fVar.h());
            }
        }
        return fVar;
    }
}
