package hk;

import android.os.Bundle;
import android.util.Base64;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import java.io.ByteArrayOutputStream;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RSAUtil.kt */
@Metadata
/* loaded from: classes7.dex */
public final class e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final e f52894a = new e();

    private e() {
    }

    @Nullable
    public final String a(@NotNull byte[] data, @NotNull String publicKey, int i10) {
        byte[] doFinal;
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(publicKey, "publicKey");
        try {
            byte[] bytes = publicKey.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            PublicKey generatePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(bytes, i10)));
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(1, generatePublic);
            int length = data.length;
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            int i11 = 0;
            int i12 = 0;
            while (true) {
                int i13 = length - i11;
                if (i13 > 0) {
                    if (i13 > 117) {
                        doFinal = cipher.doFinal(data, i11, 117);
                    } else {
                        doFinal = cipher.doFinal(data, i11, i13);
                    }
                    byteArrayOutputStream.write(doFinal, 0, doFinal.length);
                    i12++;
                    i11 = i12 * 117;
                } else {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    return Base64.encodeToString(byteArray, i10);
                }
            }
        } catch (Exception e10) {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("err_msg", e10.getMessage());
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "create_api_rc4_rsa_key_failed", bundle, 0L, 4, null);
            Logger.f41511a.e("RSAUtil", "encryptByPublicKey exception -> " + e10.getMessage());
            return null;
        }
    }
}
