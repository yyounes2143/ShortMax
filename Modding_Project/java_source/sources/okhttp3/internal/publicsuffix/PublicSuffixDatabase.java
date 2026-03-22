package okhttp3.internal.publicsuffix;

import androidx.webkit.ProxyConfig;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.sequences.j;
import kotlin.text.StringsKt;
import okhttp3.internal.Util;
import okhttp3.internal.platform.Platform;
import okio.BufferedSource;
import okio.GzipSource;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ws.b;
/* compiled from: PublicSuffixDatabase.kt */
@Metadata
/* loaded from: classes8.dex */
public final class PublicSuffixDatabase {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final Companion f64161e = new Companion(null);
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final byte[] f64162f = {42};
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final List<String> f64163g = CollectionsKt.e(ProxyConfig.MATCH_ALL_SCHEMES);
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private static final PublicSuffixDatabase f64164h = new PublicSuffixDatabase();
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final AtomicBoolean f64165a = new AtomicBoolean(false);
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final CountDownLatch f64166b = new CountDownLatch(1);

    /* renamed from: c  reason: collision with root package name */
    private byte[] f64167c;

    /* renamed from: d  reason: collision with root package name */
    private byte[] f64168d;

    /* compiled from: PublicSuffixDatabase.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String b(byte[] bArr, byte[][] bArr2, int i10) {
            int i11;
            int d10;
            boolean z10;
            int d11;
            int length = bArr.length;
            int i12 = 0;
            while (i12 < length) {
                int i13 = (i12 + length) / 2;
                while (i13 > -1 && bArr[i13] != 10) {
                    i13--;
                }
                int i14 = i13 + 1;
                int i15 = 1;
                while (true) {
                    i11 = i14 + i15;
                    if (bArr[i11] == 10) {
                        break;
                    }
                    i15++;
                }
                int i16 = i11 - i14;
                int i17 = i10;
                boolean z11 = false;
                int i18 = 0;
                int i19 = 0;
                while (true) {
                    if (z11) {
                        d10 = 46;
                        z10 = false;
                    } else {
                        boolean z12 = z11;
                        d10 = Util.d(bArr2[i17][i18], 255);
                        z10 = z12;
                    }
                    d11 = d10 - Util.d(bArr[i14 + i19], 255);
                    if (d11 != 0) {
                        break;
                    }
                    i19++;
                    i18++;
                    if (i19 == i16) {
                        break;
                    } else if (bArr2[i17].length == i18) {
                        if (i17 == bArr2.length - 1) {
                            break;
                        }
                        i17++;
                        z11 = true;
                        i18 = -1;
                    } else {
                        z11 = z10;
                    }
                }
                if (d11 >= 0) {
                    if (d11 <= 0) {
                        int i20 = i16 - i19;
                        int length2 = bArr2[i17].length - i18;
                        int length3 = bArr2.length;
                        for (int i21 = i17 + 1; i21 < length3; i21++) {
                            length2 += bArr2[i21].length;
                        }
                        if (length2 >= i20) {
                            if (length2 <= i20) {
                                Charset UTF_8 = StandardCharsets.UTF_8;
                                Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
                                return new String(bArr, i14, i16, UTF_8);
                            }
                        }
                    }
                    i12 = i11 + 1;
                }
                length = i13;
            }
            return null;
        }

        @NotNull
        public final PublicSuffixDatabase c() {
            return PublicSuffixDatabase.f64164h;
        }

        private Companion() {
        }
    }

    private final List<String> b(List<String> list) {
        String str;
        String str2;
        String str3;
        List<String> n10;
        List<String> n11;
        if (!this.f64165a.get() && this.f64165a.compareAndSet(false, true)) {
            e();
        } else {
            try {
                this.f64166b.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
        if (this.f64167c != null) {
            int size = list.size();
            byte[][] bArr = new byte[size];
            for (int i10 = 0; i10 < size; i10++) {
                Charset UTF_8 = StandardCharsets.UTF_8;
                Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
                byte[] bytes = list.get(i10).getBytes(UTF_8);
                Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
                bArr[i10] = bytes;
            }
            int i11 = 0;
            while (true) {
                str = null;
                if (i11 < size) {
                    Companion companion = f64161e;
                    byte[] bArr2 = this.f64167c;
                    if (bArr2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("publicSuffixListBytes");
                        bArr2 = null;
                    }
                    str2 = companion.b(bArr2, bArr, i11);
                    if (str2 != null) {
                        break;
                    }
                    i11++;
                } else {
                    str2 = null;
                    break;
                }
            }
            if (size > 1) {
                byte[][] bArr3 = (byte[][]) bArr.clone();
                int length = bArr3.length - 1;
                for (int i12 = 0; i12 < length; i12++) {
                    bArr3[i12] = f64162f;
                    Companion companion2 = f64161e;
                    byte[] bArr4 = this.f64167c;
                    if (bArr4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("publicSuffixListBytes");
                        bArr4 = null;
                    }
                    String b10 = companion2.b(bArr4, bArr3, i12);
                    if (b10 != null) {
                        str3 = b10;
                        break;
                    }
                }
            }
            str3 = null;
            if (str3 != null) {
                int i13 = size - 1;
                int i14 = 0;
                while (true) {
                    if (i14 >= i13) {
                        break;
                    }
                    Companion companion3 = f64161e;
                    byte[] bArr5 = this.f64168d;
                    if (bArr5 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("publicSuffixExceptionListBytes");
                        bArr5 = null;
                    }
                    String b11 = companion3.b(bArr5, bArr, i14);
                    if (b11 != null) {
                        str = b11;
                        break;
                    }
                    i14++;
                }
            }
            if (str != null) {
                return StringsKt.Y0('!' + str, new char[]{'.'}, false, 0, 6, null);
            } else if (str2 == null && str3 == null) {
                return f64163g;
            } else {
                if (str2 == null || (n10 = StringsKt.Y0(str2, new char[]{'.'}, false, 0, 6, null)) == null) {
                    n10 = CollectionsKt.n();
                }
                if (str3 == null || (n11 = StringsKt.Y0(str3, new char[]{'.'}, false, 0, 6, null)) == null) {
                    n11 = CollectionsKt.n();
                }
                if (n10.size() <= n11.size()) {
                    return n11;
                }
                return n10;
            }
        }
        throw new IllegalStateException("Unable to load publicsuffixes.gz resource from the classpath.");
    }

    /* JADX WARN: Type inference failed for: r3v4, types: [byte[], T] */
    /* JADX WARN: Type inference failed for: r3v7, types: [byte[], T] */
    private final void d() throws IOException {
        try {
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream(com.applovin.shadow.okhttp3.internal.publicsuffix.PublicSuffixDatabase.PUBLIC_SUFFIX_RESOURCE);
            if (resourceAsStream == null) {
                return;
            }
            BufferedSource buffer = Okio.buffer(new GzipSource(Okio.source(resourceAsStream)));
            objectRef.element = buffer.readByteArray(buffer.readInt());
            objectRef2.element = buffer.readByteArray(buffer.readInt());
            Unit unit = Unit.f60915a;
            b.a(buffer, null);
            synchronized (this) {
                T t10 = objectRef.element;
                Intrinsics.checkNotNull(t10);
                this.f64167c = (byte[]) t10;
                T t11 = objectRef2.element;
                Intrinsics.checkNotNull(t11);
                this.f64168d = (byte[]) t11;
            }
        } finally {
            this.f64166b.countDown();
        }
    }

    private final void e() {
        boolean z10 = false;
        while (true) {
            try {
                try {
                    d();
                    break;
                } catch (InterruptedIOException unused) {
                    Thread.interrupted();
                    z10 = true;
                } catch (IOException e10) {
                    Platform.f64128a.g().k("Failed to read public suffix list", 5, e10);
                    if (z10) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                    return;
                }
            } catch (Throwable th2) {
                if (z10) {
                    Thread.currentThread().interrupt();
                }
                throw th2;
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
    }

    private final List<String> f(String str) {
        List<String> Y0 = StringsKt.Y0(str, new char[]{'.'}, false, 0, 6, null);
        if (Intrinsics.areEqual(CollectionsKt.C0(Y0), "")) {
            return CollectionsKt.k0(Y0, 1);
        }
        return Y0;
    }

    @Nullable
    public final String c(@NotNull String domain) {
        int size;
        int size2;
        Intrinsics.checkNotNullParameter(domain, "domain");
        String unicodeDomain = IDN.toUnicode(domain);
        Intrinsics.checkNotNullExpressionValue(unicodeDomain, "unicodeDomain");
        List<String> f10 = f(unicodeDomain);
        List<String> b10 = b(f10);
        if (f10.size() == b10.size() && b10.get(0).charAt(0) != '!') {
            return null;
        }
        if (b10.get(0).charAt(0) == '!') {
            size = f10.size();
            size2 = b10.size();
        } else {
            size = f10.size();
            size2 = b10.size() + 1;
        }
        return j.D(j.s(CollectionsKt.e0(f(domain)), size - size2), ".", null, null, 0, null, null, 62, null);
    }
}
