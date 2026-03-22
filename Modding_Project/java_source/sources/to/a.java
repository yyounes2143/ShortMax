package to;

import androidx.collection.SieveCacheKt;
import ao.q;
import com.inmobi.commons.core.configs.AdConfig;
import io.bidmachine.media3.common.ParserException;
import java.io.IOException;
import java.util.ArrayDeque;
/* compiled from: DefaultEbmlReader.java */
/* loaded from: classes8.dex */
final class a implements c {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f67520a = new byte[8];

    /* renamed from: b  reason: collision with root package name */
    private final ArrayDeque<b> f67521b = new ArrayDeque<>();

    /* renamed from: c  reason: collision with root package name */
    private final g f67522c = new g();

    /* renamed from: d  reason: collision with root package name */
    private to.b f67523d;

    /* renamed from: e  reason: collision with root package name */
    private int f67524e;

    /* renamed from: f  reason: collision with root package name */
    private int f67525f;

    /* renamed from: g  reason: collision with root package name */
    private long f67526g;

    /* compiled from: DefaultEbmlReader.java */
    /* loaded from: classes8.dex */
    private static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final int f67527a;

        /* renamed from: b  reason: collision with root package name */
        private final long f67528b;

        private b(int i10, long j10) {
            this.f67527a = i10;
            this.f67528b = j10;
        }
    }

    private long c(q qVar) throws IOException {
        qVar.resetPeekPosition();
        while (true) {
            qVar.peekFully(this.f67520a, 0, 4);
            int c10 = g.c(this.f67520a[0]);
            if (c10 != -1 && c10 <= 4) {
                int a10 = (int) g.a(this.f67520a, c10, false);
                if (this.f67523d.isLevel1Element(a10)) {
                    qVar.skipFully(c10);
                    return a10;
                }
            }
            qVar.skipFully(1);
        }
    }

    private double d(q qVar, int i10) throws IOException {
        long e10 = e(qVar, i10);
        if (i10 == 4) {
            return Float.intBitsToFloat((int) e10);
        }
        return Double.longBitsToDouble(e10);
    }

    private long e(q qVar, int i10) throws IOException {
        qVar.readFully(this.f67520a, 0, i10);
        long j10 = 0;
        for (int i11 = 0; i11 < i10; i11++) {
            j10 = (j10 << 8) | (this.f67520a[i11] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
        }
        return j10;
    }

    private static String f(q qVar, int i10) throws IOException {
        if (i10 == 0) {
            return "";
        }
        byte[] bArr = new byte[i10];
        qVar.readFully(bArr, 0, i10);
        while (i10 > 0 && bArr[i10 - 1] == 0) {
            i10--;
        }
        return new String(bArr, 0, i10);
    }

    @Override // to.c
    public boolean a(q qVar) throws IOException {
        cn.a.i(this.f67523d);
        while (true) {
            b peek = this.f67521b.peek();
            if (peek != null && qVar.getPosition() >= peek.f67528b) {
                this.f67523d.endMasterElement(this.f67521b.pop().f67527a);
                return true;
            }
            if (this.f67524e == 0) {
                long d10 = this.f67522c.d(qVar, true, false, 4);
                if (d10 == -2) {
                    d10 = c(qVar);
                }
                if (d10 == -1) {
                    return false;
                }
                this.f67525f = (int) d10;
                this.f67524e = 1;
            }
            if (this.f67524e == 1) {
                this.f67526g = this.f67522c.d(qVar, false, true, 8);
                this.f67524e = 2;
            }
            int elementType = this.f67523d.getElementType(this.f67525f);
            if (elementType != 0) {
                if (elementType != 1) {
                    if (elementType != 2) {
                        if (elementType != 3) {
                            if (elementType != 4) {
                                if (elementType == 5) {
                                    long j10 = this.f67526g;
                                    if (j10 != 4 && j10 != 8) {
                                        throw ParserException.b("Invalid float size: " + this.f67526g, null);
                                    }
                                    this.f67523d.floatElement(this.f67525f, d(qVar, (int) j10));
                                    this.f67524e = 0;
                                    return true;
                                }
                                throw ParserException.b("Invalid element type " + elementType, null);
                            }
                            this.f67523d.a(this.f67525f, (int) this.f67526g, qVar);
                            this.f67524e = 0;
                            return true;
                        }
                        long j11 = this.f67526g;
                        if (j11 <= SieveCacheKt.NodeLinkMask) {
                            this.f67523d.stringElement(this.f67525f, f(qVar, (int) j11));
                            this.f67524e = 0;
                            return true;
                        }
                        throw ParserException.b("String element size: " + this.f67526g, null);
                    }
                    long j12 = this.f67526g;
                    if (j12 <= 8) {
                        this.f67523d.integerElement(this.f67525f, e(qVar, (int) j12));
                        this.f67524e = 0;
                        return true;
                    }
                    throw ParserException.b("Invalid integer size: " + this.f67526g, null);
                }
                long position = qVar.getPosition();
                this.f67521b.push(new b(this.f67525f, this.f67526g + position));
                this.f67523d.startMasterElement(this.f67525f, position, this.f67526g);
                this.f67524e = 0;
                return true;
            }
            qVar.skipFully((int) this.f67526g);
            this.f67524e = 0;
        }
    }

    @Override // to.c
    public void b(to.b bVar) {
        this.f67523d = bVar;
    }

    @Override // to.c
    public void reset() {
        this.f67524e = 0;
        this.f67521b.clear();
        this.f67522c.e();
    }
}
