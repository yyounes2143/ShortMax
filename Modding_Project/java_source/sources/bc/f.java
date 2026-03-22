package bc;

import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.foundation.tools.SameMD5;
import java.security.MessageDigest;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
/* compiled from: MD5.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMD5.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MD5.kt\ncom/jiuzhou/cdn/utils/MD5\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,27:1\n13409#2,2:28\n*S KotlinDebug\n*F\n+ 1 MD5.kt\ncom/jiuzhou/cdn/utils/MD5\n*L\n15#1:28,2\n*E\n"})
/* loaded from: classes5.dex */
public final class f {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final f f2603a = new f();

    private f() {
    }

    @NotNull
    public final String a(@NotNull String content) {
        Intrinsics.checkNotNullParameter(content, "content");
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(SameMD5.TAG);
            Intrinsics.checkNotNullExpressionValue(messageDigest, "getInstance(...)");
            StringBuffer stringBuffer = new StringBuffer();
            byte[] bytes = content.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            byte[] digest = messageDigest.digest(bytes);
            Intrinsics.checkNotNullExpressionValue(digest, "digest(...)");
            for (byte b10 : digest) {
                String hexString = Integer.toHexString(b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
                if (hexString.length() < 2) {
                    hexString = '0' + hexString;
                }
                stringBuffer.append(hexString);
            }
            String stringBuffer2 = stringBuffer.toString();
            Intrinsics.checkNotNull(stringBuffer2);
            return stringBuffer2;
        } catch (Exception unused) {
            return "";
        }
    }
}
