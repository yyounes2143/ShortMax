package com.explorestack.protobuf;

import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.WireFormat;
import com.explorestack.protobuf.e0.c;
import com.explorestack.protobuf.i0;
import com.explorestack.protobuf.k0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FieldSet.java */
/* loaded from: classes3.dex */
public final class e0<T extends c<T>> {

    /* renamed from: d  reason: collision with root package name */
    private static final e0 f14353d = new e0(true);

    /* renamed from: a  reason: collision with root package name */
    private final u1<T, Object> f14354a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f14355b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f14356c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FieldSet.java */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14357a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f14358b;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f14358b = iArr;
            try {
                iArr[WireFormat.FieldType.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14358b[WireFormat.FieldType.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14358b[WireFormat.FieldType.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14358b[WireFormat.FieldType.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f14358b[WireFormat.FieldType.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f14358b[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f14358b[WireFormat.FieldType.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f14358b[WireFormat.FieldType.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f14358b[WireFormat.FieldType.GROUP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f14358b[WireFormat.FieldType.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f14358b[WireFormat.FieldType.STRING.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f14358b[WireFormat.FieldType.BYTES.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f14358b[WireFormat.FieldType.UINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f14358b[WireFormat.FieldType.SFIXED32.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f14358b[WireFormat.FieldType.SFIXED64.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f14358b[WireFormat.FieldType.SINT32.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f14358b[WireFormat.FieldType.SINT64.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f14358b[WireFormat.FieldType.ENUM.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            int[] iArr2 = new int[WireFormat.JavaType.values().length];
            f14357a = iArr2;
            try {
                iArr2[WireFormat.JavaType.INT.ordinal()] = 1;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f14357a[WireFormat.JavaType.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f14357a[WireFormat.JavaType.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f14357a[WireFormat.JavaType.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f14357a[WireFormat.JavaType.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f14357a[WireFormat.JavaType.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f14357a[WireFormat.JavaType.BYTE_STRING.ordinal()] = 7;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f14357a[WireFormat.JavaType.ENUM.ordinal()] = 8;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f14357a[WireFormat.JavaType.MESSAGE.ordinal()] = 9;
            } catch (NoSuchFieldError unused27) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FieldSet.java */
    /* loaded from: classes3.dex */
    public static final class b<T extends c<T>> {

        /* renamed from: a  reason: collision with root package name */
        private u1<T, Object> f14359a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f14360b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f14361c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f14362d;

        /* synthetic */ b(a aVar) {
            this();
        }

        private void d() {
            if (!this.f14361c) {
                this.f14359a = e0.k(this.f14359a, true);
                this.f14361c = true;
            }
        }

        private void n(Map.Entry<T, Object> entry) {
            T key = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof k0) {
                value = ((k0) value).g();
            }
            if (key.isRepeated()) {
                Object f10 = f(key);
                if (f10 == null) {
                    f10 = new ArrayList();
                }
                for (Object obj : (List) value) {
                    ((List) f10).add(e0.m(obj));
                }
                this.f14359a.put(key, f10);
            } else if (key.getLiteJavaType() == WireFormat.JavaType.MESSAGE) {
                Object f11 = f(key);
                if (f11 == null) {
                    this.f14359a.put(key, e0.m(value));
                } else if (f11 instanceof MessageLite.Builder) {
                    key.internalMergeFrom((MessageLite.Builder) f11, (MessageLite) value);
                } else {
                    this.f14359a.put(key, key.internalMergeFrom(((MessageLite) f11).toBuilder(), (MessageLite) value).build());
                }
            } else {
                this.f14359a.put(key, e0.m(value));
            }
        }

        private static Object o(Object obj) {
            if (obj instanceof MessageLite.Builder) {
                return ((MessageLite.Builder) obj).build();
            }
            return obj;
        }

        private static <T extends c<T>> Object p(T t10, Object obj) {
            if (obj == null) {
                return obj;
            }
            if (t10.getLiteJavaType() == WireFormat.JavaType.MESSAGE) {
                if (t10.isRepeated()) {
                    if (obj instanceof List) {
                        List list = (List) obj;
                        for (int i10 = 0; i10 < list.size(); i10++) {
                            Object obj2 = list.get(i10);
                            Object o10 = o(obj2);
                            if (o10 != obj2) {
                                if (list == obj) {
                                    list = new ArrayList(list);
                                }
                                list.set(i10, o10);
                            }
                        }
                        return list;
                    }
                    throw new IllegalStateException("Repeated field should contains a List but actually contains type: " + obj.getClass());
                }
                return o(obj);
            }
            return obj;
        }

        private static <T extends c<T>> void q(u1<T, Object> u1Var) {
            for (int i10 = 0; i10 < u1Var.l(); i10++) {
                r(u1Var.k(i10));
            }
            for (Map.Entry<T, Object> entry : u1Var.n()) {
                r(entry);
            }
        }

        private static <T extends c<T>> void r(Map.Entry<T, Object> entry) {
            entry.setValue(p(entry.getKey(), entry.getValue()));
        }

        private void u(T t10, Object obj) {
            if (!e0.F(t10.getLiteType(), obj)) {
                if (t10.getLiteType().getJavaType() == WireFormat.JavaType.MESSAGE && (obj instanceof MessageLite.Builder)) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(t10.getNumber()), t10.getLiteType().getJavaType(), obj.getClass().getName()));
            }
        }

        public void a(T t10, Object obj) {
            boolean z10;
            List list;
            d();
            if (t10.isRepeated()) {
                if (!this.f14362d && !(obj instanceof MessageLite.Builder)) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                this.f14362d = z10;
                u(t10, obj);
                Object f10 = f(t10);
                if (f10 == null) {
                    list = new ArrayList();
                    this.f14359a.put(t10, list);
                } else {
                    list = (List) f10;
                }
                list.add(obj);
                return;
            }
            throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
        }

        public e0<T> b() {
            if (this.f14359a.isEmpty()) {
                return e0.r();
            }
            this.f14361c = false;
            u1<T, Object> u1Var = this.f14359a;
            if (this.f14362d) {
                u1Var = e0.k(u1Var, false);
                q(u1Var);
            }
            e0<T> e0Var = new e0<>(u1Var, null);
            ((e0) e0Var).f14356c = this.f14360b;
            return e0Var;
        }

        public void c(T t10) {
            d();
            this.f14359a.remove(t10);
            if (this.f14359a.isEmpty()) {
                this.f14360b = false;
            }
        }

        public Map<T, Object> e() {
            if (this.f14360b) {
                u1 k10 = e0.k(this.f14359a, false);
                if (this.f14359a.p()) {
                    k10.q();
                } else {
                    q(k10);
                }
                return k10;
            } else if (this.f14359a.p()) {
                return this.f14359a;
            } else {
                return Collections.unmodifiableMap(this.f14359a);
            }
        }

        public Object f(T t10) {
            return p(t10, g(t10));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Object g(T t10) {
            Object obj = this.f14359a.get(t10);
            if (obj instanceof k0) {
                return ((k0) obj).g();
            }
            return obj;
        }

        public Object h(T t10, int i10) {
            if (this.f14362d) {
                d();
            }
            return o(i(t10, i10));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Object i(T t10, int i10) {
            if (t10.isRepeated()) {
                Object g10 = g(t10);
                if (g10 != null) {
                    return ((List) g10).get(i10);
                }
                throw new IndexOutOfBoundsException();
            }
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }

        public int j(T t10) {
            if (t10.isRepeated()) {
                Object f10 = f(t10);
                if (f10 == null) {
                    return 0;
                }
                return ((List) f10).size();
            }
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }

        public boolean k(T t10) {
            if (!t10.isRepeated()) {
                if (this.f14359a.get(t10) != null) {
                    return true;
                }
                return false;
            }
            throw new IllegalArgumentException("hasField() can only be called on non-repeated fields.");
        }

        public boolean l() {
            for (int i10 = 0; i10 < this.f14359a.l(); i10++) {
                if (!e0.E(this.f14359a.k(i10))) {
                    return false;
                }
            }
            for (Map.Entry<T, Object> entry : this.f14359a.n()) {
                if (!e0.E(entry)) {
                    return false;
                }
            }
            return true;
        }

        public void m(e0<T> e0Var) {
            d();
            for (int i10 = 0; i10 < ((e0) e0Var).f14354a.l(); i10++) {
                n(((e0) e0Var).f14354a.k(i10));
            }
            for (Map.Entry<T, Object> entry : ((e0) e0Var).f14354a.n()) {
                n(entry);
            }
        }

        public void s(T t10, Object obj) {
            boolean z10;
            d();
            boolean z11 = false;
            if (t10.isRepeated()) {
                if (obj instanceof List) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll((List) obj);
                    for (Object obj2 : arrayList) {
                        u(t10, obj2);
                        if (!this.f14362d && !(obj2 instanceof MessageLite.Builder)) {
                            z10 = false;
                        } else {
                            z10 = true;
                        }
                        this.f14362d = z10;
                    }
                    obj = arrayList;
                } else {
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
            } else {
                u(t10, obj);
            }
            if (obj instanceof k0) {
                this.f14360b = true;
            }
            this.f14362d = (this.f14362d || (obj instanceof MessageLite.Builder)) ? true : true;
            this.f14359a.put(t10, obj);
        }

        public void t(T t10, int i10, Object obj) {
            boolean z10;
            d();
            if (t10.isRepeated()) {
                if (!this.f14362d && !(obj instanceof MessageLite.Builder)) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                this.f14362d = z10;
                Object f10 = f(t10);
                if (f10 != null) {
                    u(t10, obj);
                    ((List) f10).set(i10, obj);
                    return;
                }
                throw new IndexOutOfBoundsException();
            }
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }

        private b() {
            this(u1.r(16));
        }

        private b(u1<T, Object> u1Var) {
            this.f14359a = u1Var;
            this.f14361c = true;
        }
    }

    /* compiled from: FieldSet.java */
    /* loaded from: classes3.dex */
    public interface c<T extends c<T>> extends Comparable<T> {
        WireFormat.JavaType getLiteJavaType();

        WireFormat.FieldType getLiteType();

        int getNumber();

        MessageLite.Builder internalMergeFrom(MessageLite.Builder builder, MessageLite messageLite);

        boolean isPacked();

        boolean isRepeated();
    }

    /* synthetic */ e0(u1 u1Var, a aVar) {
        this(u1Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T extends c<T>> boolean E(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.getLiteJavaType() == WireFormat.JavaType.MESSAGE) {
            if (key.isRepeated()) {
                for (MessageLite messageLite : (List) entry.getValue()) {
                    if (!messageLite.isInitialized()) {
                        return false;
                    }
                }
            } else {
                Object value = entry.getValue();
                if (value instanceof MessageLite) {
                    if (!((MessageLite) value).isInitialized()) {
                        return false;
                    }
                } else if (value instanceof k0) {
                    return true;
                } else {
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean F(WireFormat.FieldType fieldType, Object obj) {
        i0.a(obj);
        switch (a.f14357a[fieldType.getJavaType().ordinal()]) {
            case 1:
                return obj instanceof Integer;
            case 2:
                return obj instanceof Long;
            case 3:
                return obj instanceof Float;
            case 4:
                return obj instanceof Double;
            case 5:
                return obj instanceof Boolean;
            case 6:
                return obj instanceof String;
            case 7:
                if ((obj instanceof ByteString) || (obj instanceof byte[])) {
                    return true;
                }
                return false;
            case 8:
                if ((obj instanceof Integer) || (obj instanceof i0.c)) {
                    return true;
                }
                return false;
            case 9:
                if ((obj instanceof MessageLite) || (obj instanceof k0)) {
                    return true;
                }
                return false;
            default:
                return false;
        }
    }

    private void J(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof k0) {
            value = ((k0) value).g();
        }
        if (key.isRepeated()) {
            Object t10 = t(key);
            if (t10 == null) {
                t10 = new ArrayList();
            }
            for (Object obj : (List) value) {
                ((List) t10).add(m(obj));
            }
            this.f14354a.put(key, t10);
        } else if (key.getLiteJavaType() == WireFormat.JavaType.MESSAGE) {
            Object t11 = t(key);
            if (t11 == null) {
                this.f14354a.put(key, m(value));
                return;
            }
            this.f14354a.put(key, key.internalMergeFrom(((MessageLite) t11).toBuilder(), (MessageLite) value).build());
        } else {
            this.f14354a.put(key, m(value));
        }
    }

    public static <T extends c<T>> b<T> K() {
        return new b<>((a) null);
    }

    public static <T extends c<T>> e0<T> L() {
        return new e0<>();
    }

    public static Object M(n nVar, WireFormat.FieldType fieldType, boolean z10) throws IOException {
        if (z10) {
            return WireFormat.d(nVar, fieldType, WireFormat.Utf8Validation.STRICT);
        }
        return WireFormat.d(nVar, fieldType, WireFormat.Utf8Validation.LOOSE);
    }

    private void P(T t10, Object obj) {
        if (F(t10.getLiteType(), obj)) {
            return;
        }
        throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(t10.getNumber()), t10.getLiteType().getJavaType(), obj.getClass().getName()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void Q(CodedOutputStream codedOutputStream, WireFormat.FieldType fieldType, int i10, Object obj) throws IOException {
        if (fieldType == WireFormat.FieldType.GROUP) {
            codedOutputStream.D0(i10, (MessageLite) obj);
            return;
        }
        codedOutputStream.b1(i10, z(fieldType, false));
        R(codedOutputStream, fieldType, obj);
    }

    static void R(CodedOutputStream codedOutputStream, WireFormat.FieldType fieldType, Object obj) throws IOException {
        switch (a.f14358b[fieldType.ordinal()]) {
            case 1:
                codedOutputStream.u0(((Double) obj).doubleValue());
                return;
            case 2:
                codedOutputStream.C0(((Float) obj).floatValue());
                return;
            case 3:
                codedOutputStream.K0(((Long) obj).longValue());
                return;
            case 4:
                codedOutputStream.f1(((Long) obj).longValue());
                return;
            case 5:
                codedOutputStream.I0(((Integer) obj).intValue());
                return;
            case 6:
                codedOutputStream.A0(((Long) obj).longValue());
                return;
            case 7:
                codedOutputStream.y0(((Integer) obj).intValue());
                return;
            case 8:
                codedOutputStream.o0(((Boolean) obj).booleanValue());
                return;
            case 9:
                codedOutputStream.F0((MessageLite) obj);
                return;
            case 10:
                codedOutputStream.N0((MessageLite) obj);
                return;
            case 11:
                if (obj instanceof ByteString) {
                    codedOutputStream.s0((ByteString) obj);
                    return;
                } else {
                    codedOutputStream.a1((String) obj);
                    return;
                }
            case 12:
                if (obj instanceof ByteString) {
                    codedOutputStream.s0((ByteString) obj);
                    return;
                } else {
                    codedOutputStream.p0((byte[]) obj);
                    return;
                }
            case 13:
                codedOutputStream.d1(((Integer) obj).intValue());
                return;
            case 14:
                codedOutputStream.S0(((Integer) obj).intValue());
                return;
            case 15:
                codedOutputStream.U0(((Long) obj).longValue());
                return;
            case 16:
                codedOutputStream.W0(((Integer) obj).intValue());
                return;
            case 17:
                codedOutputStream.Y0(((Long) obj).longValue());
                return;
            case 18:
                if (obj instanceof i0.c) {
                    codedOutputStream.w0(((i0.c) obj).getNumber());
                    return;
                } else {
                    codedOutputStream.w0(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }

    public static void S(c<?> cVar, Object obj, CodedOutputStream codedOutputStream) throws IOException {
        WireFormat.FieldType liteType = cVar.getLiteType();
        int number = cVar.getNumber();
        if (cVar.isRepeated()) {
            List<Object> list = (List) obj;
            if (cVar.isPacked()) {
                codedOutputStream.b1(number, 2);
                int i10 = 0;
                for (Object obj2 : list) {
                    i10 += o(liteType, obj2);
                }
                codedOutputStream.Q0(i10);
                for (Object obj3 : list) {
                    R(codedOutputStream, liteType, obj3);
                }
                return;
            }
            for (Object obj4 : list) {
                Q(codedOutputStream, liteType, number, obj4);
            }
        } else if (obj instanceof k0) {
            Q(codedOutputStream, liteType, number, ((k0) obj).g());
        } else {
            Q(codedOutputStream, liteType, number, obj);
        }
    }

    private void U(Map.Entry<T, Object> entry, CodedOutputStream codedOutputStream) throws IOException {
        T key = entry.getKey();
        if (key.getLiteJavaType() == WireFormat.JavaType.MESSAGE && !key.isRepeated() && !key.isPacked()) {
            Object value = entry.getValue();
            if (value instanceof k0) {
                value = ((k0) value).g();
            }
            codedOutputStream.O0(entry.getKey().getNumber(), (MessageLite) value);
            return;
        }
        S(key, entry.getValue(), codedOutputStream);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T extends c<T>> u1<T, Object> k(u1<T, Object> u1Var, boolean z10) {
        u1<T, Object> r10 = u1.r(16);
        for (int i10 = 0; i10 < u1Var.l(); i10++) {
            l(r10, u1Var.k(i10), z10);
        }
        for (Map.Entry<T, Object> entry : u1Var.n()) {
            l(r10, entry, z10);
        }
        return r10;
    }

    private static <T extends c<T>> void l(Map<T, Object> map, Map.Entry<T, Object> entry, boolean z10) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof k0) {
            map.put(key, ((k0) value).g());
        } else if (z10 && (value instanceof List)) {
            map.put(key, new ArrayList((List) value));
        } else {
            map.put(key, value);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object m(Object obj) {
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            byte[] bArr2 = new byte[bArr.length];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            return bArr2;
        }
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int n(WireFormat.FieldType fieldType, int i10, Object obj) {
        int X = CodedOutputStream.X(i10);
        if (fieldType == WireFormat.FieldType.GROUP) {
            X *= 2;
        }
        return X + o(fieldType, obj);
    }

    static int o(WireFormat.FieldType fieldType, Object obj) {
        switch (a.f14358b[fieldType.ordinal()]) {
            case 1:
                return CodedOutputStream.k(((Double) obj).doubleValue());
            case 2:
                return CodedOutputStream.s(((Float) obj).floatValue());
            case 3:
                return CodedOutputStream.A(((Long) obj).longValue());
            case 4:
                return CodedOutputStream.b0(((Long) obj).longValue());
            case 5:
                return CodedOutputStream.y(((Integer) obj).intValue());
            case 6:
                return CodedOutputStream.q(((Long) obj).longValue());
            case 7:
                return CodedOutputStream.o(((Integer) obj).intValue());
            case 8:
                return CodedOutputStream.f(((Boolean) obj).booleanValue());
            case 9:
                return CodedOutputStream.v((MessageLite) obj);
            case 10:
                if (obj instanceof k0) {
                    return CodedOutputStream.D((k0) obj);
                }
                return CodedOutputStream.I((MessageLite) obj);
            case 11:
                if (obj instanceof ByteString) {
                    return CodedOutputStream.i((ByteString) obj);
                }
                return CodedOutputStream.W((String) obj);
            case 12:
                if (obj instanceof ByteString) {
                    return CodedOutputStream.i((ByteString) obj);
                }
                return CodedOutputStream.g((byte[]) obj);
            case 13:
                return CodedOutputStream.Z(((Integer) obj).intValue());
            case 14:
                return CodedOutputStream.O(((Integer) obj).intValue());
            case 15:
                return CodedOutputStream.Q(((Long) obj).longValue());
            case 16:
                return CodedOutputStream.S(((Integer) obj).intValue());
            case 17:
                return CodedOutputStream.U(((Long) obj).longValue());
            case 18:
                if (obj instanceof i0.c) {
                    return CodedOutputStream.m(((i0.c) obj).getNumber());
                }
                return CodedOutputStream.m(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static int p(c<?> cVar, Object obj) {
        WireFormat.FieldType liteType = cVar.getLiteType();
        int number = cVar.getNumber();
        if (cVar.isRepeated()) {
            int i10 = 0;
            if (cVar.isPacked()) {
                for (Object obj2 : (List) obj) {
                    i10 += o(liteType, obj2);
                }
                return CodedOutputStream.X(number) + i10 + CodedOutputStream.M(i10);
            }
            for (Object obj3 : (List) obj) {
                i10 += n(liteType, number, obj3);
            }
            return i10;
        }
        return n(liteType, number, obj);
    }

    public static <T extends c<T>> e0<T> r() {
        return f14353d;
    }

    private int v(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (key.getLiteJavaType() == WireFormat.JavaType.MESSAGE && !key.isRepeated() && !key.isPacked()) {
            if (value instanceof k0) {
                return CodedOutputStream.B(entry.getKey().getNumber(), (k0) value);
            }
            return CodedOutputStream.F(entry.getKey().getNumber(), (MessageLite) value);
        }
        return p(key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int z(WireFormat.FieldType fieldType, boolean z10) {
        if (z10) {
            return 2;
        }
        return fieldType.getWireType();
    }

    public boolean A(T t10) {
        if (!t10.isRepeated()) {
            if (this.f14354a.get(t10) != null) {
                return true;
            }
            return false;
        }
        throw new IllegalArgumentException("hasField() can only be called on non-repeated fields.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean B() {
        return this.f14354a.isEmpty();
    }

    public boolean C() {
        return this.f14355b;
    }

    public boolean D() {
        for (int i10 = 0; i10 < this.f14354a.l(); i10++) {
            if (!E(this.f14354a.k(i10))) {
                return false;
            }
        }
        for (Map.Entry<T, Object> entry : this.f14354a.n()) {
            if (!E(entry)) {
                return false;
            }
        }
        return true;
    }

    public Iterator<Map.Entry<T, Object>> G() {
        if (this.f14356c) {
            return new k0.c(this.f14354a.entrySet().iterator());
        }
        return this.f14354a.entrySet().iterator();
    }

    public void H() {
        if (this.f14355b) {
            return;
        }
        this.f14354a.q();
        this.f14355b = true;
    }

    public void I(e0<T> e0Var) {
        for (int i10 = 0; i10 < e0Var.f14354a.l(); i10++) {
            J(e0Var.f14354a.k(i10));
        }
        for (Map.Entry<T, Object> entry : e0Var.f14354a.n()) {
            J(entry);
        }
    }

    public void N(T t10, Object obj) {
        if (t10.isRepeated()) {
            if (obj instanceof List) {
                ArrayList<Object> arrayList = new ArrayList();
                arrayList.addAll((List) obj);
                for (Object obj2 : arrayList) {
                    P(t10, obj2);
                }
                obj = arrayList;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        } else {
            P(t10, obj);
        }
        if (obj instanceof k0) {
            this.f14356c = true;
        }
        this.f14354a.put(t10, obj);
    }

    public void O(T t10, int i10, Object obj) {
        if (t10.isRepeated()) {
            Object t11 = t(t10);
            if (t11 != null) {
                P(t10, obj);
                ((List) t11).set(i10, obj);
                return;
            }
            throw new IndexOutOfBoundsException();
        }
        throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
    }

    public void T(CodedOutputStream codedOutputStream) throws IOException {
        for (int i10 = 0; i10 < this.f14354a.l(); i10++) {
            U(this.f14354a.k(i10), codedOutputStream);
        }
        for (Map.Entry<T, Object> entry : this.f14354a.n()) {
            U(entry, codedOutputStream);
        }
    }

    public void V(CodedOutputStream codedOutputStream) throws IOException {
        for (int i10 = 0; i10 < this.f14354a.l(); i10++) {
            Map.Entry<T, Object> k10 = this.f14354a.k(i10);
            S(k10.getKey(), k10.getValue(), codedOutputStream);
        }
        for (Map.Entry<T, Object> entry : this.f14354a.n()) {
            S(entry.getKey(), entry.getValue(), codedOutputStream);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e0)) {
            return false;
        }
        return this.f14354a.equals(((e0) obj).f14354a);
    }

    public void g(T t10, Object obj) {
        List list;
        if (t10.isRepeated()) {
            P(t10, obj);
            Object t11 = t(t10);
            if (t11 == null) {
                list = new ArrayList();
                this.f14354a.put(t10, list);
            } else {
                list = (List) t11;
            }
            list.add(obj);
            return;
        }
        throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
    }

    public void h() {
        this.f14354a.clear();
        this.f14356c = false;
    }

    public int hashCode() {
        return this.f14354a.hashCode();
    }

    public void i(T t10) {
        this.f14354a.remove(t10);
        if (this.f14354a.isEmpty()) {
            this.f14356c = false;
        }
    }

    /* renamed from: j */
    public e0<T> clone() {
        e0<T> L = L();
        for (int i10 = 0; i10 < this.f14354a.l(); i10++) {
            Map.Entry<T, Object> k10 = this.f14354a.k(i10);
            L.N(k10.getKey(), k10.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f14354a.n()) {
            L.N(entry.getKey(), entry.getValue());
        }
        L.f14356c = this.f14356c;
        return L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Iterator<Map.Entry<T, Object>> q() {
        if (this.f14356c) {
            return new k0.c(this.f14354a.i().iterator());
        }
        return this.f14354a.i().iterator();
    }

    public Map<T, Object> s() {
        if (this.f14356c) {
            u1 k10 = k(this.f14354a, false);
            if (this.f14354a.p()) {
                k10.q();
            }
            return k10;
        } else if (this.f14354a.p()) {
            return this.f14354a;
        } else {
            return Collections.unmodifiableMap(this.f14354a);
        }
    }

    public Object t(T t10) {
        Object obj = this.f14354a.get(t10);
        if (obj instanceof k0) {
            return ((k0) obj).g();
        }
        return obj;
    }

    public int u() {
        int i10 = 0;
        for (int i11 = 0; i11 < this.f14354a.l(); i11++) {
            i10 += v(this.f14354a.k(i11));
        }
        for (Map.Entry<T, Object> entry : this.f14354a.n()) {
            i10 += v(entry);
        }
        return i10;
    }

    public Object w(T t10, int i10) {
        if (t10.isRepeated()) {
            Object t11 = t(t10);
            if (t11 != null) {
                return ((List) t11).get(i10);
            }
            throw new IndexOutOfBoundsException();
        }
        throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
    }

    public int x(T t10) {
        if (t10.isRepeated()) {
            Object t11 = t(t10);
            if (t11 == null) {
                return 0;
            }
            return ((List) t11).size();
        }
        throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
    }

    public int y() {
        int i10 = 0;
        for (int i11 = 0; i11 < this.f14354a.l(); i11++) {
            Map.Entry<T, Object> k10 = this.f14354a.k(i11);
            i10 += p(k10.getKey(), k10.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f14354a.n()) {
            i10 += p(entry.getKey(), entry.getValue());
        }
        return i10;
    }

    private e0() {
        this.f14354a = u1.r(16);
    }

    private e0(boolean z10) {
        this(u1.r(0));
        H();
    }

    private e0(u1<T, Object> u1Var) {
        this.f14354a = u1Var;
        H();
    }
}
