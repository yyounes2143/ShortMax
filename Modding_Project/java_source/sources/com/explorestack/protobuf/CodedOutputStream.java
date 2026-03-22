package com.explorestack.protobuf;

import com.explorestack.protobuf.Utf8;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes3.dex */
public abstract class CodedOutputStream extends l {

    /* renamed from: c  reason: collision with root package name */
    private static final Logger f13588c = Logger.getLogger(CodedOutputStream.class.getName());

    /* renamed from: d  reason: collision with root package name */
    private static final boolean f13589d = o2.J();

    /* renamed from: a  reason: collision with root package name */
    p f13590a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f13591b;

    /* loaded from: classes3.dex */
    public static class OutOfSpaceException extends IOException {
        OutOfSpaceException() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }

        OutOfSpaceException(Throwable th2) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th2);
        }

        OutOfSpaceException(String str, Throwable th2) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.: " + str, th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static abstract class b extends CodedOutputStream {

        /* renamed from: e  reason: collision with root package name */
        final byte[] f13592e;

        /* renamed from: f  reason: collision with root package name */
        final int f13593f;

        /* renamed from: g  reason: collision with root package name */
        int f13594g;

        /* renamed from: h  reason: collision with root package name */
        int f13595h;

        b(int i10) {
            super();
            if (i10 >= 0) {
                byte[] bArr = new byte[Math.max(i10, 20)];
                this.f13592e = bArr;
                this.f13593f = bArr.length;
                return;
            }
            throw new IllegalArgumentException("bufferSize must be >= 0");
        }

        final void g1(byte b10) {
            byte[] bArr = this.f13592e;
            int i10 = this.f13594g;
            this.f13594g = i10 + 1;
            bArr[i10] = b10;
            this.f13595h++;
        }

        final void h1(int i10) {
            byte[] bArr = this.f13592e;
            int i11 = this.f13594g;
            int i12 = i11 + 1;
            this.f13594g = i12;
            bArr[i11] = (byte) (i10 & 255);
            int i13 = i11 + 2;
            this.f13594g = i13;
            bArr[i12] = (byte) ((i10 >> 8) & 255);
            int i14 = i11 + 3;
            this.f13594g = i14;
            bArr[i13] = (byte) ((i10 >> 16) & 255);
            this.f13594g = i11 + 4;
            bArr[i14] = (byte) ((i10 >> 24) & 255);
            this.f13595h += 4;
        }

        final void i1(long j10) {
            byte[] bArr = this.f13592e;
            int i10 = this.f13594g;
            int i11 = i10 + 1;
            this.f13594g = i11;
            bArr[i10] = (byte) (j10 & 255);
            int i12 = i10 + 2;
            this.f13594g = i12;
            bArr[i11] = (byte) ((j10 >> 8) & 255);
            int i13 = i10 + 3;
            this.f13594g = i13;
            bArr[i12] = (byte) ((j10 >> 16) & 255);
            int i14 = i10 + 4;
            this.f13594g = i14;
            bArr[i13] = (byte) (255 & (j10 >> 24));
            int i15 = i10 + 5;
            this.f13594g = i15;
            bArr[i14] = (byte) (((int) (j10 >> 32)) & 255);
            int i16 = i10 + 6;
            this.f13594g = i16;
            bArr[i15] = (byte) (((int) (j10 >> 40)) & 255);
            int i17 = i10 + 7;
            this.f13594g = i17;
            bArr[i16] = (byte) (((int) (j10 >> 48)) & 255);
            this.f13594g = i10 + 8;
            bArr[i17] = (byte) (((int) (j10 >> 56)) & 255);
            this.f13595h += 8;
        }

        final void j1(int i10) {
            if (i10 >= 0) {
                l1(i10);
            } else {
                m1(i10);
            }
        }

        final void k1(int i10, int i11) {
            l1(WireFormat.c(i10, i11));
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public final int l0() {
            throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer.");
        }

        final void l1(int i10) {
            if (CodedOutputStream.f13589d) {
                long j10 = this.f13594g;
                while ((i10 & (-128)) != 0) {
                    byte[] bArr = this.f13592e;
                    int i11 = this.f13594g;
                    this.f13594g = i11 + 1;
                    o2.Q(bArr, i11, (byte) ((i10 & 127) | 128));
                    i10 >>>= 7;
                }
                byte[] bArr2 = this.f13592e;
                int i12 = this.f13594g;
                this.f13594g = i12 + 1;
                o2.Q(bArr2, i12, (byte) i10);
                this.f13595h += (int) (this.f13594g - j10);
                return;
            }
            while ((i10 & (-128)) != 0) {
                byte[] bArr3 = this.f13592e;
                int i13 = this.f13594g;
                this.f13594g = i13 + 1;
                bArr3[i13] = (byte) ((i10 & 127) | 128);
                this.f13595h++;
                i10 >>>= 7;
            }
            byte[] bArr4 = this.f13592e;
            int i14 = this.f13594g;
            this.f13594g = i14 + 1;
            bArr4[i14] = (byte) i10;
            this.f13595h++;
        }

        final void m1(long j10) {
            if (CodedOutputStream.f13589d) {
                long j11 = this.f13594g;
                while ((j10 & (-128)) != 0) {
                    byte[] bArr = this.f13592e;
                    int i10 = this.f13594g;
                    this.f13594g = i10 + 1;
                    o2.Q(bArr, i10, (byte) ((((int) j10) & 127) | 128));
                    j10 >>>= 7;
                }
                byte[] bArr2 = this.f13592e;
                int i11 = this.f13594g;
                this.f13594g = i11 + 1;
                o2.Q(bArr2, i11, (byte) j10);
                this.f13595h += (int) (this.f13594g - j11);
                return;
            }
            while ((j10 & (-128)) != 0) {
                byte[] bArr3 = this.f13592e;
                int i12 = this.f13594g;
                this.f13594g = i12 + 1;
                bArr3[i12] = (byte) ((((int) j10) & 127) | 128);
                this.f13595h++;
                j10 >>>= 7;
            }
            byte[] bArr4 = this.f13592e;
            int i13 = this.f13594g;
            this.f13594g = i13 + 1;
            bArr4[i13] = (byte) j10;
            this.f13595h++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class d extends b {

        /* renamed from: i  reason: collision with root package name */
        private final OutputStream f13600i;

        d(OutputStream outputStream, int i10) {
            super(i10);
            if (outputStream != null) {
                this.f13600i = outputStream;
                return;
            }
            throw new NullPointerException("out");
        }

        private void n1() throws IOException {
            this.f13600i.write(this.f13592e, 0, this.f13594g);
            this.f13594g = 0;
        }

        private void o1(int i10) throws IOException {
            if (this.f13593f - this.f13594g < i10) {
                n1();
            }
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public void A0(long j10) throws IOException {
            o1(8);
            i1(j10);
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public void H0(int i10, int i11) throws IOException {
            o1(20);
            k1(i10, 0);
            j1(i11);
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public void I0(int i10) throws IOException {
            if (i10 >= 0) {
                d1(i10);
            } else {
                f1(i10);
            }
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public void L0(int i10, MessageLite messageLite) throws IOException {
            b1(i10, 2);
            N0(messageLite);
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        void M0(int i10, MessageLite messageLite, q1 q1Var) throws IOException {
            b1(i10, 2);
            r1(messageLite, q1Var);
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public void N0(MessageLite messageLite) throws IOException {
            d1(messageLite.getSerializedSize());
            messageLite.writeTo(this);
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public void O0(int i10, MessageLite messageLite) throws IOException {
            b1(1, 3);
            c1(2, i10);
            L0(3, messageLite);
            b1(1, 4);
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public void P0(int i10, ByteString byteString) throws IOException {
            b1(1, 3);
            c1(2, i10);
            r0(3, byteString);
            b1(1, 4);
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public void Z0(int i10, String str) throws IOException {
            b1(i10, 2);
            a1(str);
        }

        @Override // com.explorestack.protobuf.l
        public void a(ByteBuffer byteBuffer) throws IOException {
            p1(byteBuffer);
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public void a1(String str) throws IOException {
            int j10;
            try {
                int length = str.length() * 3;
                int Z = CodedOutputStream.Z(length);
                int i10 = Z + length;
                int i11 = this.f13593f;
                if (i10 > i11) {
                    byte[] bArr = new byte[length];
                    int i12 = Utf8.i(str, bArr, 0, length);
                    d1(i12);
                    b(bArr, 0, i12);
                    return;
                }
                if (i10 > i11 - this.f13594g) {
                    n1();
                }
                int Z2 = CodedOutputStream.Z(str.length());
                int i13 = this.f13594g;
                try {
                    if (Z2 == Z) {
                        int i14 = i13 + Z2;
                        this.f13594g = i14;
                        int i15 = Utf8.i(str, this.f13592e, i14, this.f13593f - i14);
                        this.f13594g = i13;
                        j10 = (i15 - i13) - Z2;
                        l1(j10);
                        this.f13594g = i15;
                    } else {
                        j10 = Utf8.j(str);
                        l1(j10);
                        this.f13594g = Utf8.i(str, this.f13592e, this.f13594g, j10);
                    }
                    this.f13595h += j10;
                } catch (Utf8.UnpairedSurrogateException e10) {
                    this.f13595h -= this.f13594g - i13;
                    this.f13594g = i13;
                    throw e10;
                } catch (ArrayIndexOutOfBoundsException e11) {
                    throw new OutOfSpaceException(e11);
                }
            } catch (Utf8.UnpairedSurrogateException e12) {
                f0(str, e12);
            }
        }

        @Override // com.explorestack.protobuf.CodedOutputStream, com.explorestack.protobuf.l
        public void b(byte[] bArr, int i10, int i11) throws IOException {
            q1(bArr, i10, i11);
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public void b1(int i10, int i11) throws IOException {
            d1(WireFormat.c(i10, i11));
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public void c1(int i10, int i11) throws IOException {
            o1(20);
            k1(i10, 0);
            l1(i11);
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public void d1(int i10) throws IOException {
            o1(5);
            l1(i10);
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public void e0() throws IOException {
            if (this.f13594g > 0) {
                n1();
            }
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public void e1(int i10, long j10) throws IOException {
            o1(20);
            k1(i10, 0);
            m1(j10);
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public void f1(long j10) throws IOException {
            o1(10);
            m1(j10);
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public void m0(byte b10) throws IOException {
            if (this.f13594g == this.f13593f) {
                n1();
            }
            g1(b10);
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public void n0(int i10, boolean z10) throws IOException {
            o1(11);
            k1(i10, 0);
            g1(z10 ? (byte) 1 : (byte) 0);
        }

        public void p1(ByteBuffer byteBuffer) throws IOException {
            int remaining = byteBuffer.remaining();
            int i10 = this.f13593f;
            int i11 = this.f13594g;
            if (i10 - i11 >= remaining) {
                byteBuffer.get(this.f13592e, i11, remaining);
                this.f13594g += remaining;
                this.f13595h += remaining;
                return;
            }
            int i12 = i10 - i11;
            byteBuffer.get(this.f13592e, i11, i12);
            int i13 = remaining - i12;
            this.f13594g = this.f13593f;
            this.f13595h += i12;
            n1();
            while (true) {
                int i14 = this.f13593f;
                if (i13 > i14) {
                    byteBuffer.get(this.f13592e, 0, i14);
                    this.f13600i.write(this.f13592e, 0, this.f13593f);
                    int i15 = this.f13593f;
                    i13 -= i15;
                    this.f13595h += i15;
                } else {
                    byteBuffer.get(this.f13592e, 0, i13);
                    this.f13594g = i13;
                    this.f13595h += i13;
                    return;
                }
            }
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public void q0(byte[] bArr, int i10, int i11) throws IOException {
            d1(i11);
            q1(bArr, i10, i11);
        }

        public void q1(byte[] bArr, int i10, int i11) throws IOException {
            int i12 = this.f13593f;
            int i13 = this.f13594g;
            if (i12 - i13 >= i11) {
                System.arraycopy(bArr, i10, this.f13592e, i13, i11);
                this.f13594g += i11;
                this.f13595h += i11;
                return;
            }
            int i14 = i12 - i13;
            System.arraycopy(bArr, i10, this.f13592e, i13, i14);
            int i15 = i10 + i14;
            int i16 = i11 - i14;
            this.f13594g = this.f13593f;
            this.f13595h += i14;
            n1();
            if (i16 <= this.f13593f) {
                System.arraycopy(bArr, i15, this.f13592e, 0, i16);
                this.f13594g = i16;
            } else {
                this.f13600i.write(bArr, i15, i16);
            }
            this.f13595h += i16;
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public void r0(int i10, ByteString byteString) throws IOException {
            b1(i10, 2);
            s0(byteString);
        }

        void r1(MessageLite messageLite, q1 q1Var) throws IOException {
            d1(((com.explorestack.protobuf.a) messageLite).getSerializedSize(q1Var));
            q1Var.b(messageLite, this.f13590a);
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public void s0(ByteString byteString) throws IOException {
            d1(byteString.size());
            byteString.writeTo(this);
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public void x0(int i10, int i11) throws IOException {
            o1(14);
            k1(i10, 5);
            h1(i11);
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public void y0(int i10) throws IOException {
            o1(4);
            h1(i10);
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public void z0(int i10, long j10) throws IOException {
            o1(18);
            k1(i10, 1);
            i1(j10);
        }
    }

    public static int A(long j10) {
        return b0(j10);
    }

    public static int B(int i10, l0 l0Var) {
        return (X(1) * 2) + Y(2, i10) + C(3, l0Var);
    }

    public static int C(int i10, l0 l0Var) {
        return X(i10) + D(l0Var);
    }

    public static int D(l0 l0Var) {
        return E(l0Var.c());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int E(int i10) {
        return Z(i10) + i10;
    }

    public static int F(int i10, MessageLite messageLite) {
        return (X(1) * 2) + Y(2, i10) + G(3, messageLite);
    }

    public static int G(int i10, MessageLite messageLite) {
        return X(i10) + I(messageLite);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int H(int i10, MessageLite messageLite, q1 q1Var) {
        return X(i10) + J(messageLite, q1Var);
    }

    public static int I(MessageLite messageLite) {
        return E(messageLite.getSerializedSize());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int J(MessageLite messageLite, q1 q1Var) {
        return E(((com.explorestack.protobuf.a) messageLite).getSerializedSize(q1Var));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int K(int i10) {
        if (i10 > 4096) {
            return 4096;
        }
        return i10;
    }

    public static int L(int i10, ByteString byteString) {
        return (X(1) * 2) + Y(2, i10) + h(3, byteString);
    }

    @Deprecated
    public static int M(int i10) {
        return Z(i10);
    }

    public static int N(int i10, int i11) {
        return X(i10) + O(i11);
    }

    public static int O(int i10) {
        return 4;
    }

    public static int P(int i10, long j10) {
        return X(i10) + Q(j10);
    }

    public static int Q(long j10) {
        return 8;
    }

    public static int R(int i10, int i11) {
        return X(i10) + S(i11);
    }

    public static int S(int i10) {
        return Z(c0(i10));
    }

    public static int T(int i10, long j10) {
        return X(i10) + U(j10);
    }

    public static int U(long j10) {
        return b0(d0(j10));
    }

    public static int V(int i10, String str) {
        return X(i10) + W(str);
    }

    public static int W(String str) {
        int length;
        try {
            length = Utf8.j(str);
        } catch (Utf8.UnpairedSurrogateException unused) {
            length = str.getBytes(i0.f14402a).length;
        }
        return E(length);
    }

    public static int X(int i10) {
        return Z(WireFormat.c(i10, 0));
    }

    public static int Y(int i10, int i11) {
        return X(i10) + Z(i11);
    }

    public static int Z(int i10) {
        if ((i10 & (-128)) == 0) {
            return 1;
        }
        if ((i10 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i10) == 0) {
            return 3;
        }
        if ((i10 & (-268435456)) == 0) {
            return 4;
        }
        return 5;
    }

    public static int a0(int i10, long j10) {
        return X(i10) + b0(j10);
    }

    public static int b0(long j10) {
        int i10;
        if (((-128) & j10) == 0) {
            return 1;
        }
        if (j10 < 0) {
            return 10;
        }
        if (((-34359738368L) & j10) != 0) {
            j10 >>>= 28;
            i10 = 6;
        } else {
            i10 = 2;
        }
        if (((-2097152) & j10) != 0) {
            i10 += 2;
            j10 >>>= 14;
        }
        if ((j10 & (-16384)) != 0) {
            return i10 + 1;
        }
        return i10;
    }

    public static int c0(int i10) {
        return (i10 >> 31) ^ (i10 << 1);
    }

    public static long d0(long j10) {
        return (j10 >> 63) ^ (j10 << 1);
    }

    public static int e(int i10, boolean z10) {
        return X(i10) + f(z10);
    }

    public static int f(boolean z10) {
        return 1;
    }

    public static int g(byte[] bArr) {
        return E(bArr.length);
    }

    public static int h(int i10, ByteString byteString) {
        return X(i10) + i(byteString);
    }

    public static CodedOutputStream h0(OutputStream outputStream) {
        return i0(outputStream, 4096);
    }

    public static int i(ByteString byteString) {
        return E(byteString.size());
    }

    public static CodedOutputStream i0(OutputStream outputStream, int i10) {
        return new d(outputStream, i10);
    }

    public static int j(int i10, double d10) {
        return X(i10) + k(d10);
    }

    public static CodedOutputStream j0(byte[] bArr) {
        return k0(bArr, 0, bArr.length);
    }

    public static int k(double d10) {
        return 8;
    }

    public static CodedOutputStream k0(byte[] bArr, int i10, int i11) {
        return new c(bArr, i10, i11);
    }

    public static int l(int i10, int i11) {
        return X(i10) + m(i11);
    }

    public static int m(int i10) {
        return y(i10);
    }

    public static int n(int i10, int i11) {
        return X(i10) + o(i11);
    }

    public static int o(int i10) {
        return 4;
    }

    public static int p(int i10, long j10) {
        return X(i10) + q(j10);
    }

    public static int q(long j10) {
        return 8;
    }

    public static int r(int i10, float f10) {
        return X(i10) + s(f10);
    }

    public static int s(float f10) {
        return 4;
    }

    @Deprecated
    public static int t(int i10, MessageLite messageLite) {
        return (X(i10) * 2) + v(messageLite);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public static int u(int i10, MessageLite messageLite, q1 q1Var) {
        return (X(i10) * 2) + w(messageLite, q1Var);
    }

    @Deprecated
    public static int v(MessageLite messageLite) {
        return messageLite.getSerializedSize();
    }

    @Deprecated
    static int w(MessageLite messageLite, q1 q1Var) {
        return ((com.explorestack.protobuf.a) messageLite).getSerializedSize(q1Var);
    }

    public static int x(int i10, int i11) {
        return X(i10) + y(i11);
    }

    public static int y(int i10) {
        if (i10 >= 0) {
            return Z(i10);
        }
        return 10;
    }

    public static int z(int i10, long j10) {
        return X(i10) + A(j10);
    }

    public abstract void A0(long j10) throws IOException;

    public final void B0(int i10, float f10) throws IOException {
        x0(i10, Float.floatToRawIntBits(f10));
    }

    public final void C0(float f10) throws IOException {
        y0(Float.floatToRawIntBits(f10));
    }

    @Deprecated
    public final void D0(int i10, MessageLite messageLite) throws IOException {
        b1(i10, 3);
        F0(messageLite);
        b1(i10, 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public final void E0(int i10, MessageLite messageLite, q1 q1Var) throws IOException {
        b1(i10, 3);
        G0(messageLite, q1Var);
        b1(i10, 4);
    }

    @Deprecated
    public final void F0(MessageLite messageLite) throws IOException {
        messageLite.writeTo(this);
    }

    @Deprecated
    final void G0(MessageLite messageLite, q1 q1Var) throws IOException {
        q1Var.b(messageLite, this.f13590a);
    }

    public abstract void H0(int i10, int i11) throws IOException;

    public abstract void I0(int i10) throws IOException;

    public final void J0(int i10, long j10) throws IOException {
        e1(i10, j10);
    }

    public final void K0(long j10) throws IOException {
        f1(j10);
    }

    public abstract void L0(int i10, MessageLite messageLite) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void M0(int i10, MessageLite messageLite, q1 q1Var) throws IOException;

    public abstract void N0(MessageLite messageLite) throws IOException;

    public abstract void O0(int i10, MessageLite messageLite) throws IOException;

    public abstract void P0(int i10, ByteString byteString) throws IOException;

    @Deprecated
    public final void Q0(int i10) throws IOException {
        d1(i10);
    }

    public final void R0(int i10, int i11) throws IOException {
        x0(i10, i11);
    }

    public final void S0(int i10) throws IOException {
        y0(i10);
    }

    public final void T0(int i10, long j10) throws IOException {
        z0(i10, j10);
    }

    public final void U0(long j10) throws IOException {
        A0(j10);
    }

    public final void V0(int i10, int i11) throws IOException {
        c1(i10, c0(i11));
    }

    public final void W0(int i10) throws IOException {
        d1(c0(i10));
    }

    public final void X0(int i10, long j10) throws IOException {
        e1(i10, d0(j10));
    }

    public final void Y0(long j10) throws IOException {
        f1(d0(j10));
    }

    public abstract void Z0(int i10, String str) throws IOException;

    public abstract void a1(String str) throws IOException;

    @Override // com.explorestack.protobuf.l
    public abstract void b(byte[] bArr, int i10, int i11) throws IOException;

    public abstract void b1(int i10, int i11) throws IOException;

    public abstract void c1(int i10, int i11) throws IOException;

    public final void d() {
        if (l0() == 0) {
            return;
        }
        throw new IllegalStateException("Did not write as much data as expected.");
    }

    public abstract void d1(int i10) throws IOException;

    public abstract void e0() throws IOException;

    public abstract void e1(int i10, long j10) throws IOException;

    final void f0(String str, Utf8.UnpairedSurrogateException unpairedSurrogateException) throws IOException {
        f13588c.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) unpairedSurrogateException);
        byte[] bytes = str.getBytes(i0.f14402a);
        try {
            d1(bytes.length);
            b(bytes, 0, bytes.length);
        } catch (OutOfSpaceException e10) {
            throw e10;
        } catch (IndexOutOfBoundsException e11) {
            throw new OutOfSpaceException(e11);
        }
    }

    public abstract void f1(long j10) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean g0() {
        return this.f13591b;
    }

    public abstract int l0();

    public abstract void m0(byte b10) throws IOException;

    public abstract void n0(int i10, boolean z10) throws IOException;

    public final void o0(boolean z10) throws IOException {
        m0(z10 ? (byte) 1 : (byte) 0);
    }

    public final void p0(byte[] bArr) throws IOException {
        q0(bArr, 0, bArr.length);
    }

    abstract void q0(byte[] bArr, int i10, int i11) throws IOException;

    public abstract void r0(int i10, ByteString byteString) throws IOException;

    public abstract void s0(ByteString byteString) throws IOException;

    public final void t0(int i10, double d10) throws IOException {
        z0(i10, Double.doubleToRawLongBits(d10));
    }

    public final void u0(double d10) throws IOException {
        A0(Double.doubleToRawLongBits(d10));
    }

    public final void v0(int i10, int i11) throws IOException {
        H0(i10, i11);
    }

    public final void w0(int i10) throws IOException {
        I0(i10);
    }

    public abstract void x0(int i10, int i11) throws IOException;

    public abstract void y0(int i10) throws IOException;

    public abstract void z0(int i10, long j10) throws IOException;

    private CodedOutputStream() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class c extends CodedOutputStream {

        /* renamed from: e  reason: collision with root package name */
        private final byte[] f13596e;

        /* renamed from: f  reason: collision with root package name */
        private final int f13597f;

        /* renamed from: g  reason: collision with root package name */
        private final int f13598g;

        /* renamed from: h  reason: collision with root package name */
        private int f13599h;

        c(byte[] bArr, int i10, int i11) {
            super();
            if (bArr != null) {
                int i12 = i10 + i11;
                if ((i10 | i11 | (bArr.length - i12)) >= 0) {
                    this.f13596e = bArr;
                    this.f13597f = i10;
                    this.f13599h = i10;
                    this.f13598g = i12;
                    return;
                }
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i10), Integer.valueOf(i11)));
            }
            throw new NullPointerException("buffer");
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public final void A0(long j10) throws IOException {
            try {
                byte[] bArr = this.f13596e;
                int i10 = this.f13599h;
                int i11 = i10 + 1;
                this.f13599h = i11;
                bArr[i10] = (byte) (((int) j10) & 255);
                int i12 = i10 + 2;
                this.f13599h = i12;
                bArr[i11] = (byte) (((int) (j10 >> 8)) & 255);
                int i13 = i10 + 3;
                this.f13599h = i13;
                bArr[i12] = (byte) (((int) (j10 >> 16)) & 255);
                int i14 = i10 + 4;
                this.f13599h = i14;
                bArr[i13] = (byte) (((int) (j10 >> 24)) & 255);
                int i15 = i10 + 5;
                this.f13599h = i15;
                bArr[i14] = (byte) (((int) (j10 >> 32)) & 255);
                int i16 = i10 + 6;
                this.f13599h = i16;
                bArr[i15] = (byte) (((int) (j10 >> 40)) & 255);
                int i17 = i10 + 7;
                this.f13599h = i17;
                bArr[i16] = (byte) (((int) (j10 >> 48)) & 255);
                this.f13599h = i10 + 8;
                bArr[i17] = (byte) (((int) (j10 >> 56)) & 255);
            } catch (IndexOutOfBoundsException e10) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f13599h), Integer.valueOf(this.f13598g), 1), e10);
            }
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public final void H0(int i10, int i11) throws IOException {
            b1(i10, 0);
            I0(i11);
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public final void I0(int i10) throws IOException {
            if (i10 >= 0) {
                d1(i10);
            } else {
                f1(i10);
            }
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public final void L0(int i10, MessageLite messageLite) throws IOException {
            b1(i10, 2);
            N0(messageLite);
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        final void M0(int i10, MessageLite messageLite, q1 q1Var) throws IOException {
            b1(i10, 2);
            d1(((com.explorestack.protobuf.a) messageLite).getSerializedSize(q1Var));
            q1Var.b(messageLite, this.f13590a);
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public final void N0(MessageLite messageLite) throws IOException {
            d1(messageLite.getSerializedSize());
            messageLite.writeTo(this);
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public final void O0(int i10, MessageLite messageLite) throws IOException {
            b1(1, 3);
            c1(2, i10);
            L0(3, messageLite);
            b1(1, 4);
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public final void P0(int i10, ByteString byteString) throws IOException {
            b1(1, 3);
            c1(2, i10);
            r0(3, byteString);
            b1(1, 4);
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public final void Z0(int i10, String str) throws IOException {
            b1(i10, 2);
            a1(str);
        }

        @Override // com.explorestack.protobuf.l
        public final void a(ByteBuffer byteBuffer) throws IOException {
            g1(byteBuffer);
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public final void a1(String str) throws IOException {
            int i10 = this.f13599h;
            try {
                int Z = CodedOutputStream.Z(str.length() * 3);
                int Z2 = CodedOutputStream.Z(str.length());
                if (Z2 == Z) {
                    int i11 = i10 + Z2;
                    this.f13599h = i11;
                    int i12 = Utf8.i(str, this.f13596e, i11, l0());
                    this.f13599h = i10;
                    d1((i12 - i10) - Z2);
                    this.f13599h = i12;
                } else {
                    d1(Utf8.j(str));
                    this.f13599h = Utf8.i(str, this.f13596e, this.f13599h, l0());
                }
            } catch (Utf8.UnpairedSurrogateException e10) {
                this.f13599h = i10;
                f0(str, e10);
            } catch (IndexOutOfBoundsException e11) {
                throw new OutOfSpaceException(e11);
            }
        }

        @Override // com.explorestack.protobuf.CodedOutputStream, com.explorestack.protobuf.l
        public final void b(byte[] bArr, int i10, int i11) throws IOException {
            h1(bArr, i10, i11);
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public final void b1(int i10, int i11) throws IOException {
            d1(WireFormat.c(i10, i11));
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public final void c1(int i10, int i11) throws IOException {
            b1(i10, 0);
            d1(i11);
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public final void d1(int i10) throws IOException {
            if (CodedOutputStream.f13589d && !com.explorestack.protobuf.d.c() && l0() >= 5) {
                if ((i10 & (-128)) == 0) {
                    byte[] bArr = this.f13596e;
                    int i11 = this.f13599h;
                    this.f13599h = i11 + 1;
                    o2.Q(bArr, i11, (byte) i10);
                    return;
                }
                byte[] bArr2 = this.f13596e;
                int i12 = this.f13599h;
                this.f13599h = i12 + 1;
                o2.Q(bArr2, i12, (byte) (i10 | 128));
                int i13 = i10 >>> 7;
                if ((i13 & (-128)) == 0) {
                    byte[] bArr3 = this.f13596e;
                    int i14 = this.f13599h;
                    this.f13599h = i14 + 1;
                    o2.Q(bArr3, i14, (byte) i13);
                    return;
                }
                byte[] bArr4 = this.f13596e;
                int i15 = this.f13599h;
                this.f13599h = i15 + 1;
                o2.Q(bArr4, i15, (byte) (i13 | 128));
                int i16 = i10 >>> 14;
                if ((i16 & (-128)) == 0) {
                    byte[] bArr5 = this.f13596e;
                    int i17 = this.f13599h;
                    this.f13599h = i17 + 1;
                    o2.Q(bArr5, i17, (byte) i16);
                    return;
                }
                byte[] bArr6 = this.f13596e;
                int i18 = this.f13599h;
                this.f13599h = i18 + 1;
                o2.Q(bArr6, i18, (byte) (i16 | 128));
                int i19 = i10 >>> 21;
                if ((i19 & (-128)) == 0) {
                    byte[] bArr7 = this.f13596e;
                    int i20 = this.f13599h;
                    this.f13599h = i20 + 1;
                    o2.Q(bArr7, i20, (byte) i19);
                    return;
                }
                byte[] bArr8 = this.f13596e;
                int i21 = this.f13599h;
                this.f13599h = i21 + 1;
                o2.Q(bArr8, i21, (byte) (i19 | 128));
                byte[] bArr9 = this.f13596e;
                int i22 = this.f13599h;
                this.f13599h = i22 + 1;
                o2.Q(bArr9, i22, (byte) (i10 >>> 28));
                return;
            }
            while ((i10 & (-128)) != 0) {
                try {
                    byte[] bArr10 = this.f13596e;
                    int i23 = this.f13599h;
                    this.f13599h = i23 + 1;
                    bArr10[i23] = (byte) ((i10 & 127) | 128);
                    i10 >>>= 7;
                } catch (IndexOutOfBoundsException e10) {
                    throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f13599h), Integer.valueOf(this.f13598g), 1), e10);
                }
            }
            byte[] bArr11 = this.f13596e;
            int i24 = this.f13599h;
            this.f13599h = i24 + 1;
            bArr11[i24] = (byte) i10;
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public final void e1(int i10, long j10) throws IOException {
            b1(i10, 0);
            f1(j10);
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public final void f1(long j10) throws IOException {
            if (CodedOutputStream.f13589d && l0() >= 10) {
                while ((j10 & (-128)) != 0) {
                    byte[] bArr = this.f13596e;
                    int i10 = this.f13599h;
                    this.f13599h = i10 + 1;
                    o2.Q(bArr, i10, (byte) ((((int) j10) & 127) | 128));
                    j10 >>>= 7;
                }
                byte[] bArr2 = this.f13596e;
                int i11 = this.f13599h;
                this.f13599h = i11 + 1;
                o2.Q(bArr2, i11, (byte) j10);
                return;
            }
            while ((j10 & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.f13596e;
                    int i12 = this.f13599h;
                    this.f13599h = i12 + 1;
                    bArr3[i12] = (byte) ((((int) j10) & 127) | 128);
                    j10 >>>= 7;
                } catch (IndexOutOfBoundsException e10) {
                    throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f13599h), Integer.valueOf(this.f13598g), 1), e10);
                }
            }
            byte[] bArr4 = this.f13596e;
            int i13 = this.f13599h;
            this.f13599h = i13 + 1;
            bArr4[i13] = (byte) j10;
        }

        public final void g1(ByteBuffer byteBuffer) throws IOException {
            int remaining = byteBuffer.remaining();
            try {
                byteBuffer.get(this.f13596e, this.f13599h, remaining);
                this.f13599h += remaining;
            } catch (IndexOutOfBoundsException e10) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f13599h), Integer.valueOf(this.f13598g), Integer.valueOf(remaining)), e10);
            }
        }

        public final void h1(byte[] bArr, int i10, int i11) throws IOException {
            try {
                System.arraycopy(bArr, i10, this.f13596e, this.f13599h, i11);
                this.f13599h += i11;
            } catch (IndexOutOfBoundsException e10) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f13599h), Integer.valueOf(this.f13598g), Integer.valueOf(i11)), e10);
            }
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public final int l0() {
            return this.f13598g - this.f13599h;
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public final void m0(byte b10) throws IOException {
            try {
                byte[] bArr = this.f13596e;
                int i10 = this.f13599h;
                this.f13599h = i10 + 1;
                bArr[i10] = b10;
            } catch (IndexOutOfBoundsException e10) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f13599h), Integer.valueOf(this.f13598g), 1), e10);
            }
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public final void n0(int i10, boolean z10) throws IOException {
            b1(i10, 0);
            m0(z10 ? (byte) 1 : (byte) 0);
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public final void q0(byte[] bArr, int i10, int i11) throws IOException {
            d1(i11);
            h1(bArr, i10, i11);
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public final void r0(int i10, ByteString byteString) throws IOException {
            b1(i10, 2);
            s0(byteString);
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public final void s0(ByteString byteString) throws IOException {
            d1(byteString.size());
            byteString.writeTo(this);
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public final void x0(int i10, int i11) throws IOException {
            b1(i10, 5);
            y0(i11);
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public final void y0(int i10) throws IOException {
            try {
                byte[] bArr = this.f13596e;
                int i11 = this.f13599h;
                int i12 = i11 + 1;
                this.f13599h = i12;
                bArr[i11] = (byte) (i10 & 255);
                int i13 = i11 + 2;
                this.f13599h = i13;
                bArr[i12] = (byte) ((i10 >> 8) & 255);
                int i14 = i11 + 3;
                this.f13599h = i14;
                bArr[i13] = (byte) ((i10 >> 16) & 255);
                this.f13599h = i11 + 4;
                bArr[i14] = (byte) ((i10 >> 24) & 255);
            } catch (IndexOutOfBoundsException e10) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f13599h), Integer.valueOf(this.f13598g), 1), e10);
            }
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public final void z0(int i10, long j10) throws IOException {
            b1(i10, 1);
            A0(j10);
        }

        @Override // com.explorestack.protobuf.CodedOutputStream
        public void e0() {
        }
    }
}
