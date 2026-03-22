package androidx.credentials;

import android.content.ComponentName;
import android.os.Bundle;
import androidx.annotation.RestrictTo;
import androidx.credentials.internal.FrameworkClassParsingException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GetCredentialRequest.kt */
@Metadata
@SourceDebugExtension({"SMAP\nGetCredentialRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetCredentialRequest.kt\nandroidx/credentials/GetCredentialRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,209:1\n1#2:210\n*E\n"})
/* loaded from: classes.dex */
public final class GetCredentialRequest {
    @NotNull
    private static final String BUNDLE_KEY_PREFER_IDENTITY_DOC_UI = "androidx.credentials.BUNDLE_KEY_PREFER_IDENTITY_DOC_UI";
    @NotNull
    public static final String BUNDLE_KEY_PREFER_IMMEDIATELY_AVAILABLE_CREDENTIALS = "androidx.credentials.BUNDLE_KEY_PREFER_IMMEDIATELY_AVAILABLE_CREDENTIALS";
    @NotNull
    private static final String BUNDLE_KEY_PREFER_UI_BRANDING_COMPONENT_NAME = "androidx.credentials.BUNDLE_KEY_PREFER_UI_BRANDING_COMPONENT_NAME";
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final List<CredentialOption> credentialOptions;
    @Nullable
    private final String origin;
    private final boolean preferIdentityDocUi;
    private final boolean preferImmediatelyAvailableCredentials;
    @Nullable
    private final ComponentName preferUiBrandingComponentName;

    /* compiled from: GetCredentialRequest.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Builder {
        @NotNull
        private List<CredentialOption> credentialOptions = new ArrayList();
        @Nullable
        private String origin;
        private boolean preferIdentityDocUi;
        private boolean preferImmediatelyAvailableCredentials;
        @Nullable
        private ComponentName preferUiBrandingComponentName;

        @NotNull
        public final Builder addCredentialOption(@NotNull CredentialOption credentialOption) {
            Intrinsics.checkNotNullParameter(credentialOption, "credentialOption");
            this.credentialOptions.add(credentialOption);
            return this;
        }

        @NotNull
        public final GetCredentialRequest build() {
            return new GetCredentialRequest(CollectionsKt.d1(this.credentialOptions), this.origin, this.preferIdentityDocUi, this.preferUiBrandingComponentName, this.preferImmediatelyAvailableCredentials);
        }

        @NotNull
        public final Builder setCredentialOptions(@NotNull List<? extends CredentialOption> credentialOptions) {
            Intrinsics.checkNotNullParameter(credentialOptions, "credentialOptions");
            this.credentialOptions = CollectionsKt.g1(credentialOptions);
            return this;
        }

        @NotNull
        public final Builder setOrigin(@NotNull String origin) {
            Intrinsics.checkNotNullParameter(origin, "origin");
            this.origin = origin;
            return this;
        }

        @NotNull
        public final Builder setPreferIdentityDocUi(boolean z10) {
            this.preferIdentityDocUi = z10;
            return this;
        }

        @NotNull
        public final Builder setPreferImmediatelyAvailableCredentials(boolean z10) {
            this.preferImmediatelyAvailableCredentials = z10;
            return this;
        }

        @NotNull
        public final Builder setPreferUiBrandingComponentName(@Nullable ComponentName componentName) {
            this.preferUiBrandingComponentName = componentName;
            return this;
        }
    }

    /* compiled from: GetCredentialRequest.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @NotNull
        public final GetCredentialRequest createFrom(@NotNull List<? extends CredentialOption> credentialOptions, @Nullable String str, @NotNull Bundle data) {
            Intrinsics.checkNotNullParameter(credentialOptions, "credentialOptions");
            Intrinsics.checkNotNullParameter(data, "data");
            try {
                boolean z10 = data.getBoolean(GetCredentialRequest.BUNDLE_KEY_PREFER_IDENTITY_DOC_UI);
                Builder preferImmediatelyAvailableCredentials = new Builder().setCredentialOptions(credentialOptions).setPreferIdentityDocUi(z10).setPreferUiBrandingComponentName((ComponentName) data.getParcelable(GetCredentialRequest.BUNDLE_KEY_PREFER_UI_BRANDING_COMPONENT_NAME)).setPreferImmediatelyAvailableCredentials(data.getBoolean("androidx.credentials.BUNDLE_KEY_PREFER_IMMEDIATELY_AVAILABLE_CREDENTIALS"));
                if (str != null) {
                    preferImmediatelyAvailableCredentials.setOrigin(str);
                }
                return preferImmediatelyAvailableCredentials.build();
            } catch (Exception unused) {
                throw new FrameworkClassParsingException();
            }
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @NotNull
        public final Bundle toRequestDataBundle(@NotNull GetCredentialRequest request) {
            Intrinsics.checkNotNullParameter(request, "request");
            Bundle bundle = new Bundle();
            bundle.putBoolean(GetCredentialRequest.BUNDLE_KEY_PREFER_IDENTITY_DOC_UI, request.getPreferIdentityDocUi());
            bundle.putBoolean("androidx.credentials.BUNDLE_KEY_PREFER_IMMEDIATELY_AVAILABLE_CREDENTIALS", request.preferImmediatelyAvailableCredentials());
            bundle.putParcelable(GetCredentialRequest.BUNDLE_KEY_PREFER_UI_BRANDING_COMPONENT_NAME, request.getPreferUiBrandingComponentName());
            return bundle;
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GetCredentialRequest(@NotNull List<? extends CredentialOption> credentialOptions) {
        this(credentialOptions, null, false, null, false, 30, null);
        Intrinsics.checkNotNullParameter(credentialOptions, "credentialOptions");
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public static final GetCredentialRequest createFrom(@NotNull List<? extends CredentialOption> list, @Nullable String str, @NotNull Bundle bundle) {
        return Companion.createFrom(list, str, bundle);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public static final Bundle toRequestDataBundle(@NotNull GetCredentialRequest getCredentialRequest) {
        return Companion.toRequestDataBundle(getCredentialRequest);
    }

    @NotNull
    public final List<CredentialOption> getCredentialOptions() {
        return this.credentialOptions;
    }

    @Nullable
    public final String getOrigin() {
        return this.origin;
    }

    public final boolean getPreferIdentityDocUi() {
        return this.preferIdentityDocUi;
    }

    @Nullable
    public final ComponentName getPreferUiBrandingComponentName() {
        return this.preferUiBrandingComponentName;
    }

    public final boolean preferImmediatelyAvailableCredentials() {
        return this.preferImmediatelyAvailableCredentials;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GetCredentialRequest(@NotNull List<? extends CredentialOption> credentialOptions, @Nullable String str) {
        this(credentialOptions, str, false, null, false, 28, null);
        Intrinsics.checkNotNullParameter(credentialOptions, "credentialOptions");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GetCredentialRequest(@NotNull List<? extends CredentialOption> credentialOptions, @Nullable String str, boolean z10) {
        this(credentialOptions, str, z10, null, false, 24, null);
        Intrinsics.checkNotNullParameter(credentialOptions, "credentialOptions");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GetCredentialRequest(@NotNull List<? extends CredentialOption> credentialOptions, @Nullable String str, boolean z10, @Nullable ComponentName componentName) {
        this(credentialOptions, str, z10, componentName, false, 16, null);
        Intrinsics.checkNotNullParameter(credentialOptions, "credentialOptions");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public GetCredentialRequest(@NotNull List<? extends CredentialOption> credentialOptions, @Nullable String str, boolean z10, @Nullable ComponentName componentName, boolean z11) {
        Intrinsics.checkNotNullParameter(credentialOptions, "credentialOptions");
        this.credentialOptions = credentialOptions;
        this.origin = str;
        this.preferIdentityDocUi = z10;
        this.preferUiBrandingComponentName = componentName;
        this.preferImmediatelyAvailableCredentials = z11;
        if (credentialOptions.isEmpty()) {
            throw new IllegalArgumentException("credentialOptions should not be empty");
        }
    }

    public /* synthetic */ GetCredentialRequest(List list, String str, boolean z10, ComponentName componentName, boolean z11, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i10 & 2) != 0 ? null : str, (i10 & 4) != 0 ? false : z10, (i10 & 8) != 0 ? null : componentName, (i10 & 16) != 0 ? false : z11);
    }
}
