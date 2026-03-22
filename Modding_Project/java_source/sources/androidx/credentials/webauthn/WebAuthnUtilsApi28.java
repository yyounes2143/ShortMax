package androidx.credentials.webauthn;

import android.content.pm.Signature;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.credentials.provider.CallingAppInfo;
import androidx.credentials.webauthn.WebAuthnUtils;
import java.security.MessageDigest;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: WebAuthnUtilsApi28.kt */
@RequiresApi(28)
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public final class WebAuthnUtilsApi28 {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: WebAuthnUtilsApi28.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String appInfoToOrigin(@NotNull CallingAppInfo info) {
            Signature[] apkContentsSigners;
            Intrinsics.checkNotNullParameter(info, "info");
            apkContentsSigners = info.getSigningInfo().getApkContentsSigners();
            byte[] certHash = MessageDigest.getInstance("SHA-256").digest(apkContentsSigners[0].toByteArray());
            StringBuilder sb2 = new StringBuilder();
            sb2.append("android:apk-key-hash:");
            WebAuthnUtils.Companion companion = WebAuthnUtils.Companion;
            Intrinsics.checkNotNullExpressionValue(certHash, "certHash");
            sb2.append(companion.b64Encode(certHash));
            return sb2.toString();
        }

        private Companion() {
        }
    }
}
