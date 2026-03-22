package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal;

import com.mbridge.msdk.foundation.tools.SameMD5;
import java.net.URI;
import java.security.MessageDigest;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
@SourceDebugExtension({"SMAP\nString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 String.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/StringKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,19:1\n1#2:20\n*E\n"})
/* loaded from: classes6.dex */
public final class n {
    @NotNull
    public static final String a(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        URI uri = new URI(str);
        String uri2 = new URI(uri.getScheme(), uri.getAuthority(), uri.getPath(), null, uri.getFragment()).toString();
        Intrinsics.checkNotNullExpressionValue(uri2, "run(...)");
        MessageDigest messageDigest = MessageDigest.getInstance(SameMD5.TAG);
        byte[] bytes = uri2.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        messageDigest.update(bytes);
        byte[] digest = messageDigest.digest();
        Intrinsics.checkNotNullExpressionValue(digest, "digest(...)");
        return h0.a(digest);
    }
}
