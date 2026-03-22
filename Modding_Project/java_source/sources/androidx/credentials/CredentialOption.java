package androidx.credentials;

import android.content.ComponentName;
import android.os.Bundle;
import androidx.annotation.RestrictTo;
import androidx.credentials.internal.FrameworkClassParsingException;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CredentialOption.kt */
@Metadata
/* loaded from: classes.dex */
public abstract class CredentialOption {
    @NotNull
    public static final String BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED = "androidx.credentials.BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED";
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final Set<ComponentName> allowedProviders;
    @NotNull
    private final Bundle candidateQueryData;
    private final boolean isAutoSelectAllowed;
    private final boolean isSystemProviderRequired;
    @NotNull
    private final Bundle requestData;
    @NotNull
    private final String type;

    /* compiled from: CredentialOption.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @NotNull
        public final CredentialOption createFrom(@NotNull String type, @NotNull Bundle requestData, @NotNull Bundle candidateQueryData, boolean z10, @NotNull Set<ComponentName> allowedProviders) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(requestData, "requestData");
            Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
            Intrinsics.checkNotNullParameter(allowedProviders, "allowedProviders");
            try {
                if (Intrinsics.areEqual(type, PasswordCredential.TYPE_PASSWORD_CREDENTIAL)) {
                    return GetPasswordOption.Companion.createFrom$credentials_release(requestData, allowedProviders, candidateQueryData);
                }
                if (Intrinsics.areEqual(type, PublicKeyCredential.TYPE_PUBLIC_KEY_CREDENTIAL)) {
                    String string = requestData.getString(PublicKeyCredential.BUNDLE_KEY_SUBTYPE);
                    if (string != null && string.hashCode() == -613058807 && string.equals(GetPublicKeyCredentialOption.BUNDLE_VALUE_SUBTYPE_GET_PUBLIC_KEY_CREDENTIAL_OPTION)) {
                        return GetPublicKeyCredentialOption.Companion.createFrom$credentials_release(requestData, allowedProviders, candidateQueryData);
                    }
                    throw new FrameworkClassParsingException();
                }
                throw new FrameworkClassParsingException();
            } catch (FrameworkClassParsingException unused) {
                return new GetCustomCredentialOption(type, requestData, candidateQueryData, z10, requestData.getBoolean("androidx.credentials.BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED", false), allowedProviders);
            }
        }

        public final boolean extractAutoSelectValue$credentials_release(@NotNull Bundle data) {
            Intrinsics.checkNotNullParameter(data, "data");
            return data.getBoolean("androidx.credentials.BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED");
        }

        private Companion() {
        }
    }

    public CredentialOption(@NotNull String type, @NotNull Bundle requestData, @NotNull Bundle candidateQueryData, boolean z10, boolean z11, @NotNull Set<ComponentName> allowedProviders) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(requestData, "requestData");
        Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
        Intrinsics.checkNotNullParameter(allowedProviders, "allowedProviders");
        this.type = type;
        this.requestData = requestData;
        this.candidateQueryData = candidateQueryData;
        this.isSystemProviderRequired = z10;
        this.isAutoSelectAllowed = z11;
        this.allowedProviders = allowedProviders;
        requestData.putBoolean("androidx.credentials.BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED", z11);
        candidateQueryData.putBoolean("androidx.credentials.BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED", z11);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public static final CredentialOption createFrom(@NotNull String str, @NotNull Bundle bundle, @NotNull Bundle bundle2, boolean z10, @NotNull Set<ComponentName> set) {
        return Companion.createFrom(str, bundle, bundle2, z10, set);
    }

    @NotNull
    public final Set<ComponentName> getAllowedProviders() {
        return this.allowedProviders;
    }

    @NotNull
    public final Bundle getCandidateQueryData() {
        return this.candidateQueryData;
    }

    @NotNull
    public final Bundle getRequestData() {
        return this.requestData;
    }

    @NotNull
    public final String getType() {
        return this.type;
    }

    public final boolean isAutoSelectAllowed() {
        return this.isAutoSelectAllowed;
    }

    public final boolean isSystemProviderRequired() {
        return this.isSystemProviderRequired;
    }
}
