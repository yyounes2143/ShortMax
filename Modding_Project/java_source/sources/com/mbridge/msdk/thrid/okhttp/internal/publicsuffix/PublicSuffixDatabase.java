package com.mbridge.msdk.thrid.okhttp.internal.publicsuffix;

import androidx.webkit.ProxyConfig;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.thrid.okhttp.internal.c;
import com.mbridge.msdk.thrid.okhttp.internal.platform.g;
import com.mbridge.msdk.thrid.okio.e;
import com.mbridge.msdk.thrid.okio.j;
import com.mbridge.msdk.thrid.okio.l;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes6.dex */
public final class PublicSuffixDatabase {

    /* renamed from: e  reason: collision with root package name */
    private static final byte[] f29948e = {42};

    /* renamed from: f  reason: collision with root package name */
    private static final String[] f29949f = new String[0];

    /* renamed from: g  reason: collision with root package name */
    private static final String[] f29950g = {ProxyConfig.MATCH_ALL_SCHEMES};

    /* renamed from: h  reason: collision with root package name */
    private static final PublicSuffixDatabase f29951h = new PublicSuffixDatabase();

    /* renamed from: a  reason: collision with root package name */
    private final AtomicBoolean f29952a = new AtomicBoolean(false);

    /* renamed from: b  reason: collision with root package name */
    private final CountDownLatch f29953b = new CountDownLatch(1);

    /* renamed from: c  reason: collision with root package name */
    private byte[] f29954c;

    /* renamed from: d  reason: collision with root package name */
    private byte[] f29955d;

    public static PublicSuffixDatabase a() {
        return f29951h;
    }

    private void b() throws IOException {
        InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream(com.applovin.shadow.okhttp3.internal.publicsuffix.PublicSuffixDatabase.PUBLIC_SUFFIX_RESOURCE);
        if (resourceAsStream == null) {
            return;
        }
        e a10 = l.a(new j(l.a(resourceAsStream)));
        try {
            byte[] bArr = new byte[a10.readInt()];
            a10.readFully(bArr);
            byte[] bArr2 = new byte[a10.readInt()];
            a10.readFully(bArr2);
            synchronized (this) {
                this.f29954c = bArr;
                this.f29955d = bArr2;
            }
            this.f29953b.countDown();
        } finally {
            c.a(a10);
        }
    }

    private void c() {
        boolean z10 = false;
        while (true) {
            try {
                try {
                    b();
                    break;
                } catch (InterruptedIOException unused) {
                    Thread.interrupted();
                    z10 = true;
                } catch (IOException e10) {
                    g.d().a(5, "Failed to read public suffix list", e10);
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

    public String a(String str) {
        int length;
        int length2;
        if (str != null) {
            String[] split = IDN.toUnicode(str).split("\\.");
            String[] a10 = a(split);
            if (split.length != a10.length || a10[0].charAt(0) == '!') {
                if (a10[0].charAt(0) == '!') {
                    length = split.length;
                    length2 = a10.length;
                } else {
                    length = split.length;
                    length2 = a10.length + 1;
                }
                StringBuilder sb2 = new StringBuilder();
                String[] split2 = str.split("\\.");
                for (int i10 = length - length2; i10 < split2.length; i10++) {
                    sb2.append(split2[i10]);
                    sb2.append('.');
                }
                sb2.deleteCharAt(sb2.length() - 1);
                return sb2.toString();
            }
            return null;
        }
        throw new NullPointerException("domain == null");
    }

    private String[] a(String[] strArr) {
        String str;
        String str2;
        String str3;
        int i10 = 0;
        if (!this.f29952a.get() && this.f29952a.compareAndSet(false, true)) {
            c();
        } else {
            try {
                this.f29953b.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
        synchronized (this) {
            if (this.f29954c == null) {
                throw new IllegalStateException("Unable to load publicsuffixes.gz resource from the classpath.");
            }
        }
        int length = strArr.length;
        byte[][] bArr = new byte[length];
        for (int i11 = 0; i11 < strArr.length; i11++) {
            bArr[i11] = strArr[i11].getBytes(c.f29610j);
        }
        int i12 = 0;
        while (true) {
            str = null;
            if (i12 >= length) {
                str2 = null;
                break;
            }
            str2 = a(this.f29954c, bArr, i12);
            if (str2 != null) {
                break;
            }
            i12++;
        }
        if (length > 1) {
            byte[][] bArr2 = (byte[][]) bArr.clone();
            for (int i13 = 0; i13 < bArr2.length - 1; i13++) {
                bArr2[i13] = f29948e;
                str3 = a(this.f29954c, bArr2, i13);
                if (str3 != null) {
                    break;
                }
            }
        }
        str3 = null;
        if (str3 != null) {
            while (true) {
                if (i10 >= length - 1) {
                    break;
                }
                String a10 = a(this.f29955d, bArr, i10);
                if (a10 != null) {
                    str = a10;
                    break;
                }
                i10++;
            }
        }
        if (str != null) {
            return ("!" + str).split("\\.");
        } else if (str2 == null && str3 == null) {
            return f29950g;
        } else {
            String[] split = str2 != null ? str2.split("\\.") : f29949f;
            String[] split2 = str3 != null ? str3.split("\\.") : f29949f;
            return split.length > split2.length ? split : split2;
        }
    }

    private static String a(byte[] bArr, byte[][] bArr2, int i10) {
        int i11;
        boolean z10;
        int i12;
        int i13;
        int length = bArr.length;
        int i14 = 0;
        while (i14 < length) {
            int i15 = (i14 + length) / 2;
            while (i15 > -1 && bArr[i15] != 10) {
                i15--;
            }
            int i16 = i15 + 1;
            int i17 = 1;
            while (true) {
                i11 = i16 + i17;
                if (bArr[i11] == 10) {
                    break;
                }
                i17++;
            }
            int i18 = i11 - i16;
            int i19 = i10;
            boolean z11 = false;
            int i20 = 0;
            int i21 = 0;
            while (true) {
                if (z11) {
                    i12 = 46;
                    z10 = false;
                } else {
                    z10 = z11;
                    i12 = bArr2[i19][i20] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
                }
                i13 = i12 - (bArr[i16 + i21] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
                if (i13 == 0) {
                    i21++;
                    i20++;
                    if (i21 == i18) {
                        break;
                    } else if (bArr2[i19].length != i20) {
                        z11 = z10;
                    } else if (i19 == bArr2.length - 1) {
                        break;
                    } else {
                        i19++;
                        i20 = -1;
                        z11 = true;
                    }
                } else {
                    break;
                }
            }
            if (i13 >= 0) {
                if (i13 <= 0) {
                    int i22 = i18 - i21;
                    int length2 = bArr2[i19].length - i20;
                    while (true) {
                        i19++;
                        if (i19 >= bArr2.length) {
                            break;
                        }
                        length2 += bArr2[i19].length;
                    }
                    if (length2 >= i22) {
                        if (length2 <= i22) {
                            return new String(bArr, i16, i18, c.f29610j);
                        }
                    }
                }
                i14 = i11 + 1;
            }
            length = i15;
        }
        return null;
    }
}
