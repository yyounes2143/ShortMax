package com.facebook.imageformat;

import com.facebook.imageformat.c;
import com.inmobi.commons.core.configs.AdConfig;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: DefaultImageFormatChecker.kt */
@Metadata
/* loaded from: classes3.dex */
public final class a implements c.b {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final byte[] f15584c;

    /* renamed from: d  reason: collision with root package name */
    private static final int f15585d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final byte[] f15586e;

    /* renamed from: f  reason: collision with root package name */
    private static final int f15587f;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private static final byte[] f15590i;

    /* renamed from: j  reason: collision with root package name */
    private static final int f15591j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private static final byte[] f15592k;

    /* renamed from: l  reason: collision with root package name */
    private static final int f15593l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private static final byte[] f15594m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private static final byte[][] f15595n;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private static final byte[] f15596o;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private static final byte[] f15597p;

    /* renamed from: q  reason: collision with root package name */
    private static final int f15598q;
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    private static final byte[] f15599r;
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    private static final byte[] f15600s;
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    private static final byte[] f15601t;

    /* renamed from: a  reason: collision with root package name */
    private final int f15602a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final C0264a f15583b = new C0264a(null);
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final byte[] f15588g = f.a("GIF87a");
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private static final byte[] f15589h = f.a("GIF89a");

    /* compiled from: DefaultImageFormatChecker.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nDefaultImageFormatChecker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultImageFormatChecker.kt\ncom/facebook/imageformat/DefaultImageFormatChecker$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,354:1\n12511#2,2:355\n*S KotlinDebug\n*F\n+ 1 DefaultImageFormatChecker.kt\ncom/facebook/imageformat/DefaultImageFormatChecker$Companion\n*L\n259#1:355,2\n*E\n"})
    /* renamed from: com.facebook.imageformat.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0264a {
        public /* synthetic */ C0264a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final int k(byte[] bArr) {
            if (bArr.length < 4) {
                return -1;
            }
            return (bArr[3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[0] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | ((bArr[1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((bArr[2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final c l(byte[] bArr, int i10) {
            if (s2.c.h(bArr, 0, i10)) {
                if (s2.c.g(bArr, 0)) {
                    return b.f15609g;
                }
                if (s2.c.f(bArr, 0)) {
                    return b.f15610h;
                }
                if (s2.c.c(bArr, 0, i10)) {
                    if (s2.c.b(bArr, 0)) {
                        return b.f15613k;
                    }
                    if (s2.c.d(bArr, 0)) {
                        return b.f15612j;
                    }
                    return b.f15611i;
                }
                return c.f15620d;
            }
            throw new IllegalStateException("Check failed.");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean m(byte[] bArr, int i10) {
            if (i10 < 12 || k(bArr) < 8 || !f.b(bArr, a.f15600s, 4)) {
                return false;
            }
            return f.b(bArr, a.f15601t, 8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean n(byte[] bArr, int i10) {
            if (i10 >= 4 && f.c(bArr, a.f15599r)) {
                return true;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean o(byte[] bArr, int i10) {
            if (i10 < a.f15590i.length) {
                return false;
            }
            return f.c(bArr, a.f15590i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean p(byte[] bArr, int i10) {
            if (i10 >= a.f15598q && (f.c(bArr, a.f15596o) || f.c(bArr, a.f15597p))) {
                return true;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean q(byte[] bArr, int i10) {
            if (i10 < 6) {
                return false;
            }
            if (!f.c(bArr, a.f15588g) && !f.c(bArr, a.f15589h)) {
                return false;
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean r(byte[] bArr, int i10) {
            if (i10 >= 12 && bArr[3] >= 8 && f.b(bArr, a.f15594m, 4)) {
                for (byte[] bArr2 : a.f15595n) {
                    if (f.b(bArr, bArr2, 8)) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean s(byte[] bArr, int i10) {
            if (i10 < a.f15592k.length) {
                return false;
            }
            return f.c(bArr, a.f15592k);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean t(byte[] bArr, int i10) {
            if (i10 >= a.f15584c.length && f.c(bArr, a.f15584c)) {
                return true;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean u(byte[] bArr, int i10) {
            if (i10 >= a.f15586e.length && f.c(bArr, a.f15586e)) {
                return true;
            }
            return false;
        }

        private C0264a() {
        }
    }

    static {
        byte[] bArr = {-1, -40, -1};
        f15584c = bArr;
        f15585d = bArr.length;
        byte[] bArr2 = {-119, 80, 78, 71, 13, 10, 26, 10};
        f15586e = bArr2;
        f15587f = bArr2.length;
        byte[] a10 = f.a("BM");
        f15590i = a10;
        f15591j = a10.length;
        byte[] bArr3 = {0, 0, 1, 0};
        f15592k = bArr3;
        f15593l = bArr3.length;
        f15594m = f.a("ftyp");
        f15595n = new byte[][]{f.a("heic"), f.a("heix"), f.a("hevc"), f.a("hevx"), f.a("mif1"), f.a("msf1")};
        byte[] bArr4 = {73, 73, 42, 0};
        f15596o = bArr4;
        f15597p = new byte[]{77, 77, 0, 42};
        f15598q = bArr4.length;
        f15599r = new byte[]{3, 0, 8, 0};
        f15600s = f.a("ftyp");
        f15601t = f.a("avif");
    }

    public a() {
        Comparable Z0 = n.Z0(new Integer[]{21, 20, Integer.valueOf(f15585d), Integer.valueOf(f15587f), 6, Integer.valueOf(f15591j), Integer.valueOf(f15593l), 12, 4, 12});
        if (Z0 != null) {
            this.f15602a = ((Number) Z0).intValue();
            return;
        }
        throw new IllegalStateException("Required value was null.");
    }

    @Override // com.facebook.imageformat.c.b
    @NotNull
    public c a(@NotNull byte[] headerBytes, int i10) {
        Intrinsics.checkNotNullParameter(headerBytes, "headerBytes");
        if (s2.c.h(headerBytes, 0, i10)) {
            return f15583b.l(headerBytes, i10);
        }
        C0264a c0264a = f15583b;
        if (c0264a.t(headerBytes, i10)) {
            return b.f15604b;
        }
        if (c0264a.u(headerBytes, i10)) {
            return b.f15605c;
        }
        if (c0264a.q(headerBytes, i10)) {
            return b.f15606d;
        }
        if (c0264a.o(headerBytes, i10)) {
            return b.f15607e;
        }
        if (c0264a.s(headerBytes, i10)) {
            return b.f15608f;
        }
        if (c0264a.m(headerBytes, i10)) {
            return b.f15617o;
        }
        if (c0264a.r(headerBytes, i10)) {
            return b.f15614l;
        }
        if (c0264a.n(headerBytes, i10)) {
            return b.f15616n;
        }
        if (c0264a.p(headerBytes, i10)) {
            return b.f15615m;
        }
        return c.f15620d;
    }

    @Override // com.facebook.imageformat.c.b
    public int b() {
        return this.f15602a;
    }
}
