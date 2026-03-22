package com.explorestack.protobuf;

import com.explorestack.protobuf.Writer;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.io.IOException;
import java.util.Arrays;
/* compiled from: UnknownFieldSetLite.java */
/* loaded from: classes3.dex */
public final class k2 {

    /* renamed from: f  reason: collision with root package name */
    private static final k2 f14444f = new k2(0, new int[0], new Object[0], false);

    /* renamed from: a  reason: collision with root package name */
    private int f14445a;

    /* renamed from: b  reason: collision with root package name */
    private int[] f14446b;

    /* renamed from: c  reason: collision with root package name */
    private Object[] f14447c;

    /* renamed from: d  reason: collision with root package name */
    private int f14448d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f14449e;

    private k2() {
        this(0, new int[8], new Object[8], true);
    }

    private void b() {
        int i10;
        int i11 = this.f14445a;
        int[] iArr = this.f14446b;
        if (i11 == iArr.length) {
            if (i11 < 4) {
                i10 = 8;
            } else {
                i10 = i11 >> 1;
            }
            int i12 = i11 + i10;
            this.f14446b = Arrays.copyOf(iArr, i12);
            this.f14447c = Arrays.copyOf(this.f14447c, i12);
        }
    }

    public static k2 c() {
        return f14444f;
    }

    private static int f(int[] iArr, int i10) {
        int i11 = 17;
        for (int i12 = 0; i12 < i10; i12++) {
            i11 = (i11 * 31) + iArr[i12];
        }
        return i11;
    }

    private static int g(Object[] objArr, int i10) {
        int i11 = 17;
        for (int i12 = 0; i12 < i10; i12++) {
            i11 = (i11 * 31) + objArr[i12].hashCode();
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static k2 i(k2 k2Var, k2 k2Var2) {
        int i10 = k2Var.f14445a + k2Var2.f14445a;
        int[] copyOf = Arrays.copyOf(k2Var.f14446b, i10);
        System.arraycopy(k2Var2.f14446b, 0, copyOf, k2Var.f14445a, k2Var2.f14445a);
        Object[] copyOf2 = Arrays.copyOf(k2Var.f14447c, i10);
        System.arraycopy(k2Var2.f14447c, 0, copyOf2, k2Var.f14445a, k2Var2.f14445a);
        return new k2(i10, copyOf, copyOf2, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static k2 j() {
        return new k2();
    }

    private static boolean k(Object[] objArr, Object[] objArr2, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (!objArr[i11].equals(objArr2[i11])) {
                return false;
            }
        }
        return true;
    }

    private static boolean n(int[] iArr, int[] iArr2, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (iArr[i11] != iArr2[i11]) {
                return false;
            }
        }
        return true;
    }

    private static void p(int i10, Object obj, Writer writer) throws IOException {
        int a10 = WireFormat.a(i10);
        int b10 = WireFormat.b(i10);
        if (b10 != 0) {
            if (b10 != 1) {
                if (b10 != 2) {
                    if (b10 != 3) {
                        if (b10 == 5) {
                            writer.writeFixed32(a10, ((Integer) obj).intValue());
                            return;
                        }
                        throw new RuntimeException(InvalidProtocolBufferException.invalidWireType());
                    } else if (writer.fieldOrder() == Writer.FieldOrder.ASCENDING) {
                        writer.writeStartGroup(a10);
                        ((k2) obj).q(writer);
                        writer.writeEndGroup(a10);
                        return;
                    } else {
                        writer.writeEndGroup(a10);
                        ((k2) obj).q(writer);
                        writer.writeStartGroup(a10);
                        return;
                    }
                }
                writer.a(a10, (ByteString) obj);
                return;
            }
            writer.writeFixed64(a10, ((Long) obj).longValue());
            return;
        }
        writer.writeInt64(a10, ((Long) obj).longValue());
    }

    void a() {
        if (this.f14449e) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    public int d() {
        int a02;
        int i10 = this.f14448d;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.f14445a; i12++) {
            int i13 = this.f14446b[i12];
            int a10 = WireFormat.a(i13);
            int b10 = WireFormat.b(i13);
            if (b10 != 0) {
                if (b10 != 1) {
                    if (b10 != 2) {
                        if (b10 != 3) {
                            if (b10 == 5) {
                                a02 = CodedOutputStream.n(a10, ((Integer) this.f14447c[i12]).intValue());
                            } else {
                                throw new IllegalStateException(InvalidProtocolBufferException.invalidWireType());
                            }
                        } else {
                            a02 = (CodedOutputStream.X(a10) * 2) + ((k2) this.f14447c[i12]).d();
                        }
                    } else {
                        a02 = CodedOutputStream.h(a10, (ByteString) this.f14447c[i12]);
                    }
                } else {
                    a02 = CodedOutputStream.p(a10, ((Long) this.f14447c[i12]).longValue());
                }
            } else {
                a02 = CodedOutputStream.a0(a10, ((Long) this.f14447c[i12]).longValue());
            }
            i11 += a02;
        }
        this.f14448d = i11;
        return i11;
    }

    public int e() {
        int i10 = this.f14448d;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.f14445a; i12++) {
            i11 += CodedOutputStream.L(WireFormat.a(this.f14446b[i12]), (ByteString) this.f14447c[i12]);
        }
        this.f14448d = i11;
        return i11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof k2)) {
            return false;
        }
        k2 k2Var = (k2) obj;
        int i10 = this.f14445a;
        if (i10 == k2Var.f14445a && n(this.f14446b, k2Var.f14446b, i10) && k(this.f14447c, k2Var.f14447c, this.f14445a)) {
            return true;
        }
        return false;
    }

    public void h() {
        this.f14449e = false;
    }

    public int hashCode() {
        int i10 = this.f14445a;
        return ((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + i10) * 31) + f(this.f14446b, i10)) * 31) + g(this.f14447c, this.f14445a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void l(StringBuilder sb2, int i10) {
        for (int i11 = 0; i11 < this.f14445a; i11++) {
            a1.c(sb2, i10, String.valueOf(WireFormat.a(this.f14446b[i11])), this.f14447c[i11]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m(int i10, Object obj) {
        a();
        b();
        int[] iArr = this.f14446b;
        int i11 = this.f14445a;
        iArr[i11] = i10;
        this.f14447c[i11] = obj;
        this.f14445a = i11 + 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o(Writer writer) throws IOException {
        if (writer.fieldOrder() == Writer.FieldOrder.DESCENDING) {
            for (int i10 = this.f14445a - 1; i10 >= 0; i10--) {
                writer.writeMessageSetItem(WireFormat.a(this.f14446b[i10]), this.f14447c[i10]);
            }
            return;
        }
        for (int i11 = 0; i11 < this.f14445a; i11++) {
            writer.writeMessageSetItem(WireFormat.a(this.f14446b[i11]), this.f14447c[i11]);
        }
    }

    public void q(Writer writer) throws IOException {
        if (this.f14445a == 0) {
            return;
        }
        if (writer.fieldOrder() == Writer.FieldOrder.ASCENDING) {
            for (int i10 = 0; i10 < this.f14445a; i10++) {
                p(this.f14446b[i10], this.f14447c[i10], writer);
            }
            return;
        }
        for (int i11 = this.f14445a - 1; i11 >= 0; i11--) {
            p(this.f14446b[i11], this.f14447c[i11], writer);
        }
    }

    private k2(int i10, int[] iArr, Object[] objArr, boolean z10) {
        this.f14448d = -1;
        this.f14445a = i10;
        this.f14446b = iArr;
        this.f14447c = objArr;
        this.f14449e = z10;
    }
}
