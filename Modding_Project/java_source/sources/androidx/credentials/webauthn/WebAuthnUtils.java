package androidx.credentials.webauthn;

import android.os.Build;
import android.util.Base64;
import androidx.annotation.RestrictTo;
import androidx.credentials.provider.CallingAppInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: WebAuthnUtils.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public final class WebAuthnUtils {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: WebAuthnUtils.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final String appInfoToOrigin(@NotNull CallingAppInfo info) {
            Intrinsics.checkNotNullParameter(info, "info");
            if (Build.VERSION.SDK_INT >= 28) {
                return WebAuthnUtilsApi28.Companion.appInfoToOrigin(info);
            }
            return "";
        }

        @NotNull
        public final byte[] b64Decode(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "str");
            byte[] decode = Base64.decode(str, 11);
            Intrinsics.checkNotNullExpressionValue(decode, "decode(str, Base64.NO_PA…_WRAP or Base64.URL_SAFE)");
            return decode;
        }

        @NotNull
        public final String b64Encode(@NotNull byte[] data) {
            Intrinsics.checkNotNullParameter(data, "data");
            String encodeToString = Base64.encodeToString(data, 11);
            Intrinsics.checkNotNullExpressionValue(encodeToString, "encodeToString(data, Bas…_WRAP or Base64.URL_SAFE)");
            return encodeToString;
        }

        private Companion() {
        }
    }
}
