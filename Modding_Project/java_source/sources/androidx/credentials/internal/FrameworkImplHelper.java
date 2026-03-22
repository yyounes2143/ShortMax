package androidx.credentials.internal;

import android.content.Context;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.credentials.CreateCredentialRequest;
import androidx.credentials.CreatePasswordRequest;
import androidx.credentials.CreatePublicKeyCredentialRequest;
import androidx.credentials.R;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: FrameworkImplHelper.kt */
@RequiresApi(23)
@Metadata
/* loaded from: classes.dex */
public final class FrameworkImplHelper {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: FrameworkImplHelper.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @RequiresApi(23)
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @NotNull
        public final Bundle getFinalCreateCredentialData(@NotNull CreateCredentialRequest request, @NotNull Context context) {
            int i10;
            Intrinsics.checkNotNullParameter(request, "request");
            Intrinsics.checkNotNullParameter(context, "context");
            Bundle credentialData = request.getCredentialData();
            Bundle bundle = request.getDisplayInfo().toBundle();
            if (request instanceof CreatePasswordRequest) {
                i10 = R.drawable.ic_password;
            } else if (request instanceof CreatePublicKeyCredentialRequest) {
                i10 = R.drawable.ic_passkey;
            } else {
                i10 = R.drawable.ic_other_sign_in;
            }
            bundle.putParcelable(CreateCredentialRequest.DisplayInfo.BUNDLE_KEY_CREDENTIAL_TYPE_ICON, Icon.createWithResource(context, i10));
            credentialData.putBundle(CreateCredentialRequest.DisplayInfo.BUNDLE_KEY_REQUEST_DISPLAY_INFO, bundle);
            return credentialData;
        }

        private Companion() {
        }
    }

    @RequiresApi(23)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public static final Bundle getFinalCreateCredentialData(@NotNull CreateCredentialRequest createCredentialRequest, @NotNull Context context) {
        return Companion.getFinalCreateCredentialData(createCredentialRequest, context);
    }
}
