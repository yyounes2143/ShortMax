package com.explorestack.protobuf;

import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.List;
import java.util.RandomAccess;
/* compiled from: Internal.java */
/* loaded from: classes3.dex */
public final class i0 {

    /* renamed from: a  reason: collision with root package name */
    static final Charset f14402a = Charset.forName("UTF-8");

    /* renamed from: b  reason: collision with root package name */
    static final Charset f14403b = Charset.forName("ISO-8859-1");

    /* renamed from: c  reason: collision with root package name */
    public static final byte[] f14404c;

    /* renamed from: d  reason: collision with root package name */
    public static final ByteBuffer f14405d;

    /* renamed from: e  reason: collision with root package name */
    public static final n f14406e;

    /* compiled from: Internal.java */
    /* loaded from: classes3.dex */
    public interface a extends j<Boolean> {
        @Override // com.explorestack.protobuf.i0.j, com.explorestack.protobuf.i0.f
        j<Boolean> mutableCopyWithCapacity(int i10);
    }

    /* compiled from: Internal.java */
    /* loaded from: classes3.dex */
    public interface b extends j<Double> {
        void addDouble(double d10);

        double getDouble(int i10);

        @Override // com.explorestack.protobuf.i0.j, com.explorestack.protobuf.i0.f
        j<Double> mutableCopyWithCapacity(int i10);

        double setDouble(int i10, double d10);
    }

    /* compiled from: Internal.java */
    /* loaded from: classes3.dex */
    public interface c {
        int getNumber();
    }

    /* compiled from: Internal.java */
    /* loaded from: classes3.dex */
    public interface d<T extends c> {
        T findValueByNumber(int i10);
    }

    /* compiled from: Internal.java */
    /* loaded from: classes3.dex */
    public interface e {
        boolean isInRange(int i10);
    }

    /* compiled from: Internal.java */
    /* loaded from: classes3.dex */
    public interface f extends j<Float> {
        @Override // 
        j<Float> mutableCopyWithCapacity(int i10);
    }

    /* compiled from: Internal.java */
    /* loaded from: classes3.dex */
    public interface g extends j<Integer> {
        void addInt(int i10);

        int getInt(int i10);

        @Override // com.explorestack.protobuf.i0.j, com.explorestack.protobuf.i0.f
        j<Integer> mutableCopyWithCapacity(int i10);

        int setInt(int i10, int i11);
    }

    /* compiled from: Internal.java */
    /* loaded from: classes3.dex */
    public static class h<F, T> extends AbstractList<T> {

        /* renamed from: a  reason: collision with root package name */
        private final List<F> f14407a;

        /* renamed from: b  reason: collision with root package name */
        private final a<F, T> f14408b;

        /* compiled from: Internal.java */
        /* loaded from: classes3.dex */
        public interface a<F, T> {
            T convert(F f10);
        }

        public h(List<F> list, a<F, T> aVar) {
            this.f14407a = list;
            this.f14408b = aVar;
        }

        @Override // java.util.AbstractList, java.util.List
        public T get(int i10) {
            return this.f14408b.convert(this.f14407a.get(i10));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f14407a.size();
        }
    }

    /* compiled from: Internal.java */
    /* loaded from: classes3.dex */
    public interface i extends j<Long> {
        void addLong(long j10);

        long getLong(int i10);

        @Override // com.explorestack.protobuf.i0.j, com.explorestack.protobuf.i0.f
        j<Long> mutableCopyWithCapacity(int i10);

        long setLong(int i10, long j10);
    }

    /* compiled from: Internal.java */
    /* loaded from: classes3.dex */
    public interface j<E> extends List<E>, RandomAccess {
        boolean isModifiable();

        void makeImmutable();

        j<E> mutableCopyWithCapacity(int i10);
    }

    static {
        byte[] bArr = new byte[0];
        f14404c = bArr;
        f14405d = ByteBuffer.wrap(bArr);
        f14406e = n.l(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T a(T t10) {
        t10.getClass();
        return t10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T b(T t10, String str) {
        if (t10 != null) {
            return t10;
        }
        throw new NullPointerException(str);
    }

    public static <T extends MessageLite> T c(Class<T> cls) {
        try {
            Method method = cls.getMethod("getDefaultInstance", new Class[0]);
            return (T) method.invoke(method, new Object[0]);
        } catch (Exception e10) {
            throw new RuntimeException("Failed to get default instance for " + cls, e10);
        }
    }

    public static int d(boolean z10) {
        if (z10) {
            return 1231;
        }
        return 1237;
    }

    public static int e(byte[] bArr) {
        return f(bArr, 0, bArr.length);
    }

    static int f(byte[] bArr, int i10, int i11) {
        int l10 = l(i11, bArr, i10, i11);
        if (l10 == 0) {
            return 1;
        }
        return l10;
    }

    public static int g(c cVar) {
        return cVar.getNumber();
    }

    public static int h(List<? extends c> list) {
        int i10 = 1;
        for (c cVar : list) {
            i10 = (i10 * 31) + g(cVar);
        }
        return i10;
    }

    public static int i(long j10) {
        return (int) (j10 ^ (j10 >>> 32));
    }

    public static boolean j(byte[] bArr) {
        return Utf8.s(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object k(Object obj, Object obj2) {
        return ((MessageLite) obj).toBuilder().mergeFrom((MessageLite) obj2).buildPartial();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int l(int i10, byte[] bArr, int i11, int i12) {
        for (int i13 = i11; i13 < i11 + i12; i13++) {
            i10 = (i10 * 31) + bArr[i13];
        }
        return i10;
    }

    public static String m(byte[] bArr) {
        return new String(bArr, f14402a);
    }
}
