package com.explorestack.protobuf;

import com.explorestack.protobuf.e0;
import com.explorestack.protobuf.i0;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SchemaUtil.java */
/* loaded from: classes3.dex */
public final class s1 {

    /* renamed from: a  reason: collision with root package name */
    private static final Class<?> f14644a = B();

    /* renamed from: b  reason: collision with root package name */
    private static final i2<?, ?> f14645b = D(false);

    /* renamed from: c  reason: collision with root package name */
    private static final i2<?, ?> f14646c = D(true);

    /* renamed from: d  reason: collision with root package name */
    private static final i2<?, ?> f14647d = new l2();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <UT, UB> UB A(int i10, List<Integer> list, i0.e eVar, UB ub2, i2<UT, UB> i2Var) {
        if (eVar == null) {
            return ub2;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                Integer num = list.get(i12);
                int intValue = num.intValue();
                if (eVar.isInRange(intValue)) {
                    if (i12 != i11) {
                        list.set(i11, num);
                    }
                    i11++;
                } else {
                    ub2 = (UB) M(i10, intValue, ub2, i2Var);
                }
            }
            if (i11 != size) {
                list.subList(i11, size).clear();
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int intValue2 = it.next().intValue();
                if (!eVar.isInRange(intValue2)) {
                    ub2 = (UB) M(i10, intValue2, ub2, i2Var);
                    it.remove();
                }
            }
        }
        return ub2;
    }

    private static Class<?> B() {
        try {
            boolean z10 = GeneratedMessageV3.alwaysUseFieldBuilders;
            return GeneratedMessageV3.class;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object C(Class<?> cls, String str) {
        try {
            java.lang.reflect.Field[] declaredFields = Class.forName(cls.getName() + "$" + N(str, true) + "DefaultEntryHolder").getDeclaredFields();
            if (declaredFields.length == 1) {
                return o2.H(declaredFields[0]);
            }
            throw new IllegalStateException("Unable to look up map field default entry holder class for " + str + " in " + cls.getName());
        } catch (Throwable th2) {
            throw new RuntimeException(th2);
        }
    }

    private static i2<?, ?> D(boolean z10) {
        try {
            Class<?> E = E();
            if (E == null) {
                return null;
            }
            return (i2) E.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z10));
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Class<?> E() {
        return m2.class;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, FT extends e0.c<FT>> void F(z<FT> zVar, T t10, T t11) {
        e0<FT> c10 = zVar.c(t11);
        if (!c10.B()) {
            zVar.d(t10).I(c10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> void G(u0 u0Var, T t10, T t11, long j10) {
        o2.X(t10, j10, u0Var.mergeFrom(o2.G(t10, j10), o2.G(t11, j10)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, UT, UB> void H(i2<UT, UB> i2Var, T t10, T t11) {
        i2Var.p(t10, i2Var.k(i2Var.g(t10), i2Var.g(t11)));
    }

    public static i2<?, ?> I() {
        return f14645b;
    }

    public static i2<?, ?> J() {
        return f14646c;
    }

    public static void K(Class<?> cls) {
        Class<?> cls2;
        if (!GeneratedMessageLite.class.isAssignableFrom(cls) && (cls2 = f14644a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean L(Object obj, Object obj2) {
        if (obj != obj2 && (obj == null || !obj.equals(obj2))) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <UT, UB> UB M(int i10, int i11, UB ub2, i2<UT, UB> i2Var) {
        if (ub2 == null) {
            ub2 = i2Var.n();
        }
        i2Var.e(ub2, i10, i11);
        return ub2;
    }

    static String N(String str, boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < str.length(); i10++) {
            char charAt = str.charAt(i10);
            if ('a' <= charAt && charAt <= 'z') {
                if (z10) {
                    sb2.append((char) (charAt - ' '));
                } else {
                    sb2.append(charAt);
                }
            } else if ('A' <= charAt && charAt <= 'Z') {
                if (i10 == 0 && !z10) {
                    sb2.append((char) (charAt + ' '));
                } else {
                    sb2.append(charAt);
                }
            } else {
                if ('0' <= charAt && charAt <= '9') {
                    sb2.append(charAt);
                }
                z10 = true;
            }
            z10 = false;
        }
        return sb2.toString();
    }

    public static i2<?, ?> O() {
        return f14647d;
    }

    public static void P(int i10, List<Boolean> list, Writer writer, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeBoolList(i10, list, z10);
        }
    }

    public static void Q(int i10, List<ByteString> list, Writer writer) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeBytesList(i10, list);
        }
    }

    public static void R(int i10, List<Double> list, Writer writer, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeDoubleList(i10, list, z10);
        }
    }

    public static void S(int i10, List<Integer> list, Writer writer, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeEnumList(i10, list, z10);
        }
    }

    public static void T(int i10, List<Integer> list, Writer writer, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeFixed32List(i10, list, z10);
        }
    }

    public static void U(int i10, List<Long> list, Writer writer, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeFixed64List(i10, list, z10);
        }
    }

    public static void V(int i10, List<Float> list, Writer writer, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeFloatList(i10, list, z10);
        }
    }

    public static void W(int i10, List<?> list, Writer writer) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeGroupList(i10, list);
        }
    }

    public static void X(int i10, List<?> list, Writer writer, q1 q1Var) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.e(i10, list, q1Var);
        }
    }

    public static void Y(int i10, List<Integer> list, Writer writer, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeInt32List(i10, list, z10);
        }
    }

    public static void Z(int i10, List<Long> list, Writer writer, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeInt64List(i10, list, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i10, List<?> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (z10) {
            return CodedOutputStream.X(i10) + CodedOutputStream.E(size);
        }
        return size * CodedOutputStream.e(i10, true);
    }

    public static void a0(int i10, List<?> list, Writer writer) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeMessageList(i10, list);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(List<?> list) {
        return list.size();
    }

    public static void b0(int i10, List<?> list, Writer writer, q1 q1Var) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.d(i10, list, q1Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(int i10, List<ByteString> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int X = size * CodedOutputStream.X(i10);
        for (int i11 = 0; i11 < list.size(); i11++) {
            X += CodedOutputStream.i(list.get(i11));
        }
        return X;
    }

    public static void c0(int i10, List<Integer> list, Writer writer, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeSFixed32List(i10, list, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(int i10, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int e10 = e(list);
        if (z10) {
            return CodedOutputStream.X(i10) + CodedOutputStream.E(e10);
        }
        return e10 + (size * CodedOutputStream.X(i10));
    }

    public static void d0(int i10, List<Long> list, Writer writer, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeSFixed64List(i10, list, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e(List<Integer> list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof h0) {
            h0 h0Var = (h0) list;
            i10 = 0;
            while (i11 < size) {
                i10 += CodedOutputStream.m(h0Var.getInt(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += CodedOutputStream.m(list.get(i11).intValue());
                i11++;
            }
        }
        return i10;
    }

    public static void e0(int i10, List<Integer> list, Writer writer, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeSInt32List(i10, list, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int f(int i10, List<?> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (z10) {
            return CodedOutputStream.X(i10) + CodedOutputStream.E(size * 4);
        }
        return size * CodedOutputStream.n(i10, 0);
    }

    public static void f0(int i10, List<Long> list, Writer writer, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeSInt64List(i10, list, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int g(List<?> list) {
        return list.size() * 4;
    }

    public static void g0(int i10, List<String> list, Writer writer) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeStringList(i10, list);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h(int i10, List<?> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (z10) {
            return CodedOutputStream.X(i10) + CodedOutputStream.E(size * 8);
        }
        return size * CodedOutputStream.p(i10, 0L);
    }

    public static void h0(int i10, List<Integer> list, Writer writer, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeUInt32List(i10, list, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int i(List<?> list) {
        return list.size() * 8;
    }

    public static void i0(int i10, List<Long> list, Writer writer, boolean z10) throws IOException {
        if (list != null && !list.isEmpty()) {
            writer.writeUInt64List(i10, list, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int j(int i10, List<MessageLite> list, q1 q1Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < size; i12++) {
            i11 += CodedOutputStream.u(i10, list.get(i12), q1Var);
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int k(int i10, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int l10 = l(list);
        if (z10) {
            return CodedOutputStream.X(i10) + CodedOutputStream.E(l10);
        }
        return l10 + (size * CodedOutputStream.X(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int l(List<Integer> list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof h0) {
            h0 h0Var = (h0) list;
            i10 = 0;
            while (i11 < size) {
                i10 += CodedOutputStream.y(h0Var.getInt(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += CodedOutputStream.y(list.get(i11).intValue());
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int m(int i10, List<Long> list, boolean z10) {
        if (list.size() == 0) {
            return 0;
        }
        int n10 = n(list);
        if (z10) {
            return CodedOutputStream.X(i10) + CodedOutputStream.E(n10);
        }
        return n10 + (list.size() * CodedOutputStream.X(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int n(List<Long> list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof q0) {
            q0 q0Var = (q0) list;
            i10 = 0;
            while (i11 < size) {
                i10 += CodedOutputStream.A(q0Var.getLong(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += CodedOutputStream.A(list.get(i11).longValue());
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int o(int i10, Object obj, q1 q1Var) {
        if (obj instanceof l0) {
            return CodedOutputStream.C(i10, (l0) obj);
        }
        return CodedOutputStream.H(i10, (MessageLite) obj, q1Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int p(int i10, List<?> list, q1 q1Var) {
        int J;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int X = CodedOutputStream.X(i10) * size;
        for (int i11 = 0; i11 < size; i11++) {
            Object obj = list.get(i11);
            if (obj instanceof l0) {
                J = CodedOutputStream.D((l0) obj);
            } else {
                J = CodedOutputStream.J((MessageLite) obj, q1Var);
            }
            X += J;
        }
        return X;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int q(int i10, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int r10 = r(list);
        if (z10) {
            return CodedOutputStream.X(i10) + CodedOutputStream.E(r10);
        }
        return r10 + (size * CodedOutputStream.X(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int r(List<Integer> list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof h0) {
            h0 h0Var = (h0) list;
            i10 = 0;
            while (i11 < size) {
                i10 += CodedOutputStream.S(h0Var.getInt(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += CodedOutputStream.S(list.get(i11).intValue());
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int s(int i10, List<Long> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int t10 = t(list);
        if (z10) {
            return CodedOutputStream.X(i10) + CodedOutputStream.E(t10);
        }
        return t10 + (size * CodedOutputStream.X(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int t(List<Long> list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof q0) {
            q0 q0Var = (q0) list;
            i10 = 0;
            while (i11 < size) {
                i10 += CodedOutputStream.U(q0Var.getLong(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += CodedOutputStream.U(list.get(i11).longValue());
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int u(int i10, List<?> list) {
        int W;
        int W2;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        int X = CodedOutputStream.X(i10) * size;
        if (list instanceof n0) {
            n0 n0Var = (n0) list;
            while (i11 < size) {
                Object raw = n0Var.getRaw(i11);
                if (raw instanceof ByteString) {
                    W2 = CodedOutputStream.i((ByteString) raw);
                } else {
                    W2 = CodedOutputStream.W((String) raw);
                }
                X += W2;
                i11++;
            }
        } else {
            while (i11 < size) {
                Object obj = list.get(i11);
                if (obj instanceof ByteString) {
                    W = CodedOutputStream.i((ByteString) obj);
                } else {
                    W = CodedOutputStream.W((String) obj);
                }
                X += W;
                i11++;
            }
        }
        return X;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int v(int i10, List<Integer> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int w10 = w(list);
        if (z10) {
            return CodedOutputStream.X(i10) + CodedOutputStream.E(w10);
        }
        return w10 + (size * CodedOutputStream.X(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int w(List<Integer> list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof h0) {
            h0 h0Var = (h0) list;
            i10 = 0;
            while (i11 < size) {
                i10 += CodedOutputStream.Z(h0Var.getInt(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += CodedOutputStream.Z(list.get(i11).intValue());
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int x(int i10, List<Long> list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int y10 = y(list);
        if (z10) {
            return CodedOutputStream.X(i10) + CodedOutputStream.E(y10);
        }
        return y10 + (size * CodedOutputStream.X(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int y(List<Long> list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof q0) {
            q0 q0Var = (q0) list;
            i10 = 0;
            while (i11 < size) {
                i10 += CodedOutputStream.b0(q0Var.getLong(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += CodedOutputStream.b0(list.get(i11).longValue());
                i11++;
            }
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <UT, UB> UB z(int i10, List<Integer> list, i0.d<?> dVar, UB ub2, i2<UT, UB> i2Var) {
        if (dVar == null) {
            return ub2;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                Integer num = list.get(i12);
                int intValue = num.intValue();
                if (dVar.findValueByNumber(intValue) != null) {
                    if (i12 != i11) {
                        list.set(i11, num);
                    }
                    i11++;
                } else {
                    ub2 = (UB) M(i10, intValue, ub2, i2Var);
                }
            }
            if (i11 != size) {
                list.subList(i11, size).clear();
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int intValue2 = it.next().intValue();
                if (dVar.findValueByNumber(intValue2) == null) {
                    ub2 = (UB) M(i10, intValue2, ub2, i2Var);
                    it.remove();
                }
            }
        }
        return ub2;
    }
}
