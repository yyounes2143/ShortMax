package androidx.credentials.provider;

import android.os.Bundle;
import androidx.credentials.PasswordCredential;
import androidx.credentials.internal.FrameworkClassParsingException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BeginCreatePasswordCredentialRequest.kt */
@Metadata
/* loaded from: classes.dex */
public final class BeginCreatePasswordCredentialRequest extends BeginCreateCredentialRequest {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: BeginCreatePasswordCredentialRequest.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final BeginCreatePasswordCredentialRequest createFrom$credentials_release(@NotNull Bundle data, @Nullable CallingAppInfo callingAppInfo) {
            Intrinsics.checkNotNullParameter(data, "data");
            try {
                return new BeginCreatePasswordCredentialRequest(callingAppInfo, data);
            } catch (Exception unused) {
                throw new FrameworkClassParsingException();
            }
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BeginCreatePasswordCredentialRequest(@Nullable CallingAppInfo callingAppInfo, @NotNull Bundle candidateQueryData) {
        super(PasswordCredential.TYPE_PASSWORD_CREDENTIAL, candidateQueryData, callingAppInfo);
        Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
    }
}
