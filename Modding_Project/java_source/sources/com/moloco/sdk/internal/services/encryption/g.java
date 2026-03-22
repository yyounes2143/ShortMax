package com.moloco.sdk.internal.services.encryption;

import android.util.Base64;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.BuildConfig;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import ms.i;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class g implements a {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final i f33351b = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.internal.services.encryption.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return g.h();
        }
    });
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final i f33352c = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.internal.services.encryption.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return g.g();
        }
    });
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final i f33353d = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.internal.services.encryption.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return g.f();
        }
    });
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final i f33354e = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.internal.services.encryption.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return g.d();
        }
    });
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final SecretKeySpec f33355f = j();
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final i f33356g = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.internal.services.encryption.f
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return g.i();
        }
    });

    public static final String d() {
        byte[] decode = Base64.decode(new byte[]{81, 85, 86, 84, 76, 48, 100, 68, 84, 83, 57, 79, 98, 49, 66, 104, 90, 71, 82, 112, 98, 109, 99, 61}, 0);
        Intrinsics.checkNotNullExpressionValue(decode, "decode(...)");
        return StringsKt.C(decode);
    }

    public static final String f() {
        return StringsKt.C(new byte[]{65, 69, 83});
    }

    public static final String g() {
        return StringsKt.C(new byte[]{82, 83, 65, 47, 69, 67, 66, 47, 79, 65, 69, 80, 87, 105, 116, 104, 83, 72, 65, 45, 50, 53, 54, 65, 110, 100, 77, 71, 70, 49, 80, 97, 100, 100, 105, 110, 103});
    }

    public static final String h() {
        byte[] decode = Base64.decode(new byte[]{85, 108, 78, 66}, 0);
        Intrinsics.checkNotNullExpressionValue(decode, "decode(...)");
        return StringsKt.C(decode);
    }

    public static final IvParameterSpec i() {
        return new IvParameterSpec(Base64.decode(BuildConfig.MOLOCO_SDK_BIDTOKEN_SALT, 0));
    }

    @NotNull
    public IvParameterSpec a() {
        return (IvParameterSpec) this.f33356g.getValue();
    }

    @NotNull
    public SecretKeySpec b() {
        return this.f33355f;
    }

    @NotNull
    public byte[] c(@NotNull byte[] input, @NotNull String publicKey) {
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(publicKey, "publicKey");
        Cipher cipher = Cipher.getInstance(n());
        cipher.init(1, e(publicKey));
        byte[] doFinal = cipher.doFinal(b().getEncoded());
        Intrinsics.checkNotNullExpressionValue(doFinal, "doFinal(...)");
        return doFinal;
    }

    public final PublicKey e(String str) {
        PublicKey generatePublic = KeyFactory.getInstance(m()).generatePublic(new X509EncodedKeySpec(Base64.decode(str, 0)));
        Intrinsics.checkNotNullExpressionValue(generatePublic, "generatePublic(...)");
        return generatePublic;
    }

    public final SecretKeySpec j() {
        KeyGenerator keyGenerator = KeyGenerator.getInstance(k());
        keyGenerator.init(256);
        return new SecretKeySpec(keyGenerator.generateKey().getEncoded(), k());
    }

    public final String k() {
        return (String) this.f33353d.getValue();
    }

    public final String l() {
        return (String) this.f33354e.getValue();
    }

    public final String m() {
        return (String) this.f33351b.getValue();
    }

    public final String n() {
        return (String) this.f33352c.getValue();
    }

    @Override // com.moloco.sdk.internal.services.encryption.a
    @NotNull
    public byte[] a(@NotNull byte[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        Cipher cipher = Cipher.getInstance(l());
        cipher.init(1, b(), a());
        byte[] doFinal = cipher.doFinal(data);
        Intrinsics.checkNotNullExpressionValue(doFinal, "doFinal(...)");
        return doFinal;
    }

    @Override // com.moloco.sdk.internal.services.encryption.a
    @NotNull
    public byte[] a(@NotNull String rsaPublicKey) {
        Intrinsics.checkNotNullParameter(rsaPublicKey, "rsaPublicKey");
        byte[] encoded = b().getEncoded();
        Intrinsics.checkNotNullExpressionValue(encoded, "getEncoded(...)");
        return c(encoded, rsaPublicKey);
    }
}
