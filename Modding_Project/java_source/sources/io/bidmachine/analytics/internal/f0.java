package io.bidmachine.analytics.internal;

import java.security.SecureRandom;
/* loaded from: classes7.dex */
public final class f0 {

    /* renamed from: a  reason: collision with root package name */
    public static final f0 f54091a = new f0();

    /* renamed from: b  reason: collision with root package name */
    private static final ThreadLocal f54092b = new a();

    /* loaded from: classes7.dex */
    public static final class a extends ThreadLocal {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public SecureRandom initialValue() {
            return f0.f54091a.a();
        }
    }

    private f0() {
    }

    private final SecureRandom b() {
        SecureRandom secureRandom = (SecureRandom) f54092b.get();
        if (secureRandom == null) {
            return a();
        }
        return secureRandom;
    }

    public final byte[] a(int i10) {
        byte[] bArr = new byte[i10];
        f54091a.b().nextBytes(bArr);
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SecureRandom a() {
        SecureRandom secureRandom = new SecureRandom();
        secureRandom.nextLong();
        return secureRandom;
    }
}
