package com.applovin.shadow.okhttp3.internal.publicsuffix;

import androidx.webkit.ProxyConfig;
import com.applovin.shadow.okhttp3.internal.Util;
import com.applovin.shadow.okhttp3.internal.platform.Platform;
import com.applovin.shadow.okio.BufferedSource;
import com.applovin.shadow.okio.GzipSource;
import com.applovin.shadow.okio.Okio;
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
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ws.b;
/* compiled from: PublicSuffixDatabase.kt */
@Metadata
/* loaded from: classes2.dex */
public final class PublicSuffixDatabase {
    private static final char EXCEPTION_MARKER = '!';
    @NotNull
    public static final String PUBLIC_SUFFIX_RESOURCE = "publicsuffixes.gz";
    private byte[] publicSuffixExceptionListBytes;
    private byte[] publicSuffixListBytes;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final byte[] WILDCARD_LABEL = {42};
    @NotNull
    private static final List<String> PREVAILING_RULE = CollectionsKt.e(ProxyConfig.MATCH_ALL_SCHEMES);
    @NotNull
    private static final PublicSuffixDatabase instance = new PublicSuffixDatabase();
    @NotNull
    private final AtomicBoolean listRead = new AtomicBoolean(false);
    @NotNull
    private final CountDownLatch readCompleteLatch = new CountDownLatch(1);

    /* compiled from: PublicSuffixDatabase.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String binarySearch(byte[] bArr, byte[][] bArr2, int i10) {
            int i11;
            int and;
            boolean z10;
            int and2;
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
                        and = 46;
                        z10 = false;
                    } else {
                        boolean z12 = z11;
                        and = Util.and(bArr2[i17][i18], 255);
                        z10 = z12;
                    }
                    and2 = and - Util.and(bArr[i14 + i19], 255);
                    if (and2 != 0) {
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
                if (and2 >= 0) {
                    if (and2 <= 0) {
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
        public final PublicSuffixDatabase get() {
            return PublicSuffixDatabase.instance;
        }

        private Companion() {
        }
    }

    private final List<String> findMatchingRule(List<String> list) {
        String str;
        String str2;
        String str3;
        List<String> n10;
        List<String> n11;
        if (!this.listRead.get() && this.listRead.compareAndSet(false, true)) {
            readTheListUninterruptibly();
        } else {
            try {
                this.readCompleteLatch.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
        if (this.publicSuffixListBytes != null) {
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
                    Companion companion = Companion;
                    byte[] bArr2 = this.publicSuffixListBytes;
                    if (bArr2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("publicSuffixListBytes");
                        bArr2 = null;
                    }
                    str2 = companion.binarySearch(bArr2, bArr, i11);
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
                    bArr3[i12] = WILDCARD_LABEL;
                    Companion companion2 = Companion;
                    byte[] bArr4 = this.publicSuffixListBytes;
                    if (bArr4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("publicSuffixListBytes");
                        bArr4 = null;
                    }
                    String binarySearch = companion2.binarySearch(bArr4, bArr3, i12);
                    if (binarySearch != null) {
                        str3 = binarySearch;
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
                    Companion companion3 = Companion;
                    byte[] bArr5 = this.publicSuffixExceptionListBytes;
                    if (bArr5 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("publicSuffixExceptionListBytes");
                        bArr5 = null;
                    }
                    String binarySearch2 = companion3.binarySearch(bArr5, bArr, i14);
                    if (binarySearch2 != null) {
                        str = binarySearch2;
                        break;
                    }
                    i14++;
                }
            }
            if (str != null) {
                return StringsKt.Y0(EXCEPTION_MARKER + str, new char[]{'.'}, false, 0, 6, null);
            } else if (str2 == null && str3 == null) {
                return PREVAILING_RULE;
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
    private final void readTheList() throws IOException {
        try {
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream(PUBLIC_SUFFIX_RESOURCE);
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
                this.publicSuffixListBytes = (byte[]) t10;
                T t11 = objectRef2.element;
                Intrinsics.checkNotNull(t11);
                this.publicSuffixExceptionListBytes = (byte[]) t11;
            }
        } finally {
            this.readCompleteLatch.countDown();
        }
    }

    private final void readTheListUninterruptibly() {
        boolean z10 = false;
        while (true) {
            try {
                try {
                    readTheList();
                    break;
                } catch (InterruptedIOException unused) {
                    Thread.interrupted();
                    z10 = true;
                } catch (IOException e10) {
                    Platform.Companion.get().log("Failed to read public suffix list", 5, e10);
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

    private final List<String> splitDomain(String str) {
        List<String> Y0 = StringsKt.Y0(str, new char[]{'.'}, false, 0, 6, null);
        if (Intrinsics.areEqual(CollectionsKt.C0(Y0), "")) {
            return CollectionsKt.k0(Y0, 1);
        }
        return Y0;
    }

    @Nullable
    public final String getEffectiveTldPlusOne(@NotNull String domain) {
        int size;
        int size2;
        Intrinsics.checkNotNullParameter(domain, "domain");
        String unicodeDomain = IDN.toUnicode(domain);
        Intrinsics.checkNotNullExpressionValue(unicodeDomain, "unicodeDomain");
        List<String> splitDomain = splitDomain(unicodeDomain);
        List<String> findMatchingRule = findMatchingRule(splitDomain);
        if (splitDomain.size() == findMatchingRule.size() && findMatchingRule.get(0).charAt(0) != '!') {
            return null;
        }
        if (findMatchingRule.get(0).charAt(0) == '!') {
            size = splitDomain.size();
            size2 = findMatchingRule.size();
        } else {
            size = splitDomain.size();
            size2 = findMatchingRule.size() + 1;
        }
        return j.D(j.s(CollectionsKt.e0(splitDomain(domain)), size - size2), ".", null, null, 0, null, null, 62, null);
    }

    public final void setListBytes(@NotNull byte[] publicSuffixListBytes, @NotNull byte[] publicSuffixExceptionListBytes) {
        Intrinsics.checkNotNullParameter(publicSuffixListBytes, "publicSuffixListBytes");
        Intrinsics.checkNotNullParameter(publicSuffixExceptionListBytes, "publicSuffixExceptionListBytes");
        this.publicSuffixListBytes = publicSuffixListBytes;
        this.publicSuffixExceptionListBytes = publicSuffixExceptionListBytes;
        this.listRead.set(true);
        this.readCompleteLatch.countDown();
    }
}
