package io.bidmachine.analytics.internal;

import java.security.Key;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* renamed from: io.bidmachine.analytics.internal.a  reason: case insensitive filesystem */
/* loaded from: classes7.dex */
public final class C3306a implements InterfaceC3307b {

    /* renamed from: b  reason: collision with root package name */
    public static final C0785a f54060b = new C0785a(null);

    /* renamed from: a  reason: collision with root package name */
    private final String f54061a = "AES";

    /* renamed from: io.bidmachine.analytics.internal.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0785a {
        public /* synthetic */ C0785a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0785a() {
        }
    }

    @Override // io.bidmachine.analytics.internal.InterfaceC3307b
    public byte[] a(Key key, byte[] bArr) {
        byte[] a10 = f0.f54091a.a(12);
        byte[] doFinal = a(1, key, a10).doFinal(bArr);
        byte[] bArr2 = new byte[doFinal.length + 12];
        kotlin.collections.n.h(a10, bArr2, 0, 0, 12);
        kotlin.collections.n.h(doFinal, bArr2, 12, 0, doFinal.length);
        return bArr2;
    }

    @Override // io.bidmachine.analytics.internal.InterfaceC3307b
    public String getName() {
        return this.f54061a;
    }

    private final Cipher a(int i10, Key key, byte[] bArr) {
        GCMParameterSpec gCMParameterSpec = new GCMParameterSpec(128, bArr);
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(i10, key, gCMParameterSpec);
        return cipher;
    }
}
