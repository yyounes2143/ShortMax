package com.explorestack.protobuf;

import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.WireFormat;
import com.explorestack.protobuf.Writer;
import com.explorestack.protobuf.g;
import com.explorestack.protobuf.i0;
import com.explorestack.protobuf.t0;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MessageSchema.java */
/* loaded from: classes3.dex */
public final class b1<T> implements q1<T> {

    /* renamed from: r  reason: collision with root package name */
    private static final int[] f14271r = new int[0];

    /* renamed from: s  reason: collision with root package name */
    private static final Unsafe f14272s = o2.I();

    /* renamed from: a  reason: collision with root package name */
    private final int[] f14273a;

    /* renamed from: b  reason: collision with root package name */
    private final Object[] f14274b;

    /* renamed from: c  reason: collision with root package name */
    private final int f14275c;

    /* renamed from: d  reason: collision with root package name */
    private final int f14276d;

    /* renamed from: e  reason: collision with root package name */
    private final MessageLite f14277e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f14278f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f14279g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f14280h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f14281i;

    /* renamed from: j  reason: collision with root package name */
    private final int[] f14282j;

    /* renamed from: k  reason: collision with root package name */
    private final int f14283k;

    /* renamed from: l  reason: collision with root package name */
    private final int f14284l;

    /* renamed from: m  reason: collision with root package name */
    private final e1 f14285m;

    /* renamed from: n  reason: collision with root package name */
    private final o0 f14286n;

    /* renamed from: o  reason: collision with root package name */
    private final i2<?, ?> f14287o;

    /* renamed from: p  reason: collision with root package name */
    private final z<?> f14288p;

    /* renamed from: q  reason: collision with root package name */
    private final u0 f14289q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MessageSchema.java */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14290a;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f14290a = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14290a[WireFormat.FieldType.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14290a[WireFormat.FieldType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14290a[WireFormat.FieldType.FIXED32.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f14290a[WireFormat.FieldType.SFIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f14290a[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f14290a[WireFormat.FieldType.SFIXED64.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f14290a[WireFormat.FieldType.FLOAT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f14290a[WireFormat.FieldType.ENUM.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f14290a[WireFormat.FieldType.INT32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f14290a[WireFormat.FieldType.UINT32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f14290a[WireFormat.FieldType.INT64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f14290a[WireFormat.FieldType.UINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f14290a[WireFormat.FieldType.MESSAGE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f14290a[WireFormat.FieldType.SINT32.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f14290a[WireFormat.FieldType.SINT64.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f14290a[WireFormat.FieldType.STRING.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    private b1(int[] iArr, Object[] objArr, int i10, int i11, MessageLite messageLite, boolean z10, boolean z11, int[] iArr2, int i12, int i13, e1 e1Var, o0 o0Var, i2<?, ?> i2Var, z<?> zVar, u0 u0Var) {
        this.f14273a = iArr;
        this.f14274b = objArr;
        this.f14275c = i10;
        this.f14276d = i11;
        this.f14279g = messageLite instanceof GeneratedMessageLite;
        this.f14280h = z10;
        this.f14278f = zVar != null && zVar.e(messageLite);
        this.f14281i = z11;
        this.f14282j = iArr2;
        this.f14283k = i12;
        this.f14284l = i13;
        this.f14285m = e1Var;
        this.f14286n = o0Var;
        this.f14287o = i2Var;
        this.f14288p = zVar;
        this.f14277e = messageLite;
        this.f14289q = u0Var;
    }

    private boolean A(T t10, T t11, int i10) {
        long b02 = b0(i10) & 1048575;
        if (o2.C(t10, b02) == o2.C(t11, b02)) {
            return true;
        }
        return false;
    }

    private boolean B(T t10, int i10, int i11) {
        if (o2.C(t10, b0(i11) & 1048575) == i10) {
            return true;
        }
        return false;
    }

    private static boolean C(int i10) {
        if ((i10 & 268435456) != 0) {
            return true;
        }
        return false;
    }

    private static List<?> D(Object obj, long j10) {
        return (List) o2.G(obj, j10);
    }

    private static <T> long E(T t10, long j10) {
        return o2.E(t10, j10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x007b, code lost:
        r0 = r16.f14283k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:363:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x007f, code lost:
        if (r0 >= r16.f14284l) goto L326;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0081, code lost:
        r13 = j(r19, r16.f14282j[r0], r13, r17);
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x008c, code lost:
        if (r13 == null) goto L330;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x008e, code lost:
        r17.o(r19, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0091, code lost:
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private <UT, UB, ET extends com.explorestack.protobuf.e0.c<ET>> void F(com.explorestack.protobuf.i2<UT, UB> r17, com.explorestack.protobuf.z<ET> r18, T r19, com.explorestack.protobuf.o1 r20, com.explorestack.protobuf.y r21) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1720
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.b1.F(com.explorestack.protobuf.i2, com.explorestack.protobuf.z, java.lang.Object, com.explorestack.protobuf.o1, com.explorestack.protobuf.y):void");
    }

    private final <K, V> void G(Object obj, int i10, Object obj2, y yVar, o1 o1Var) throws IOException {
        long O = O(m0(i10));
        Object G = o2.G(obj, O);
        if (G == null) {
            G = this.f14289q.newMapField(obj2);
            o2.X(obj, O, G);
        } else if (this.f14289q.isImmutable(G)) {
            Object newMapField = this.f14289q.newMapField(obj2);
            this.f14289q.mergeFrom(newMapField, G);
            o2.X(obj, O, newMapField);
            G = newMapField;
        }
        o1Var.b(this.f14289q.forMutableMapData(G), this.f14289q.forMapMetadata(obj2), yVar);
    }

    private void H(T t10, T t11, int i10) {
        long O = O(m0(i10));
        if (!v(t11, i10)) {
            return;
        }
        Object G = o2.G(t10, O);
        Object G2 = o2.G(t11, O);
        if (G != null && G2 != null) {
            o2.X(t10, O, i0.k(G, G2));
            h0(t10, i10);
        } else if (G2 != null) {
            o2.X(t10, O, G2);
            h0(t10, i10);
        }
    }

    private void I(T t10, T t11, int i10) {
        Object obj;
        int m02 = m0(i10);
        int N = N(i10);
        long O = O(m02);
        if (!B(t11, N, i10)) {
            return;
        }
        if (B(t10, N, i10)) {
            obj = o2.G(t10, O);
        } else {
            obj = null;
        }
        Object G = o2.G(t11, O);
        if (obj != null && G != null) {
            o2.X(t10, O, i0.k(obj, G));
            i0(t10, N, i10);
        } else if (G != null) {
            o2.X(t10, O, G);
            i0(t10, N, i10);
        }
    }

    private void J(T t10, T t11, int i10) {
        int m02 = m0(i10);
        long O = O(m02);
        int N = N(i10);
        switch (l0(m02)) {
            case 0:
                if (v(t11, i10)) {
                    o2.T(t10, O, o2.A(t11, O));
                    h0(t10, i10);
                    return;
                }
                return;
            case 1:
                if (v(t11, i10)) {
                    o2.U(t10, O, o2.B(t11, O));
                    h0(t10, i10);
                    return;
                }
                return;
            case 2:
                if (v(t11, i10)) {
                    o2.W(t10, O, o2.E(t11, O));
                    h0(t10, i10);
                    return;
                }
                return;
            case 3:
                if (v(t11, i10)) {
                    o2.W(t10, O, o2.E(t11, O));
                    h0(t10, i10);
                    return;
                }
                return;
            case 4:
                if (v(t11, i10)) {
                    o2.V(t10, O, o2.C(t11, O));
                    h0(t10, i10);
                    return;
                }
                return;
            case 5:
                if (v(t11, i10)) {
                    o2.W(t10, O, o2.E(t11, O));
                    h0(t10, i10);
                    return;
                }
                return;
            case 6:
                if (v(t11, i10)) {
                    o2.V(t10, O, o2.C(t11, O));
                    h0(t10, i10);
                    return;
                }
                return;
            case 7:
                if (v(t11, i10)) {
                    o2.N(t10, O, o2.t(t11, O));
                    h0(t10, i10);
                    return;
                }
                return;
            case 8:
                if (v(t11, i10)) {
                    o2.X(t10, O, o2.G(t11, O));
                    h0(t10, i10);
                    return;
                }
                return;
            case 9:
                H(t10, t11, i10);
                return;
            case 10:
                if (v(t11, i10)) {
                    o2.X(t10, O, o2.G(t11, O));
                    h0(t10, i10);
                    return;
                }
                return;
            case 11:
                if (v(t11, i10)) {
                    o2.V(t10, O, o2.C(t11, O));
                    h0(t10, i10);
                    return;
                }
                return;
            case 12:
                if (v(t11, i10)) {
                    o2.V(t10, O, o2.C(t11, O));
                    h0(t10, i10);
                    return;
                }
                return;
            case 13:
                if (v(t11, i10)) {
                    o2.V(t10, O, o2.C(t11, O));
                    h0(t10, i10);
                    return;
                }
                return;
            case 14:
                if (v(t11, i10)) {
                    o2.W(t10, O, o2.E(t11, O));
                    h0(t10, i10);
                    return;
                }
                return;
            case 15:
                if (v(t11, i10)) {
                    o2.V(t10, O, o2.C(t11, O));
                    h0(t10, i10);
                    return;
                }
                return;
            case 16:
                if (v(t11, i10)) {
                    o2.W(t10, O, o2.E(t11, O));
                    h0(t10, i10);
                    return;
                }
                return;
            case 17:
                H(t10, t11, i10);
                return;
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
                this.f14286n.d(t10, t11, O);
                return;
            case 50:
                s1.G(this.f14289q, t10, t11, O);
                return;
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
                if (B(t11, N, i10)) {
                    o2.X(t10, O, o2.G(t11, O));
                    i0(t10, N, i10);
                    return;
                }
                return;
            case 60:
                I(t10, t11, i10);
                return;
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
                if (B(t11, N, i10)) {
                    o2.X(t10, O, o2.G(t11, O));
                    i0(t10, N, i10);
                    return;
                }
                return;
            case 68:
                I(t10, t11, i10);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> b1<T> K(Class<T> cls, y0 y0Var, e1 e1Var, o0 o0Var, i2<?, ?> i2Var, z<?> zVar, u0 u0Var) {
        if (y0Var instanceof n1) {
            return M((n1) y0Var, e1Var, o0Var, i2Var, zVar, u0Var);
        }
        return L((z1) y0Var, e1Var, o0Var, i2Var, zVar, u0Var);
    }

    static <T> b1<T> L(z1 z1Var, e1 e1Var, o0 o0Var, i2<?, ?> i2Var, z<?> zVar, u0 u0Var) {
        boolean z10;
        int p10;
        int p11;
        int[] iArr;
        int i10;
        if (z1Var.getSyntax() == ProtoSyntax.PROTO3) {
            z10 = true;
        } else {
            z10 = false;
        }
        d0[] b10 = z1Var.b();
        if (b10.length == 0) {
            p10 = 0;
            p11 = 0;
        } else {
            p10 = b10[0].p();
            p11 = b10[b10.length - 1].p();
        }
        int length = b10.length;
        int[] iArr2 = new int[length * 3];
        Object[] objArr = new Object[length * 2];
        int i11 = 0;
        int i12 = 0;
        for (d0 d0Var : b10) {
            if (d0Var.v() == FieldType.MAP) {
                i11++;
            } else if (d0Var.v().id() >= 18 && d0Var.v().id() <= 49) {
                i12++;
            }
        }
        int[] iArr3 = null;
        if (i11 > 0) {
            iArr = new int[i11];
        } else {
            iArr = null;
        }
        if (i12 > 0) {
            iArr3 = new int[i12];
        }
        int[] a10 = z1Var.a();
        if (a10 == null) {
            a10 = f14271r;
        }
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        while (i13 < b10.length) {
            d0 d0Var2 = b10[i13];
            int p12 = d0Var2.p();
            k0(d0Var2, iArr2, i14, objArr);
            if (i15 < a10.length && a10[i15] == p12) {
                a10[i15] = i14;
                i15++;
            }
            if (d0Var2.v() == FieldType.MAP) {
                iArr[i16] = i14;
                i16++;
            } else if (d0Var2.v().id() >= 18 && d0Var2.v().id() <= 49) {
                i10 = i14;
                iArr3[i17] = (int) o2.M(d0Var2.o());
                i17++;
                i13++;
                i14 = i10 + 3;
            }
            i10 = i14;
            i13++;
            i14 = i10 + 3;
        }
        if (iArr == null) {
            iArr = f14271r;
        }
        if (iArr3 == null) {
            iArr3 = f14271r;
        }
        int[] iArr4 = new int[a10.length + iArr.length + iArr3.length];
        System.arraycopy(a10, 0, iArr4, 0, a10.length);
        System.arraycopy(iArr, 0, iArr4, a10.length, iArr.length);
        System.arraycopy(iArr3, 0, iArr4, a10.length + iArr.length, iArr3.length);
        return new b1<>(iArr2, objArr, p10, p11, z1Var.getDefaultInstance(), z10, true, iArr4, a10.length, a10.length + iArr.length, e1Var, o0Var, i2Var, zVar, u0Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:122:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x026b  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x031f  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x037a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static <T> com.explorestack.protobuf.b1<T> M(com.explorestack.protobuf.n1 r33, com.explorestack.protobuf.e1 r34, com.explorestack.protobuf.o0 r35, com.explorestack.protobuf.i2<?, ?> r36, com.explorestack.protobuf.z<?> r37, com.explorestack.protobuf.u0 r38) {
        /*
            Method dump skipped, instructions count: 994
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.b1.M(com.explorestack.protobuf.n1, com.explorestack.protobuf.e1, com.explorestack.protobuf.o0, com.explorestack.protobuf.i2, com.explorestack.protobuf.z, com.explorestack.protobuf.u0):com.explorestack.protobuf.b1");
    }

    private int N(int i10) {
        return this.f14273a[i10];
    }

    private static long O(int i10) {
        return i10 & 1048575;
    }

    private static <T> boolean P(T t10, long j10) {
        return ((Boolean) o2.G(t10, j10)).booleanValue();
    }

    private static <T> double Q(T t10, long j10) {
        return ((Double) o2.G(t10, j10)).doubleValue();
    }

    private static <T> float R(T t10, long j10) {
        return ((Float) o2.G(t10, j10)).floatValue();
    }

    private static <T> int S(T t10, long j10) {
        return ((Integer) o2.G(t10, j10)).intValue();
    }

    private static <T> long T(T t10, long j10) {
        return ((Long) o2.G(t10, j10)).longValue();
    }

    private <K, V> int U(T t10, byte[] bArr, int i10, int i11, int i12, long j10, g.b bVar) throws IOException {
        Unsafe unsafe = f14272s;
        Object n10 = n(i12);
        Object object = unsafe.getObject(t10, j10);
        if (this.f14289q.isImmutable(object)) {
            Object newMapField = this.f14289q.newMapField(n10);
            this.f14289q.mergeFrom(newMapField, object);
            unsafe.putObject(t10, j10, newMapField);
            object = newMapField;
        }
        return f(bArr, i10, i11, this.f14289q.forMapMetadata(n10), this.f14289q.forMutableMapData(object), bVar);
    }

    private int V(T t10, byte[] bArr, int i10, int i11, int i12, int i13, int i14, int i15, int i16, long j10, int i17, g.b bVar) throws IOException {
        Unsafe unsafe = f14272s;
        long j11 = this.f14273a[i17 + 2] & 1048575;
        switch (i16) {
            case 51:
                if (i14 == 1) {
                    unsafe.putObject(t10, j10, Double.valueOf(g.d(bArr, i10)));
                    int i18 = i10 + 8;
                    unsafe.putInt(t10, j11, i13);
                    return i18;
                }
                break;
            case 52:
                if (i14 == 5) {
                    unsafe.putObject(t10, j10, Float.valueOf(g.l(bArr, i10)));
                    int i19 = i10 + 4;
                    unsafe.putInt(t10, j11, i13);
                    return i19;
                }
                break;
            case 53:
            case 54:
                if (i14 == 0) {
                    int L = g.L(bArr, i10, bVar);
                    unsafe.putObject(t10, j10, Long.valueOf(bVar.f14385b));
                    unsafe.putInt(t10, j11, i13);
                    return L;
                }
                break;
            case 55:
            case 62:
                if (i14 == 0) {
                    int I = g.I(bArr, i10, bVar);
                    unsafe.putObject(t10, j10, Integer.valueOf(bVar.f14384a));
                    unsafe.putInt(t10, j11, i13);
                    return I;
                }
                break;
            case 56:
            case 65:
                if (i14 == 1) {
                    unsafe.putObject(t10, j10, Long.valueOf(g.j(bArr, i10)));
                    int i20 = i10 + 8;
                    unsafe.putInt(t10, j11, i13);
                    return i20;
                }
                break;
            case 57:
            case 64:
                if (i14 == 5) {
                    unsafe.putObject(t10, j10, Integer.valueOf(g.h(bArr, i10)));
                    int i21 = i10 + 4;
                    unsafe.putInt(t10, j11, i13);
                    return i21;
                }
                break;
            case 58:
                if (i14 == 0) {
                    int L2 = g.L(bArr, i10, bVar);
                    unsafe.putObject(t10, j10, Boolean.valueOf(bVar.f14385b != 0));
                    unsafe.putInt(t10, j11, i13);
                    return L2;
                }
                break;
            case 59:
                if (i14 == 2) {
                    int I2 = g.I(bArr, i10, bVar);
                    int i22 = bVar.f14384a;
                    if (i22 == 0) {
                        unsafe.putObject(t10, j10, "");
                    } else if ((i15 & 536870912) != 0 && !Utf8.t(bArr, I2, I2 + i22)) {
                        throw InvalidProtocolBufferException.invalidUtf8();
                    } else {
                        unsafe.putObject(t10, j10, new String(bArr, I2, i22, i0.f14402a));
                        I2 += i22;
                    }
                    unsafe.putInt(t10, j11, i13);
                    return I2;
                }
                break;
            case 60:
                if (i14 == 2) {
                    int p10 = g.p(o(i17), bArr, i10, i11, bVar);
                    Object object = unsafe.getInt(t10, j11) == i13 ? unsafe.getObject(t10, j10) : null;
                    if (object == null) {
                        unsafe.putObject(t10, j10, bVar.f14386c);
                    } else {
                        unsafe.putObject(t10, j10, i0.k(object, bVar.f14386c));
                    }
                    unsafe.putInt(t10, j11, i13);
                    return p10;
                }
                break;
            case 61:
                if (i14 == 2) {
                    int b10 = g.b(bArr, i10, bVar);
                    unsafe.putObject(t10, j10, bVar.f14386c);
                    unsafe.putInt(t10, j11, i13);
                    return b10;
                }
                break;
            case 63:
                if (i14 == 0) {
                    int I3 = g.I(bArr, i10, bVar);
                    int i23 = bVar.f14384a;
                    i0.e m10 = m(i17);
                    if (m10 != null && !m10.isInRange(i23)) {
                        p(t10).m(i12, Long.valueOf(i23));
                    } else {
                        unsafe.putObject(t10, j10, Integer.valueOf(i23));
                        unsafe.putInt(t10, j11, i13);
                    }
                    return I3;
                }
                break;
            case 66:
                if (i14 == 0) {
                    int I4 = g.I(bArr, i10, bVar);
                    unsafe.putObject(t10, j10, Integer.valueOf(n.b(bVar.f14384a)));
                    unsafe.putInt(t10, j11, i13);
                    return I4;
                }
                break;
            case 67:
                if (i14 == 0) {
                    int L3 = g.L(bArr, i10, bVar);
                    unsafe.putObject(t10, j10, Long.valueOf(n.c(bVar.f14385b)));
                    unsafe.putInt(t10, j11, i13);
                    return L3;
                }
                break;
            case 68:
                if (i14 == 3) {
                    int n10 = g.n(o(i17), bArr, i10, i11, (i12 & (-8)) | 4, bVar);
                    Object object2 = unsafe.getInt(t10, j11) == i13 ? unsafe.getObject(t10, j10) : null;
                    if (object2 == null) {
                        unsafe.putObject(t10, j10, bVar.f14386c);
                    } else {
                        unsafe.putObject(t10, j10, i0.k(object2, bVar.f14386c));
                    }
                    unsafe.putInt(t10, j11, i13);
                    return n10;
                }
                break;
        }
        return i10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0297, code lost:
        if (r0 != r15) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0299, code lost:
        r15 = r29;
        r14 = r30;
        r12 = r31;
        r13 = r33;
        r11 = r34;
        r1 = r18;
        r8 = r19;
        r6 = r23;
        r7 = r26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x02b1, code lost:
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x02e7, code lost:
        if (r0 != r15) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0306, code lost:
        if (r0 != r15) goto L41;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v14, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int X(T r30, byte[] r31, int r32, int r33, com.explorestack.protobuf.g.b r34) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 876
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.b1.X(java.lang.Object, byte[], int, int, com.explorestack.protobuf.g$b):int");
    }

    private int Y(T t10, byte[] bArr, int i10, int i11, int i12, int i13, int i14, int i15, long j10, int i16, long j11, g.b bVar) throws IOException {
        int J;
        Unsafe unsafe = f14272s;
        i0.j jVar = (i0.j) unsafe.getObject(t10, j11);
        if (!jVar.isModifiable()) {
            int size = jVar.size();
            jVar = jVar.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
            unsafe.putObject(t10, j11, jVar);
        }
        switch (i16) {
            case 18:
            case 35:
                if (i14 == 2) {
                    return g.s(bArr, i10, jVar, bVar);
                }
                if (i14 == 1) {
                    return g.e(i12, bArr, i10, i11, jVar, bVar);
                }
                break;
            case 19:
            case 36:
                if (i14 == 2) {
                    return g.v(bArr, i10, jVar, bVar);
                }
                if (i14 == 5) {
                    return g.m(i12, bArr, i10, i11, jVar, bVar);
                }
                break;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i14 == 2) {
                    return g.z(bArr, i10, jVar, bVar);
                }
                if (i14 == 0) {
                    return g.M(i12, bArr, i10, i11, jVar, bVar);
                }
                break;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i14 == 2) {
                    return g.y(bArr, i10, jVar, bVar);
                }
                if (i14 == 0) {
                    return g.J(i12, bArr, i10, i11, jVar, bVar);
                }
                break;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i14 == 2) {
                    return g.u(bArr, i10, jVar, bVar);
                }
                if (i14 == 1) {
                    return g.k(i12, bArr, i10, i11, jVar, bVar);
                }
                break;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i14 == 2) {
                    return g.t(bArr, i10, jVar, bVar);
                }
                if (i14 == 5) {
                    return g.i(i12, bArr, i10, i11, jVar, bVar);
                }
                break;
            case 25:
            case 42:
                if (i14 == 2) {
                    return g.r(bArr, i10, jVar, bVar);
                }
                if (i14 == 0) {
                    return g.a(i12, bArr, i10, i11, jVar, bVar);
                }
                break;
            case 26:
                if (i14 == 2) {
                    if ((j10 & 536870912) == 0) {
                        return g.D(i12, bArr, i10, i11, jVar, bVar);
                    }
                    return g.E(i12, bArr, i10, i11, jVar, bVar);
                }
                break;
            case 27:
                if (i14 == 2) {
                    return g.q(o(i15), i12, bArr, i10, i11, jVar, bVar);
                }
                break;
            case 28:
                if (i14 == 2) {
                    return g.c(i12, bArr, i10, i11, jVar, bVar);
                }
                break;
            case 30:
            case 44:
                if (i14 == 2) {
                    J = g.y(bArr, i10, jVar, bVar);
                } else if (i14 == 0) {
                    J = g.J(i12, bArr, i10, i11, jVar, bVar);
                }
                GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) t10;
                k2 k2Var = generatedMessageLite.f14072a;
                if (k2Var == k2.c()) {
                    k2Var = null;
                }
                k2 k2Var2 = (k2) s1.A(i13, jVar, m(i15), k2Var, this.f14287o);
                if (k2Var2 != null) {
                    generatedMessageLite.f14072a = k2Var2;
                }
                return J;
            case 33:
            case 47:
                if (i14 == 2) {
                    return g.w(bArr, i10, jVar, bVar);
                }
                if (i14 == 0) {
                    return g.A(i12, bArr, i10, i11, jVar, bVar);
                }
                break;
            case 34:
            case 48:
                if (i14 == 2) {
                    return g.x(bArr, i10, jVar, bVar);
                }
                if (i14 == 0) {
                    return g.B(i12, bArr, i10, i11, jVar, bVar);
                }
                break;
            case 49:
                if (i14 == 3) {
                    return g.o(o(i15), i12, bArr, i10, i11, jVar, bVar);
                }
                break;
        }
        return i10;
    }

    private int Z(int i10) {
        if (i10 >= this.f14275c && i10 <= this.f14276d) {
            return j0(i10, 0);
        }
        return -1;
    }

    private int a0(int i10, int i11) {
        if (i10 >= this.f14275c && i10 <= this.f14276d) {
            return j0(i10, i11);
        }
        return -1;
    }

    private int b0(int i10) {
        return this.f14273a[i10 + 2];
    }

    private <E> void c0(Object obj, long j10, o1 o1Var, q1<E> q1Var, y yVar) throws IOException {
        o1Var.e(this.f14286n.e(obj, j10), q1Var, yVar);
    }

    private boolean d(T t10, T t11, int i10) {
        if (v(t10, i10) == v(t11, i10)) {
            return true;
        }
        return false;
    }

    private <E> void d0(Object obj, int i10, o1 o1Var, q1<E> q1Var, y yVar) throws IOException {
        o1Var.a(this.f14286n.e(obj, O(i10)), q1Var, yVar);
    }

    private static <T> boolean e(T t10, long j10) {
        return o2.t(t10, j10);
    }

    private void e0(Object obj, int i10, o1 o1Var) throws IOException {
        if (u(i10)) {
            o2.X(obj, O(i10), o1Var.readStringRequireUtf8());
        } else if (this.f14279g) {
            o2.X(obj, O(i10), o1Var.readString());
        } else {
            o2.X(obj, O(i10), o1Var.readBytes());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r19v0, types: [java.util.Map, java.util.Map<K, V>] */
    /* JADX WARN: Type inference failed for: r1v10, types: [int] */
    private <K, V> int f(byte[] bArr, int i10, int i11, t0.b<K, V> bVar, Map<K, V> map, g.b bVar2) throws IOException {
        int i12;
        int I = g.I(bArr, i10, bVar2);
        int i13 = bVar2.f14384a;
        if (i13 >= 0 && i13 <= i11 - I) {
            int i14 = I + i13;
            K k10 = bVar.f14661b;
            V v10 = bVar.f14663d;
            while (I < i14) {
                int i15 = I + 1;
                byte b10 = bArr[I];
                if (b10 < 0) {
                    i12 = g.H(b10, bArr, i15, bVar2);
                    b10 = bVar2.f14384a;
                } else {
                    i12 = i15;
                }
                int i16 = b10 >>> 3;
                int i17 = b10 & 7;
                if (i16 != 1) {
                    if (i16 == 2 && i17 == bVar.f14662c.getWireType()) {
                        I = g(bArr, i12, i11, bVar.f14662c, bVar.f14663d.getClass(), bVar2);
                        v10 = bVar2.f14386c;
                    }
                    I = g.N(b10, bArr, i12, i11, bVar2);
                } else if (i17 == bVar.f14660a.getWireType()) {
                    I = g(bArr, i12, i11, bVar.f14660a, null, bVar2);
                    k10 = bVar2.f14386c;
                } else {
                    I = g.N(b10, bArr, i12, i11, bVar2);
                }
            }
            if (I == i14) {
                map.put(k10, v10);
                return i14;
            }
            throw InvalidProtocolBufferException.parseFailure();
        }
        throw InvalidProtocolBufferException.truncatedMessage();
    }

    private void f0(Object obj, int i10, o1 o1Var) throws IOException {
        if (u(i10)) {
            o1Var.readStringListRequireUtf8(this.f14286n.e(obj, O(i10)));
        } else {
            o1Var.readStringList(this.f14286n.e(obj, O(i10)));
        }
    }

    private int g(byte[] bArr, int i10, int i11, WireFormat.FieldType fieldType, Class<?> cls, g.b bVar) throws IOException {
        boolean z10;
        switch (a.f14290a[fieldType.ordinal()]) {
            case 1:
                int L = g.L(bArr, i10, bVar);
                if (bVar.f14385b != 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                bVar.f14386c = Boolean.valueOf(z10);
                return L;
            case 2:
                return g.b(bArr, i10, bVar);
            case 3:
                bVar.f14386c = Double.valueOf(g.d(bArr, i10));
                return i10 + 8;
            case 4:
            case 5:
                bVar.f14386c = Integer.valueOf(g.h(bArr, i10));
                return i10 + 4;
            case 6:
            case 7:
                bVar.f14386c = Long.valueOf(g.j(bArr, i10));
                return i10 + 8;
            case 8:
                bVar.f14386c = Float.valueOf(g.l(bArr, i10));
                return i10 + 4;
            case 9:
            case 10:
            case 11:
                int I = g.I(bArr, i10, bVar);
                bVar.f14386c = Integer.valueOf(bVar.f14384a);
                return I;
            case 12:
            case 13:
                int L2 = g.L(bArr, i10, bVar);
                bVar.f14386c = Long.valueOf(bVar.f14385b);
                return L2;
            case 14:
                return g.p(l1.a().d(cls), bArr, i10, i11, bVar);
            case 15:
                int I2 = g.I(bArr, i10, bVar);
                bVar.f14386c = Integer.valueOf(n.b(bVar.f14384a));
                return I2;
            case 16:
                int L3 = g.L(bArr, i10, bVar);
                bVar.f14386c = Long.valueOf(n.c(bVar.f14385b));
                return L3;
            case 17:
                return g.F(bArr, i10, bVar);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    private static java.lang.reflect.Field g0(Class<?> cls, String str) {
        java.lang.reflect.Field[] declaredFields;
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            for (java.lang.reflect.Field field : cls.getDeclaredFields()) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    private static <T> double h(T t10, long j10) {
        return o2.A(t10, j10);
    }

    private void h0(T t10, int i10) {
        int b02 = b0(i10);
        long j10 = 1048575 & b02;
        if (j10 == 1048575) {
            return;
        }
        o2.V(t10, j10, (1 << (b02 >>> 20)) | o2.C(t10, j10));
    }

    private boolean i(T t10, T t11, int i10) {
        int m02 = m0(i10);
        long O = O(m02);
        switch (l0(m02)) {
            case 0:
                if (!d(t10, t11, i10) || Double.doubleToLongBits(o2.A(t10, O)) != Double.doubleToLongBits(o2.A(t11, O))) {
                    return false;
                }
                return true;
            case 1:
                if (!d(t10, t11, i10) || Float.floatToIntBits(o2.B(t10, O)) != Float.floatToIntBits(o2.B(t11, O))) {
                    return false;
                }
                return true;
            case 2:
                if (!d(t10, t11, i10) || o2.E(t10, O) != o2.E(t11, O)) {
                    return false;
                }
                return true;
            case 3:
                if (!d(t10, t11, i10) || o2.E(t10, O) != o2.E(t11, O)) {
                    return false;
                }
                return true;
            case 4:
                if (!d(t10, t11, i10) || o2.C(t10, O) != o2.C(t11, O)) {
                    return false;
                }
                return true;
            case 5:
                if (!d(t10, t11, i10) || o2.E(t10, O) != o2.E(t11, O)) {
                    return false;
                }
                return true;
            case 6:
                if (!d(t10, t11, i10) || o2.C(t10, O) != o2.C(t11, O)) {
                    return false;
                }
                return true;
            case 7:
                if (!d(t10, t11, i10) || o2.t(t10, O) != o2.t(t11, O)) {
                    return false;
                }
                return true;
            case 8:
                if (!d(t10, t11, i10) || !s1.L(o2.G(t10, O), o2.G(t11, O))) {
                    return false;
                }
                return true;
            case 9:
                if (!d(t10, t11, i10) || !s1.L(o2.G(t10, O), o2.G(t11, O))) {
                    return false;
                }
                return true;
            case 10:
                if (!d(t10, t11, i10) || !s1.L(o2.G(t10, O), o2.G(t11, O))) {
                    return false;
                }
                return true;
            case 11:
                if (!d(t10, t11, i10) || o2.C(t10, O) != o2.C(t11, O)) {
                    return false;
                }
                return true;
            case 12:
                if (!d(t10, t11, i10) || o2.C(t10, O) != o2.C(t11, O)) {
                    return false;
                }
                return true;
            case 13:
                if (!d(t10, t11, i10) || o2.C(t10, O) != o2.C(t11, O)) {
                    return false;
                }
                return true;
            case 14:
                if (!d(t10, t11, i10) || o2.E(t10, O) != o2.E(t11, O)) {
                    return false;
                }
                return true;
            case 15:
                if (!d(t10, t11, i10) || o2.C(t10, O) != o2.C(t11, O)) {
                    return false;
                }
                return true;
            case 16:
                if (!d(t10, t11, i10) || o2.E(t10, O) != o2.E(t11, O)) {
                    return false;
                }
                return true;
            case 17:
                if (!d(t10, t11, i10) || !s1.L(o2.G(t10, O), o2.G(t11, O))) {
                    return false;
                }
                return true;
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
                return s1.L(o2.G(t10, O), o2.G(t11, O));
            case 50:
                return s1.L(o2.G(t10, O), o2.G(t11, O));
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
            case 68:
                if (!A(t10, t11, i10) || !s1.L(o2.G(t10, O), o2.G(t11, O))) {
                    return false;
                }
                return true;
            default:
                return true;
        }
    }

    private void i0(T t10, int i10, int i11) {
        o2.V(t10, b0(i11) & 1048575, i10);
    }

    private final <UT, UB> UB j(Object obj, int i10, UB ub2, i2<UT, UB> i2Var) {
        int N = N(i10);
        Object G = o2.G(obj, O(m0(i10)));
        if (G == null) {
            return ub2;
        }
        i0.e m10 = m(i10);
        if (m10 == null) {
            return ub2;
        }
        return (UB) k(i10, N, this.f14289q.forMutableMapData(G), m10, ub2, i2Var);
    }

    private int j0(int i10, int i11) {
        int length = (this.f14273a.length / 3) - 1;
        while (i11 <= length) {
            int i12 = (length + i11) >>> 1;
            int i13 = i12 * 3;
            int N = N(i13);
            if (i10 == N) {
                return i13;
            }
            if (i10 < N) {
                length = i12 - 1;
            } else {
                i11 = i12 + 1;
            }
        }
        return -1;
    }

    private final <K, V, UT, UB> UB k(int i10, int i11, Map<K, V> map, i0.e eVar, UB ub2, i2<UT, UB> i2Var) {
        t0.b<?, ?> forMapMetadata = this.f14289q.forMapMetadata(n(i10));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!eVar.isInRange(((Integer) next.getValue()).intValue())) {
                if (ub2 == null) {
                    ub2 = i2Var.n();
                }
                ByteString.CodedBuilder newCodedBuilder = ByteString.newCodedBuilder(t0.b(forMapMetadata, next.getKey(), next.getValue()));
                try {
                    t0.f(newCodedBuilder.getCodedOutput(), forMapMetadata, next.getKey(), next.getValue());
                    i2Var.d(ub2, i11, newCodedBuilder.build());
                    it.remove();
                } catch (IOException e10) {
                    throw new RuntimeException(e10);
                }
            }
        }
        return ub2;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00be  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void k0(com.explorestack.protobuf.d0 r8, int[] r9, int r10, java.lang.Object[] r11) {
        /*
            com.explorestack.protobuf.i1 r0 = r8.s()
            r1 = 0
            if (r0 == 0) goto L25
            com.explorestack.protobuf.FieldType r2 = r8.v()
            int r2 = r2.id()
            int r2 = r2 + 51
            java.lang.reflect.Field r3 = r0.b()
            long r3 = com.explorestack.protobuf.o2.M(r3)
            int r3 = (int) r3
            java.lang.reflect.Field r0 = r0.a()
            long r4 = com.explorestack.protobuf.o2.M(r0)
        L22:
            int r0 = (int) r4
            r4 = r1
            goto L6c
        L25:
            com.explorestack.protobuf.FieldType r0 = r8.v()
            java.lang.reflect.Field r2 = r8.o()
            long r2 = com.explorestack.protobuf.o2.M(r2)
            int r3 = (int) r2
            int r2 = r0.id()
            boolean r4 = r0.isList()
            if (r4 != 0) goto L5a
            boolean r0 = r0.isMap()
            if (r0 != 0) goto L5a
            java.lang.reflect.Field r0 = r8.t()
            if (r0 != 0) goto L4c
            r0 = 1048575(0xfffff, float:1.469367E-39)
            goto L51
        L4c:
            long r4 = com.explorestack.protobuf.o2.M(r0)
            int r0 = (int) r4
        L51:
            int r4 = r8.u()
            int r4 = java.lang.Integer.numberOfTrailingZeros(r4)
            goto L6c
        L5a:
            java.lang.reflect.Field r0 = r8.m()
            if (r0 != 0) goto L63
            r0 = r1
            r4 = r0
            goto L6c
        L63:
            java.lang.reflect.Field r0 = r8.m()
            long r4 = com.explorestack.protobuf.o2.M(r0)
            goto L22
        L6c:
            int r5 = r8.p()
            r9[r10] = r5
            int r5 = r10 + 1
            boolean r6 = r8.w()
            if (r6 == 0) goto L7d
            r6 = 536870912(0x20000000, float:1.0842022E-19)
            goto L7e
        L7d:
            r6 = r1
        L7e:
            boolean r7 = r8.y()
            if (r7 == 0) goto L86
            r1 = 268435456(0x10000000, float:2.5243549E-29)
        L86:
            r1 = r1 | r6
            int r2 = r2 << 20
            r1 = r1 | r2
            r1 = r1 | r3
            r9[r5] = r1
            int r1 = r10 + 2
            int r2 = r4 << 20
            r0 = r0 | r2
            r9[r1] = r0
            java.lang.Class r9 = r8.r()
            java.lang.Object r0 = r8.q()
            if (r0 == 0) goto Lbe
            int r10 = r10 / 3
            int r10 = r10 * 2
            java.lang.Object r0 = r8.q()
            r11[r10] = r0
            if (r9 == 0) goto Laf
            int r10 = r10 + 1
            r11[r10] = r9
            goto Ldb
        Laf:
            com.explorestack.protobuf.i0$e r9 = r8.n()
            if (r9 == 0) goto Ldb
            int r10 = r10 + 1
            com.explorestack.protobuf.i0$e r8 = r8.n()
            r11[r10] = r8
            goto Ldb
        Lbe:
            if (r9 == 0) goto Lc9
            int r10 = r10 / 3
            int r10 = r10 * 2
            int r10 = r10 + 1
            r11[r10] = r9
            goto Ldb
        Lc9:
            com.explorestack.protobuf.i0$e r9 = r8.n()
            if (r9 == 0) goto Ldb
            int r10 = r10 / 3
            int r10 = r10 * 2
            int r10 = r10 + 1
            com.explorestack.protobuf.i0$e r8 = r8.n()
            r11[r10] = r8
        Ldb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.b1.k0(com.explorestack.protobuf.d0, int[], int, java.lang.Object[]):void");
    }

    private static <T> float l(T t10, long j10) {
        return o2.B(t10, j10);
    }

    private static int l0(int i10) {
        return (i10 & 267386880) >>> 20;
    }

    private i0.e m(int i10) {
        return (i0.e) this.f14274b[((i10 / 3) * 2) + 1];
    }

    private int m0(int i10) {
        return this.f14273a[i10 + 1];
    }

    private Object n(int i10) {
        return this.f14274b[(i10 / 3) * 2];
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x048f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void n0(T r18, com.explorestack.protobuf.Writer r19) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.b1.n0(java.lang.Object, com.explorestack.protobuf.Writer):void");
    }

    private q1 o(int i10) {
        int i11 = (i10 / 3) * 2;
        q1 q1Var = (q1) this.f14274b[i11];
        if (q1Var != null) {
            return q1Var;
        }
        q1<T> d10 = l1.a().d((Class) this.f14274b[i11 + 1]);
        this.f14274b[i11] = d10;
        return d10;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0588  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void o0(T r13, com.explorestack.protobuf.Writer r14) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1584
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.b1.o0(java.lang.Object, com.explorestack.protobuf.Writer):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static k2 p(Object obj) {
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
        k2 k2Var = generatedMessageLite.f14072a;
        if (k2Var == k2.c()) {
            k2 j10 = k2.j();
            generatedMessageLite.f14072a = j10;
            return j10;
        }
        return k2Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x058e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void p0(T r11, com.explorestack.protobuf.Writer r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1586
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.b1.p0(java.lang.Object, com.explorestack.protobuf.Writer):void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private int q(T t10) {
        int i10;
        int i11;
        int j10;
        int e10;
        int N;
        boolean z10;
        int f10;
        int i12;
        int X;
        int Z;
        Unsafe unsafe = f14272s;
        int i13 = 1048575;
        int i14 = 1048575;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        while (i15 < this.f14273a.length) {
            int m02 = m0(i15);
            int N2 = N(i15);
            int l02 = l0(m02);
            if (l02 <= 17) {
                i10 = this.f14273a[i15 + 2];
                int i18 = i10 & i13;
                i11 = 1 << (i10 >>> 20);
                if (i18 != i14) {
                    i17 = unsafe.getInt(t10, i18);
                    i14 = i18;
                }
            } else {
                if (this.f14281i && l02 >= FieldType.DOUBLE_LIST_PACKED.id() && l02 <= FieldType.SINT64_LIST_PACKED.id()) {
                    i10 = this.f14273a[i15 + 2] & i13;
                } else {
                    i10 = 0;
                }
                i11 = 0;
            }
            long O = O(m02);
            switch (l02) {
                case 0:
                    if ((i17 & i11) == 0) {
                        break;
                    } else {
                        j10 = CodedOutputStream.j(N2, 0.0d);
                        i16 += j10;
                        break;
                    }
                case 1:
                    if ((i17 & i11) == 0) {
                        break;
                    } else {
                        j10 = CodedOutputStream.r(N2, 0.0f);
                        i16 += j10;
                        break;
                    }
                case 2:
                    if ((i17 & i11) == 0) {
                        break;
                    } else {
                        j10 = CodedOutputStream.z(N2, unsafe.getLong(t10, O));
                        i16 += j10;
                        break;
                    }
                case 3:
                    if ((i17 & i11) == 0) {
                        break;
                    } else {
                        j10 = CodedOutputStream.a0(N2, unsafe.getLong(t10, O));
                        i16 += j10;
                        break;
                    }
                case 4:
                    if ((i17 & i11) == 0) {
                        break;
                    } else {
                        j10 = CodedOutputStream.x(N2, unsafe.getInt(t10, O));
                        i16 += j10;
                        break;
                    }
                case 5:
                    if ((i17 & i11) == 0) {
                        break;
                    } else {
                        j10 = CodedOutputStream.p(N2, 0L);
                        i16 += j10;
                        break;
                    }
                case 6:
                    if ((i17 & i11) != 0) {
                        j10 = CodedOutputStream.n(N2, 0);
                        i16 += j10;
                        break;
                    }
                    break;
                case 7:
                    if ((i17 & i11) != 0) {
                        e10 = CodedOutputStream.e(N2, true);
                        i16 += e10;
                    }
                    break;
                case 8:
                    if ((i17 & i11) != 0) {
                        Object object = unsafe.getObject(t10, O);
                        if (object instanceof ByteString) {
                            e10 = CodedOutputStream.h(N2, (ByteString) object);
                        } else {
                            e10 = CodedOutputStream.V(N2, (String) object);
                        }
                        i16 += e10;
                    }
                    break;
                case 9:
                    if ((i17 & i11) != 0) {
                        e10 = s1.o(N2, unsafe.getObject(t10, O), o(i15));
                        i16 += e10;
                    }
                    break;
                case 10:
                    if ((i17 & i11) != 0) {
                        e10 = CodedOutputStream.h(N2, (ByteString) unsafe.getObject(t10, O));
                        i16 += e10;
                    }
                    break;
                case 11:
                    if ((i17 & i11) != 0) {
                        e10 = CodedOutputStream.Y(N2, unsafe.getInt(t10, O));
                        i16 += e10;
                    }
                    break;
                case 12:
                    if ((i17 & i11) != 0) {
                        e10 = CodedOutputStream.l(N2, unsafe.getInt(t10, O));
                        i16 += e10;
                    }
                    break;
                case 13:
                    if ((i17 & i11) != 0) {
                        N = CodedOutputStream.N(N2, 0);
                        i16 += N;
                    }
                    break;
                case 14:
                    if ((i17 & i11) != 0) {
                        e10 = CodedOutputStream.P(N2, 0L);
                        i16 += e10;
                    }
                    break;
                case 15:
                    if ((i17 & i11) != 0) {
                        e10 = CodedOutputStream.R(N2, unsafe.getInt(t10, O));
                        i16 += e10;
                    }
                    break;
                case 16:
                    if ((i17 & i11) != 0) {
                        e10 = CodedOutputStream.T(N2, unsafe.getLong(t10, O));
                        i16 += e10;
                    }
                    break;
                case 17:
                    if ((i17 & i11) != 0) {
                        e10 = CodedOutputStream.u(N2, (MessageLite) unsafe.getObject(t10, O), o(i15));
                        i16 += e10;
                    }
                    break;
                case 18:
                    e10 = s1.h(N2, (List) unsafe.getObject(t10, O), false);
                    i16 += e10;
                    break;
                case 19:
                    z10 = false;
                    f10 = s1.f(N2, (List) unsafe.getObject(t10, O), false);
                    i16 += f10;
                    break;
                case 20:
                    z10 = false;
                    f10 = s1.m(N2, (List) unsafe.getObject(t10, O), false);
                    i16 += f10;
                    break;
                case 21:
                    z10 = false;
                    f10 = s1.x(N2, (List) unsafe.getObject(t10, O), false);
                    i16 += f10;
                    break;
                case 22:
                    z10 = false;
                    f10 = s1.k(N2, (List) unsafe.getObject(t10, O), false);
                    i16 += f10;
                    break;
                case 23:
                    z10 = false;
                    f10 = s1.h(N2, (List) unsafe.getObject(t10, O), false);
                    i16 += f10;
                    break;
                case 24:
                    z10 = false;
                    f10 = s1.f(N2, (List) unsafe.getObject(t10, O), false);
                    i16 += f10;
                    break;
                case 25:
                    z10 = false;
                    f10 = s1.a(N2, (List) unsafe.getObject(t10, O), false);
                    i16 += f10;
                    break;
                case 26:
                    e10 = s1.u(N2, (List) unsafe.getObject(t10, O));
                    i16 += e10;
                    break;
                case 27:
                    e10 = s1.p(N2, (List) unsafe.getObject(t10, O), o(i15));
                    i16 += e10;
                    break;
                case 28:
                    e10 = s1.c(N2, (List) unsafe.getObject(t10, O));
                    i16 += e10;
                    break;
                case 29:
                    e10 = s1.v(N2, (List) unsafe.getObject(t10, O), false);
                    i16 += e10;
                    break;
                case 30:
                    z10 = false;
                    f10 = s1.d(N2, (List) unsafe.getObject(t10, O), false);
                    i16 += f10;
                    break;
                case 31:
                    z10 = false;
                    f10 = s1.f(N2, (List) unsafe.getObject(t10, O), false);
                    i16 += f10;
                    break;
                case 32:
                    z10 = false;
                    f10 = s1.h(N2, (List) unsafe.getObject(t10, O), false);
                    i16 += f10;
                    break;
                case 33:
                    z10 = false;
                    f10 = s1.q(N2, (List) unsafe.getObject(t10, O), false);
                    i16 += f10;
                    break;
                case 34:
                    z10 = false;
                    f10 = s1.s(N2, (List) unsafe.getObject(t10, O), false);
                    i16 += f10;
                    break;
                case 35:
                    i12 = s1.i((List) unsafe.getObject(t10, O));
                    if (i12 > 0) {
                        if (this.f14281i) {
                            unsafe.putInt(t10, i10, i12);
                        }
                        X = CodedOutputStream.X(N2);
                        Z = CodedOutputStream.Z(i12);
                        N = X + Z + i12;
                        i16 += N;
                    }
                    break;
                case 36:
                    i12 = s1.g((List) unsafe.getObject(t10, O));
                    if (i12 > 0) {
                        if (this.f14281i) {
                            unsafe.putInt(t10, i10, i12);
                        }
                        X = CodedOutputStream.X(N2);
                        Z = CodedOutputStream.Z(i12);
                        N = X + Z + i12;
                        i16 += N;
                    }
                    break;
                case 37:
                    i12 = s1.n((List) unsafe.getObject(t10, O));
                    if (i12 > 0) {
                        if (this.f14281i) {
                            unsafe.putInt(t10, i10, i12);
                        }
                        X = CodedOutputStream.X(N2);
                        Z = CodedOutputStream.Z(i12);
                        N = X + Z + i12;
                        i16 += N;
                    }
                    break;
                case 38:
                    i12 = s1.y((List) unsafe.getObject(t10, O));
                    if (i12 > 0) {
                        if (this.f14281i) {
                            unsafe.putInt(t10, i10, i12);
                        }
                        X = CodedOutputStream.X(N2);
                        Z = CodedOutputStream.Z(i12);
                        N = X + Z + i12;
                        i16 += N;
                    }
                    break;
                case 39:
                    i12 = s1.l((List) unsafe.getObject(t10, O));
                    if (i12 > 0) {
                        if (this.f14281i) {
                            unsafe.putInt(t10, i10, i12);
                        }
                        X = CodedOutputStream.X(N2);
                        Z = CodedOutputStream.Z(i12);
                        N = X + Z + i12;
                        i16 += N;
                    }
                    break;
                case 40:
                    i12 = s1.i((List) unsafe.getObject(t10, O));
                    if (i12 > 0) {
                        if (this.f14281i) {
                            unsafe.putInt(t10, i10, i12);
                        }
                        X = CodedOutputStream.X(N2);
                        Z = CodedOutputStream.Z(i12);
                        N = X + Z + i12;
                        i16 += N;
                    }
                    break;
                case 41:
                    i12 = s1.g((List) unsafe.getObject(t10, O));
                    if (i12 > 0) {
                        if (this.f14281i) {
                            unsafe.putInt(t10, i10, i12);
                        }
                        X = CodedOutputStream.X(N2);
                        Z = CodedOutputStream.Z(i12);
                        N = X + Z + i12;
                        i16 += N;
                    }
                    break;
                case 42:
                    i12 = s1.b((List) unsafe.getObject(t10, O));
                    if (i12 > 0) {
                        if (this.f14281i) {
                            unsafe.putInt(t10, i10, i12);
                        }
                        X = CodedOutputStream.X(N2);
                        Z = CodedOutputStream.Z(i12);
                        N = X + Z + i12;
                        i16 += N;
                    }
                    break;
                case 43:
                    i12 = s1.w((List) unsafe.getObject(t10, O));
                    if (i12 > 0) {
                        if (this.f14281i) {
                            unsafe.putInt(t10, i10, i12);
                        }
                        X = CodedOutputStream.X(N2);
                        Z = CodedOutputStream.Z(i12);
                        N = X + Z + i12;
                        i16 += N;
                    }
                    break;
                case 44:
                    i12 = s1.e((List) unsafe.getObject(t10, O));
                    if (i12 > 0) {
                        if (this.f14281i) {
                            unsafe.putInt(t10, i10, i12);
                        }
                        X = CodedOutputStream.X(N2);
                        Z = CodedOutputStream.Z(i12);
                        N = X + Z + i12;
                        i16 += N;
                    }
                    break;
                case 45:
                    i12 = s1.g((List) unsafe.getObject(t10, O));
                    if (i12 > 0) {
                        if (this.f14281i) {
                            unsafe.putInt(t10, i10, i12);
                        }
                        X = CodedOutputStream.X(N2);
                        Z = CodedOutputStream.Z(i12);
                        N = X + Z + i12;
                        i16 += N;
                    }
                    break;
                case 46:
                    i12 = s1.i((List) unsafe.getObject(t10, O));
                    if (i12 > 0) {
                        if (this.f14281i) {
                            unsafe.putInt(t10, i10, i12);
                        }
                        X = CodedOutputStream.X(N2);
                        Z = CodedOutputStream.Z(i12);
                        N = X + Z + i12;
                        i16 += N;
                    }
                    break;
                case 47:
                    i12 = s1.r((List) unsafe.getObject(t10, O));
                    if (i12 > 0) {
                        if (this.f14281i) {
                            unsafe.putInt(t10, i10, i12);
                        }
                        X = CodedOutputStream.X(N2);
                        Z = CodedOutputStream.Z(i12);
                        N = X + Z + i12;
                        i16 += N;
                    }
                    break;
                case 48:
                    i12 = s1.t((List) unsafe.getObject(t10, O));
                    if (i12 > 0) {
                        if (this.f14281i) {
                            unsafe.putInt(t10, i10, i12);
                        }
                        X = CodedOutputStream.X(N2);
                        Z = CodedOutputStream.Z(i12);
                        N = X + Z + i12;
                        i16 += N;
                    }
                    break;
                case 49:
                    e10 = s1.j(N2, (List) unsafe.getObject(t10, O), o(i15));
                    i16 += e10;
                    break;
                case 50:
                    e10 = this.f14289q.getSerializedSize(N2, unsafe.getObject(t10, O), n(i15));
                    i16 += e10;
                    break;
                case 51:
                    if (B(t10, N2, i15)) {
                        e10 = CodedOutputStream.j(N2, 0.0d);
                        i16 += e10;
                    }
                    break;
                case 52:
                    if (B(t10, N2, i15)) {
                        e10 = CodedOutputStream.r(N2, 0.0f);
                        i16 += e10;
                    }
                    break;
                case 53:
                    if (B(t10, N2, i15)) {
                        e10 = CodedOutputStream.z(N2, T(t10, O));
                        i16 += e10;
                    }
                    break;
                case 54:
                    if (B(t10, N2, i15)) {
                        e10 = CodedOutputStream.a0(N2, T(t10, O));
                        i16 += e10;
                    }
                    break;
                case 55:
                    if (B(t10, N2, i15)) {
                        e10 = CodedOutputStream.x(N2, S(t10, O));
                        i16 += e10;
                    }
                    break;
                case 56:
                    if (B(t10, N2, i15)) {
                        e10 = CodedOutputStream.p(N2, 0L);
                        i16 += e10;
                    }
                    break;
                case 57:
                    if (B(t10, N2, i15)) {
                        N = CodedOutputStream.n(N2, 0);
                        i16 += N;
                    }
                    break;
                case 58:
                    if (B(t10, N2, i15)) {
                        e10 = CodedOutputStream.e(N2, true);
                        i16 += e10;
                    }
                    break;
                case 59:
                    if (B(t10, N2, i15)) {
                        Object object2 = unsafe.getObject(t10, O);
                        if (object2 instanceof ByteString) {
                            e10 = CodedOutputStream.h(N2, (ByteString) object2);
                        } else {
                            e10 = CodedOutputStream.V(N2, (String) object2);
                        }
                        i16 += e10;
                    }
                    break;
                case 60:
                    if (B(t10, N2, i15)) {
                        e10 = s1.o(N2, unsafe.getObject(t10, O), o(i15));
                        i16 += e10;
                    }
                    break;
                case 61:
                    if (B(t10, N2, i15)) {
                        e10 = CodedOutputStream.h(N2, (ByteString) unsafe.getObject(t10, O));
                        i16 += e10;
                    }
                    break;
                case 62:
                    if (B(t10, N2, i15)) {
                        e10 = CodedOutputStream.Y(N2, S(t10, O));
                        i16 += e10;
                    }
                    break;
                case 63:
                    if (B(t10, N2, i15)) {
                        e10 = CodedOutputStream.l(N2, S(t10, O));
                        i16 += e10;
                    }
                    break;
                case 64:
                    if (B(t10, N2, i15)) {
                        N = CodedOutputStream.N(N2, 0);
                        i16 += N;
                    }
                    break;
                case 65:
                    if (B(t10, N2, i15)) {
                        e10 = CodedOutputStream.P(N2, 0L);
                        i16 += e10;
                    }
                    break;
                case 66:
                    if (B(t10, N2, i15)) {
                        e10 = CodedOutputStream.R(N2, S(t10, O));
                        i16 += e10;
                    }
                    break;
                case 67:
                    if (B(t10, N2, i15)) {
                        e10 = CodedOutputStream.T(N2, T(t10, O));
                        i16 += e10;
                    }
                    break;
                case 68:
                    if (B(t10, N2, i15)) {
                        e10 = CodedOutputStream.u(N2, (MessageLite) unsafe.getObject(t10, O), o(i15));
                        i16 += e10;
                    }
                    break;
            }
            i15 += 3;
            i13 = 1048575;
        }
        int s10 = i16 + s(this.f14287o, t10);
        if (this.f14278f) {
            return s10 + this.f14288p.c(t10).y();
        }
        return s10;
    }

    private <K, V> void q0(Writer writer, int i10, Object obj, int i11) throws IOException {
        if (obj != null) {
            writer.b(i10, this.f14289q.forMapMetadata(n(i11)), this.f14289q.forMapData(obj));
        }
    }

    private int r(T t10) {
        int i10;
        int j10;
        int i11;
        int X;
        int Z;
        Unsafe unsafe = f14272s;
        int i12 = 0;
        for (int i13 = 0; i13 < this.f14273a.length; i13 += 3) {
            int m02 = m0(i13);
            int l02 = l0(m02);
            int N = N(i13);
            long O = O(m02);
            if (l02 >= FieldType.DOUBLE_LIST_PACKED.id() && l02 <= FieldType.SINT64_LIST_PACKED.id()) {
                i10 = this.f14273a[i13 + 2] & 1048575;
            } else {
                i10 = 0;
            }
            switch (l02) {
                case 0:
                    if (v(t10, i13)) {
                        j10 = CodedOutputStream.j(N, 0.0d);
                        break;
                    } else {
                        continue;
                    }
                case 1:
                    if (v(t10, i13)) {
                        j10 = CodedOutputStream.r(N, 0.0f);
                        break;
                    } else {
                        continue;
                    }
                case 2:
                    if (v(t10, i13)) {
                        j10 = CodedOutputStream.z(N, o2.E(t10, O));
                        break;
                    } else {
                        continue;
                    }
                case 3:
                    if (v(t10, i13)) {
                        j10 = CodedOutputStream.a0(N, o2.E(t10, O));
                        break;
                    } else {
                        continue;
                    }
                case 4:
                    if (v(t10, i13)) {
                        j10 = CodedOutputStream.x(N, o2.C(t10, O));
                        break;
                    } else {
                        continue;
                    }
                case 5:
                    if (v(t10, i13)) {
                        j10 = CodedOutputStream.p(N, 0L);
                        break;
                    } else {
                        continue;
                    }
                case 6:
                    if (v(t10, i13)) {
                        j10 = CodedOutputStream.n(N, 0);
                        break;
                    } else {
                        continue;
                    }
                case 7:
                    if (v(t10, i13)) {
                        j10 = CodedOutputStream.e(N, true);
                        break;
                    } else {
                        continue;
                    }
                case 8:
                    if (v(t10, i13)) {
                        Object G = o2.G(t10, O);
                        if (G instanceof ByteString) {
                            j10 = CodedOutputStream.h(N, (ByteString) G);
                            break;
                        } else {
                            j10 = CodedOutputStream.V(N, (String) G);
                            break;
                        }
                    } else {
                        continue;
                    }
                case 9:
                    if (v(t10, i13)) {
                        j10 = s1.o(N, o2.G(t10, O), o(i13));
                        break;
                    } else {
                        continue;
                    }
                case 10:
                    if (v(t10, i13)) {
                        j10 = CodedOutputStream.h(N, (ByteString) o2.G(t10, O));
                        break;
                    } else {
                        continue;
                    }
                case 11:
                    if (v(t10, i13)) {
                        j10 = CodedOutputStream.Y(N, o2.C(t10, O));
                        break;
                    } else {
                        continue;
                    }
                case 12:
                    if (v(t10, i13)) {
                        j10 = CodedOutputStream.l(N, o2.C(t10, O));
                        break;
                    } else {
                        continue;
                    }
                case 13:
                    if (v(t10, i13)) {
                        j10 = CodedOutputStream.N(N, 0);
                        break;
                    } else {
                        continue;
                    }
                case 14:
                    if (v(t10, i13)) {
                        j10 = CodedOutputStream.P(N, 0L);
                        break;
                    } else {
                        continue;
                    }
                case 15:
                    if (v(t10, i13)) {
                        j10 = CodedOutputStream.R(N, o2.C(t10, O));
                        break;
                    } else {
                        continue;
                    }
                case 16:
                    if (v(t10, i13)) {
                        j10 = CodedOutputStream.T(N, o2.E(t10, O));
                        break;
                    } else {
                        continue;
                    }
                case 17:
                    if (v(t10, i13)) {
                        j10 = CodedOutputStream.u(N, (MessageLite) o2.G(t10, O), o(i13));
                        break;
                    } else {
                        continue;
                    }
                case 18:
                    j10 = s1.h(N, D(t10, O), false);
                    break;
                case 19:
                    j10 = s1.f(N, D(t10, O), false);
                    break;
                case 20:
                    j10 = s1.m(N, D(t10, O), false);
                    break;
                case 21:
                    j10 = s1.x(N, D(t10, O), false);
                    break;
                case 22:
                    j10 = s1.k(N, D(t10, O), false);
                    break;
                case 23:
                    j10 = s1.h(N, D(t10, O), false);
                    break;
                case 24:
                    j10 = s1.f(N, D(t10, O), false);
                    break;
                case 25:
                    j10 = s1.a(N, D(t10, O), false);
                    break;
                case 26:
                    j10 = s1.u(N, D(t10, O));
                    break;
                case 27:
                    j10 = s1.p(N, D(t10, O), o(i13));
                    break;
                case 28:
                    j10 = s1.c(N, D(t10, O));
                    break;
                case 29:
                    j10 = s1.v(N, D(t10, O), false);
                    break;
                case 30:
                    j10 = s1.d(N, D(t10, O), false);
                    break;
                case 31:
                    j10 = s1.f(N, D(t10, O), false);
                    break;
                case 32:
                    j10 = s1.h(N, D(t10, O), false);
                    break;
                case 33:
                    j10 = s1.q(N, D(t10, O), false);
                    break;
                case 34:
                    j10 = s1.s(N, D(t10, O), false);
                    break;
                case 35:
                    i11 = s1.i((List) unsafe.getObject(t10, O));
                    if (i11 > 0) {
                        if (this.f14281i) {
                            unsafe.putInt(t10, i10, i11);
                        }
                        X = CodedOutputStream.X(N);
                        Z = CodedOutputStream.Z(i11);
                        j10 = X + Z + i11;
                        break;
                    } else {
                        continue;
                    }
                case 36:
                    i11 = s1.g((List) unsafe.getObject(t10, O));
                    if (i11 > 0) {
                        if (this.f14281i) {
                            unsafe.putInt(t10, i10, i11);
                        }
                        X = CodedOutputStream.X(N);
                        Z = CodedOutputStream.Z(i11);
                        j10 = X + Z + i11;
                        break;
                    } else {
                        continue;
                    }
                case 37:
                    i11 = s1.n((List) unsafe.getObject(t10, O));
                    if (i11 > 0) {
                        if (this.f14281i) {
                            unsafe.putInt(t10, i10, i11);
                        }
                        X = CodedOutputStream.X(N);
                        Z = CodedOutputStream.Z(i11);
                        j10 = X + Z + i11;
                        break;
                    } else {
                        continue;
                    }
                case 38:
                    i11 = s1.y((List) unsafe.getObject(t10, O));
                    if (i11 > 0) {
                        if (this.f14281i) {
                            unsafe.putInt(t10, i10, i11);
                        }
                        X = CodedOutputStream.X(N);
                        Z = CodedOutputStream.Z(i11);
                        j10 = X + Z + i11;
                        break;
                    } else {
                        continue;
                    }
                case 39:
                    i11 = s1.l((List) unsafe.getObject(t10, O));
                    if (i11 > 0) {
                        if (this.f14281i) {
                            unsafe.putInt(t10, i10, i11);
                        }
                        X = CodedOutputStream.X(N);
                        Z = CodedOutputStream.Z(i11);
                        j10 = X + Z + i11;
                        break;
                    } else {
                        continue;
                    }
                case 40:
                    i11 = s1.i((List) unsafe.getObject(t10, O));
                    if (i11 > 0) {
                        if (this.f14281i) {
                            unsafe.putInt(t10, i10, i11);
                        }
                        X = CodedOutputStream.X(N);
                        Z = CodedOutputStream.Z(i11);
                        j10 = X + Z + i11;
                        break;
                    } else {
                        continue;
                    }
                case 41:
                    i11 = s1.g((List) unsafe.getObject(t10, O));
                    if (i11 > 0) {
                        if (this.f14281i) {
                            unsafe.putInt(t10, i10, i11);
                        }
                        X = CodedOutputStream.X(N);
                        Z = CodedOutputStream.Z(i11);
                        j10 = X + Z + i11;
                        break;
                    } else {
                        continue;
                    }
                case 42:
                    i11 = s1.b((List) unsafe.getObject(t10, O));
                    if (i11 > 0) {
                        if (this.f14281i) {
                            unsafe.putInt(t10, i10, i11);
                        }
                        X = CodedOutputStream.X(N);
                        Z = CodedOutputStream.Z(i11);
                        j10 = X + Z + i11;
                        break;
                    } else {
                        continue;
                    }
                case 43:
                    i11 = s1.w((List) unsafe.getObject(t10, O));
                    if (i11 > 0) {
                        if (this.f14281i) {
                            unsafe.putInt(t10, i10, i11);
                        }
                        X = CodedOutputStream.X(N);
                        Z = CodedOutputStream.Z(i11);
                        j10 = X + Z + i11;
                        break;
                    } else {
                        continue;
                    }
                case 44:
                    i11 = s1.e((List) unsafe.getObject(t10, O));
                    if (i11 > 0) {
                        if (this.f14281i) {
                            unsafe.putInt(t10, i10, i11);
                        }
                        X = CodedOutputStream.X(N);
                        Z = CodedOutputStream.Z(i11);
                        j10 = X + Z + i11;
                        break;
                    } else {
                        continue;
                    }
                case 45:
                    i11 = s1.g((List) unsafe.getObject(t10, O));
                    if (i11 > 0) {
                        if (this.f14281i) {
                            unsafe.putInt(t10, i10, i11);
                        }
                        X = CodedOutputStream.X(N);
                        Z = CodedOutputStream.Z(i11);
                        j10 = X + Z + i11;
                        break;
                    } else {
                        continue;
                    }
                case 46:
                    i11 = s1.i((List) unsafe.getObject(t10, O));
                    if (i11 > 0) {
                        if (this.f14281i) {
                            unsafe.putInt(t10, i10, i11);
                        }
                        X = CodedOutputStream.X(N);
                        Z = CodedOutputStream.Z(i11);
                        j10 = X + Z + i11;
                        break;
                    } else {
                        continue;
                    }
                case 47:
                    i11 = s1.r((List) unsafe.getObject(t10, O));
                    if (i11 > 0) {
                        if (this.f14281i) {
                            unsafe.putInt(t10, i10, i11);
                        }
                        X = CodedOutputStream.X(N);
                        Z = CodedOutputStream.Z(i11);
                        j10 = X + Z + i11;
                        break;
                    } else {
                        continue;
                    }
                case 48:
                    i11 = s1.t((List) unsafe.getObject(t10, O));
                    if (i11 > 0) {
                        if (this.f14281i) {
                            unsafe.putInt(t10, i10, i11);
                        }
                        X = CodedOutputStream.X(N);
                        Z = CodedOutputStream.Z(i11);
                        j10 = X + Z + i11;
                        break;
                    } else {
                        continue;
                    }
                case 49:
                    j10 = s1.j(N, D(t10, O), o(i13));
                    break;
                case 50:
                    j10 = this.f14289q.getSerializedSize(N, o2.G(t10, O), n(i13));
                    break;
                case 51:
                    if (B(t10, N, i13)) {
                        j10 = CodedOutputStream.j(N, 0.0d);
                        break;
                    } else {
                        continue;
                    }
                case 52:
                    if (B(t10, N, i13)) {
                        j10 = CodedOutputStream.r(N, 0.0f);
                        break;
                    } else {
                        continue;
                    }
                case 53:
                    if (B(t10, N, i13)) {
                        j10 = CodedOutputStream.z(N, T(t10, O));
                        break;
                    } else {
                        continue;
                    }
                case 54:
                    if (B(t10, N, i13)) {
                        j10 = CodedOutputStream.a0(N, T(t10, O));
                        break;
                    } else {
                        continue;
                    }
                case 55:
                    if (B(t10, N, i13)) {
                        j10 = CodedOutputStream.x(N, S(t10, O));
                        break;
                    } else {
                        continue;
                    }
                case 56:
                    if (B(t10, N, i13)) {
                        j10 = CodedOutputStream.p(N, 0L);
                        break;
                    } else {
                        continue;
                    }
                case 57:
                    if (B(t10, N, i13)) {
                        j10 = CodedOutputStream.n(N, 0);
                        break;
                    } else {
                        continue;
                    }
                case 58:
                    if (B(t10, N, i13)) {
                        j10 = CodedOutputStream.e(N, true);
                        break;
                    } else {
                        continue;
                    }
                case 59:
                    if (B(t10, N, i13)) {
                        Object G2 = o2.G(t10, O);
                        if (G2 instanceof ByteString) {
                            j10 = CodedOutputStream.h(N, (ByteString) G2);
                            break;
                        } else {
                            j10 = CodedOutputStream.V(N, (String) G2);
                            break;
                        }
                    } else {
                        continue;
                    }
                case 60:
                    if (B(t10, N, i13)) {
                        j10 = s1.o(N, o2.G(t10, O), o(i13));
                        break;
                    } else {
                        continue;
                    }
                case 61:
                    if (B(t10, N, i13)) {
                        j10 = CodedOutputStream.h(N, (ByteString) o2.G(t10, O));
                        break;
                    } else {
                        continue;
                    }
                case 62:
                    if (B(t10, N, i13)) {
                        j10 = CodedOutputStream.Y(N, S(t10, O));
                        break;
                    } else {
                        continue;
                    }
                case 63:
                    if (B(t10, N, i13)) {
                        j10 = CodedOutputStream.l(N, S(t10, O));
                        break;
                    } else {
                        continue;
                    }
                case 64:
                    if (B(t10, N, i13)) {
                        j10 = CodedOutputStream.N(N, 0);
                        break;
                    } else {
                        continue;
                    }
                case 65:
                    if (B(t10, N, i13)) {
                        j10 = CodedOutputStream.P(N, 0L);
                        break;
                    } else {
                        continue;
                    }
                case 66:
                    if (B(t10, N, i13)) {
                        j10 = CodedOutputStream.R(N, S(t10, O));
                        break;
                    } else {
                        continue;
                    }
                case 67:
                    if (B(t10, N, i13)) {
                        j10 = CodedOutputStream.T(N, T(t10, O));
                        break;
                    } else {
                        continue;
                    }
                case 68:
                    if (B(t10, N, i13)) {
                        j10 = CodedOutputStream.u(N, (MessageLite) o2.G(t10, O), o(i13));
                        break;
                    } else {
                        continue;
                    }
                default:
            }
            i12 += j10;
        }
        return i12 + s(this.f14287o, t10);
    }

    private void r0(int i10, Object obj, Writer writer) throws IOException {
        if (obj instanceof String) {
            writer.writeString(i10, (String) obj);
        } else {
            writer.a(i10, (ByteString) obj);
        }
    }

    private <UT, UB> int s(i2<UT, UB> i2Var, T t10) {
        return i2Var.h(i2Var.g(t10));
    }

    private <UT, UB> void s0(i2<UT, UB> i2Var, T t10, Writer writer) throws IOException {
        i2Var.t(i2Var.g(t10), writer);
    }

    private static <T> int t(T t10, long j10) {
        return o2.C(t10, j10);
    }

    private static boolean u(int i10) {
        if ((i10 & 536870912) != 0) {
            return true;
        }
        return false;
    }

    private boolean v(T t10, int i10) {
        int b02 = b0(i10);
        long j10 = 1048575 & b02;
        if (j10 == 1048575) {
            int m02 = m0(i10);
            long O = O(m02);
            switch (l0(m02)) {
                case 0:
                    if (o2.A(t10, O) == 0.0d) {
                        return false;
                    }
                    return true;
                case 1:
                    if (o2.B(t10, O) == 0.0f) {
                        return false;
                    }
                    return true;
                case 2:
                    if (o2.E(t10, O) == 0) {
                        return false;
                    }
                    return true;
                case 3:
                    if (o2.E(t10, O) == 0) {
                        return false;
                    }
                    return true;
                case 4:
                    if (o2.C(t10, O) == 0) {
                        return false;
                    }
                    return true;
                case 5:
                    if (o2.E(t10, O) == 0) {
                        return false;
                    }
                    return true;
                case 6:
                    if (o2.C(t10, O) == 0) {
                        return false;
                    }
                    return true;
                case 7:
                    return o2.t(t10, O);
                case 8:
                    Object G = o2.G(t10, O);
                    if (G instanceof String) {
                        return !((String) G).isEmpty();
                    }
                    if (G instanceof ByteString) {
                        return !ByteString.EMPTY.equals(G);
                    }
                    throw new IllegalArgumentException();
                case 9:
                    if (o2.G(t10, O) == null) {
                        return false;
                    }
                    return true;
                case 10:
                    return !ByteString.EMPTY.equals(o2.G(t10, O));
                case 11:
                    if (o2.C(t10, O) == 0) {
                        return false;
                    }
                    return true;
                case 12:
                    if (o2.C(t10, O) == 0) {
                        return false;
                    }
                    return true;
                case 13:
                    if (o2.C(t10, O) == 0) {
                        return false;
                    }
                    return true;
                case 14:
                    if (o2.E(t10, O) == 0) {
                        return false;
                    }
                    return true;
                case 15:
                    if (o2.C(t10, O) == 0) {
                        return false;
                    }
                    return true;
                case 16:
                    if (o2.E(t10, O) == 0) {
                        return false;
                    }
                    return true;
                case 17:
                    if (o2.G(t10, O) == null) {
                        return false;
                    }
                    return true;
                default:
                    throw new IllegalArgumentException();
            }
        }
        if ((o2.C(t10, j10) & (1 << (b02 >>> 20))) == 0) {
            return false;
        }
        return true;
    }

    private boolean w(T t10, int i10, int i11, int i12, int i13) {
        if (i11 == 1048575) {
            return v(t10, i10);
        }
        if ((i12 & i13) != 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean x(Object obj, int i10, q1 q1Var) {
        return q1Var.isInitialized(o2.G(obj, O(i10)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <N> boolean y(Object obj, int i10, int i11) {
        List list = (List) o2.G(obj, O(i10));
        if (list.isEmpty()) {
            return true;
        }
        q1 o10 = o(i11);
        for (int i12 = 0; i12 < list.size(); i12++) {
            if (!o10.isInitialized(list.get(i12))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v8, types: [com.explorestack.protobuf.q1] */
    private boolean z(T t10, int i10, int i11) {
        Map<?, ?> forMapData = this.f14289q.forMapData(o2.G(t10, O(i10)));
        if (forMapData.isEmpty()) {
            return true;
        }
        if (this.f14289q.forMapMetadata(n(i11)).f14662c.getJavaType() != WireFormat.JavaType.MESSAGE) {
            return true;
        }
        q1<T> q1Var = 0;
        for (Object obj : forMapData.values()) {
            if (q1Var == null) {
                q1Var = l1.a().d(obj.getClass());
            }
            boolean isInitialized = q1Var.isInitialized(obj);
            q1Var = q1Var;
            if (!isInitialized) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x033a, code lost:
        if (r0 != r5) goto L203;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x033c, code lost:
        r15 = r29;
        r14 = r30;
        r12 = r31;
        r13 = r33;
        r11 = r35;
        r3 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0356, code lost:
        r8 = r34;
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0389, code lost:
        if (r0 != r15) goto L203;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x03aa, code lost:
        if (r0 != r15) goto L203;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int W(T r30, byte[] r31, int r32, int r33, int r34, com.explorestack.protobuf.g.b r35) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1134
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.b1.W(java.lang.Object, byte[], int, int, int, com.explorestack.protobuf.g$b):int");
    }

    @Override // com.explorestack.protobuf.q1
    public void a(T t10, byte[] bArr, int i10, int i11, g.b bVar) throws IOException {
        if (this.f14280h) {
            X(t10, bArr, i10, i11, bVar);
        } else {
            W(t10, bArr, i10, i11, 0, bVar);
        }
    }

    @Override // com.explorestack.protobuf.q1
    public void b(T t10, Writer writer) throws IOException {
        if (writer.fieldOrder() == Writer.FieldOrder.DESCENDING) {
            p0(t10, writer);
        } else if (this.f14280h) {
            o0(t10, writer);
        } else {
            n0(t10, writer);
        }
    }

    @Override // com.explorestack.protobuf.q1
    public void c(T t10, o1 o1Var, y yVar) throws IOException {
        yVar.getClass();
        F(this.f14287o, this.f14288p, t10, o1Var, yVar);
    }

    @Override // com.explorestack.protobuf.q1
    public boolean equals(T t10, T t11) {
        int length = this.f14273a.length;
        for (int i10 = 0; i10 < length; i10 += 3) {
            if (!i(t10, t11, i10)) {
                return false;
            }
        }
        if (!this.f14287o.g(t10).equals(this.f14287o.g(t11))) {
            return false;
        }
        if (this.f14278f) {
            return this.f14288p.c(t10).equals(this.f14288p.c(t11));
        }
        return true;
    }

    @Override // com.explorestack.protobuf.q1
    public int getSerializedSize(T t10) {
        if (this.f14280h) {
            return r(t10);
        }
        return q(t10);
    }

    @Override // com.explorestack.protobuf.q1
    public int hashCode(T t10) {
        int i10;
        int i11;
        int length = this.f14273a.length;
        int i12 = 0;
        for (int i13 = 0; i13 < length; i13 += 3) {
            int m02 = m0(i13);
            int N = N(i13);
            long O = O(m02);
            int i14 = 37;
            switch (l0(m02)) {
                case 0:
                    i10 = i12 * 53;
                    i11 = i0.i(Double.doubleToLongBits(o2.A(t10, O)));
                    i12 = i10 + i11;
                    break;
                case 1:
                    i10 = i12 * 53;
                    i11 = Float.floatToIntBits(o2.B(t10, O));
                    i12 = i10 + i11;
                    break;
                case 2:
                    i10 = i12 * 53;
                    i11 = i0.i(o2.E(t10, O));
                    i12 = i10 + i11;
                    break;
                case 3:
                    i10 = i12 * 53;
                    i11 = i0.i(o2.E(t10, O));
                    i12 = i10 + i11;
                    break;
                case 4:
                    i10 = i12 * 53;
                    i11 = o2.C(t10, O);
                    i12 = i10 + i11;
                    break;
                case 5:
                    i10 = i12 * 53;
                    i11 = i0.i(o2.E(t10, O));
                    i12 = i10 + i11;
                    break;
                case 6:
                    i10 = i12 * 53;
                    i11 = o2.C(t10, O);
                    i12 = i10 + i11;
                    break;
                case 7:
                    i10 = i12 * 53;
                    i11 = i0.d(o2.t(t10, O));
                    i12 = i10 + i11;
                    break;
                case 8:
                    i10 = i12 * 53;
                    i11 = ((String) o2.G(t10, O)).hashCode();
                    i12 = i10 + i11;
                    break;
                case 9:
                    Object G = o2.G(t10, O);
                    if (G != null) {
                        i14 = G.hashCode();
                    }
                    i12 = (i12 * 53) + i14;
                    break;
                case 10:
                    i10 = i12 * 53;
                    i11 = o2.G(t10, O).hashCode();
                    i12 = i10 + i11;
                    break;
                case 11:
                    i10 = i12 * 53;
                    i11 = o2.C(t10, O);
                    i12 = i10 + i11;
                    break;
                case 12:
                    i10 = i12 * 53;
                    i11 = o2.C(t10, O);
                    i12 = i10 + i11;
                    break;
                case 13:
                    i10 = i12 * 53;
                    i11 = o2.C(t10, O);
                    i12 = i10 + i11;
                    break;
                case 14:
                    i10 = i12 * 53;
                    i11 = i0.i(o2.E(t10, O));
                    i12 = i10 + i11;
                    break;
                case 15:
                    i10 = i12 * 53;
                    i11 = o2.C(t10, O);
                    i12 = i10 + i11;
                    break;
                case 16:
                    i10 = i12 * 53;
                    i11 = i0.i(o2.E(t10, O));
                    i12 = i10 + i11;
                    break;
                case 17:
                    Object G2 = o2.G(t10, O);
                    if (G2 != null) {
                        i14 = G2.hashCode();
                    }
                    i12 = (i12 * 53) + i14;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i10 = i12 * 53;
                    i11 = o2.G(t10, O).hashCode();
                    i12 = i10 + i11;
                    break;
                case 50:
                    i10 = i12 * 53;
                    i11 = o2.G(t10, O).hashCode();
                    i12 = i10 + i11;
                    break;
                case 51:
                    if (B(t10, N, i13)) {
                        i10 = i12 * 53;
                        i11 = i0.i(Double.doubleToLongBits(Q(t10, O)));
                        i12 = i10 + i11;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (B(t10, N, i13)) {
                        i10 = i12 * 53;
                        i11 = Float.floatToIntBits(R(t10, O));
                        i12 = i10 + i11;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (B(t10, N, i13)) {
                        i10 = i12 * 53;
                        i11 = i0.i(T(t10, O));
                        i12 = i10 + i11;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (B(t10, N, i13)) {
                        i10 = i12 * 53;
                        i11 = i0.i(T(t10, O));
                        i12 = i10 + i11;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (B(t10, N, i13)) {
                        i10 = i12 * 53;
                        i11 = S(t10, O);
                        i12 = i10 + i11;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (B(t10, N, i13)) {
                        i10 = i12 * 53;
                        i11 = i0.i(T(t10, O));
                        i12 = i10 + i11;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (B(t10, N, i13)) {
                        i10 = i12 * 53;
                        i11 = S(t10, O);
                        i12 = i10 + i11;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (B(t10, N, i13)) {
                        i10 = i12 * 53;
                        i11 = i0.d(P(t10, O));
                        i12 = i10 + i11;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (B(t10, N, i13)) {
                        i10 = i12 * 53;
                        i11 = ((String) o2.G(t10, O)).hashCode();
                        i12 = i10 + i11;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (B(t10, N, i13)) {
                        i10 = i12 * 53;
                        i11 = o2.G(t10, O).hashCode();
                        i12 = i10 + i11;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (B(t10, N, i13)) {
                        i10 = i12 * 53;
                        i11 = o2.G(t10, O).hashCode();
                        i12 = i10 + i11;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (B(t10, N, i13)) {
                        i10 = i12 * 53;
                        i11 = S(t10, O);
                        i12 = i10 + i11;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (B(t10, N, i13)) {
                        i10 = i12 * 53;
                        i11 = S(t10, O);
                        i12 = i10 + i11;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (B(t10, N, i13)) {
                        i10 = i12 * 53;
                        i11 = S(t10, O);
                        i12 = i10 + i11;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (B(t10, N, i13)) {
                        i10 = i12 * 53;
                        i11 = i0.i(T(t10, O));
                        i12 = i10 + i11;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (B(t10, N, i13)) {
                        i10 = i12 * 53;
                        i11 = S(t10, O);
                        i12 = i10 + i11;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (B(t10, N, i13)) {
                        i10 = i12 * 53;
                        i11 = i0.i(T(t10, O));
                        i12 = i10 + i11;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (B(t10, N, i13)) {
                        i10 = i12 * 53;
                        i11 = o2.G(t10, O).hashCode();
                        i12 = i10 + i11;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i12 * 53) + this.f14287o.g(t10).hashCode();
        if (this.f14278f) {
            return (hashCode * 53) + this.f14288p.c(t10).hashCode();
        }
        return hashCode;
    }

    @Override // com.explorestack.protobuf.q1
    public final boolean isInitialized(T t10) {
        int i10;
        int i11;
        int i12 = 1048575;
        int i13 = 0;
        int i14 = 0;
        while (i14 < this.f14283k) {
            int i15 = this.f14282j[i14];
            int N = N(i15);
            int m02 = m0(i15);
            int i16 = this.f14273a[i15 + 2];
            int i17 = i16 & 1048575;
            int i18 = 1 << (i16 >>> 20);
            if (i17 != i12) {
                if (i17 != 1048575) {
                    i13 = f14272s.getInt(t10, i17);
                }
                i11 = i13;
                i10 = i17;
            } else {
                i10 = i12;
                i11 = i13;
            }
            if (C(m02) && !w(t10, i15, i10, i11, i18)) {
                return false;
            }
            int l02 = l0(m02);
            if (l02 != 9 && l02 != 17) {
                if (l02 != 27) {
                    if (l02 != 60 && l02 != 68) {
                        if (l02 != 49) {
                            if (l02 == 50 && !z(t10, m02, i15)) {
                                return false;
                            }
                        }
                    } else if (B(t10, N, i15) && !x(t10, m02, o(i15))) {
                        return false;
                    }
                }
                if (!y(t10, m02, i15)) {
                    return false;
                }
            } else if (w(t10, i15, i10, i11, i18) && !x(t10, m02, o(i15))) {
                return false;
            }
            i14++;
            i12 = i10;
            i13 = i11;
        }
        if (this.f14278f && !this.f14288p.c(t10).D()) {
            return false;
        }
        return true;
    }

    @Override // com.explorestack.protobuf.q1
    public void makeImmutable(T t10) {
        int i10;
        int i11 = this.f14283k;
        while (true) {
            i10 = this.f14284l;
            if (i11 >= i10) {
                break;
            }
            long O = O(m0(this.f14282j[i11]));
            Object G = o2.G(t10, O);
            if (G != null) {
                o2.X(t10, O, this.f14289q.toImmutable(G));
            }
            i11++;
        }
        int length = this.f14282j.length;
        while (i10 < length) {
            this.f14286n.c(t10, this.f14282j[i10]);
            i10++;
        }
        this.f14287o.j(t10);
        if (this.f14278f) {
            this.f14288p.f(t10);
        }
    }

    @Override // com.explorestack.protobuf.q1
    public void mergeFrom(T t10, T t11) {
        t11.getClass();
        for (int i10 = 0; i10 < this.f14273a.length; i10 += 3) {
            J(t10, t11, i10);
        }
        s1.H(this.f14287o, t10, t11);
        if (this.f14278f) {
            s1.F(this.f14288p, t10, t11);
        }
    }

    @Override // com.explorestack.protobuf.q1
    public T newInstance() {
        return (T) this.f14285m.newInstance(this.f14277e);
    }
}
