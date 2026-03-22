package androidx.credentials.provider;

import android.os.Bundle;
import androidx.credentials.PublicKeyCredential;
import androidx.credentials.internal.FrameworkClassParsingException;
import androidx.credentials.provider.utils.RequestValidationUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BeginGetPublicKeyCredentialOption.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBeginGetPublicKeyCredentialOption.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BeginGetPublicKeyCredentialOption.kt\nandroidx/credentials/provider/BeginGetPublicKeyCredentialOption\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,80:1\n1#2:81\n*E\n"})
/* loaded from: classes.dex */
public final class BeginGetPublicKeyCredentialOption extends BeginGetCredentialOption {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private final byte[] clientDataHash;
    @NotNull
    private final String requestJson;

    /* compiled from: BeginGetPublicKeyCredentialOption.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final BeginGetPublicKeyCredentialOption createFrom$credentials_release(@NotNull Bundle data, @NotNull String id2) {
            Intrinsics.checkNotNullParameter(data, "data");
            Intrinsics.checkNotNullParameter(id2, "id");
            try {
                String string = data.getString("androidx.credentials.BUNDLE_KEY_REQUEST_JSON");
                byte[] byteArray = data.getByteArray("androidx.credentials.BUNDLE_KEY_CLIENT_DATA_HASH");
                Intrinsics.checkNotNull(string);
                return new BeginGetPublicKeyCredentialOption(data, id2, string, byteArray);
            } catch (Exception unused) {
                throw new FrameworkClassParsingException();
            }
        }

        @NotNull
        public final BeginGetPublicKeyCredentialOption createFromEntrySlice$credentials_release(@NotNull Bundle data, @NotNull String id2) {
            Intrinsics.checkNotNullParameter(data, "data");
            Intrinsics.checkNotNullParameter(id2, "id");
            return new BeginGetPublicKeyCredentialOption(data, id2, "{\"dummy_key\":\"dummy_value\"}", null, 8, null);
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BeginGetPublicKeyCredentialOption(@NotNull Bundle candidateQueryData, @NotNull String id2, @NotNull String requestJson) {
        this(candidateQueryData, id2, requestJson, null, 8, null);
        Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(requestJson, "requestJson");
    }

    @Nullable
    public final byte[] getClientDataHash() {
        return this.clientDataHash;
    }

    @NotNull
    public final String getRequestJson() {
        return this.requestJson;
    }

    public /* synthetic */ BeginGetPublicKeyCredentialOption(Bundle bundle, String str, String str2, byte[] bArr, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(bundle, str, str2, (i10 & 8) != 0 ? null : bArr);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BeginGetPublicKeyCredentialOption(@NotNull Bundle candidateQueryData, @NotNull String id2, @NotNull String requestJson, @Nullable byte[] bArr) {
        super(id2, PublicKeyCredential.TYPE_PUBLIC_KEY_CREDENTIAL, candidateQueryData);
        Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(requestJson, "requestJson");
        this.requestJson = requestJson;
        this.clientDataHash = bArr;
        if (!RequestValidationUtil.Companion.isValidJSON(requestJson)) {
            throw new IllegalArgumentException("requestJson must not be empty, and must be a valid JSON");
        }
    }
}
