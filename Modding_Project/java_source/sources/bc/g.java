package bc;

import bc.e;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.MBridgeConstans;
import java.security.MessageDigest;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SHA256Util.kt */
@Metadata
/* loaded from: classes5.dex */
public final class g {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final g f2604a = new g();

    private g() {
    }

    private final String a(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b10 : bArr) {
            String hexString = Integer.toHexString(b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
            if (hexString.length() == 1) {
                stringBuffer.append(MBridgeConstans.ENDCARD_URL_TYPE_PL);
            }
            stringBuffer.append(hexString);
        }
        String stringBuffer2 = stringBuffer.toString();
        Intrinsics.checkNotNullExpressionValue(stringBuffer2, "toString(...)");
        return stringBuffer2;
    }

    @NotNull
    public final String b(@NotNull byte[] bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(bytes);
            byte[] digest = messageDigest.digest();
            Intrinsics.checkNotNullExpressionValue(digest, "digest(...)");
            return a(digest);
        } catch (Exception e10) {
            e.a aVar = e.f2600a;
            aVar.b("SHA256Util", "getSHA256 failed -> " + e10.getMessage());
            return "";
        }
    }
}
