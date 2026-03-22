package androidx.credentials;

import android.content.ComponentName;
import android.os.Bundle;
import androidx.credentials.internal.FrameworkClassParsingException;
import androidx.credentials.internal.RequestValidationHelper;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.y0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GetPublicKeyCredentialOption.kt */
@Metadata
/* loaded from: classes.dex */
public final class GetPublicKeyCredentialOption extends CredentialOption {
    @NotNull
    public static final String BUNDLE_KEY_CLIENT_DATA_HASH = "androidx.credentials.BUNDLE_KEY_CLIENT_DATA_HASH";
    @NotNull
    public static final String BUNDLE_KEY_REQUEST_JSON = "androidx.credentials.BUNDLE_KEY_REQUEST_JSON";
    @NotNull
    public static final String BUNDLE_VALUE_SUBTYPE_GET_PUBLIC_KEY_CREDENTIAL_OPTION = "androidx.credentials.BUNDLE_VALUE_SUBTYPE_GET_PUBLIC_KEY_CREDENTIAL_OPTION";
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private final byte[] clientDataHash;
    @NotNull
    private final String requestJson;

    /* compiled from: GetPublicKeyCredentialOption.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final GetPublicKeyCredentialOption createFrom$credentials_release(@NotNull Bundle data, @NotNull Set<ComponentName> allowedProviders, @NotNull Bundle candidateQueryData) {
            Intrinsics.checkNotNullParameter(data, "data");
            Intrinsics.checkNotNullParameter(allowedProviders, "allowedProviders");
            Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
            try {
                String string = data.getString("androidx.credentials.BUNDLE_KEY_REQUEST_JSON");
                byte[] byteArray = data.getByteArray("androidx.credentials.BUNDLE_KEY_CLIENT_DATA_HASH");
                Intrinsics.checkNotNull(string);
                return new GetPublicKeyCredentialOption(string, byteArray, allowedProviders, data, candidateQueryData, null);
            } catch (Exception unused) {
                throw new FrameworkClassParsingException();
            }
        }

        @NotNull
        public final Bundle toRequestDataBundle$credentials_release(@NotNull String requestJson, @Nullable byte[] bArr) {
            Intrinsics.checkNotNullParameter(requestJson, "requestJson");
            Bundle bundle = new Bundle();
            bundle.putString(PublicKeyCredential.BUNDLE_KEY_SUBTYPE, GetPublicKeyCredentialOption.BUNDLE_VALUE_SUBTYPE_GET_PUBLIC_KEY_CREDENTIAL_OPTION);
            bundle.putString("androidx.credentials.BUNDLE_KEY_REQUEST_JSON", requestJson);
            bundle.putByteArray("androidx.credentials.BUNDLE_KEY_CLIENT_DATA_HASH", bArr);
            return bundle;
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GetPublicKeyCredentialOption(@NotNull String requestJson) {
        this(requestJson, (byte[]) null, (Set) null, 6, (DefaultConstructorMarker) null);
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
    public GetPublicKeyCredentialOption(@NotNull String requestJson, @Nullable byte[] bArr) {
        this(requestJson, bArr, (Set) null, 4, (DefaultConstructorMarker) null);
        Intrinsics.checkNotNullParameter(requestJson, "requestJson");
    }

    public /* synthetic */ GetPublicKeyCredentialOption(String str, byte[] bArr, Set set, Bundle bundle, Bundle bundle2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, bArr, set, bundle, bundle2);
    }

    private GetPublicKeyCredentialOption(String str, byte[] bArr, Set<ComponentName> set, Bundle bundle, Bundle bundle2) {
        super(PublicKeyCredential.TYPE_PUBLIC_KEY_CREDENTIAL, bundle, bundle2, false, true, set);
        this.requestJson = str;
        this.clientDataHash = bArr;
        if (!RequestValidationHelper.Companion.isValidJSON(str)) {
            throw new IllegalArgumentException("requestJson must not be empty, and must be a valid JSON");
        }
    }

    public /* synthetic */ GetPublicKeyCredentialOption(String str, byte[] bArr, Set set, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? null : bArr, (i10 & 4) != 0 ? y0.f() : set);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public GetPublicKeyCredentialOption(@org.jetbrains.annotations.NotNull java.lang.String r8, @org.jetbrains.annotations.Nullable byte[] r9, @org.jetbrains.annotations.NotNull java.util.Set<android.content.ComponentName> r10) {
        /*
            r7 = this;
            java.lang.String r0 = "requestJson"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.lang.String r0 = "allowedProviders"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            androidx.credentials.GetPublicKeyCredentialOption$Companion r0 = androidx.credentials.GetPublicKeyCredentialOption.Companion
            android.os.Bundle r5 = r0.toRequestDataBundle$credentials_release(r8, r9)
            android.os.Bundle r6 = r0.toRequestDataBundle$credentials_release(r8, r9)
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r10
            r1.<init>(r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.credentials.GetPublicKeyCredentialOption.<init>(java.lang.String, byte[], java.util.Set):void");
    }
}
