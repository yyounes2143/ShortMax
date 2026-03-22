package z5;

import androidx.collection.SieveCacheKt;
import com.google.android.exoplayer2.ParserException;
import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
import java.util.ArrayDeque;
import t5.l;
/* compiled from: DefaultEbmlReader.java */
/* loaded from: classes4.dex */
final class a implements c {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f71246a = new byte[8];

    /* renamed from: b  reason: collision with root package name */
    private final ArrayDeque<b> f71247b = new ArrayDeque<>();

    /* renamed from: c  reason: collision with root package name */
    private final g f71248c = new g();

    /* renamed from: d  reason: collision with root package name */
    private z5.b f71249d;

    /* renamed from: e  reason: collision with root package name */
    private int f71250e;

    /* renamed from: f  reason: collision with root package name */
    private int f71251f;

    /* renamed from: g  reason: collision with root package name */
    private long f71252g;

    /* compiled from: DefaultEbmlReader.java */
    /* loaded from: classes4.dex */
    private static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final int f71253a;

        /* renamed from: b  reason: collision with root package name */
        private final long f71254b;

        private b(int i10, long j10) {
            this.f71253a = i10;
            this.f71254b = j10;
        }
    }

    private long c(l lVar) throws IOException {
        lVar.resetPeekPosition();
        while (true) {
            lVar.peekFully(this.f71246a, 0, 4);
            int c10 = g.c(this.f71246a[0]);
            if (c10 != -1 && c10 <= 4) {
                int a10 = (int) g.a(this.f71246a, c10, false);
                if (this.f71249d.isLevel1Element(a10)) {
                    lVar.skipFully(c10);
                    return a10;
                }
            }
            lVar.skipFully(1);
        }
    }

    private double d(l lVar, int i10) throws IOException {
        long e10 = e(lVar, i10);
        if (i10 == 4) {
            return Float.intBitsToFloat((int) e10);
        }
        return Double.longBitsToDouble(e10);
    }

    private long e(l lVar, int i10) throws IOException {
        lVar.readFully(this.f71246a, 0, i10);
        long j10 = 0;
        for (int i11 = 0; i11 < i10; i11++) {
            j10 = (j10 << 8) | (this.f71246a[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
        }
        return j10;
    }

    private static String f(l lVar, int i10) throws IOException {
        if (i10 == 0) {
            return "";
        }
        byte[] bArr = new byte[i10];
        lVar.readFully(bArr, 0, i10);
        while (i10 > 0 && bArr[i10 - 1] == 0) {
            i10--;
        }
        return new String(bArr, 0, i10);
    }

    @Override // z5.c
    public boolean a(l lVar) throws IOException {
        b7.a.i(this.f71249d);
        while (true) {
            b peek = this.f71247b.peek();
            if (peek != null && lVar.getPosition() >= peek.f71254b) {
                this.f71249d.endMasterElement(this.f71247b.pop().f71253a);
                return true;
            }
            if (this.f71250e == 0) {
                long d10 = this.f71248c.d(lVar, true, false, 4);
                if (d10 == -2) {
                    d10 = c(lVar);
                }
                if (d10 == -1) {
                    return false;
                }
                this.f71251f = (int) d10;
                this.f71250e = 1;
            }
            if (this.f71250e == 1) {
                this.f71252g = this.f71248c.d(lVar, false, true, 8);
                this.f71250e = 2;
            }
            int elementType = this.f71249d.getElementType(this.f71251f);
            if (elementType != 0) {
                if (elementType != 1) {
                    if (elementType != 2) {
                        if (elementType != 3) {
                            if (elementType != 4) {
                                if (elementType == 5) {
                                    long j10 = this.f71252g;
                                    if (j10 != 4 && j10 != 8) {
                                        throw ParserException.b("Invalid float size: " + this.f71252g, null);
                                    }
                                    this.f71249d.floatElement(this.f71251f, d(lVar, (int) j10));
                                    this.f71250e = 0;
                                    return true;
                                }
                                throw ParserException.b("Invalid element type " + elementType, null);
                            }
                            this.f71249d.a(this.f71251f, (int) this.f71252g, lVar);
                            this.f71250e = 0;
                            return true;
                        }
                        long j11 = this.f71252g;
                        if (j11 <= SieveCacheKt.NodeLinkMask) {
                            this.f71249d.stringElement(this.f71251f, f(lVar, (int) j11));
                            this.f71250e = 0;
                            return true;
                        }
                        throw ParserException.b("String element size: " + this.f71252g, null);
                    }
                    long j12 = this.f71252g;
                    if (j12 <= 8) {
                        this.f71249d.integerElement(this.f71251f, e(lVar, (int) j12));
                        this.f71250e = 0;
                        return true;
                    }
                    throw ParserException.b("Invalid integer size: " + this.f71252g, null);
                }
                long position = lVar.getPosition();
                this.f71247b.push(new b(this.f71251f, this.f71252g + position));
                this.f71249d.startMasterElement(this.f71251f, position, this.f71252g);
                this.f71250e = 0;
                return true;
            }
            lVar.skipFully((int) this.f71252g);
            this.f71250e = 0;
        }
    }

    @Override // z5.c
    public void b(z5.b bVar) {
        this.f71249d = bVar;
    }

    @Override // z5.c
    public void reset() {
        this.f71250e = 0;
        this.f71247b.clear();
        this.f71248c.e();
    }
}
