package com.explorestack.protobuf;

import com.explorestack.protobuf.MessageLite;
import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;
/* compiled from: CodedInputStream.java */
/* loaded from: classes3.dex */
public abstract class n {

    /* renamed from: a  reason: collision with root package name */
    int f14461a;

    /* renamed from: b  reason: collision with root package name */
    int f14462b;

    /* renamed from: c  reason: collision with root package name */
    int f14463c;

    /* renamed from: d  reason: collision with root package name */
    o f14464d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f14465e;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CodedInputStream.java */
    /* loaded from: classes3.dex */
    public static final class b extends n {

        /* renamed from: f  reason: collision with root package name */
        private final byte[] f14466f;

        /* renamed from: g  reason: collision with root package name */
        private final boolean f14467g;

        /* renamed from: h  reason: collision with root package name */
        private int f14468h;

        /* renamed from: i  reason: collision with root package name */
        private int f14469i;

        /* renamed from: j  reason: collision with root package name */
        private int f14470j;

        /* renamed from: k  reason: collision with root package name */
        private int f14471k;

        /* renamed from: l  reason: collision with root package name */
        private int f14472l;

        /* renamed from: m  reason: collision with root package name */
        private boolean f14473m;

        /* renamed from: n  reason: collision with root package name */
        private int f14474n;

        private void V() {
            int i10 = this.f14468h + this.f14469i;
            this.f14468h = i10;
            int i11 = i10 - this.f14471k;
            int i12 = this.f14474n;
            if (i11 > i12) {
                int i13 = i11 - i12;
                this.f14469i = i13;
                this.f14468h = i10 - i13;
                return;
            }
            this.f14469i = 0;
        }

        private void Y() throws IOException {
            if (this.f14468h - this.f14470j >= 10) {
                Z();
            } else {
                a0();
            }
        }

        private void Z() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                byte[] bArr = this.f14466f;
                int i11 = this.f14470j;
                this.f14470j = i11 + 1;
                if (bArr[i11] >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private void a0() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                if (P() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // com.explorestack.protobuf.n
        public <T extends MessageLite> T A(j1<T> j1Var, y yVar) throws IOException {
            int C = C();
            if (this.f14461a < this.f14462b) {
                int p10 = p(C);
                this.f14461a++;
                T parsePartialFrom = j1Var.parsePartialFrom(this, yVar);
                a(0);
                this.f14461a--;
                o(p10);
                return parsePartialFrom;
            }
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }

        @Override // com.explorestack.protobuf.n
        public void B(MessageLite.Builder builder, y yVar) throws IOException {
            int C = C();
            if (this.f14461a < this.f14462b) {
                int p10 = p(C);
                this.f14461a++;
                builder.mergeFrom(this, yVar);
                a(0);
                this.f14461a--;
                o(p10);
                return;
            }
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }

        @Override // com.explorestack.protobuf.n
        public int C() throws IOException {
            int i10;
            int i11 = this.f14470j;
            int i12 = this.f14468h;
            if (i12 != i11) {
                byte[] bArr = this.f14466f;
                int i13 = i11 + 1;
                byte b10 = bArr[i11];
                if (b10 >= 0) {
                    this.f14470j = i13;
                    return b10;
                } else if (i12 - i13 >= 9) {
                    int i14 = i11 + 2;
                    int i15 = (bArr[i13] << 7) ^ b10;
                    if (i15 < 0) {
                        i10 = i15 ^ (-128);
                    } else {
                        int i16 = i11 + 3;
                        int i17 = (bArr[i14] << 14) ^ i15;
                        if (i17 >= 0) {
                            i10 = i17 ^ 16256;
                        } else {
                            int i18 = i11 + 4;
                            int i19 = i17 ^ (bArr[i16] << 21);
                            if (i19 < 0) {
                                i10 = (-2080896) ^ i19;
                            } else {
                                i16 = i11 + 5;
                                byte b11 = bArr[i18];
                                int i20 = (i19 ^ (b11 << 28)) ^ 266354560;
                                if (b11 < 0) {
                                    i18 = i11 + 6;
                                    if (bArr[i16] < 0) {
                                        i16 = i11 + 7;
                                        if (bArr[i18] < 0) {
                                            i18 = i11 + 8;
                                            if (bArr[i16] < 0) {
                                                i16 = i11 + 9;
                                                if (bArr[i18] < 0) {
                                                    int i21 = i11 + 10;
                                                    if (bArr[i16] >= 0) {
                                                        i14 = i21;
                                                        i10 = i20;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    i10 = i20;
                                }
                                i10 = i20;
                            }
                            i14 = i18;
                        }
                        i14 = i16;
                    }
                    this.f14470j = i14;
                    return i10;
                }
            }
            return (int) U();
        }

        @Override // com.explorestack.protobuf.n
        public int E() throws IOException {
            return R();
        }

        @Override // com.explorestack.protobuf.n
        public long F() throws IOException {
            return S();
        }

        @Override // com.explorestack.protobuf.n
        public int G() throws IOException {
            return n.b(C());
        }

        @Override // com.explorestack.protobuf.n
        public long H() throws IOException {
            return n.c(T());
        }

        @Override // com.explorestack.protobuf.n
        public String I() throws IOException {
            int C = C();
            if (C > 0) {
                int i10 = this.f14468h;
                int i11 = this.f14470j;
                if (C <= i10 - i11) {
                    String str = new String(this.f14466f, i11, C, i0.f14402a);
                    this.f14470j += C;
                    return str;
                }
            }
            if (C == 0) {
                return "";
            }
            if (C < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.explorestack.protobuf.n
        public String J() throws IOException {
            int C = C();
            if (C > 0) {
                int i10 = this.f14468h;
                int i11 = this.f14470j;
                if (C <= i10 - i11) {
                    String h10 = Utf8.h(this.f14466f, i11, C);
                    this.f14470j += C;
                    return h10;
                }
            }
            if (C == 0) {
                return "";
            }
            if (C <= 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.explorestack.protobuf.n
        public int K() throws IOException {
            if (f()) {
                this.f14472l = 0;
                return 0;
            }
            int C = C();
            this.f14472l = C;
            if (WireFormat.a(C) != 0) {
                return this.f14472l;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override // com.explorestack.protobuf.n
        public int L() throws IOException {
            return C();
        }

        @Override // com.explorestack.protobuf.n
        public long M() throws IOException {
            return T();
        }

        @Override // com.explorestack.protobuf.n
        public boolean O(int i10) throws IOException {
            int b10 = WireFormat.b(i10);
            if (b10 != 0) {
                if (b10 != 1) {
                    if (b10 != 2) {
                        if (b10 != 3) {
                            if (b10 != 4) {
                                if (b10 == 5) {
                                    X(4);
                                    return true;
                                }
                                throw InvalidProtocolBufferException.invalidWireType();
                            }
                            return false;
                        }
                        W();
                        a(WireFormat.c(WireFormat.a(i10), 4));
                        return true;
                    }
                    X(C());
                    return true;
                }
                X(8);
                return true;
            }
            Y();
            return true;
        }

        public byte P() throws IOException {
            int i10 = this.f14470j;
            if (i10 != this.f14468h) {
                byte[] bArr = this.f14466f;
                this.f14470j = i10 + 1;
                return bArr[i10];
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        public byte[] Q(int i10) throws IOException {
            if (i10 > 0) {
                int i11 = this.f14468h;
                int i12 = this.f14470j;
                if (i10 <= i11 - i12) {
                    int i13 = i10 + i12;
                    this.f14470j = i13;
                    return Arrays.copyOfRange(this.f14466f, i12, i13);
                }
            }
            if (i10 <= 0) {
                if (i10 == 0) {
                    return i0.f14404c;
                }
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        public int R() throws IOException {
            int i10 = this.f14470j;
            if (this.f14468h - i10 >= 4) {
                byte[] bArr = this.f14466f;
                this.f14470j = i10 + 4;
                return ((bArr[i10 + 3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | (bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[i10 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | ((bArr[i10 + 2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16);
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        public long S() throws IOException {
            int i10 = this.f14470j;
            if (this.f14468h - i10 >= 8) {
                byte[] bArr = this.f14466f;
                this.f14470j = i10 + 8;
                return ((bArr[i10 + 7] & 255) << 56) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 3] & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48);
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        public long T() throws IOException {
            long j10;
            long j11;
            long j12;
            int i10 = this.f14470j;
            int i11 = this.f14468h;
            if (i11 != i10) {
                byte[] bArr = this.f14466f;
                int i12 = i10 + 1;
                byte b10 = bArr[i10];
                if (b10 >= 0) {
                    this.f14470j = i12;
                    return b10;
                } else if (i11 - i12 >= 9) {
                    int i13 = i10 + 2;
                    int i14 = (bArr[i12] << 7) ^ b10;
                    if (i14 < 0) {
                        j10 = i14 ^ (-128);
                    } else {
                        int i15 = i10 + 3;
                        int i16 = (bArr[i13] << 14) ^ i14;
                        if (i16 >= 0) {
                            j10 = i16 ^ 16256;
                            i13 = i15;
                        } else {
                            int i17 = i10 + 4;
                            int i18 = i16 ^ (bArr[i15] << 21);
                            if (i18 < 0) {
                                i13 = i17;
                                j10 = (-2080896) ^ i18;
                            } else {
                                long j13 = i18;
                                i13 = i10 + 5;
                                long j14 = j13 ^ (bArr[i17] << 28);
                                if (j14 >= 0) {
                                    j12 = 266354560;
                                } else {
                                    int i19 = i10 + 6;
                                    long j15 = j14 ^ (bArr[i13] << 35);
                                    if (j15 < 0) {
                                        j11 = -34093383808L;
                                    } else {
                                        i13 = i10 + 7;
                                        j14 = j15 ^ (bArr[i19] << 42);
                                        if (j14 >= 0) {
                                            j12 = 4363953127296L;
                                        } else {
                                            i19 = i10 + 8;
                                            j15 = j14 ^ (bArr[i13] << 49);
                                            if (j15 < 0) {
                                                j11 = -558586000294016L;
                                            } else {
                                                i13 = i10 + 9;
                                                long j16 = (j15 ^ (bArr[i19] << 56)) ^ 71499008037633920L;
                                                if (j16 < 0) {
                                                    int i20 = i10 + 10;
                                                    if (bArr[i13] >= 0) {
                                                        i13 = i20;
                                                    }
                                                }
                                                j10 = j16;
                                            }
                                        }
                                    }
                                    j10 = j15 ^ j11;
                                    i13 = i19;
                                }
                                j10 = j14 ^ j12;
                            }
                        }
                    }
                    this.f14470j = i13;
                    return j10;
                }
            }
            return U();
        }

        long U() throws IOException {
            long j10 = 0;
            for (int i10 = 0; i10 < 64; i10 += 7) {
                byte P = P();
                j10 |= (P & ByteCompanionObject.MAX_VALUE) << i10;
                if ((P & ByteCompanionObject.MIN_VALUE) == 0) {
                    return j10;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        public void W() throws IOException {
            int K;
            do {
                K = K();
                if (K == 0) {
                    return;
                }
            } while (O(K));
        }

        public void X(int i10) throws IOException {
            if (i10 >= 0) {
                int i11 = this.f14468h;
                int i12 = this.f14470j;
                if (i10 <= i11 - i12) {
                    this.f14470j = i12 + i10;
                    return;
                }
            }
            if (i10 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // com.explorestack.protobuf.n
        public void a(int i10) throws InvalidProtocolBufferException {
            if (this.f14472l == i10) {
                return;
            }
            throw InvalidProtocolBufferException.invalidEndTag();
        }

        @Override // com.explorestack.protobuf.n
        public int d() {
            int i10 = this.f14474n;
            if (i10 == Integer.MAX_VALUE) {
                return -1;
            }
            return i10 - e();
        }

        @Override // com.explorestack.protobuf.n
        public int e() {
            return this.f14470j - this.f14471k;
        }

        @Override // com.explorestack.protobuf.n
        public boolean f() throws IOException {
            if (this.f14470j == this.f14468h) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.n
        public void o(int i10) {
            this.f14474n = i10;
            V();
        }

        @Override // com.explorestack.protobuf.n
        public int p(int i10) throws InvalidProtocolBufferException {
            if (i10 >= 0) {
                int e10 = i10 + e();
                if (e10 >= 0) {
                    int i11 = this.f14474n;
                    if (e10 <= i11) {
                        this.f14474n = e10;
                        V();
                        return i11;
                    }
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                throw InvalidProtocolBufferException.parseFailure();
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override // com.explorestack.protobuf.n
        public boolean q() throws IOException {
            if (T() != 0) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.n
        public ByteString r() throws IOException {
            ByteString copyFrom;
            int C = C();
            if (C > 0) {
                int i10 = this.f14468h;
                int i11 = this.f14470j;
                if (C <= i10 - i11) {
                    if (this.f14467g && this.f14473m) {
                        copyFrom = ByteString.wrap(this.f14466f, i11, C);
                    } else {
                        copyFrom = ByteString.copyFrom(this.f14466f, i11, C);
                    }
                    this.f14470j += C;
                    return copyFrom;
                }
            }
            if (C == 0) {
                return ByteString.EMPTY;
            }
            return ByteString.wrap(Q(C));
        }

        @Override // com.explorestack.protobuf.n
        public double s() throws IOException {
            return Double.longBitsToDouble(S());
        }

        @Override // com.explorestack.protobuf.n
        public int t() throws IOException {
            return C();
        }

        @Override // com.explorestack.protobuf.n
        public int u() throws IOException {
            return R();
        }

        @Override // com.explorestack.protobuf.n
        public long v() throws IOException {
            return S();
        }

        @Override // com.explorestack.protobuf.n
        public float w() throws IOException {
            return Float.intBitsToFloat(R());
        }

        @Override // com.explorestack.protobuf.n
        public void x(int i10, MessageLite.Builder builder, y yVar) throws IOException {
            int i11 = this.f14461a;
            if (i11 < this.f14462b) {
                this.f14461a = i11 + 1;
                builder.mergeFrom(this, yVar);
                a(WireFormat.c(i10, 4));
                this.f14461a--;
                return;
            }
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }

        @Override // com.explorestack.protobuf.n
        public int y() throws IOException {
            return C();
        }

        @Override // com.explorestack.protobuf.n
        public long z() throws IOException {
            return T();
        }

        private b(byte[] bArr, int i10, int i11, boolean z10) {
            super();
            this.f14474n = Integer.MAX_VALUE;
            this.f14466f = bArr;
            this.f14468h = i11 + i10;
            this.f14470j = i10;
            this.f14471k = i10;
            this.f14467g = z10;
        }
    }

    /* compiled from: CodedInputStream.java */
    /* loaded from: classes3.dex */
    private static final class c extends n {

        /* renamed from: f  reason: collision with root package name */
        private Iterable<ByteBuffer> f14475f;

        /* renamed from: g  reason: collision with root package name */
        private Iterator<ByteBuffer> f14476g;

        /* renamed from: h  reason: collision with root package name */
        private ByteBuffer f14477h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f14478i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f14479j;

        /* renamed from: k  reason: collision with root package name */
        private int f14480k;

        /* renamed from: l  reason: collision with root package name */
        private int f14481l;

        /* renamed from: m  reason: collision with root package name */
        private int f14482m;

        /* renamed from: n  reason: collision with root package name */
        private int f14483n;

        /* renamed from: o  reason: collision with root package name */
        private int f14484o;

        /* renamed from: p  reason: collision with root package name */
        private int f14485p;

        /* renamed from: q  reason: collision with root package name */
        private long f14486q;

        /* renamed from: r  reason: collision with root package name */
        private long f14487r;

        /* renamed from: s  reason: collision with root package name */
        private long f14488s;

        /* renamed from: t  reason: collision with root package name */
        private long f14489t;

        private long P() {
            return this.f14489t - this.f14486q;
        }

        private void Q() throws InvalidProtocolBufferException {
            if (this.f14476g.hasNext()) {
                d0();
                return;
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        private void S(byte[] bArr, int i10, int i11) throws IOException {
            if (i11 >= 0 && i11 <= Y()) {
                int i12 = i11;
                while (i12 > 0) {
                    if (P() == 0) {
                        Q();
                    }
                    int min = Math.min(i12, (int) P());
                    long j10 = min;
                    o2.p(this.f14486q, bArr, (i11 - i12) + i10, j10);
                    i12 -= min;
                    this.f14486q += j10;
                }
            } else if (i11 <= 0) {
                if (i11 == 0) {
                    return;
                }
                throw InvalidProtocolBufferException.negativeSize();
            } else {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        private void X() {
            int i10 = this.f14480k + this.f14481l;
            this.f14480k = i10;
            int i11 = i10 - this.f14485p;
            int i12 = this.f14482m;
            if (i11 > i12) {
                int i13 = i11 - i12;
                this.f14481l = i13;
                this.f14480k = i10 - i13;
                return;
            }
            this.f14481l = 0;
        }

        private int Y() {
            return (int) (((this.f14480k - this.f14484o) - this.f14486q) + this.f14487r);
        }

        private void b0() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                if (R() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private ByteBuffer c0(int i10, int i11) throws IOException {
            int position = this.f14477h.position();
            int limit = this.f14477h.limit();
            try {
                try {
                    this.f14477h.position(i10);
                    this.f14477h.limit(i11);
                    return this.f14477h.slice();
                } catch (IllegalArgumentException unused) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
            } finally {
                this.f14477h.position(position);
                this.f14477h.limit(limit);
            }
        }

        private void d0() {
            ByteBuffer next = this.f14476g.next();
            this.f14477h = next;
            this.f14484o += (int) (this.f14486q - this.f14487r);
            long position = next.position();
            this.f14486q = position;
            this.f14487r = position;
            this.f14489t = this.f14477h.limit();
            long k10 = o2.k(this.f14477h);
            this.f14488s = k10;
            this.f14486q += k10;
            this.f14487r += k10;
            this.f14489t += k10;
        }

        @Override // com.explorestack.protobuf.n
        public <T extends MessageLite> T A(j1<T> j1Var, y yVar) throws IOException {
            int C = C();
            if (this.f14461a < this.f14462b) {
                int p10 = p(C);
                this.f14461a++;
                T parsePartialFrom = j1Var.parsePartialFrom(this, yVar);
                a(0);
                this.f14461a--;
                o(p10);
                return parsePartialFrom;
            }
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }

        @Override // com.explorestack.protobuf.n
        public void B(MessageLite.Builder builder, y yVar) throws IOException {
            int C = C();
            if (this.f14461a < this.f14462b) {
                int p10 = p(C);
                this.f14461a++;
                builder.mergeFrom(this, yVar);
                a(0);
                this.f14461a--;
                o(p10);
                return;
            }
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }

        @Override // com.explorestack.protobuf.n
        public int C() throws IOException {
            int i10;
            long j10 = this.f14486q;
            if (this.f14489t != j10) {
                long j11 = j10 + 1;
                byte w10 = o2.w(j10);
                if (w10 >= 0) {
                    this.f14486q++;
                    return w10;
                } else if (this.f14489t - this.f14486q >= 10) {
                    long j12 = 2 + j10;
                    int w11 = (o2.w(j11) << 7) ^ w10;
                    if (w11 < 0) {
                        i10 = w11 ^ (-128);
                    } else {
                        long j13 = 3 + j10;
                        int w12 = (o2.w(j12) << 14) ^ w11;
                        if (w12 >= 0) {
                            i10 = w12 ^ 16256;
                        } else {
                            long j14 = 4 + j10;
                            int w13 = w12 ^ (o2.w(j13) << 21);
                            if (w13 < 0) {
                                i10 = (-2080896) ^ w13;
                            } else {
                                j13 = 5 + j10;
                                byte w14 = o2.w(j14);
                                int i11 = (w13 ^ (w14 << 28)) ^ 266354560;
                                if (w14 < 0) {
                                    j14 = 6 + j10;
                                    if (o2.w(j13) < 0) {
                                        j13 = 7 + j10;
                                        if (o2.w(j14) < 0) {
                                            j14 = 8 + j10;
                                            if (o2.w(j13) < 0) {
                                                j13 = 9 + j10;
                                                if (o2.w(j14) < 0) {
                                                    long j15 = j10 + 10;
                                                    if (o2.w(j13) >= 0) {
                                                        i10 = i11;
                                                        j12 = j15;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    i10 = i11;
                                }
                                i10 = i11;
                            }
                            j12 = j14;
                        }
                        j12 = j13;
                    }
                    this.f14486q = j12;
                    return i10;
                }
            }
            return (int) W();
        }

        @Override // com.explorestack.protobuf.n
        public int E() throws IOException {
            return T();
        }

        @Override // com.explorestack.protobuf.n
        public long F() throws IOException {
            return U();
        }

        @Override // com.explorestack.protobuf.n
        public int G() throws IOException {
            return n.b(C());
        }

        @Override // com.explorestack.protobuf.n
        public long H() throws IOException {
            return n.c(V());
        }

        @Override // com.explorestack.protobuf.n
        public String I() throws IOException {
            int C = C();
            if (C > 0) {
                long j10 = C;
                long j11 = this.f14489t;
                long j12 = this.f14486q;
                if (j10 <= j11 - j12) {
                    byte[] bArr = new byte[C];
                    o2.p(j12, bArr, 0L, j10);
                    String str = new String(bArr, i0.f14402a);
                    this.f14486q += j10;
                    return str;
                }
            }
            if (C > 0 && C <= Y()) {
                byte[] bArr2 = new byte[C];
                S(bArr2, 0, C);
                return new String(bArr2, i0.f14402a);
            } else if (C == 0) {
                return "";
            } else {
                if (C < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // com.explorestack.protobuf.n
        public String J() throws IOException {
            int C = C();
            if (C > 0) {
                long j10 = C;
                long j11 = this.f14489t;
                long j12 = this.f14486q;
                if (j10 <= j11 - j12) {
                    String g10 = Utf8.g(this.f14477h, (int) (j12 - this.f14487r), C);
                    this.f14486q += j10;
                    return g10;
                }
            }
            if (C >= 0 && C <= Y()) {
                byte[] bArr = new byte[C];
                S(bArr, 0, C);
                return Utf8.h(bArr, 0, C);
            } else if (C == 0) {
                return "";
            } else {
                if (C <= 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // com.explorestack.protobuf.n
        public int K() throws IOException {
            if (f()) {
                this.f14483n = 0;
                return 0;
            }
            int C = C();
            this.f14483n = C;
            if (WireFormat.a(C) != 0) {
                return this.f14483n;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override // com.explorestack.protobuf.n
        public int L() throws IOException {
            return C();
        }

        @Override // com.explorestack.protobuf.n
        public long M() throws IOException {
            return V();
        }

        @Override // com.explorestack.protobuf.n
        public boolean O(int i10) throws IOException {
            int b10 = WireFormat.b(i10);
            if (b10 != 0) {
                if (b10 != 1) {
                    if (b10 != 2) {
                        if (b10 != 3) {
                            if (b10 != 4) {
                                if (b10 == 5) {
                                    a0(4);
                                    return true;
                                }
                                throw InvalidProtocolBufferException.invalidWireType();
                            }
                            return false;
                        }
                        Z();
                        a(WireFormat.c(WireFormat.a(i10), 4));
                        return true;
                    }
                    a0(C());
                    return true;
                }
                a0(8);
                return true;
            }
            b0();
            return true;
        }

        public byte R() throws IOException {
            if (P() == 0) {
                Q();
            }
            long j10 = this.f14486q;
            this.f14486q = 1 + j10;
            return o2.w(j10);
        }

        public int T() throws IOException {
            if (P() >= 4) {
                long j10 = this.f14486q;
                this.f14486q = 4 + j10;
                return ((o2.w(j10 + 3) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | (o2.w(j10) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((o2.w(1 + j10) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | ((o2.w(2 + j10) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16);
            }
            return (R() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((R() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | ((R() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((R() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24);
        }

        public long U() throws IOException {
            long R;
            byte R2;
            if (P() >= 8) {
                long j10 = this.f14486q;
                this.f14486q = 8 + j10;
                R = (o2.w(j10) & 255) | ((o2.w(1 + j10) & 255) << 8) | ((o2.w(2 + j10) & 255) << 16) | ((o2.w(3 + j10) & 255) << 24) | ((o2.w(4 + j10) & 255) << 32) | ((o2.w(5 + j10) & 255) << 40) | ((o2.w(6 + j10) & 255) << 48);
                R2 = o2.w(j10 + 7);
            } else {
                R = (R() & 255) | ((R() & 255) << 8) | ((R() & 255) << 16) | ((R() & 255) << 24) | ((R() & 255) << 32) | ((R() & 255) << 40) | ((R() & 255) << 48);
                R2 = R();
            }
            return ((R2 & 255) << 56) | R;
        }

        public long V() throws IOException {
            long j10;
            long j11;
            long j12;
            long j13 = this.f14486q;
            if (this.f14489t != j13) {
                long j14 = j13 + 1;
                byte w10 = o2.w(j13);
                if (w10 >= 0) {
                    this.f14486q++;
                    return w10;
                } else if (this.f14489t - this.f14486q >= 10) {
                    long j15 = 2 + j13;
                    int w11 = (o2.w(j14) << 7) ^ w10;
                    if (w11 < 0) {
                        j10 = w11 ^ (-128);
                    } else {
                        long j16 = 3 + j13;
                        int w12 = (o2.w(j15) << 14) ^ w11;
                        if (w12 >= 0) {
                            j10 = w12 ^ 16256;
                            j15 = j16;
                        } else {
                            long j17 = 4 + j13;
                            int w13 = w12 ^ (o2.w(j16) << 21);
                            if (w13 < 0) {
                                j10 = (-2080896) ^ w13;
                                j15 = j17;
                            } else {
                                long j18 = 5 + j13;
                                long w14 = (o2.w(j17) << 28) ^ w13;
                                if (w14 >= 0) {
                                    j12 = 266354560;
                                } else {
                                    long j19 = 6 + j13;
                                    long w15 = w14 ^ (o2.w(j18) << 35);
                                    if (w15 < 0) {
                                        j11 = -34093383808L;
                                    } else {
                                        j18 = 7 + j13;
                                        w14 = w15 ^ (o2.w(j19) << 42);
                                        if (w14 >= 0) {
                                            j12 = 4363953127296L;
                                        } else {
                                            j19 = 8 + j13;
                                            w15 = w14 ^ (o2.w(j18) << 49);
                                            if (w15 < 0) {
                                                j11 = -558586000294016L;
                                            } else {
                                                j18 = 9 + j13;
                                                long w16 = (w15 ^ (o2.w(j19) << 56)) ^ 71499008037633920L;
                                                if (w16 < 0) {
                                                    long j20 = j13 + 10;
                                                    if (o2.w(j18) >= 0) {
                                                        j10 = w16;
                                                        j15 = j20;
                                                    }
                                                } else {
                                                    j10 = w16;
                                                    j15 = j18;
                                                }
                                            }
                                        }
                                    }
                                    j10 = j11 ^ w15;
                                    j15 = j19;
                                }
                                j10 = j12 ^ w14;
                                j15 = j18;
                            }
                        }
                    }
                    this.f14486q = j15;
                    return j10;
                }
            }
            return W();
        }

        long W() throws IOException {
            long j10 = 0;
            for (int i10 = 0; i10 < 64; i10 += 7) {
                byte R = R();
                j10 |= (R & ByteCompanionObject.MAX_VALUE) << i10;
                if ((R & ByteCompanionObject.MIN_VALUE) == 0) {
                    return j10;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        public void Z() throws IOException {
            int K;
            do {
                K = K();
                if (K == 0) {
                    return;
                }
            } while (O(K));
        }

        @Override // com.explorestack.protobuf.n
        public void a(int i10) throws InvalidProtocolBufferException {
            if (this.f14483n == i10) {
                return;
            }
            throw InvalidProtocolBufferException.invalidEndTag();
        }

        public void a0(int i10) throws IOException {
            if (i10 >= 0 && i10 <= ((this.f14480k - this.f14484o) - this.f14486q) + this.f14487r) {
                while (i10 > 0) {
                    if (P() == 0) {
                        Q();
                    }
                    int min = Math.min(i10, (int) P());
                    i10 -= min;
                    this.f14486q += min;
                }
            } else if (i10 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            } else {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // com.explorestack.protobuf.n
        public int d() {
            int i10 = this.f14482m;
            if (i10 == Integer.MAX_VALUE) {
                return -1;
            }
            return i10 - e();
        }

        @Override // com.explorestack.protobuf.n
        public int e() {
            return (int) (((this.f14484o - this.f14485p) + this.f14486q) - this.f14487r);
        }

        @Override // com.explorestack.protobuf.n
        public boolean f() throws IOException {
            if ((this.f14484o + this.f14486q) - this.f14487r == this.f14480k) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.n
        public void o(int i10) {
            this.f14482m = i10;
            X();
        }

        @Override // com.explorestack.protobuf.n
        public int p(int i10) throws InvalidProtocolBufferException {
            if (i10 >= 0) {
                int e10 = i10 + e();
                int i11 = this.f14482m;
                if (e10 <= i11) {
                    this.f14482m = e10;
                    X();
                    return i11;
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override // com.explorestack.protobuf.n
        public boolean q() throws IOException {
            if (V() != 0) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.n
        public ByteString r() throws IOException {
            int C = C();
            if (C > 0) {
                long j10 = C;
                long j11 = this.f14489t;
                long j12 = this.f14486q;
                if (j10 <= j11 - j12) {
                    if (this.f14478i && this.f14479j) {
                        int i10 = (int) (j12 - this.f14488s);
                        ByteString wrap = ByteString.wrap(c0(i10, C + i10));
                        this.f14486q += j10;
                        return wrap;
                    }
                    byte[] bArr = new byte[C];
                    o2.p(j12, bArr, 0L, j10);
                    this.f14486q += j10;
                    return ByteString.wrap(bArr);
                }
            }
            if (C > 0 && C <= Y()) {
                if (this.f14478i && this.f14479j) {
                    ArrayList arrayList = new ArrayList();
                    while (C > 0) {
                        if (P() == 0) {
                            Q();
                        }
                        int min = Math.min(C, (int) P());
                        int i11 = (int) (this.f14486q - this.f14488s);
                        arrayList.add(ByteString.wrap(c0(i11, i11 + min)));
                        C -= min;
                        this.f14486q += min;
                    }
                    return ByteString.copyFrom(arrayList);
                }
                byte[] bArr2 = new byte[C];
                S(bArr2, 0, C);
                return ByteString.wrap(bArr2);
            } else if (C == 0) {
                return ByteString.EMPTY;
            } else {
                if (C < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // com.explorestack.protobuf.n
        public double s() throws IOException {
            return Double.longBitsToDouble(U());
        }

        @Override // com.explorestack.protobuf.n
        public int t() throws IOException {
            return C();
        }

        @Override // com.explorestack.protobuf.n
        public int u() throws IOException {
            return T();
        }

        @Override // com.explorestack.protobuf.n
        public long v() throws IOException {
            return U();
        }

        @Override // com.explorestack.protobuf.n
        public float w() throws IOException {
            return Float.intBitsToFloat(T());
        }

        @Override // com.explorestack.protobuf.n
        public void x(int i10, MessageLite.Builder builder, y yVar) throws IOException {
            int i11 = this.f14461a;
            if (i11 < this.f14462b) {
                this.f14461a = i11 + 1;
                builder.mergeFrom(this, yVar);
                a(WireFormat.c(i10, 4));
                this.f14461a--;
                return;
            }
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }

        @Override // com.explorestack.protobuf.n
        public int y() throws IOException {
            return C();
        }

        @Override // com.explorestack.protobuf.n
        public long z() throws IOException {
            return V();
        }

        private c(Iterable<ByteBuffer> iterable, int i10, boolean z10) {
            super();
            this.f14482m = Integer.MAX_VALUE;
            this.f14480k = i10;
            this.f14475f = iterable;
            this.f14476g = iterable.iterator();
            this.f14478i = z10;
            this.f14484o = 0;
            this.f14485p = 0;
            if (i10 == 0) {
                this.f14477h = i0.f14405d;
                this.f14486q = 0L;
                this.f14487r = 0L;
                this.f14489t = 0L;
                this.f14488s = 0L;
                return;
            }
            d0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CodedInputStream.java */
    /* loaded from: classes3.dex */
    public static final class d extends n {

        /* renamed from: f  reason: collision with root package name */
        private final InputStream f14490f;

        /* renamed from: g  reason: collision with root package name */
        private final byte[] f14491g;

        /* renamed from: h  reason: collision with root package name */
        private int f14492h;

        /* renamed from: i  reason: collision with root package name */
        private int f14493i;

        /* renamed from: j  reason: collision with root package name */
        private int f14494j;

        /* renamed from: k  reason: collision with root package name */
        private int f14495k;

        /* renamed from: l  reason: collision with root package name */
        private int f14496l;

        /* renamed from: m  reason: collision with root package name */
        private int f14497m;

        private static int P(InputStream inputStream) throws IOException {
            try {
                return inputStream.available();
            } catch (InvalidProtocolBufferException e10) {
                e10.setThrownFromInputStream();
                throw e10;
            }
        }

        private static int Q(InputStream inputStream, byte[] bArr, int i10, int i11) throws IOException {
            try {
                return inputStream.read(bArr, i10, i11);
            } catch (InvalidProtocolBufferException e10) {
                e10.setThrownFromInputStream();
                throw e10;
            }
        }

        private ByteString R(int i10) throws IOException {
            byte[] U = U(i10);
            if (U != null) {
                return ByteString.copyFrom(U);
            }
            int i11 = this.f14494j;
            int i12 = this.f14492h;
            int i13 = i12 - i11;
            this.f14496l += i12;
            this.f14494j = 0;
            this.f14492h = 0;
            List<byte[]> V = V(i10 - i13);
            byte[] bArr = new byte[i10];
            System.arraycopy(this.f14491g, i11, bArr, 0, i13);
            for (byte[] bArr2 : V) {
                System.arraycopy(bArr2, 0, bArr, i13, bArr2.length);
                i13 += bArr2.length;
            }
            return ByteString.wrap(bArr);
        }

        private byte[] T(int i10, boolean z10) throws IOException {
            byte[] U = U(i10);
            if (U != null) {
                if (z10) {
                    return (byte[]) U.clone();
                }
                return U;
            }
            int i11 = this.f14494j;
            int i12 = this.f14492h;
            int i13 = i12 - i11;
            this.f14496l += i12;
            this.f14494j = 0;
            this.f14492h = 0;
            List<byte[]> V = V(i10 - i13);
            byte[] bArr = new byte[i10];
            System.arraycopy(this.f14491g, i11, bArr, 0, i13);
            for (byte[] bArr2 : V) {
                System.arraycopy(bArr2, 0, bArr, i13, bArr2.length);
                i13 += bArr2.length;
            }
            return bArr;
        }

        private byte[] U(int i10) throws IOException {
            if (i10 == 0) {
                return i0.f14404c;
            }
            if (i10 >= 0) {
                int i11 = this.f14496l;
                int i12 = this.f14494j;
                int i13 = i11 + i12 + i10;
                if (i13 - this.f14463c <= 0) {
                    int i14 = this.f14497m;
                    if (i13 <= i14) {
                        int i15 = this.f14492h - i12;
                        int i16 = i10 - i15;
                        if (i16 >= 4096 && i16 > P(this.f14490f)) {
                            return null;
                        }
                        byte[] bArr = new byte[i10];
                        System.arraycopy(this.f14491g, this.f14494j, bArr, 0, i15);
                        this.f14496l += this.f14492h;
                        this.f14494j = 0;
                        this.f14492h = 0;
                        while (i15 < i10) {
                            int Q = Q(this.f14490f, bArr, i15, i10 - i15);
                            if (Q != -1) {
                                this.f14496l += Q;
                                i15 += Q;
                            } else {
                                throw InvalidProtocolBufferException.truncatedMessage();
                            }
                        }
                        return bArr;
                    }
                    e0((i14 - i11) - i12);
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                throw InvalidProtocolBufferException.sizeLimitExceeded();
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        private List<byte[]> V(int i10) throws IOException {
            ArrayList arrayList = new ArrayList();
            while (i10 > 0) {
                int min = Math.min(i10, 4096);
                byte[] bArr = new byte[min];
                int i11 = 0;
                while (i11 < min) {
                    int read = this.f14490f.read(bArr, i11, min - i11);
                    if (read != -1) {
                        this.f14496l += read;
                        i11 += read;
                    } else {
                        throw InvalidProtocolBufferException.truncatedMessage();
                    }
                }
                i10 -= min;
                arrayList.add(bArr);
            }
            return arrayList;
        }

        private void a0() {
            int i10 = this.f14492h + this.f14493i;
            this.f14492h = i10;
            int i11 = this.f14496l + i10;
            int i12 = this.f14497m;
            if (i11 > i12) {
                int i13 = i11 - i12;
                this.f14493i = i13;
                this.f14492h = i10 - i13;
                return;
            }
            this.f14493i = 0;
        }

        private void b0(int i10) throws IOException {
            if (!j0(i10)) {
                if (i10 > (this.f14463c - this.f14496l) - this.f14494j) {
                    throw InvalidProtocolBufferException.sizeLimitExceeded();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        private static long c0(InputStream inputStream, long j10) throws IOException {
            try {
                return inputStream.skip(j10);
            } catch (InvalidProtocolBufferException e10) {
                e10.setThrownFromInputStream();
                throw e10;
            }
        }

        private void f0(int i10) throws IOException {
            if (i10 >= 0) {
                int i11 = this.f14496l;
                int i12 = this.f14494j;
                int i13 = i11 + i12 + i10;
                int i14 = this.f14497m;
                if (i13 <= i14) {
                    this.f14496l = i11 + i12;
                    int i15 = this.f14492h - i12;
                    this.f14492h = 0;
                    this.f14494j = 0;
                    while (i15 < i10) {
                        try {
                            long j10 = i10 - i15;
                            long c02 = c0(this.f14490f, j10);
                            int i16 = (c02 > 0L ? 1 : (c02 == 0L ? 0 : -1));
                            if (i16 >= 0 && c02 <= j10) {
                                if (i16 == 0) {
                                    break;
                                }
                                i15 += (int) c02;
                            } else {
                                throw new IllegalStateException(this.f14490f.getClass() + "#skip returned invalid result: " + c02 + "\nThe InputStream implementation is buggy.");
                            }
                        } finally {
                            this.f14496l += i15;
                            a0();
                        }
                    }
                    if (i15 < i10) {
                        int i17 = this.f14492h;
                        int i18 = i17 - this.f14494j;
                        this.f14494j = i17;
                        b0(1);
                        while (true) {
                            int i19 = i10 - i18;
                            int i20 = this.f14492h;
                            if (i19 > i20) {
                                i18 += i20;
                                this.f14494j = i20;
                                b0(1);
                            } else {
                                this.f14494j = i19;
                                return;
                            }
                        }
                    }
                } else {
                    e0((i14 - i11) - i12);
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
            } else {
                throw InvalidProtocolBufferException.negativeSize();
            }
        }

        private void g0() throws IOException {
            if (this.f14492h - this.f14494j >= 10) {
                h0();
            } else {
                i0();
            }
        }

        private void h0() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                byte[] bArr = this.f14491g;
                int i11 = this.f14494j;
                this.f14494j = i11 + 1;
                if (bArr[i11] >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private void i0() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                if (S() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private boolean j0(int i10) throws IOException {
            int i11 = this.f14494j;
            int i12 = i11 + i10;
            int i13 = this.f14492h;
            if (i12 > i13) {
                int i14 = this.f14463c;
                int i15 = this.f14496l;
                if (i10 > (i14 - i15) - i11 || i15 + i11 + i10 > this.f14497m) {
                    return false;
                }
                if (i11 > 0) {
                    if (i13 > i11) {
                        byte[] bArr = this.f14491g;
                        System.arraycopy(bArr, i11, bArr, 0, i13 - i11);
                    }
                    this.f14496l += i11;
                    this.f14492h -= i11;
                    this.f14494j = 0;
                }
                InputStream inputStream = this.f14490f;
                byte[] bArr2 = this.f14491g;
                int i16 = this.f14492h;
                int Q = Q(inputStream, bArr2, i16, Math.min(bArr2.length - i16, (this.f14463c - this.f14496l) - i16));
                if (Q != 0 && Q >= -1 && Q <= this.f14491g.length) {
                    if (Q <= 0) {
                        return false;
                    }
                    this.f14492h += Q;
                    a0();
                    if (this.f14492h >= i10) {
                        return true;
                    }
                    return j0(i10);
                }
                throw new IllegalStateException(this.f14490f.getClass() + "#read(byte[]) returned invalid result: " + Q + "\nThe InputStream implementation is buggy.");
            }
            throw new IllegalStateException("refillBuffer() called when " + i10 + " bytes were already available in buffer");
        }

        @Override // com.explorestack.protobuf.n
        public <T extends MessageLite> T A(j1<T> j1Var, y yVar) throws IOException {
            int C = C();
            if (this.f14461a < this.f14462b) {
                int p10 = p(C);
                this.f14461a++;
                T parsePartialFrom = j1Var.parsePartialFrom(this, yVar);
                a(0);
                this.f14461a--;
                o(p10);
                return parsePartialFrom;
            }
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }

        @Override // com.explorestack.protobuf.n
        public void B(MessageLite.Builder builder, y yVar) throws IOException {
            int C = C();
            if (this.f14461a < this.f14462b) {
                int p10 = p(C);
                this.f14461a++;
                builder.mergeFrom(this, yVar);
                a(0);
                this.f14461a--;
                o(p10);
                return;
            }
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }

        @Override // com.explorestack.protobuf.n
        public int C() throws IOException {
            int i10;
            int i11 = this.f14494j;
            int i12 = this.f14492h;
            if (i12 != i11) {
                byte[] bArr = this.f14491g;
                int i13 = i11 + 1;
                byte b10 = bArr[i11];
                if (b10 >= 0) {
                    this.f14494j = i13;
                    return b10;
                } else if (i12 - i13 >= 9) {
                    int i14 = i11 + 2;
                    int i15 = (bArr[i13] << 7) ^ b10;
                    if (i15 < 0) {
                        i10 = i15 ^ (-128);
                    } else {
                        int i16 = i11 + 3;
                        int i17 = (bArr[i14] << 14) ^ i15;
                        if (i17 >= 0) {
                            i10 = i17 ^ 16256;
                        } else {
                            int i18 = i11 + 4;
                            int i19 = i17 ^ (bArr[i16] << 21);
                            if (i19 < 0) {
                                i10 = (-2080896) ^ i19;
                            } else {
                                i16 = i11 + 5;
                                byte b11 = bArr[i18];
                                int i20 = (i19 ^ (b11 << 28)) ^ 266354560;
                                if (b11 < 0) {
                                    i18 = i11 + 6;
                                    if (bArr[i16] < 0) {
                                        i16 = i11 + 7;
                                        if (bArr[i18] < 0) {
                                            i18 = i11 + 8;
                                            if (bArr[i16] < 0) {
                                                i16 = i11 + 9;
                                                if (bArr[i18] < 0) {
                                                    int i21 = i11 + 10;
                                                    if (bArr[i16] >= 0) {
                                                        i14 = i21;
                                                        i10 = i20;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    i10 = i20;
                                }
                                i10 = i20;
                            }
                            i14 = i18;
                        }
                        i14 = i16;
                    }
                    this.f14494j = i14;
                    return i10;
                }
            }
            return (int) Z();
        }

        @Override // com.explorestack.protobuf.n
        public int E() throws IOException {
            return W();
        }

        @Override // com.explorestack.protobuf.n
        public long F() throws IOException {
            return X();
        }

        @Override // com.explorestack.protobuf.n
        public int G() throws IOException {
            return n.b(C());
        }

        @Override // com.explorestack.protobuf.n
        public long H() throws IOException {
            return n.c(Y());
        }

        @Override // com.explorestack.protobuf.n
        public String I() throws IOException {
            int C = C();
            if (C > 0) {
                int i10 = this.f14492h;
                int i11 = this.f14494j;
                if (C <= i10 - i11) {
                    String str = new String(this.f14491g, i11, C, i0.f14402a);
                    this.f14494j += C;
                    return str;
                }
            }
            if (C == 0) {
                return "";
            }
            if (C <= this.f14492h) {
                b0(C);
                String str2 = new String(this.f14491g, this.f14494j, C, i0.f14402a);
                this.f14494j += C;
                return str2;
            }
            return new String(T(C, false), i0.f14402a);
        }

        @Override // com.explorestack.protobuf.n
        public String J() throws IOException {
            byte[] T;
            int C = C();
            int i10 = this.f14494j;
            int i11 = this.f14492h;
            if (C <= i11 - i10 && C > 0) {
                T = this.f14491g;
                this.f14494j = i10 + C;
            } else if (C == 0) {
                return "";
            } else {
                i10 = 0;
                if (C <= i11) {
                    b0(C);
                    T = this.f14491g;
                    this.f14494j = C;
                } else {
                    T = T(C, false);
                }
            }
            return Utf8.h(T, i10, C);
        }

        @Override // com.explorestack.protobuf.n
        public int K() throws IOException {
            if (f()) {
                this.f14495k = 0;
                return 0;
            }
            int C = C();
            this.f14495k = C;
            if (WireFormat.a(C) != 0) {
                return this.f14495k;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override // com.explorestack.protobuf.n
        public int L() throws IOException {
            return C();
        }

        @Override // com.explorestack.protobuf.n
        public long M() throws IOException {
            return Y();
        }

        @Override // com.explorestack.protobuf.n
        public boolean O(int i10) throws IOException {
            int b10 = WireFormat.b(i10);
            if (b10 != 0) {
                if (b10 != 1) {
                    if (b10 != 2) {
                        if (b10 != 3) {
                            if (b10 != 4) {
                                if (b10 == 5) {
                                    e0(4);
                                    return true;
                                }
                                throw InvalidProtocolBufferException.invalidWireType();
                            }
                            return false;
                        }
                        d0();
                        a(WireFormat.c(WireFormat.a(i10), 4));
                        return true;
                    }
                    e0(C());
                    return true;
                }
                e0(8);
                return true;
            }
            g0();
            return true;
        }

        public byte S() throws IOException {
            if (this.f14494j == this.f14492h) {
                b0(1);
            }
            byte[] bArr = this.f14491g;
            int i10 = this.f14494j;
            this.f14494j = i10 + 1;
            return bArr[i10];
        }

        public int W() throws IOException {
            int i10 = this.f14494j;
            if (this.f14492h - i10 < 4) {
                b0(4);
                i10 = this.f14494j;
            }
            byte[] bArr = this.f14491g;
            this.f14494j = i10 + 4;
            return ((bArr[i10 + 3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | (bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[i10 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | ((bArr[i10 + 2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16);
        }

        public long X() throws IOException {
            int i10 = this.f14494j;
            if (this.f14492h - i10 < 8) {
                b0(8);
                i10 = this.f14494j;
            }
            byte[] bArr = this.f14491g;
            this.f14494j = i10 + 8;
            return ((bArr[i10 + 7] & 255) << 56) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 3] & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48);
        }

        public long Y() throws IOException {
            long j10;
            long j11;
            long j12;
            int i10 = this.f14494j;
            int i11 = this.f14492h;
            if (i11 != i10) {
                byte[] bArr = this.f14491g;
                int i12 = i10 + 1;
                byte b10 = bArr[i10];
                if (b10 >= 0) {
                    this.f14494j = i12;
                    return b10;
                } else if (i11 - i12 >= 9) {
                    int i13 = i10 + 2;
                    int i14 = (bArr[i12] << 7) ^ b10;
                    if (i14 < 0) {
                        j10 = i14 ^ (-128);
                    } else {
                        int i15 = i10 + 3;
                        int i16 = (bArr[i13] << 14) ^ i14;
                        if (i16 >= 0) {
                            j10 = i16 ^ 16256;
                            i13 = i15;
                        } else {
                            int i17 = i10 + 4;
                            int i18 = i16 ^ (bArr[i15] << 21);
                            if (i18 < 0) {
                                i13 = i17;
                                j10 = (-2080896) ^ i18;
                            } else {
                                long j13 = i18;
                                i13 = i10 + 5;
                                long j14 = j13 ^ (bArr[i17] << 28);
                                if (j14 >= 0) {
                                    j12 = 266354560;
                                } else {
                                    int i19 = i10 + 6;
                                    long j15 = j14 ^ (bArr[i13] << 35);
                                    if (j15 < 0) {
                                        j11 = -34093383808L;
                                    } else {
                                        i13 = i10 + 7;
                                        j14 = j15 ^ (bArr[i19] << 42);
                                        if (j14 >= 0) {
                                            j12 = 4363953127296L;
                                        } else {
                                            i19 = i10 + 8;
                                            j15 = j14 ^ (bArr[i13] << 49);
                                            if (j15 < 0) {
                                                j11 = -558586000294016L;
                                            } else {
                                                i13 = i10 + 9;
                                                long j16 = (j15 ^ (bArr[i19] << 56)) ^ 71499008037633920L;
                                                if (j16 < 0) {
                                                    int i20 = i10 + 10;
                                                    if (bArr[i13] >= 0) {
                                                        i13 = i20;
                                                    }
                                                }
                                                j10 = j16;
                                            }
                                        }
                                    }
                                    j10 = j15 ^ j11;
                                    i13 = i19;
                                }
                                j10 = j14 ^ j12;
                            }
                        }
                    }
                    this.f14494j = i13;
                    return j10;
                }
            }
            return Z();
        }

        long Z() throws IOException {
            long j10 = 0;
            for (int i10 = 0; i10 < 64; i10 += 7) {
                byte S = S();
                j10 |= (S & ByteCompanionObject.MAX_VALUE) << i10;
                if ((S & ByteCompanionObject.MIN_VALUE) == 0) {
                    return j10;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // com.explorestack.protobuf.n
        public void a(int i10) throws InvalidProtocolBufferException {
            if (this.f14495k == i10) {
                return;
            }
            throw InvalidProtocolBufferException.invalidEndTag();
        }

        @Override // com.explorestack.protobuf.n
        public int d() {
            int i10 = this.f14497m;
            if (i10 == Integer.MAX_VALUE) {
                return -1;
            }
            return i10 - (this.f14496l + this.f14494j);
        }

        public void d0() throws IOException {
            int K;
            do {
                K = K();
                if (K == 0) {
                    return;
                }
            } while (O(K));
        }

        @Override // com.explorestack.protobuf.n
        public int e() {
            return this.f14496l + this.f14494j;
        }

        public void e0(int i10) throws IOException {
            int i11 = this.f14492h;
            int i12 = this.f14494j;
            if (i10 <= i11 - i12 && i10 >= 0) {
                this.f14494j = i12 + i10;
            } else {
                f0(i10);
            }
        }

        @Override // com.explorestack.protobuf.n
        public boolean f() throws IOException {
            if (this.f14494j == this.f14492h && !j0(1)) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.n
        public void o(int i10) {
            this.f14497m = i10;
            a0();
        }

        @Override // com.explorestack.protobuf.n
        public int p(int i10) throws InvalidProtocolBufferException {
            if (i10 >= 0) {
                int i11 = i10 + this.f14496l + this.f14494j;
                int i12 = this.f14497m;
                if (i11 <= i12) {
                    this.f14497m = i11;
                    a0();
                    return i12;
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override // com.explorestack.protobuf.n
        public boolean q() throws IOException {
            if (Y() != 0) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.n
        public ByteString r() throws IOException {
            int C = C();
            int i10 = this.f14492h;
            int i11 = this.f14494j;
            if (C <= i10 - i11 && C > 0) {
                ByteString copyFrom = ByteString.copyFrom(this.f14491g, i11, C);
                this.f14494j += C;
                return copyFrom;
            } else if (C == 0) {
                return ByteString.EMPTY;
            } else {
                return R(C);
            }
        }

        @Override // com.explorestack.protobuf.n
        public double s() throws IOException {
            return Double.longBitsToDouble(X());
        }

        @Override // com.explorestack.protobuf.n
        public int t() throws IOException {
            return C();
        }

        @Override // com.explorestack.protobuf.n
        public int u() throws IOException {
            return W();
        }

        @Override // com.explorestack.protobuf.n
        public long v() throws IOException {
            return X();
        }

        @Override // com.explorestack.protobuf.n
        public float w() throws IOException {
            return Float.intBitsToFloat(W());
        }

        @Override // com.explorestack.protobuf.n
        public void x(int i10, MessageLite.Builder builder, y yVar) throws IOException {
            int i11 = this.f14461a;
            if (i11 < this.f14462b) {
                this.f14461a = i11 + 1;
                builder.mergeFrom(this, yVar);
                a(WireFormat.c(i10, 4));
                this.f14461a--;
                return;
            }
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }

        @Override // com.explorestack.protobuf.n
        public int y() throws IOException {
            return C();
        }

        @Override // com.explorestack.protobuf.n
        public long z() throws IOException {
            return Y();
        }

        private d(InputStream inputStream, int i10) {
            super();
            this.f14497m = Integer.MAX_VALUE;
            i0.b(inputStream, "input");
            this.f14490f = inputStream;
            this.f14491g = new byte[i10];
            this.f14492h = 0;
            this.f14494j = 0;
            this.f14496l = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CodedInputStream.java */
    /* loaded from: classes3.dex */
    public static final class e extends n {

        /* renamed from: f  reason: collision with root package name */
        private final ByteBuffer f14498f;

        /* renamed from: g  reason: collision with root package name */
        private final boolean f14499g;

        /* renamed from: h  reason: collision with root package name */
        private final long f14500h;

        /* renamed from: i  reason: collision with root package name */
        private long f14501i;

        /* renamed from: j  reason: collision with root package name */
        private long f14502j;

        /* renamed from: k  reason: collision with root package name */
        private long f14503k;

        /* renamed from: l  reason: collision with root package name */
        private int f14504l;

        /* renamed from: m  reason: collision with root package name */
        private int f14505m;

        /* renamed from: n  reason: collision with root package name */
        private boolean f14506n;

        /* renamed from: o  reason: collision with root package name */
        private int f14507o;

        private int P(long j10) {
            return (int) (j10 - this.f14500h);
        }

        static boolean Q() {
            return o2.K();
        }

        private void W() {
            long j10 = this.f14501i + this.f14504l;
            this.f14501i = j10;
            int i10 = (int) (j10 - this.f14503k);
            int i11 = this.f14507o;
            if (i10 > i11) {
                int i12 = i10 - i11;
                this.f14504l = i12;
                this.f14501i = j10 - i12;
                return;
            }
            this.f14504l = 0;
        }

        private int X() {
            return (int) (this.f14501i - this.f14502j);
        }

        private void a0() throws IOException {
            if (X() >= 10) {
                b0();
            } else {
                c0();
            }
        }

        private void b0() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                long j10 = this.f14502j;
                this.f14502j = 1 + j10;
                if (o2.w(j10) >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private void c0() throws IOException {
            for (int i10 = 0; i10 < 10; i10++) {
                if (R() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        private ByteBuffer d0(long j10, long j11) throws IOException {
            int position = this.f14498f.position();
            int limit = this.f14498f.limit();
            try {
                try {
                    this.f14498f.position(P(j10));
                    this.f14498f.limit(P(j11));
                    return this.f14498f.slice();
                } catch (IllegalArgumentException unused) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
            } finally {
                this.f14498f.position(position);
                this.f14498f.limit(limit);
            }
        }

        @Override // com.explorestack.protobuf.n
        public <T extends MessageLite> T A(j1<T> j1Var, y yVar) throws IOException {
            int C = C();
            if (this.f14461a < this.f14462b) {
                int p10 = p(C);
                this.f14461a++;
                T parsePartialFrom = j1Var.parsePartialFrom(this, yVar);
                a(0);
                this.f14461a--;
                o(p10);
                return parsePartialFrom;
            }
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }

        @Override // com.explorestack.protobuf.n
        public void B(MessageLite.Builder builder, y yVar) throws IOException {
            int C = C();
            if (this.f14461a < this.f14462b) {
                int p10 = p(C);
                this.f14461a++;
                builder.mergeFrom(this, yVar);
                a(0);
                this.f14461a--;
                o(p10);
                return;
            }
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x008c, code lost:
            if (com.explorestack.protobuf.o2.w(r3) < 0) goto L36;
         */
        @Override // com.explorestack.protobuf.n
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int C() throws java.io.IOException {
            /*
                r9 = this;
                long r0 = r9.f14502j
                long r2 = r9.f14501i
                int r2 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
                if (r2 != 0) goto La
                goto L8e
            La:
                r2 = 1
                long r2 = r2 + r0
                byte r4 = com.explorestack.protobuf.o2.w(r0)
                if (r4 < 0) goto L16
                r9.f14502j = r2
                return r4
            L16:
                long r5 = r9.f14501i
                long r5 = r5 - r2
                r7 = 9
                int r5 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
                if (r5 >= 0) goto L21
                goto L8e
            L21:
                r5 = 2
                long r5 = r5 + r0
                byte r2 = com.explorestack.protobuf.o2.w(r2)
                int r2 = r2 << 7
                r2 = r2 ^ r4
                if (r2 >= 0) goto L31
                r0 = r2 ^ (-128(0xffffffffffffff80, float:NaN))
                goto L98
            L31:
                r3 = 3
                long r3 = r3 + r0
                byte r5 = com.explorestack.protobuf.o2.w(r5)
                int r5 = r5 << 14
                r2 = r2 ^ r5
                if (r2 < 0) goto L41
                r0 = r2 ^ 16256(0x3f80, float:2.278E-41)
            L3f:
                r5 = r3
                goto L98
            L41:
                r5 = 4
                long r5 = r5 + r0
                byte r3 = com.explorestack.protobuf.o2.w(r3)
                int r3 = r3 << 21
                r2 = r2 ^ r3
                if (r2 >= 0) goto L52
                r0 = -2080896(0xffffffffffe03f80, float:NaN)
                r0 = r0 ^ r2
                goto L98
            L52:
                r3 = 5
                long r3 = r3 + r0
                byte r5 = com.explorestack.protobuf.o2.w(r5)
                int r6 = r5 << 28
                r2 = r2 ^ r6
                r6 = 266354560(0xfe03f80, float:2.2112565E-29)
                r2 = r2 ^ r6
                if (r5 >= 0) goto L96
                r5 = 6
                long r5 = r5 + r0
                byte r3 = com.explorestack.protobuf.o2.w(r3)
                if (r3 >= 0) goto L94
                r3 = 7
                long r3 = r3 + r0
                byte r5 = com.explorestack.protobuf.o2.w(r5)
                if (r5 >= 0) goto L96
                r5 = 8
                long r5 = r5 + r0
                byte r3 = com.explorestack.protobuf.o2.w(r3)
                if (r3 >= 0) goto L94
                long r3 = r0 + r7
                byte r5 = com.explorestack.protobuf.o2.w(r5)
                if (r5 >= 0) goto L96
                r5 = 10
                long r5 = r5 + r0
                byte r0 = com.explorestack.protobuf.o2.w(r3)
                if (r0 >= 0) goto L94
            L8e:
                long r0 = r9.V()
                int r0 = (int) r0
                return r0
            L94:
                r0 = r2
                goto L98
            L96:
                r0 = r2
                goto L3f
            L98:
                r9.f14502j = r5
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.n.e.C():int");
        }

        @Override // com.explorestack.protobuf.n
        public int E() throws IOException {
            return S();
        }

        @Override // com.explorestack.protobuf.n
        public long F() throws IOException {
            return T();
        }

        @Override // com.explorestack.protobuf.n
        public int G() throws IOException {
            return n.b(C());
        }

        @Override // com.explorestack.protobuf.n
        public long H() throws IOException {
            return n.c(U());
        }

        @Override // com.explorestack.protobuf.n
        public String I() throws IOException {
            int C = C();
            if (C > 0 && C <= X()) {
                byte[] bArr = new byte[C];
                long j10 = C;
                o2.p(this.f14502j, bArr, 0L, j10);
                String str = new String(bArr, i0.f14402a);
                this.f14502j += j10;
                return str;
            } else if (C == 0) {
                return "";
            } else {
                if (C < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // com.explorestack.protobuf.n
        public String J() throws IOException {
            int C = C();
            if (C > 0 && C <= X()) {
                String g10 = Utf8.g(this.f14498f, P(this.f14502j), C);
                this.f14502j += C;
                return g10;
            } else if (C == 0) {
                return "";
            } else {
                if (C <= 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // com.explorestack.protobuf.n
        public int K() throws IOException {
            if (f()) {
                this.f14505m = 0;
                return 0;
            }
            int C = C();
            this.f14505m = C;
            if (WireFormat.a(C) != 0) {
                return this.f14505m;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override // com.explorestack.protobuf.n
        public int L() throws IOException {
            return C();
        }

        @Override // com.explorestack.protobuf.n
        public long M() throws IOException {
            return U();
        }

        @Override // com.explorestack.protobuf.n
        public boolean O(int i10) throws IOException {
            int b10 = WireFormat.b(i10);
            if (b10 != 0) {
                if (b10 != 1) {
                    if (b10 != 2) {
                        if (b10 != 3) {
                            if (b10 != 4) {
                                if (b10 == 5) {
                                    Z(4);
                                    return true;
                                }
                                throw InvalidProtocolBufferException.invalidWireType();
                            }
                            return false;
                        }
                        Y();
                        a(WireFormat.c(WireFormat.a(i10), 4));
                        return true;
                    }
                    Z(C());
                    return true;
                }
                Z(8);
                return true;
            }
            a0();
            return true;
        }

        public byte R() throws IOException {
            long j10 = this.f14502j;
            if (j10 != this.f14501i) {
                this.f14502j = 1 + j10;
                return o2.w(j10);
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        public int S() throws IOException {
            long j10 = this.f14502j;
            if (this.f14501i - j10 >= 4) {
                this.f14502j = 4 + j10;
                return ((o2.w(j10 + 3) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | (o2.w(j10) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((o2.w(1 + j10) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | ((o2.w(2 + j10) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16);
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        public long T() throws IOException {
            long j10 = this.f14502j;
            if (this.f14501i - j10 >= 8) {
                this.f14502j = 8 + j10;
                return ((o2.w(j10 + 7) & 255) << 56) | (o2.w(j10) & 255) | ((o2.w(1 + j10) & 255) << 8) | ((o2.w(2 + j10) & 255) << 16) | ((o2.w(3 + j10) & 255) << 24) | ((o2.w(4 + j10) & 255) << 32) | ((o2.w(5 + j10) & 255) << 40) | ((o2.w(6 + j10) & 255) << 48);
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        public long U() throws IOException {
            long j10;
            long j11;
            long j12;
            int i10;
            long j13 = this.f14502j;
            if (this.f14501i != j13) {
                long j14 = 1 + j13;
                byte w10 = o2.w(j13);
                if (w10 >= 0) {
                    this.f14502j = j14;
                    return w10;
                } else if (this.f14501i - j14 >= 9) {
                    long j15 = 2 + j13;
                    int w11 = (o2.w(j14) << 7) ^ w10;
                    if (w11 < 0) {
                        i10 = w11 ^ (-128);
                    } else {
                        long j16 = 3 + j13;
                        int w12 = w11 ^ (o2.w(j15) << 14);
                        if (w12 >= 0) {
                            j10 = w12 ^ 16256;
                            j15 = j16;
                        } else {
                            j15 = 4 + j13;
                            int w13 = w12 ^ (o2.w(j16) << 21);
                            if (w13 < 0) {
                                i10 = (-2080896) ^ w13;
                            } else {
                                long j17 = 5 + j13;
                                long w14 = w13 ^ (o2.w(j15) << 28);
                                if (w14 >= 0) {
                                    j12 = 266354560;
                                } else {
                                    long j18 = 6 + j13;
                                    long w15 = w14 ^ (o2.w(j17) << 35);
                                    if (w15 < 0) {
                                        j11 = -34093383808L;
                                    } else {
                                        j17 = 7 + j13;
                                        w14 = w15 ^ (o2.w(j18) << 42);
                                        if (w14 >= 0) {
                                            j12 = 4363953127296L;
                                        } else {
                                            j18 = 8 + j13;
                                            w15 = w14 ^ (o2.w(j17) << 49);
                                            if (w15 < 0) {
                                                j11 = -558586000294016L;
                                            } else {
                                                long j19 = j13 + 9;
                                                long w16 = (w15 ^ (o2.w(j18) << 56)) ^ 71499008037633920L;
                                                if (w16 < 0) {
                                                    long j20 = j13 + 10;
                                                    if (o2.w(j19) >= 0) {
                                                        j15 = j20;
                                                        j10 = w16;
                                                    }
                                                } else {
                                                    j10 = w16;
                                                    j15 = j19;
                                                }
                                            }
                                        }
                                    }
                                    j10 = j11 ^ w15;
                                    j15 = j18;
                                }
                                j10 = j12 ^ w14;
                                j15 = j17;
                            }
                        }
                        this.f14502j = j15;
                        return j10;
                    }
                    j10 = i10;
                    this.f14502j = j15;
                    return j10;
                }
            }
            return V();
        }

        long V() throws IOException {
            long j10 = 0;
            for (int i10 = 0; i10 < 64; i10 += 7) {
                byte R = R();
                j10 |= (R & ByteCompanionObject.MAX_VALUE) << i10;
                if ((R & ByteCompanionObject.MIN_VALUE) == 0) {
                    return j10;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        public void Y() throws IOException {
            int K;
            do {
                K = K();
                if (K == 0) {
                    return;
                }
            } while (O(K));
        }

        public void Z(int i10) throws IOException {
            if (i10 >= 0 && i10 <= X()) {
                this.f14502j += i10;
            } else if (i10 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            } else {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // com.explorestack.protobuf.n
        public void a(int i10) throws InvalidProtocolBufferException {
            if (this.f14505m == i10) {
                return;
            }
            throw InvalidProtocolBufferException.invalidEndTag();
        }

        @Override // com.explorestack.protobuf.n
        public int d() {
            int i10 = this.f14507o;
            if (i10 == Integer.MAX_VALUE) {
                return -1;
            }
            return i10 - e();
        }

        @Override // com.explorestack.protobuf.n
        public int e() {
            return (int) (this.f14502j - this.f14503k);
        }

        @Override // com.explorestack.protobuf.n
        public boolean f() throws IOException {
            if (this.f14502j == this.f14501i) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.n
        public void o(int i10) {
            this.f14507o = i10;
            W();
        }

        @Override // com.explorestack.protobuf.n
        public int p(int i10) throws InvalidProtocolBufferException {
            if (i10 >= 0) {
                int e10 = i10 + e();
                int i11 = this.f14507o;
                if (e10 <= i11) {
                    this.f14507o = e10;
                    W();
                    return i11;
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override // com.explorestack.protobuf.n
        public boolean q() throws IOException {
            if (U() != 0) {
                return true;
            }
            return false;
        }

        @Override // com.explorestack.protobuf.n
        public ByteString r() throws IOException {
            int C = C();
            if (C > 0 && C <= X()) {
                if (this.f14499g && this.f14506n) {
                    long j10 = this.f14502j;
                    long j11 = C;
                    ByteBuffer d02 = d0(j10, j10 + j11);
                    this.f14502j += j11;
                    return ByteString.wrap(d02);
                }
                byte[] bArr = new byte[C];
                long j12 = C;
                o2.p(this.f14502j, bArr, 0L, j12);
                this.f14502j += j12;
                return ByteString.wrap(bArr);
            } else if (C == 0) {
                return ByteString.EMPTY;
            } else {
                if (C < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // com.explorestack.protobuf.n
        public double s() throws IOException {
            return Double.longBitsToDouble(T());
        }

        @Override // com.explorestack.protobuf.n
        public int t() throws IOException {
            return C();
        }

        @Override // com.explorestack.protobuf.n
        public int u() throws IOException {
            return S();
        }

        @Override // com.explorestack.protobuf.n
        public long v() throws IOException {
            return T();
        }

        @Override // com.explorestack.protobuf.n
        public float w() throws IOException {
            return Float.intBitsToFloat(S());
        }

        @Override // com.explorestack.protobuf.n
        public void x(int i10, MessageLite.Builder builder, y yVar) throws IOException {
            int i11 = this.f14461a;
            if (i11 < this.f14462b) {
                this.f14461a = i11 + 1;
                builder.mergeFrom(this, yVar);
                a(WireFormat.c(i10, 4));
                this.f14461a--;
                return;
            }
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }

        @Override // com.explorestack.protobuf.n
        public int y() throws IOException {
            return C();
        }

        @Override // com.explorestack.protobuf.n
        public long z() throws IOException {
            return U();
        }

        private e(ByteBuffer byteBuffer, boolean z10) {
            super();
            this.f14507o = Integer.MAX_VALUE;
            this.f14498f = byteBuffer;
            long k10 = o2.k(byteBuffer);
            this.f14500h = k10;
            this.f14501i = byteBuffer.limit() + k10;
            long position = k10 + byteBuffer.position();
            this.f14502j = position;
            this.f14503k = position;
            this.f14499g = z10;
        }
    }

    public static int D(int i10, InputStream inputStream) throws IOException {
        if ((i10 & 128) == 0) {
            return i10;
        }
        int i11 = i10 & 127;
        int i12 = 7;
        while (i12 < 32) {
            int read = inputStream.read();
            if (read != -1) {
                i11 |= (read & 127) << i12;
                if ((read & 128) == 0) {
                    return i11;
                }
                i12 += 7;
            } else {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }
        while (i12 < 64) {
            int read2 = inputStream.read();
            if (read2 != -1) {
                if ((read2 & 128) == 0) {
                    return i11;
                }
                i12 += 7;
            } else {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }
        throw InvalidProtocolBufferException.malformedVarint();
    }

    public static int b(int i10) {
        return (-(i10 & 1)) ^ (i10 >>> 1);
    }

    public static long c(long j10) {
        return (-(j10 & 1)) ^ (j10 >>> 1);
    }

    public static n g(InputStream inputStream) {
        return h(inputStream, 4096);
    }

    public static n h(InputStream inputStream, int i10) {
        if (i10 > 0) {
            if (inputStream == null) {
                return l(i0.f14404c);
            }
            return new d(inputStream, i10);
        }
        throw new IllegalArgumentException("bufferSize must be > 0");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static n i(Iterable<ByteBuffer> iterable, boolean z10) {
        boolean z11 = false;
        int i10 = 0;
        for (ByteBuffer byteBuffer : iterable) {
            i10 += byteBuffer.remaining();
            if (byteBuffer.hasArray()) {
                z11 |= true;
            } else if (byteBuffer.isDirect()) {
                z11 |= true;
            } else {
                z11 |= true;
            }
        }
        if (z11) {
            return new c(iterable, i10, z10);
        }
        return g(new j0(iterable));
    }

    public static n j(ByteBuffer byteBuffer) {
        return k(byteBuffer, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static n k(ByteBuffer byteBuffer, boolean z10) {
        if (byteBuffer.hasArray()) {
            return n(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining(), z10);
        }
        if (byteBuffer.isDirect() && e.Q()) {
            return new e(byteBuffer, z10);
        }
        int remaining = byteBuffer.remaining();
        byte[] bArr = new byte[remaining];
        byteBuffer.duplicate().get(bArr);
        return n(bArr, 0, remaining, true);
    }

    public static n l(byte[] bArr) {
        return m(bArr, 0, bArr.length);
    }

    public static n m(byte[] bArr, int i10, int i11) {
        return n(bArr, i10, i11, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static n n(byte[] bArr, int i10, int i11, boolean z10) {
        b bVar = new b(bArr, i10, i11, z10);
        try {
            bVar.p(i11);
            return bVar;
        } catch (InvalidProtocolBufferException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public abstract <T extends MessageLite> T A(j1<T> j1Var, y yVar) throws IOException;

    public abstract void B(MessageLite.Builder builder, y yVar) throws IOException;

    public abstract int C() throws IOException;

    public abstract int E() throws IOException;

    public abstract long F() throws IOException;

    public abstract int G() throws IOException;

    public abstract long H() throws IOException;

    public abstract String I() throws IOException;

    public abstract String J() throws IOException;

    public abstract int K() throws IOException;

    public abstract int L() throws IOException;

    public abstract long M() throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean N() {
        return this.f14465e;
    }

    public abstract boolean O(int i10) throws IOException;

    public abstract void a(int i10) throws InvalidProtocolBufferException;

    public abstract int d();

    public abstract int e();

    public abstract boolean f() throws IOException;

    public abstract void o(int i10);

    public abstract int p(int i10) throws InvalidProtocolBufferException;

    public abstract boolean q() throws IOException;

    public abstract ByteString r() throws IOException;

    public abstract double s() throws IOException;

    public abstract int t() throws IOException;

    public abstract int u() throws IOException;

    public abstract long v() throws IOException;

    public abstract float w() throws IOException;

    public abstract void x(int i10, MessageLite.Builder builder, y yVar) throws IOException;

    public abstract int y() throws IOException;

    public abstract long z() throws IOException;

    private n() {
        this.f14462b = 100;
        this.f14463c = Integer.MAX_VALUE;
        this.f14465e = false;
    }
}
