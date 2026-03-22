package androidx.credentials;

import android.graphics.drawable.Icon;
import android.os.Bundle;
import androidx.annotation.RequiresApi;
import androidx.credentials.CreateCredentialRequest;
import androidx.credentials.internal.FrameworkClassParsingException;
import androidx.credentials.internal.RequestValidationHelper;
import com.huawei.hms.support.feature.result.CommonConstant;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: CreatePublicKeyCredentialRequest.kt */
@Metadata
/* loaded from: classes.dex */
public final class CreatePublicKeyCredentialRequest extends CreateCredentialRequest {
    @NotNull
    public static final String BUNDLE_KEY_CLIENT_DATA_HASH = "androidx.credentials.BUNDLE_KEY_CLIENT_DATA_HASH";
    @NotNull
    public static final String BUNDLE_KEY_REQUEST_JSON = "androidx.credentials.BUNDLE_KEY_REQUEST_JSON";
    @NotNull
    public static final String BUNDLE_VALUE_SUBTYPE_CREATE_PUBLIC_KEY_CREDENTIAL_REQUEST = "androidx.credentials.BUNDLE_VALUE_SUBTYPE_CREATE_PUBLIC_KEY_CREDENTIAL_REQUEST";
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private final byte[] clientDataHash;
    @NotNull
    private final String requestJson;

    /* compiled from: CreatePublicKeyCredentialRequest.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ CreateCredentialRequest.DisplayInfo getRequestDisplayInfo$credentials_release$default(Companion companion, String str, String str2, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                str2 = null;
            }
            return companion.getRequestDisplayInfo$credentials_release(str, str2);
        }

        public static /* synthetic */ Bundle toCredentialDataBundle$credentials_release$default(Companion companion, String str, byte[] bArr, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                bArr = null;
            }
            return companion.toCredentialDataBundle$credentials_release(str, bArr);
        }

        @RequiresApi(23)
        @NotNull
        public final CreatePublicKeyCredentialRequest createFrom$credentials_release(@NotNull Bundle data, @Nullable String str, @NotNull Bundle candidateQueryData) {
            Intrinsics.checkNotNullParameter(data, "data");
            Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
            try {
                String string = data.getString("androidx.credentials.BUNDLE_KEY_REQUEST_JSON");
                Intrinsics.checkNotNull(string);
                byte[] byteArray = data.getByteArray("androidx.credentials.BUNDLE_KEY_CLIENT_DATA_HASH");
                boolean z10 = data.getBoolean("androidx.credentials.BUNDLE_KEY_PREFER_IMMEDIATELY_AVAILABLE_CREDENTIALS", false);
                CreateCredentialRequest.DisplayInfo parseFromCredentialDataBundle = CreateCredentialRequest.DisplayInfo.Companion.parseFromCredentialDataBundle(data);
                if (parseFromCredentialDataBundle == null) {
                    parseFromCredentialDataBundle = getRequestDisplayInfo$credentials_release$default(this, string, null, 2, null);
                }
                return new CreatePublicKeyCredentialRequest(string, byteArray, data.getBoolean("androidx.credentials.BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED", false), z10, parseFromCredentialDataBundle, str, data, candidateQueryData, null);
            } catch (Exception unused) {
                throw new FrameworkClassParsingException();
            }
        }

        @NotNull
        public final CreateCredentialRequest.DisplayInfo getRequestDisplayInfo$credentials_release(@NotNull String requestJson, @Nullable String str) {
            String string;
            Intrinsics.checkNotNullParameter(requestJson, "requestJson");
            try {
                JSONObject jSONObject = new JSONObject(requestJson).getJSONObject("user");
                String userName = jSONObject.getString("name");
                if (jSONObject.isNull(CommonConstant.KEY_DISPLAY_NAME)) {
                    string = null;
                } else {
                    string = jSONObject.getString(CommonConstant.KEY_DISPLAY_NAME);
                }
                Intrinsics.checkNotNullExpressionValue(userName, "userName");
                return new CreateCredentialRequest.DisplayInfo(userName, string, (Icon) null, str);
            } catch (Exception unused) {
                throw new IllegalArgumentException("user.name must be defined in requestJson");
            }
        }

        @NotNull
        public final Bundle toCandidateDataBundle$credentials_release(@NotNull String requestJson, @Nullable byte[] bArr) {
            Intrinsics.checkNotNullParameter(requestJson, "requestJson");
            Bundle bundle = new Bundle();
            bundle.putString(PublicKeyCredential.BUNDLE_KEY_SUBTYPE, CreatePublicKeyCredentialRequest.BUNDLE_VALUE_SUBTYPE_CREATE_PUBLIC_KEY_CREDENTIAL_REQUEST);
            bundle.putString("androidx.credentials.BUNDLE_KEY_REQUEST_JSON", requestJson);
            bundle.putByteArray("androidx.credentials.BUNDLE_KEY_CLIENT_DATA_HASH", bArr);
            return bundle;
        }

        @NotNull
        public final Bundle toCredentialDataBundle$credentials_release(@NotNull String requestJson, @Nullable byte[] bArr) {
            Intrinsics.checkNotNullParameter(requestJson, "requestJson");
            Bundle bundle = new Bundle();
            bundle.putString(PublicKeyCredential.BUNDLE_KEY_SUBTYPE, CreatePublicKeyCredentialRequest.BUNDLE_VALUE_SUBTYPE_CREATE_PUBLIC_KEY_CREDENTIAL_REQUEST);
            bundle.putString("androidx.credentials.BUNDLE_KEY_REQUEST_JSON", requestJson);
            bundle.putByteArray("androidx.credentials.BUNDLE_KEY_CLIENT_DATA_HASH", bArr);
            return bundle;
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CreatePublicKeyCredentialRequest(@NotNull String requestJson) {
        this(requestJson, null, false, null, false, 30, null);
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

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CreatePublicKeyCredentialRequest(@NotNull String requestJson, @Nullable byte[] bArr) {
        this(requestJson, bArr, false, null, false, 28, null);
        Intrinsics.checkNotNullParameter(requestJson, "requestJson");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CreatePublicKeyCredentialRequest(@NotNull String requestJson, @Nullable byte[] bArr, boolean z10) {
        this(requestJson, bArr, z10, null, false, 24, null);
        Intrinsics.checkNotNullParameter(requestJson, "requestJson");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CreatePublicKeyCredentialRequest(@NotNull String requestJson, @Nullable byte[] bArr, boolean z10, @Nullable String str) {
        this(requestJson, bArr, z10, str, false, 16, null);
        Intrinsics.checkNotNullParameter(requestJson, "requestJson");
    }

    public /* synthetic */ CreatePublicKeyCredentialRequest(String str, byte[] bArr, boolean z10, boolean z11, CreateCredentialRequest.DisplayInfo displayInfo, String str2, Bundle bundle, Bundle bundle2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, bArr, z10, z11, displayInfo, str2, bundle, bundle2);
    }

    /* synthetic */ CreatePublicKeyCredentialRequest(String str, byte[] bArr, boolean z10, boolean z11, CreateCredentialRequest.DisplayInfo displayInfo, String str2, Bundle bundle, Bundle bundle2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, bArr, z10, z11, displayInfo, (i10 & 32) != 0 ? null : str2, (i10 & 64) != 0 ? Companion.toCredentialDataBundle$credentials_release(str, bArr) : bundle, (i10 & 128) != 0 ? Companion.toCandidateDataBundle$credentials_release(str, bArr) : bundle2);
    }

    private CreatePublicKeyCredentialRequest(String str, byte[] bArr, boolean z10, boolean z11, CreateCredentialRequest.DisplayInfo displayInfo, String str2, Bundle bundle, Bundle bundle2) {
        super(PublicKeyCredential.TYPE_PUBLIC_KEY_CREDENTIAL, bundle, bundle2, false, z10, displayInfo, str2, z11);
        this.requestJson = str;
        this.clientDataHash = bArr;
        if (!RequestValidationHelper.Companion.isValidJSON(str)) {
            throw new IllegalArgumentException("requestJson must not be empty, and must be a valid JSON");
        }
    }

    public /* synthetic */ CreatePublicKeyCredentialRequest(String str, byte[] bArr, boolean z10, String str2, boolean z11, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? null : bArr, (i10 & 4) != 0 ? false : z10, (i10 & 8) != 0 ? null : str2, (i10 & 16) != 0 ? false : z11);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CreatePublicKeyCredentialRequest(@NotNull String requestJson, @Nullable byte[] bArr, boolean z10, @Nullable String str, boolean z11) {
        this(requestJson, bArr, z11, z10, Companion.getRequestDisplayInfo$credentials_release$default(Companion, requestJson, null, 2, null), str, null, null, 192, null);
        Intrinsics.checkNotNullParameter(requestJson, "requestJson");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CreatePublicKeyCredentialRequest(@NotNull String requestJson, @Nullable byte[] bArr, boolean z10, @Nullable String str, @Nullable String str2, boolean z11) {
        this(requestJson, bArr, z11, z10, Companion.getRequestDisplayInfo$credentials_release(requestJson, str2), str, null, null, 192, null);
        Intrinsics.checkNotNullParameter(requestJson, "requestJson");
    }
}
