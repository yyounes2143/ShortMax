package androidx.credentials.playservices.controllers.CreatePublicKeyCredential;

import android.util.Base64;
import android.util.Log;
import androidx.credentials.CreatePublicKeyCredentialRequest;
import androidx.credentials.GetPublicKeyCredentialOption;
import androidx.credentials.exceptions.CreateCredentialCancellationException;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.exceptions.GetCredentialCancellationException;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.exceptions.GetCredentialUnknownException;
import androidx.credentials.exceptions.domerrors.AbortError;
import androidx.credentials.exceptions.domerrors.ConstraintError;
import androidx.credentials.exceptions.domerrors.DataError;
import androidx.credentials.exceptions.domerrors.DomError;
import androidx.credentials.exceptions.domerrors.EncodingError;
import androidx.credentials.exceptions.domerrors.InvalidStateError;
import androidx.credentials.exceptions.domerrors.NetworkError;
import androidx.credentials.exceptions.domerrors.NotAllowedError;
import androidx.credentials.exceptions.domerrors.NotReadableError;
import androidx.credentials.exceptions.domerrors.NotSupportedError;
import androidx.credentials.exceptions.domerrors.SecurityError;
import androidx.credentials.exceptions.domerrors.TimeoutError;
import androidx.credentials.exceptions.domerrors.UnknownError;
import androidx.credentials.exceptions.publickeycredential.CreatePublicKeyCredentialDomException;
import androidx.credentials.exceptions.publickeycredential.GetPublicKeyCredentialDomException;
import com.google.android.gms.auth.api.identity.BeginSignInRequest;
import com.google.android.gms.auth.api.identity.SignInCredential;
import com.google.android.gms.fido.common.Transport;
import com.google.android.gms.fido.fido2.api.common.Attachment;
import com.google.android.gms.fido.fido2.api.common.AttestationConveyancePreference;
import com.google.android.gms.fido.fido2.api.common.AuthenticationExtensions;
import com.google.android.gms.fido.fido2.api.common.AuthenticatorAssertionResponse;
import com.google.android.gms.fido.fido2.api.common.AuthenticatorErrorResponse;
import com.google.android.gms.fido.fido2.api.common.AuthenticatorResponse;
import com.google.android.gms.fido.fido2.api.common.AuthenticatorSelectionCriteria;
import com.google.android.gms.fido.fido2.api.common.COSEAlgorithmIdentifier;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import com.google.android.gms.fido.fido2.api.common.ErrorCode;
import com.google.android.gms.fido.fido2.api.common.FidoAppIdExtension;
import com.google.android.gms.fido.fido2.api.common.GoogleThirdPartyPaymentExtension;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredential;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialCreationOptions;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialDescriptor;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialParameters;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialRpEntity;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialUserEntity;
import com.google.android.gms.fido.fido2.api.common.ResidentKeyRequirement;
import com.google.android.gms.fido.fido2.api.common.UserVerificationMethodExtension;
import com.google.android.gms.fido.u2f.api.common.ClientData;
import com.huawei.hms.support.feature.result.CommonConstant;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import ms.c;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: PublicKeyCredentialControllerUtility.kt */
@Metadata
/* loaded from: classes.dex */
public final class PublicKeyCredentialControllerUtility {
    private static final int FLAGS = 11;
    @NotNull
    private static final String TAG = "PublicKeyUtility";
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String JSON_KEY_CLIENT_DATA = "clientDataJSON";
    @NotNull
    private static final String JSON_KEY_ATTESTATION_OBJ = "attestationObject";
    @NotNull
    private static final String JSON_KEY_AUTH_DATA = "authenticatorData";
    @NotNull
    private static final String JSON_KEY_SIGNATURE = InAppPurchaseMetaData.KEY_SIGNATURE;
    @NotNull
    private static final String JSON_KEY_USER_HANDLE = "userHandle";
    @NotNull
    private static final String JSON_KEY_RESPONSE = "response";
    @NotNull
    private static final String JSON_KEY_ID = "id";
    @NotNull
    private static final String JSON_KEY_RAW_ID = "rawId";
    @NotNull
    private static final String JSON_KEY_TYPE = "type";
    @NotNull
    private static final String JSON_KEY_RPID = "rpId";
    @NotNull
    private static final String JSON_KEY_CHALLENGE = ClientData.KEY_CHALLENGE;
    @NotNull
    private static final String JSON_KEY_APPID = "appid";
    @NotNull
    private static final String JSON_KEY_THIRD_PARTY_PAYMENT = "thirdPartyPayment";
    @NotNull
    private static final String JSON_KEY_AUTH_SELECTION = "authenticatorSelection";
    @NotNull
    private static final String JSON_KEY_REQUIRE_RES_KEY = "requireResidentKey";
    @NotNull
    private static final String JSON_KEY_RES_KEY = "residentKey";
    @NotNull
    private static final String JSON_KEY_AUTH_ATTACHMENT = "authenticatorAttachment";
    @NotNull
    private static final String JSON_KEY_TIMEOUT = "timeout";
    @NotNull
    private static final String JSON_KEY_EXCLUDE_CREDENTIALS = "excludeCredentials";
    @NotNull
    private static final String JSON_KEY_TRANSPORTS = "transports";
    @NotNull
    private static final String JSON_KEY_RP = "rp";
    @NotNull
    private static final String JSON_KEY_NAME = "name";
    @NotNull
    private static final String JSON_KEY_ICON = "icon";
    @NotNull
    private static final String JSON_KEY_ALG = "alg";
    @NotNull
    private static final String JSON_KEY_USER = "user";
    @NotNull
    private static final String JSON_KEY_DISPLAY_NAME = CommonConstant.KEY_DISPLAY_NAME;
    @NotNull
    private static final String JSON_KEY_USER_VERIFICATION_METHOD = "userVerificationMethod";
    @NotNull
    private static final String JSON_KEY_KEY_PROTECTION_TYPE = "keyProtectionType";
    @NotNull
    private static final String JSON_KEY_MATCHER_PROTECTION_TYPE = "matcherProtectionType";
    @NotNull
    private static final String JSON_KEY_EXTENSTIONS = "extensions";
    @NotNull
    private static final String JSON_KEY_ATTESTATION = "attestation";
    @NotNull
    private static final String JSON_KEY_PUB_KEY_CRED_PARAMS = "pubKeyCredParams";
    @NotNull
    private static final String JSON_KEY_CLIENT_EXTENSION_RESULTS = "clientExtensionResults";
    @NotNull
    private static final String JSON_KEY_RK = "rk";
    @NotNull
    private static final String JSON_KEY_CRED_PROPS = "credProps";
    @NotNull
    private static final LinkedHashMap<ErrorCode, DomError> orderedErrorCodeToExceptions = p0.l(k.a(ErrorCode.UNKNOWN_ERR, new UnknownError()), k.a(ErrorCode.ABORT_ERR, new AbortError()), k.a(ErrorCode.ATTESTATION_NOT_PRIVATE_ERR, new NotReadableError()), k.a(ErrorCode.CONSTRAINT_ERR, new ConstraintError()), k.a(ErrorCode.DATA_ERR, new DataError()), k.a(ErrorCode.INVALID_STATE_ERR, new InvalidStateError()), k.a(ErrorCode.ENCODING_ERR, new EncodingError()), k.a(ErrorCode.NETWORK_ERR, new NetworkError()), k.a(ErrorCode.NOT_ALLOWED_ERR, new NotAllowedError()), k.a(ErrorCode.NOT_SUPPORTED_ERR, new NotSupportedError()), k.a(ErrorCode.SECURITY_ERR, new SecurityError()), k.a(ErrorCode.TIMEOUT_ERR, new TimeoutError()));

    /* compiled from: PublicKeyCredentialControllerUtility.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final byte[] getChallenge(JSONObject jSONObject) {
            String challengeB64 = jSONObject.optString(getJSON_KEY_CHALLENGE$credentials_play_services_auth_release(), "");
            Intrinsics.checkNotNullExpressionValue(challengeB64, "challengeB64");
            if (challengeB64.length() != 0) {
                return b64Decode(challengeB64);
            }
            throw new JSONException("Challenge not found in request or is unexpectedly empty");
        }

        public final void addAuthenticatorAttestationResponse$credentials_play_services_auth_release(@NotNull byte[] clientDataJSON, @NotNull byte[] attestationObject, @NotNull String[] transportArray, @NotNull JSONObject json) {
            Intrinsics.checkNotNullParameter(clientDataJSON, "clientDataJSON");
            Intrinsics.checkNotNullParameter(attestationObject, "attestationObject");
            Intrinsics.checkNotNullParameter(transportArray, "transportArray");
            Intrinsics.checkNotNullParameter(json, "json");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(getJSON_KEY_CLIENT_DATA$credentials_play_services_auth_release(), b64Encode(clientDataJSON));
            jSONObject.put(getJSON_KEY_ATTESTATION_OBJ$credentials_play_services_auth_release(), b64Encode(attestationObject));
            jSONObject.put(getJSON_KEY_TRANSPORTS$credentials_play_services_auth_release(), new JSONArray(transportArray));
            json.put(getJSON_KEY_RESPONSE$credentials_play_services_auth_release(), jSONObject);
        }

        @NotNull
        public final byte[] b64Decode(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "str");
            byte[] decode = Base64.decode(str, 11);
            Intrinsics.checkNotNullExpressionValue(decode, "decode(str, FLAGS)");
            return decode;
        }

        @NotNull
        public final String b64Encode(@NotNull byte[] data) {
            Intrinsics.checkNotNullParameter(data, "data");
            String encodeToString = Base64.encodeToString(data, 11);
            Intrinsics.checkNotNullExpressionValue(encodeToString, "encodeToString(data, FLAGS)");
            return encodeToString;
        }

        @NotNull
        public final GetCredentialException beginSignInPublicKeyCredentialResponseContainsError$credentials_play_services_auth_release(@NotNull ErrorCode code, @Nullable String str) {
            Intrinsics.checkNotNullParameter(code, "code");
            DomError domError = getOrderedErrorCodeToExceptions$credentials_play_services_auth_release().get(code);
            if (domError == null) {
                UnknownError unknownError = new UnknownError();
                return new GetPublicKeyCredentialDomException(unknownError, "unknown fido gms exception - " + str);
            } else if (code == ErrorCode.CONSTRAINT_ERR && str != null && StringsKt.b0(str, "Unable to get sync account", false, 2, null)) {
                return new GetCredentialCancellationException("Passkey retrieval was cancelled by the user.");
            } else {
                return new GetPublicKeyCredentialDomException(domError, str);
            }
        }

        public final boolean checkAlgSupported(int i10) {
            try {
                COSEAlgorithmIdentifier.fromCoseValue(i10);
                return true;
            } catch (Throwable unused) {
                return false;
            }
        }

        @NotNull
        public final PublicKeyCredentialCreationOptions convert(@NotNull CreatePublicKeyCredentialRequest request) {
            Intrinsics.checkNotNullParameter(request, "request");
            return convertJSON$credentials_play_services_auth_release(new JSONObject(request.getRequestJson()));
        }

        @NotNull
        public final PublicKeyCredentialCreationOptions convertJSON$credentials_play_services_auth_release(@NotNull JSONObject json) {
            Intrinsics.checkNotNullParameter(json, "json");
            PublicKeyCredentialCreationOptions.Builder builder = new PublicKeyCredentialCreationOptions.Builder();
            parseRequiredChallengeAndUser$credentials_play_services_auth_release(json, builder);
            parseRequiredRpAndParams$credentials_play_services_auth_release(json, builder);
            parseOptionalWithRequiredDefaultsAttestationAndExcludeCredentials$credentials_play_services_auth_release(json, builder);
            parseOptionalTimeout$credentials_play_services_auth_release(json, builder);
            parseOptionalAuthenticatorSelection$credentials_play_services_auth_release(json, builder);
            parseOptionalExtensions$credentials_play_services_auth_release(json, builder);
            PublicKeyCredentialCreationOptions build = builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "builder.build()");
            return build;
        }

        @NotNull
        public final BeginSignInRequest.PasskeyJsonRequestOptions convertToPlayAuthPasskeyJsonRequest(@NotNull GetPublicKeyCredentialOption option) {
            Intrinsics.checkNotNullParameter(option, "option");
            BeginSignInRequest.PasskeyJsonRequestOptions build = new BeginSignInRequest.PasskeyJsonRequestOptions.Builder().setSupported(true).setRequestJson(option.getRequestJson()).build();
            Intrinsics.checkNotNullExpressionValue(build, "Builder()\n        .setSu…estJson)\n        .build()");
            return build;
        }

        @c
        @NotNull
        public final BeginSignInRequest.PasskeysRequestOptions convertToPlayAuthPasskeyRequest(@NotNull GetPublicKeyCredentialOption option) {
            Intrinsics.checkNotNullParameter(option, "option");
            JSONObject jSONObject = new JSONObject(option.getRequestJson());
            String rpId = jSONObject.optString(getJSON_KEY_RPID$credentials_play_services_auth_release(), "");
            Intrinsics.checkNotNullExpressionValue(rpId, "rpId");
            if (rpId.length() != 0) {
                BeginSignInRequest.PasskeysRequestOptions build = new BeginSignInRequest.PasskeysRequestOptions.Builder().setSupported(true).setRpId(rpId).setChallenge(getChallenge(jSONObject)).build();
                Intrinsics.checkNotNullExpressionValue(build, "Builder()\n        .setSu…allenge)\n        .build()");
                return build;
            }
            throw new JSONException("GetPublicKeyCredentialOption - rpId not specified in the request or is unexpectedly empty");
        }

        @NotNull
        public final String getJSON_KEY_ALG$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_ALG;
        }

        @NotNull
        public final String getJSON_KEY_APPID$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_APPID;
        }

        @NotNull
        public final String getJSON_KEY_ATTESTATION$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_ATTESTATION;
        }

        @NotNull
        public final String getJSON_KEY_ATTESTATION_OBJ$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_ATTESTATION_OBJ;
        }

        @NotNull
        public final String getJSON_KEY_AUTH_ATTACHMENT$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_AUTH_ATTACHMENT;
        }

        @NotNull
        public final String getJSON_KEY_AUTH_DATA$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_AUTH_DATA;
        }

        @NotNull
        public final String getJSON_KEY_AUTH_SELECTION$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_AUTH_SELECTION;
        }

        @NotNull
        public final String getJSON_KEY_CHALLENGE$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_CHALLENGE;
        }

        @NotNull
        public final String getJSON_KEY_CLIENT_DATA$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_CLIENT_DATA;
        }

        @NotNull
        public final String getJSON_KEY_CLIENT_EXTENSION_RESULTS$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_CLIENT_EXTENSION_RESULTS;
        }

        @NotNull
        public final String getJSON_KEY_CRED_PROPS$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_CRED_PROPS;
        }

        @NotNull
        public final String getJSON_KEY_DISPLAY_NAME$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_DISPLAY_NAME;
        }

        @NotNull
        public final String getJSON_KEY_EXCLUDE_CREDENTIALS$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_EXCLUDE_CREDENTIALS;
        }

        @NotNull
        public final String getJSON_KEY_EXTENSTIONS$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_EXTENSTIONS;
        }

        @NotNull
        public final String getJSON_KEY_ICON$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_ICON;
        }

        @NotNull
        public final String getJSON_KEY_ID$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_ID;
        }

        @NotNull
        public final String getJSON_KEY_KEY_PROTECTION_TYPE$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_KEY_PROTECTION_TYPE;
        }

        @NotNull
        public final String getJSON_KEY_MATCHER_PROTECTION_TYPE$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_MATCHER_PROTECTION_TYPE;
        }

        @NotNull
        public final String getJSON_KEY_NAME$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_NAME;
        }

        @NotNull
        public final String getJSON_KEY_PUB_KEY_CRED_PARAMS$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_PUB_KEY_CRED_PARAMS;
        }

        @NotNull
        public final String getJSON_KEY_RAW_ID$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_RAW_ID;
        }

        @NotNull
        public final String getJSON_KEY_REQUIRE_RES_KEY$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_REQUIRE_RES_KEY;
        }

        @NotNull
        public final String getJSON_KEY_RESPONSE$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_RESPONSE;
        }

        @NotNull
        public final String getJSON_KEY_RES_KEY$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_RES_KEY;
        }

        @NotNull
        public final String getJSON_KEY_RK$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_RK;
        }

        @NotNull
        public final String getJSON_KEY_RP$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_RP;
        }

        @NotNull
        public final String getJSON_KEY_RPID$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_RPID;
        }

        @NotNull
        public final String getJSON_KEY_SIGNATURE$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_SIGNATURE;
        }

        @NotNull
        public final String getJSON_KEY_THIRD_PARTY_PAYMENT$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_THIRD_PARTY_PAYMENT;
        }

        @NotNull
        public final String getJSON_KEY_TIMEOUT$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_TIMEOUT;
        }

        @NotNull
        public final String getJSON_KEY_TRANSPORTS$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_TRANSPORTS;
        }

        @NotNull
        public final String getJSON_KEY_TYPE$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_TYPE;
        }

        @NotNull
        public final String getJSON_KEY_USER$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_USER;
        }

        @NotNull
        public final String getJSON_KEY_USER_HANDLE$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_USER_HANDLE;
        }

        @NotNull
        public final String getJSON_KEY_USER_VERIFICATION_METHOD$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_USER_VERIFICATION_METHOD;
        }

        @NotNull
        public final LinkedHashMap<ErrorCode, DomError> getOrderedErrorCodeToExceptions$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.orderedErrorCodeToExceptions;
        }

        public final void parseOptionalAuthenticatorSelection$credentials_play_services_auth_release(@NotNull JSONObject json, @NotNull PublicKeyCredentialCreationOptions.Builder builder) {
            ResidentKeyRequirement residentKeyRequirement;
            Intrinsics.checkNotNullParameter(json, "json");
            Intrinsics.checkNotNullParameter(builder, "builder");
            if (json.has(getJSON_KEY_AUTH_SELECTION$credentials_play_services_auth_release())) {
                JSONObject jSONObject = json.getJSONObject(getJSON_KEY_AUTH_SELECTION$credentials_play_services_auth_release());
                AuthenticatorSelectionCriteria.Builder builder2 = new AuthenticatorSelectionCriteria.Builder();
                boolean optBoolean = jSONObject.optBoolean(getJSON_KEY_REQUIRE_RES_KEY$credentials_play_services_auth_release(), false);
                String residentKey = jSONObject.optString(getJSON_KEY_RES_KEY$credentials_play_services_auth_release(), "");
                Intrinsics.checkNotNullExpressionValue(residentKey, "residentKey");
                if (residentKey.length() > 0) {
                    residentKeyRequirement = ResidentKeyRequirement.fromString(residentKey);
                } else {
                    residentKeyRequirement = null;
                }
                builder2.setRequireResidentKey(Boolean.valueOf(optBoolean)).setResidentKeyRequirement(residentKeyRequirement);
                String authenticatorAttachmentString = jSONObject.optString(getJSON_KEY_AUTH_ATTACHMENT$credentials_play_services_auth_release(), "");
                Intrinsics.checkNotNullExpressionValue(authenticatorAttachmentString, "authenticatorAttachmentString");
                if (authenticatorAttachmentString.length() > 0) {
                    builder2.setAttachment(Attachment.fromString(authenticatorAttachmentString));
                }
                builder.setAuthenticatorSelection(builder2.build());
            }
        }

        public final void parseOptionalExtensions$credentials_play_services_auth_release(@NotNull JSONObject json, @NotNull PublicKeyCredentialCreationOptions.Builder builder) {
            Intrinsics.checkNotNullParameter(json, "json");
            Intrinsics.checkNotNullParameter(builder, "builder");
            if (json.has(getJSON_KEY_EXTENSTIONS$credentials_play_services_auth_release())) {
                JSONObject jSONObject = json.getJSONObject(getJSON_KEY_EXTENSTIONS$credentials_play_services_auth_release());
                AuthenticationExtensions.Builder builder2 = new AuthenticationExtensions.Builder();
                String appIdExtension = jSONObject.optString(getJSON_KEY_APPID$credentials_play_services_auth_release(), "");
                Intrinsics.checkNotNullExpressionValue(appIdExtension, "appIdExtension");
                if (appIdExtension.length() > 0) {
                    builder2.setFido2Extension(new FidoAppIdExtension(appIdExtension));
                }
                if (jSONObject.optBoolean(getJSON_KEY_THIRD_PARTY_PAYMENT$credentials_play_services_auth_release(), false)) {
                    builder2.setGoogleThirdPartyPaymentExtension(new GoogleThirdPartyPaymentExtension(true));
                }
                if (jSONObject.optBoolean("uvm", false)) {
                    builder2.setUserVerificationMethodExtension(new UserVerificationMethodExtension(true));
                }
                builder.setAuthenticationExtensions(builder2.build());
            }
        }

        public final void parseOptionalTimeout$credentials_play_services_auth_release(@NotNull JSONObject json, @NotNull PublicKeyCredentialCreationOptions.Builder builder) {
            Intrinsics.checkNotNullParameter(json, "json");
            Intrinsics.checkNotNullParameter(builder, "builder");
            if (json.has(getJSON_KEY_TIMEOUT$credentials_play_services_auth_release())) {
                builder.setTimeoutSeconds(Double.valueOf(json.getLong(getJSON_KEY_TIMEOUT$credentials_play_services_auth_release()) / 1000));
            }
        }

        public final void parseOptionalWithRequiredDefaultsAttestationAndExcludeCredentials$credentials_play_services_auth_release(@NotNull JSONObject json, @NotNull PublicKeyCredentialCreationOptions.Builder builder) {
            ArrayList arrayList;
            Intrinsics.checkNotNullParameter(json, "json");
            Intrinsics.checkNotNullParameter(builder, "builder");
            ArrayList arrayList2 = new ArrayList();
            if (json.has(getJSON_KEY_EXCLUDE_CREDENTIALS$credentials_play_services_auth_release())) {
                JSONArray jSONArray = json.getJSONArray(getJSON_KEY_EXCLUDE_CREDENTIALS$credentials_play_services_auth_release());
                int length = jSONArray.length();
                for (int i10 = 0; i10 < length; i10++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i10);
                    String string = jSONObject.getString(getJSON_KEY_ID$credentials_play_services_auth_release());
                    Intrinsics.checkNotNullExpressionValue(string, "descriptorJSON.getString(JSON_KEY_ID)");
                    byte[] b64Decode = b64Decode(string);
                    String descriptorType = jSONObject.getString(getJSON_KEY_TYPE$credentials_play_services_auth_release());
                    Intrinsics.checkNotNullExpressionValue(descriptorType, "descriptorType");
                    if (descriptorType.length() != 0) {
                        if (b64Decode.length != 0) {
                            if (jSONObject.has(getJSON_KEY_TRANSPORTS$credentials_play_services_auth_release())) {
                                arrayList = new ArrayList();
                                JSONArray jSONArray2 = jSONObject.getJSONArray(getJSON_KEY_TRANSPORTS$credentials_play_services_auth_release());
                                int length2 = jSONArray2.length();
                                for (int i11 = 0; i11 < length2; i11++) {
                                    try {
                                        Transport fromString = Transport.fromString(jSONArray2.getString(i11));
                                        Intrinsics.checkNotNullExpressionValue(fromString, "fromString(descriptorTransports.getString(j))");
                                        arrayList.add(fromString);
                                    } catch (Transport.UnsupportedTransportException e10) {
                                        throw new CreatePublicKeyCredentialDomException(new EncodingError(), e10.getMessage());
                                    }
                                }
                                continue;
                            } else {
                                arrayList = null;
                            }
                            arrayList2.add(new PublicKeyCredentialDescriptor(descriptorType, b64Decode, arrayList));
                        } else {
                            throw new JSONException("PublicKeyCredentialDescriptor id value is not found or unexpectedly empty");
                        }
                    } else {
                        throw new JSONException("PublicKeyCredentialDescriptor type value is not found or unexpectedly empty");
                    }
                }
            }
            builder.setExcludeList(arrayList2);
            String jSON_KEY_ATTESTATION$credentials_play_services_auth_release = getJSON_KEY_ATTESTATION$credentials_play_services_auth_release();
            String str = DevicePublicKeyStringDef.NONE;
            String attestationString = json.optString(jSON_KEY_ATTESTATION$credentials_play_services_auth_release, DevicePublicKeyStringDef.NONE);
            Intrinsics.checkNotNullExpressionValue(attestationString, "attestationString");
            if (attestationString.length() != 0) {
                str = attestationString;
            }
            builder.setAttestationConveyancePreference(AttestationConveyancePreference.fromString(str));
        }

        public final void parseRequiredChallengeAndUser$credentials_play_services_auth_release(@NotNull JSONObject json, @NotNull PublicKeyCredentialCreationOptions.Builder builder) {
            Intrinsics.checkNotNullParameter(json, "json");
            Intrinsics.checkNotNullParameter(builder, "builder");
            builder.setChallenge(getChallenge(json));
            JSONObject jSONObject = json.getJSONObject(getJSON_KEY_USER$credentials_play_services_auth_release());
            String string = jSONObject.getString(getJSON_KEY_ID$credentials_play_services_auth_release());
            Intrinsics.checkNotNullExpressionValue(string, "user.getString(JSON_KEY_ID)");
            byte[] b64Decode = b64Decode(string);
            String userName = jSONObject.getString(getJSON_KEY_NAME$credentials_play_services_auth_release());
            String displayName = jSONObject.getString(getJSON_KEY_DISPLAY_NAME$credentials_play_services_auth_release());
            String optString = jSONObject.optString(getJSON_KEY_ICON$credentials_play_services_auth_release(), "");
            Intrinsics.checkNotNullExpressionValue(displayName, "displayName");
            if (displayName.length() != 0) {
                if (b64Decode.length != 0) {
                    Intrinsics.checkNotNullExpressionValue(userName, "userName");
                    if (userName.length() != 0) {
                        builder.setUser(new PublicKeyCredentialUserEntity(b64Decode, userName, optString, displayName));
                        return;
                    }
                    throw new JSONException("PublicKeyCredentialCreationOptions UserEntity missing user name or they are unexpectedly empty");
                }
                throw new JSONException("PublicKeyCredentialCreationOptions UserEntity missing user id or they are unexpectedly empty");
            }
            throw new JSONException("PublicKeyCredentialCreationOptions UserEntity missing displayName or they are unexpectedly empty");
        }

        public final void parseRequiredRpAndParams$credentials_play_services_auth_release(@NotNull JSONObject json, @NotNull PublicKeyCredentialCreationOptions.Builder builder) {
            Intrinsics.checkNotNullParameter(json, "json");
            Intrinsics.checkNotNullParameter(builder, "builder");
            JSONObject jSONObject = json.getJSONObject(getJSON_KEY_RP$credentials_play_services_auth_release());
            String rpId = jSONObject.getString(getJSON_KEY_ID$credentials_play_services_auth_release());
            String rpName = jSONObject.optString(getJSON_KEY_NAME$credentials_play_services_auth_release(), "");
            String optString = jSONObject.optString(getJSON_KEY_ICON$credentials_play_services_auth_release(), "");
            Intrinsics.checkNotNull(optString);
            if (optString.length() == 0) {
                optString = null;
            }
            Intrinsics.checkNotNullExpressionValue(rpName, "rpName");
            if (rpName.length() != 0) {
                Intrinsics.checkNotNullExpressionValue(rpId, "rpId");
                if (rpId.length() != 0) {
                    builder.setRp(new PublicKeyCredentialRpEntity(rpId, rpName, optString));
                    JSONArray jSONArray = json.getJSONArray(getJSON_KEY_PUB_KEY_CRED_PARAMS$credentials_play_services_auth_release());
                    ArrayList arrayList = new ArrayList();
                    int length = jSONArray.length();
                    for (int i10 = 0; i10 < length; i10++) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i10);
                        int i11 = (int) jSONObject2.getLong(getJSON_KEY_ALG$credentials_play_services_auth_release());
                        String typeParam = jSONObject2.optString(getJSON_KEY_TYPE$credentials_play_services_auth_release(), "");
                        Intrinsics.checkNotNullExpressionValue(typeParam, "typeParam");
                        if (typeParam.length() != 0) {
                            if (checkAlgSupported(i11)) {
                                arrayList.add(new PublicKeyCredentialParameters(typeParam, i11));
                            }
                        } else {
                            throw new JSONException("PublicKeyCredentialCreationOptions PublicKeyCredentialParameter type missing or unexpectedly empty");
                        }
                    }
                    builder.setParameters(arrayList);
                    return;
                }
                throw new JSONException("PublicKeyCredentialCreationOptions rp ID is missing or unexpectedly empty");
            }
            throw new JSONException("PublicKeyCredentialCreationOptions rp name is missing or unexpectedly empty");
        }

        @Nullable
        public final CreateCredentialException publicKeyCredentialResponseContainsError(@NotNull PublicKeyCredential cred) {
            Intrinsics.checkNotNullParameter(cred, "cred");
            AuthenticatorResponse response = cred.getResponse();
            Intrinsics.checkNotNullExpressionValue(response, "cred.response");
            if (!(response instanceof AuthenticatorErrorResponse)) {
                return null;
            }
            AuthenticatorErrorResponse authenticatorErrorResponse = (AuthenticatorErrorResponse) response;
            ErrorCode errorCode = authenticatorErrorResponse.getErrorCode();
            Intrinsics.checkNotNullExpressionValue(errorCode, "authenticatorResponse.errorCode");
            DomError domError = getOrderedErrorCodeToExceptions$credentials_play_services_auth_release().get(errorCode);
            String errorMessage = authenticatorErrorResponse.getErrorMessage();
            if (domError == null) {
                UnknownError unknownError = new UnknownError();
                return new CreatePublicKeyCredentialDomException(unknownError, "unknown fido gms exception - " + errorMessage);
            } else if (errorCode == ErrorCode.CONSTRAINT_ERR && errorMessage != null && StringsKt.b0(errorMessage, "Unable to get sync account", false, 2, null)) {
                return new CreateCredentialCancellationException("Passkey registration was cancelled by the user.");
            } else {
                return new CreatePublicKeyCredentialDomException(domError, errorMessage);
            }
        }

        @NotNull
        public final String toAssertPasskeyResponse(@NotNull SignInCredential cred) {
            AuthenticatorResponse authenticatorResponse;
            Intrinsics.checkNotNullParameter(cred, "cred");
            JSONObject jSONObject = new JSONObject();
            PublicKeyCredential publicKeyCredential = cred.getPublicKeyCredential();
            if (publicKeyCredential != null) {
                authenticatorResponse = publicKeyCredential.getResponse();
            } else {
                authenticatorResponse = null;
            }
            Intrinsics.checkNotNull(authenticatorResponse);
            if (!(authenticatorResponse instanceof AuthenticatorErrorResponse)) {
                if (authenticatorResponse instanceof AuthenticatorAssertionResponse) {
                    try {
                        String json = publicKeyCredential.toJson();
                        Intrinsics.checkNotNullExpressionValue(json, "publicKeyCred.toJson()");
                        return json;
                    } catch (Throwable th2) {
                        throw new GetCredentialUnknownException("The PublicKeyCredential response json had an unexpected exception when parsing: " + th2.getMessage());
                    }
                }
                Log.e(PublicKeyCredentialControllerUtility.TAG, "AuthenticatorResponse expected assertion response but got: " + authenticatorResponse.getClass().getName());
                String jSONObject2 = jSONObject.toString();
                Intrinsics.checkNotNullExpressionValue(jSONObject2, "json.toString()");
                return jSONObject2;
            }
            AuthenticatorErrorResponse authenticatorErrorResponse = (AuthenticatorErrorResponse) authenticatorResponse;
            ErrorCode errorCode = authenticatorErrorResponse.getErrorCode();
            Intrinsics.checkNotNullExpressionValue(errorCode, "authenticatorResponse.errorCode");
            throw beginSignInPublicKeyCredentialResponseContainsError$credentials_play_services_auth_release(errorCode, authenticatorErrorResponse.getErrorMessage());
        }

        private Companion() {
        }
    }

    @NotNull
    public static final PublicKeyCredentialCreationOptions convert(@NotNull CreatePublicKeyCredentialRequest createPublicKeyCredentialRequest) {
        return Companion.convert(createPublicKeyCredentialRequest);
    }
}
