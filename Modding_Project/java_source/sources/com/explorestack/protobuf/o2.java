package com.explorestack.protobuf;

import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UnsafeUtil.java */
/* loaded from: classes3.dex */
public final class o2 {

    /* renamed from: a  reason: collision with root package name */
    private static final Unsafe f14526a = I();

    /* renamed from: b  reason: collision with root package name */
    private static final Class<?> f14527b = com.explorestack.protobuf.d.b();

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f14528c = q(Long.TYPE);

    /* renamed from: d  reason: collision with root package name */
    private static final boolean f14529d = q(Integer.TYPE);

    /* renamed from: e  reason: collision with root package name */
    private static final e f14530e = F();

    /* renamed from: f  reason: collision with root package name */
    private static final boolean f14531f = Z();

    /* renamed from: g  reason: collision with root package name */
    private static final boolean f14532g = Y();

    /* renamed from: h  reason: collision with root package name */
    static final long f14533h;

    /* renamed from: i  reason: collision with root package name */
    private static final long f14534i;

    /* renamed from: j  reason: collision with root package name */
    private static final long f14535j;

    /* renamed from: k  reason: collision with root package name */
    private static final long f14536k;

    /* renamed from: l  reason: collision with root package name */
    private static final long f14537l;

    /* renamed from: m  reason: collision with root package name */
    private static final long f14538m;

    /* renamed from: n  reason: collision with root package name */
    private static final long f14539n;

    /* renamed from: o  reason: collision with root package name */
    private static final long f14540o;

    /* renamed from: p  reason: collision with root package name */
    private static final long f14541p;

    /* renamed from: q  reason: collision with root package name */
    private static final long f14542q;

    /* renamed from: r  reason: collision with root package name */
    private static final long f14543r;

    /* renamed from: s  reason: collision with root package name */
    private static final long f14544s;

    /* renamed from: t  reason: collision with root package name */
    private static final long f14545t;

    /* renamed from: u  reason: collision with root package name */
    private static final long f14546u;

    /* renamed from: v  reason: collision with root package name */
    private static final int f14547v;

    /* renamed from: w  reason: collision with root package name */
    static final boolean f14548w;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UnsafeUtil.java */
    /* loaded from: classes3.dex */
    public static class a implements PrivilegedExceptionAction<Unsafe> {
        a() {
        }

        @Override // java.security.PrivilegedExceptionAction
        /* renamed from: a */
        public Unsafe run() throws Exception {
            java.lang.reflect.Field[] declaredFields;
            for (java.lang.reflect.Field field : Unsafe.class.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(null);
                if (Unsafe.class.isInstance(obj)) {
                    return (Unsafe) Unsafe.class.cast(obj);
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: UnsafeUtil.java */
    /* loaded from: classes3.dex */
    public static final class b extends e {
        b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.explorestack.protobuf.o2.e
        public void c(long j10, byte[] bArr, long j11, long j12) {
            throw new UnsupportedOperationException();
        }

        @Override // com.explorestack.protobuf.o2.e
        public boolean d(Object obj, long j10) {
            return o2.f14548w ? o2.u(obj, j10) : o2.v(obj, j10);
        }

        @Override // com.explorestack.protobuf.o2.e
        public byte e(long j10) {
            throw new UnsupportedOperationException();
        }

        @Override // com.explorestack.protobuf.o2.e
        public byte f(Object obj, long j10) {
            return o2.f14548w ? o2.y(obj, j10) : o2.z(obj, j10);
        }

        @Override // com.explorestack.protobuf.o2.e
        public double g(Object obj, long j10) {
            return Double.longBitsToDouble(k(obj, j10));
        }

        @Override // com.explorestack.protobuf.o2.e
        public float h(Object obj, long j10) {
            return Float.intBitsToFloat(i(obj, j10));
        }

        @Override // com.explorestack.protobuf.o2.e
        public long j(long j10) {
            throw new UnsupportedOperationException();
        }

        @Override // com.explorestack.protobuf.o2.e
        public Object m(java.lang.reflect.Field field) {
            try {
                return field.get(null);
            } catch (IllegalAccessException unused) {
                return null;
            }
        }

        @Override // com.explorestack.protobuf.o2.e
        public void o(Object obj, long j10, boolean z10) {
            if (o2.f14548w) {
                o2.O(obj, j10, z10);
            } else {
                o2.P(obj, j10, z10);
            }
        }

        @Override // com.explorestack.protobuf.o2.e
        public void p(Object obj, long j10, byte b10) {
            if (o2.f14548w) {
                o2.R(obj, j10, b10);
            } else {
                o2.S(obj, j10, b10);
            }
        }

        @Override // com.explorestack.protobuf.o2.e
        public void q(Object obj, long j10, double d10) {
            t(obj, j10, Double.doubleToLongBits(d10));
        }

        @Override // com.explorestack.protobuf.o2.e
        public void r(Object obj, long j10, float f10) {
            s(obj, j10, Float.floatToIntBits(f10));
        }

        @Override // com.explorestack.protobuf.o2.e
        public boolean w() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: UnsafeUtil.java */
    /* loaded from: classes3.dex */
    public static final class c extends e {
        c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.explorestack.protobuf.o2.e
        public void c(long j10, byte[] bArr, long j11, long j12) {
            throw new UnsupportedOperationException();
        }

        @Override // com.explorestack.protobuf.o2.e
        public boolean d(Object obj, long j10) {
            return o2.f14548w ? o2.u(obj, j10) : o2.v(obj, j10);
        }

        @Override // com.explorestack.protobuf.o2.e
        public byte e(long j10) {
            throw new UnsupportedOperationException();
        }

        @Override // com.explorestack.protobuf.o2.e
        public byte f(Object obj, long j10) {
            return o2.f14548w ? o2.y(obj, j10) : o2.z(obj, j10);
        }

        @Override // com.explorestack.protobuf.o2.e
        public double g(Object obj, long j10) {
            return Double.longBitsToDouble(k(obj, j10));
        }

        @Override // com.explorestack.protobuf.o2.e
        public float h(Object obj, long j10) {
            return Float.intBitsToFloat(i(obj, j10));
        }

        @Override // com.explorestack.protobuf.o2.e
        public long j(long j10) {
            throw new UnsupportedOperationException();
        }

        @Override // com.explorestack.protobuf.o2.e
        public Object m(java.lang.reflect.Field field) {
            try {
                return field.get(null);
            } catch (IllegalAccessException unused) {
                return null;
            }
        }

        @Override // com.explorestack.protobuf.o2.e
        public void o(Object obj, long j10, boolean z10) {
            if (o2.f14548w) {
                o2.O(obj, j10, z10);
            } else {
                o2.P(obj, j10, z10);
            }
        }

        @Override // com.explorestack.protobuf.o2.e
        public void p(Object obj, long j10, byte b10) {
            if (o2.f14548w) {
                o2.R(obj, j10, b10);
            } else {
                o2.S(obj, j10, b10);
            }
        }

        @Override // com.explorestack.protobuf.o2.e
        public void q(Object obj, long j10, double d10) {
            t(obj, j10, Double.doubleToLongBits(d10));
        }

        @Override // com.explorestack.protobuf.o2.e
        public void r(Object obj, long j10, float f10) {
            s(obj, j10, Float.floatToIntBits(f10));
        }

        @Override // com.explorestack.protobuf.o2.e
        public boolean w() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: UnsafeUtil.java */
    /* loaded from: classes3.dex */
    public static final class d extends e {
        d(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.explorestack.protobuf.o2.e
        public void c(long j10, byte[] bArr, long j11, long j12) {
            this.f14549a.copyMemory((Object) null, j10, bArr, o2.f14533h + j11, j12);
        }

        @Override // com.explorestack.protobuf.o2.e
        public boolean d(Object obj, long j10) {
            return this.f14549a.getBoolean(obj, j10);
        }

        @Override // com.explorestack.protobuf.o2.e
        public byte e(long j10) {
            return this.f14549a.getByte(j10);
        }

        @Override // com.explorestack.protobuf.o2.e
        public byte f(Object obj, long j10) {
            return this.f14549a.getByte(obj, j10);
        }

        @Override // com.explorestack.protobuf.o2.e
        public double g(Object obj, long j10) {
            return this.f14549a.getDouble(obj, j10);
        }

        @Override // com.explorestack.protobuf.o2.e
        public float h(Object obj, long j10) {
            return this.f14549a.getFloat(obj, j10);
        }

        @Override // com.explorestack.protobuf.o2.e
        public long j(long j10) {
            return this.f14549a.getLong(j10);
        }

        @Override // com.explorestack.protobuf.o2.e
        public Object m(java.lang.reflect.Field field) {
            return l(this.f14549a.staticFieldBase(field), this.f14549a.staticFieldOffset(field));
        }

        @Override // com.explorestack.protobuf.o2.e
        public void o(Object obj, long j10, boolean z10) {
            this.f14549a.putBoolean(obj, j10, z10);
        }

        @Override // com.explorestack.protobuf.o2.e
        public void p(Object obj, long j10, byte b10) {
            this.f14549a.putByte(obj, j10, b10);
        }

        @Override // com.explorestack.protobuf.o2.e
        public void q(Object obj, long j10, double d10) {
            this.f14549a.putDouble(obj, j10, d10);
        }

        @Override // com.explorestack.protobuf.o2.e
        public void r(Object obj, long j10, float f10) {
            this.f14549a.putFloat(obj, j10, f10);
        }

        @Override // com.explorestack.protobuf.o2.e
        public boolean v() {
            if (!super.v()) {
                return false;
            }
            try {
                Class<?> cls = this.f14549a.getClass();
                Class cls2 = Long.TYPE;
                cls.getMethod("getByte", Object.class, cls2);
                cls.getMethod("putByte", Object.class, cls2, Byte.TYPE);
                cls.getMethod("getBoolean", Object.class, cls2);
                cls.getMethod("putBoolean", Object.class, cls2, Boolean.TYPE);
                cls.getMethod("getFloat", Object.class, cls2);
                cls.getMethod("putFloat", Object.class, cls2, Float.TYPE);
                cls.getMethod("getDouble", Object.class, cls2);
                cls.getMethod("putDouble", Object.class, cls2, Double.TYPE);
                return true;
            } catch (Throwable th2) {
                o2.L(th2);
                return false;
            }
        }

        @Override // com.explorestack.protobuf.o2.e
        public boolean w() {
            if (!super.w()) {
                return false;
            }
            try {
                Class<?> cls = this.f14549a.getClass();
                Class cls2 = Long.TYPE;
                cls.getMethod("getByte", cls2);
                cls.getMethod("putByte", cls2, Byte.TYPE);
                cls.getMethod("getInt", cls2);
                cls.getMethod("putInt", cls2, Integer.TYPE);
                cls.getMethod("getLong", cls2);
                cls.getMethod("putLong", cls2, cls2);
                cls.getMethod("copyMemory", cls2, cls2, cls2);
                cls.getMethod("copyMemory", Object.class, cls2, Object.class, cls2, cls2);
                return true;
            } catch (Throwable th2) {
                o2.L(th2);
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: UnsafeUtil.java */
    /* loaded from: classes3.dex */
    public static abstract class e {

        /* renamed from: a  reason: collision with root package name */
        Unsafe f14549a;

        e(Unsafe unsafe) {
            this.f14549a = unsafe;
        }

        public final int a(Class<?> cls) {
            return this.f14549a.arrayBaseOffset(cls);
        }

        public final int b(Class<?> cls) {
            return this.f14549a.arrayIndexScale(cls);
        }

        public abstract void c(long j10, byte[] bArr, long j11, long j12);

        public abstract boolean d(Object obj, long j10);

        public abstract byte e(long j10);

        public abstract byte f(Object obj, long j10);

        public abstract double g(Object obj, long j10);

        public abstract float h(Object obj, long j10);

        public final int i(Object obj, long j10) {
            return this.f14549a.getInt(obj, j10);
        }

        public abstract long j(long j10);

        public final long k(Object obj, long j10) {
            return this.f14549a.getLong(obj, j10);
        }

        public final Object l(Object obj, long j10) {
            return this.f14549a.getObject(obj, j10);
        }

        public abstract Object m(java.lang.reflect.Field field);

        public final long n(java.lang.reflect.Field field) {
            return this.f14549a.objectFieldOffset(field);
        }

        public abstract void o(Object obj, long j10, boolean z10);

        public abstract void p(Object obj, long j10, byte b10);

        public abstract void q(Object obj, long j10, double d10);

        public abstract void r(Object obj, long j10, float f10);

        public final void s(Object obj, long j10, int i10) {
            this.f14549a.putInt(obj, j10, i10);
        }

        public final void t(Object obj, long j10, long j11) {
            this.f14549a.putLong(obj, j10, j11);
        }

        public final void u(Object obj, long j10, Object obj2) {
            this.f14549a.putObject(obj, j10, obj2);
        }

        public boolean v() {
            Unsafe unsafe = this.f14549a;
            if (unsafe == null) {
                return false;
            }
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", java.lang.reflect.Field.class);
                cls.getMethod("arrayBaseOffset", Class.class);
                cls.getMethod("arrayIndexScale", Class.class);
                Class cls2 = Long.TYPE;
                cls.getMethod("getInt", Object.class, cls2);
                cls.getMethod("putInt", Object.class, cls2, Integer.TYPE);
                cls.getMethod("getLong", Object.class, cls2);
                cls.getMethod("putLong", Object.class, cls2, cls2);
                cls.getMethod("getObject", Object.class, cls2);
                cls.getMethod("putObject", Object.class, cls2, Object.class);
                return true;
            } catch (Throwable th2) {
                o2.L(th2);
                return false;
            }
        }

        public boolean w() {
            Unsafe unsafe = this.f14549a;
            if (unsafe == null) {
                return false;
            }
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", java.lang.reflect.Field.class);
                cls.getMethod("getLong", Object.class, Long.TYPE);
                if (o2.b() == null) {
                    return false;
                }
                return true;
            } catch (Throwable th2) {
                o2.L(th2);
                return false;
            }
        }
    }

    static {
        boolean z10;
        long m10 = m(byte[].class);
        f14533h = m10;
        f14534i = m(boolean[].class);
        f14535j = n(boolean[].class);
        f14536k = m(int[].class);
        f14537l = n(int[].class);
        f14538m = m(long[].class);
        f14539n = n(long[].class);
        f14540o = m(float[].class);
        f14541p = n(float[].class);
        f14542q = m(double[].class);
        f14543r = n(double[].class);
        f14544s = m(Object[].class);
        f14545t = n(Object[].class);
        f14546u = s(o());
        f14547v = (int) (m10 & 7);
        if (ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN) {
            z10 = true;
        } else {
            z10 = false;
        }
        f14548w = z10;
    }

    private o2() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double A(Object obj, long j10) {
        return f14530e.g(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float B(Object obj, long j10) {
        return f14530e.h(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int C(Object obj, long j10) {
        return f14530e.i(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long D(long j10) {
        return f14530e.j(j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long E(Object obj, long j10) {
        return f14530e.k(obj, j10);
    }

    private static e F() {
        Unsafe unsafe = f14526a;
        if (unsafe == null) {
            return null;
        }
        if (com.explorestack.protobuf.d.c()) {
            if (f14528c) {
                return new c(unsafe);
            }
            if (!f14529d) {
                return null;
            }
            return new b(unsafe);
        }
        return new d(unsafe);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object G(Object obj, long j10) {
        return f14530e.l(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object H(java.lang.reflect.Field field) {
        return f14530e.m(field);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Unsafe I() {
        try {
            return (Unsafe) AccessController.doPrivileged(new a());
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean J() {
        return f14532g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean K() {
        return f14531f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void L(Throwable th2) {
        Logger logger = Logger.getLogger(o2.class.getName());
        Level level = Level.WARNING;
        logger.log(level, "platform method missing - proto runtime falling back to safer methods: " + th2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long M(java.lang.reflect.Field field) {
        return f14530e.n(field);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void N(Object obj, long j10, boolean z10) {
        f14530e.o(obj, j10, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void O(Object obj, long j10, boolean z10) {
        R(obj, j10, z10 ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void P(Object obj, long j10, boolean z10) {
        S(obj, j10, z10 ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void Q(byte[] bArr, long j10, byte b10) {
        f14530e.p(bArr, f14533h + j10, b10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void R(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        int C = C(obj, j11);
        int i10 = ((~((int) j10)) & 3) << 3;
        V(obj, j11, ((255 & b10) << i10) | (C & (~(255 << i10))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void S(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        int i10 = (((int) j10) & 3) << 3;
        V(obj, j11, ((255 & b10) << i10) | (C(obj, j11) & (~(255 << i10))));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void T(Object obj, long j10, double d10) {
        f14530e.q(obj, j10, d10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void U(Object obj, long j10, float f10) {
        f14530e.r(obj, j10, f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void V(Object obj, long j10, int i10) {
        f14530e.s(obj, j10, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void W(Object obj, long j10, long j11) {
        f14530e.t(obj, j10, j11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void X(Object obj, long j10, Object obj2) {
        f14530e.u(obj, j10, obj2);
    }

    private static boolean Y() {
        e eVar = f14530e;
        if (eVar == null) {
            return false;
        }
        return eVar.v();
    }

    private static boolean Z() {
        e eVar = f14530e;
        if (eVar == null) {
            return false;
        }
        return eVar.w();
    }

    static /* synthetic */ java.lang.reflect.Field b() {
        return o();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long k(ByteBuffer byteBuffer) {
        return f14530e.k(byteBuffer, f14546u);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T l(Class<T> cls) {
        try {
            return (T) f14526a.allocateInstance(cls);
        } catch (InstantiationException e10) {
            throw new IllegalStateException(e10);
        }
    }

    private static int m(Class<?> cls) {
        if (f14532g) {
            return f14530e.a(cls);
        }
        return -1;
    }

    private static int n(Class<?> cls) {
        if (f14532g) {
            return f14530e.b(cls);
        }
        return -1;
    }

    private static java.lang.reflect.Field o() {
        java.lang.reflect.Field r10;
        if (com.explorestack.protobuf.d.c() && (r10 = r(Buffer.class, "effectiveDirectAddress")) != null) {
            return r10;
        }
        java.lang.reflect.Field r11 = r(Buffer.class, "address");
        if (r11 == null || r11.getType() != Long.TYPE) {
            return null;
        }
        return r11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void p(long j10, byte[] bArr, long j11, long j12) {
        f14530e.c(j10, bArr, j11, j12);
    }

    static boolean q(Class<?> cls) {
        if (!com.explorestack.protobuf.d.c()) {
            return false;
        }
        try {
            Class<?> cls2 = f14527b;
            Class cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static java.lang.reflect.Field r(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static long s(java.lang.reflect.Field field) {
        e eVar;
        if (field != null && (eVar = f14530e) != null) {
            return eVar.n(field);
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean t(Object obj, long j10) {
        return f14530e.d(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean u(Object obj, long j10) {
        if (y(obj, j10) != 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean v(Object obj, long j10) {
        if (z(obj, j10) != 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte w(long j10) {
        return f14530e.e(j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte x(byte[] bArr, long j10) {
        return f14530e.f(bArr, f14533h + j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte y(Object obj, long j10) {
        return (byte) ((C(obj, (-4) & j10) >>> ((int) (((~j10) & 3) << 3))) & 255);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte z(Object obj, long j10) {
        return (byte) ((C(obj, (-4) & j10) >>> ((int) ((j10 & 3) << 3))) & 255);
    }
}
