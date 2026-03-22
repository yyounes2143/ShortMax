package io.bidmachine.analytics.internal;

import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.security.Key;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import java.util.List;
import javax.crypto.KeyAgreement;
import javax.crypto.spec.SecretKeySpec;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes7.dex */
public final class C {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f53937a;

    /* renamed from: b  reason: collision with root package name */
    private final String f53938b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f53939c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f53940d;

    /* renamed from: e  reason: collision with root package name */
    private final byte[] f53941e;

    /* renamed from: f  reason: collision with root package name */
    private final Key f53942f;

    /* renamed from: g  reason: collision with root package name */
    private final B f53943g;

    public C(byte[] bArr, String str, byte[] bArr2, boolean z10) {
        this.f53937a = bArr;
        this.f53938b = str;
        this.f53939c = bArr2;
        this.f53940d = z10;
        KeyPair a10 = new r().a();
        this.f53941e = a10.getPublic().getEncoded();
        this.f53942f = a10.getPrivate();
        this.f53943g = new C3327w();
    }

    public final Key a() {
        return a(this.f53942f, this.f53941e, this.f53937a);
    }

    public final byte[] b() {
        return this.f53941e;
    }

    public final Key a(Key key, byte[] bArr, byte[] bArr2) {
        return new SecretKeySpec(this.f53943g.a(a(key, bArr2), this.f53940d ? a(bArr, bArr2) : null, this.f53939c), this.f53938b);
    }

    private final byte[] a(Key key, byte[] bArr) {
        PublicKey generatePublic = KeyFactory.getInstance("EC").generatePublic(new X509EncodedKeySpec(bArr));
        KeyAgreement keyAgreement = KeyAgreement.getInstance("ECDH");
        keyAgreement.init(key);
        keyAgreement.doPhase(generatePublic, true);
        return keyAgreement.generateSecret();
    }

    public /* synthetic */ C(byte[] bArr, String str, byte[] bArr2, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(bArr, str, (i10 & 4) != 0 ? null : bArr2, (i10 & 8) != 0 ? false : z10);
    }

    private final byte[] a(byte[] bArr, byte[] bArr2) {
        List t10 = CollectionsKt.t(ByteBuffer.wrap(bArr), ByteBuffer.wrap(bArr2));
        CollectionsKt.C(t10);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byteArrayOutputStream.write(((ByteBuffer) t10.get(0)).array());
        byteArrayOutputStream.write(((ByteBuffer) t10.get(1)).array());
        return byteArrayOutputStream.toByteArray();
    }
}
