package androidx.credentials;

import android.os.Bundle;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CreatePasswordResponse.kt */
@Metadata
/* loaded from: classes.dex */
public final class CreatePasswordResponse extends CreateCredentialResponse {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: CreatePasswordResponse.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final CreatePasswordResponse createFrom$credentials_release(@NotNull Bundle data) {
            Intrinsics.checkNotNullParameter(data, "data");
            return new CreatePasswordResponse(data, null);
        }

        private Companion() {
        }
    }

    public /* synthetic */ CreatePasswordResponse(Bundle bundle, DefaultConstructorMarker defaultConstructorMarker) {
        this(bundle);
    }

    private CreatePasswordResponse(Bundle bundle) {
        super(PasswordCredential.TYPE_PASSWORD_CREDENTIAL, bundle);
    }

    public CreatePasswordResponse() {
        this(new Bundle());
    }
}
