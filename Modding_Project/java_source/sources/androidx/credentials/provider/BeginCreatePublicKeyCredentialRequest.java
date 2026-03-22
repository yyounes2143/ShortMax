package androidx.credentials.provider;

import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import androidx.credentials.PublicKeyCredential;
import androidx.credentials.internal.FrameworkClassParsingException;
import androidx.credentials.provider.utils.RequestValidationUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BeginCreatePublicKeyCredentialRequest.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBeginCreatePublicKeyCredentialRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BeginCreatePublicKeyCredentialRequest.kt\nandroidx/credentials/provider/BeginCreatePublicKeyCredentialRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,101:1\n1#2:102\n*E\n"})
/* loaded from: classes.dex */
public final class BeginCreatePublicKeyCredentialRequest extends BeginCreateCredentialRequest {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private final byte[] clientDataHash;
    @NotNull
    private final String requestJson;

    /* compiled from: BeginCreatePublicKeyCredentialRequest.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @VisibleForTesting
        @NotNull
        public final BeginCreatePublicKeyCredentialRequest createForTest(@NotNull Bundle data, @Nullable CallingAppInfo callingAppInfo) {
            Intrinsics.checkNotNullParameter(data, "data");
            return createFrom$credentials_release(data, callingAppInfo);
        }

        @NotNull
        public final BeginCreatePublicKeyCredentialRequest createFrom$credentials_release(@NotNull Bundle data, @Nullable CallingAppInfo callingAppInfo) {
            Intrinsics.checkNotNullParameter(data, "data");
            try {
                String string = data.getString("androidx.credentials.BUNDLE_KEY_REQUEST_JSON");
                byte[] byteArray = data.getByteArray("androidx.credentials.BUNDLE_KEY_CLIENT_DATA_HASH");
                Intrinsics.checkNotNull(string);
                return new BeginCreatePublicKeyCredentialRequest(string, callingAppInfo, data, byteArray);
            } catch (Exception unused) {
                throw new FrameworkClassParsingException();
            }
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BeginCreatePublicKeyCredentialRequest(@NotNull String requestJson, @Nullable CallingAppInfo callingAppInfo, @NotNull Bundle candidateQueryData) {
        this(requestJson, callingAppInfo, candidateQueryData, null, 8, null);
        Intrinsics.checkNotNullParameter(requestJson, "requestJson");
        Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
    }

    @VisibleForTesting
    @NotNull
    public static final BeginCreatePublicKeyCredentialRequest createForTest(@NotNull Bundle bundle, @Nullable CallingAppInfo callingAppInfo) {
        return Companion.createForTest(bundle, callingAppInfo);
    }

    private final void initiateBundle(Bundle bundle, String str) {
        bundle.putString("androidx.credentials.BUNDLE_KEY_REQUEST_JSON", str);
    }

    @Nullable
    public final byte[] getClientDataHash() {
        return this.clientDataHash;
    }

    @NotNull
    public final String getRequestJson() {
        return this.requestJson;
    }

    public /* synthetic */ BeginCreatePublicKeyCredentialRequest(String str, CallingAppInfo callingAppInfo, Bundle bundle, byte[] bArr, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, callingAppInfo, bundle, (i10 & 8) != 0 ? null : bArr);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BeginCreatePublicKeyCredentialRequest(@NotNull String requestJson, @Nullable CallingAppInfo callingAppInfo, @NotNull Bundle candidateQueryData, @Nullable byte[] bArr) {
        super(PublicKeyCredential.TYPE_PUBLIC_KEY_CREDENTIAL, candidateQueryData, callingAppInfo);
        Intrinsics.checkNotNullParameter(requestJson, "requestJson");
        Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
        this.requestJson = requestJson;
        this.clientDataHash = bArr;
        if (RequestValidationUtil.Companion.isValidJSON(requestJson)) {
            initiateBundle(candidateQueryData, requestJson);
            return;
        }
        throw new IllegalArgumentException("requestJson must not be empty, and must be a valid JSON");
    }
}
