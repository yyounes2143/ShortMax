package androidx.credentials;

import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.credentials.internal.FrameworkClassParsingException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CreateCredentialRequest.kt */
@Metadata
/* loaded from: classes.dex */
public abstract class CreateCredentialRequest {
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public static final String BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED = "androidx.credentials.BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED";
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public static final String BUNDLE_KEY_PREFER_IMMEDIATELY_AVAILABLE_CREDENTIALS = "androidx.credentials.BUNDLE_KEY_PREFER_IMMEDIATELY_AVAILABLE_CREDENTIALS";
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final Bundle candidateQueryData;
    @NotNull
    private final Bundle credentialData;
    @NotNull
    private final DisplayInfo displayInfo;
    private final boolean isAutoSelectAllowed;
    private final boolean isSystemProviderRequired;
    @Nullable
    private final String origin;
    private final boolean preferImmediatelyAvailableCredentials;
    @NotNull
    private final String type;

    /* compiled from: CreateCredentialRequest.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ CreateCredentialRequest createFrom$default(Companion companion, String str, Bundle bundle, Bundle bundle2, boolean z10, String str2, int i10, Object obj) {
            if ((i10 & 16) != 0) {
                str2 = null;
            }
            return companion.createFrom(str, bundle, bundle2, z10, str2);
        }

        @RequiresApi(23)
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @Nullable
        public final CreateCredentialRequest createFrom(@NotNull String type, @NotNull Bundle credentialData, @NotNull Bundle candidateQueryData, boolean z10, @Nullable String str) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(credentialData, "credentialData");
            Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
            try {
                if (Intrinsics.areEqual(type, PasswordCredential.TYPE_PASSWORD_CREDENTIAL)) {
                    return CreatePasswordRequest.Companion.createFrom$credentials_release(credentialData, str, candidateQueryData);
                }
                if (Intrinsics.areEqual(type, PublicKeyCredential.TYPE_PUBLIC_KEY_CREDENTIAL)) {
                    String string = credentialData.getString(PublicKeyCredential.BUNDLE_KEY_SUBTYPE);
                    if (string != null && string.hashCode() == 589054771 && string.equals(CreatePublicKeyCredentialRequest.BUNDLE_VALUE_SUBTYPE_CREATE_PUBLIC_KEY_CREDENTIAL_REQUEST)) {
                        return CreatePublicKeyCredentialRequest.Companion.createFrom$credentials_release(credentialData, str, candidateQueryData);
                    }
                    throw new FrameworkClassParsingException();
                }
                throw new FrameworkClassParsingException();
            } catch (FrameworkClassParsingException unused) {
                DisplayInfo parseFromCredentialDataBundle = DisplayInfo.Companion.parseFromCredentialDataBundle(credentialData);
                if (parseFromCredentialDataBundle == null) {
                    return null;
                }
                return new CreateCustomCredentialRequest(type, credentialData, candidateQueryData, z10, parseFromCredentialDataBundle, credentialData.getBoolean("androidx.credentials.BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED", false), str, credentialData.getBoolean("androidx.credentials.BUNDLE_KEY_PREFER_IMMEDIATELY_AVAILABLE_CREDENTIALS", false));
            }
        }

        private Companion() {
        }
    }

    /* compiled from: CreateCredentialRequest.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nCreateCredentialRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateCredentialRequest.kt\nandroidx/credentials/CreateCredentialRequest$DisplayInfo\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,261:1\n1#2:262\n*E\n"})
    /* loaded from: classes.dex */
    public static final class DisplayInfo {
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @NotNull
        public static final String BUNDLE_KEY_CREDENTIAL_TYPE_ICON = "androidx.credentials.BUNDLE_KEY_CREDENTIAL_TYPE_ICON";
        @NotNull
        public static final String BUNDLE_KEY_DEFAULT_PROVIDER = "androidx.credentials.BUNDLE_KEY_DEFAULT_PROVIDER";
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @NotNull
        public static final String BUNDLE_KEY_REQUEST_DISPLAY_INFO = "androidx.credentials.BUNDLE_KEY_REQUEST_DISPLAY_INFO";
        @NotNull
        public static final String BUNDLE_KEY_USER_DISPLAY_NAME = "androidx.credentials.BUNDLE_KEY_USER_DISPLAY_NAME";
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @NotNull
        public static final String BUNDLE_KEY_USER_ID = "androidx.credentials.BUNDLE_KEY_USER_ID";
        @NotNull
        public static final Companion Companion = new Companion(null);
        @Nullable
        private final Icon credentialTypeIcon;
        @Nullable
        private final String preferDefaultProvider;
        @Nullable
        private final CharSequence userDisplayName;
        @NotNull
        private final CharSequence userId;

        /* compiled from: CreateCredentialRequest.kt */
        @Metadata
        /* loaded from: classes.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @RequiresApi(23)
            @RestrictTo({RestrictTo.Scope.LIBRARY})
            @Nullable
            public final DisplayInfo parseFromCredentialDataBundle(@NotNull Bundle from) {
                Intrinsics.checkNotNullParameter(from, "from");
                try {
                    Bundle bundle = from.getBundle(DisplayInfo.BUNDLE_KEY_REQUEST_DISPLAY_INFO);
                    Intrinsics.checkNotNull(bundle);
                    CharSequence charSequence = bundle.getCharSequence(DisplayInfo.BUNDLE_KEY_USER_ID);
                    String string = bundle.getString(DisplayInfo.BUNDLE_KEY_DEFAULT_PROVIDER);
                    Intrinsics.checkNotNull(charSequence);
                    return new DisplayInfo(charSequence, bundle.getCharSequence(DisplayInfo.BUNDLE_KEY_USER_DISPLAY_NAME), (Icon) bundle.getParcelable(DisplayInfo.BUNDLE_KEY_CREDENTIAL_TYPE_ICON), string);
                } catch (Exception unused) {
                    return null;
                }
            }

            private Companion() {
            }
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public DisplayInfo(@NotNull CharSequence userId) {
            this(userId, (CharSequence) null, 2, (DefaultConstructorMarker) null);
            Intrinsics.checkNotNullParameter(userId, "userId");
        }

        @RequiresApi(23)
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @Nullable
        public static final DisplayInfo parseFromCredentialDataBundle(@NotNull Bundle bundle) {
            return Companion.parseFromCredentialDataBundle(bundle);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @Nullable
        public final Icon getCredentialTypeIcon() {
            return this.credentialTypeIcon;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @Nullable
        public final String getPreferDefaultProvider() {
            return this.preferDefaultProvider;
        }

        @Nullable
        public final CharSequence getUserDisplayName() {
            return this.userDisplayName;
        }

        @NotNull
        public final CharSequence getUserId() {
            return this.userId;
        }

        @RequiresApi(23)
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @NotNull
        public final Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putCharSequence(BUNDLE_KEY_USER_ID, this.userId);
            if (!TextUtils.isEmpty(this.userDisplayName)) {
                bundle.putCharSequence(BUNDLE_KEY_USER_DISPLAY_NAME, this.userDisplayName);
            }
            if (!TextUtils.isEmpty(this.preferDefaultProvider)) {
                bundle.putString(BUNDLE_KEY_DEFAULT_PROVIDER, this.preferDefaultProvider);
            }
            return bundle;
        }

        public DisplayInfo(@NotNull CharSequence userId, @Nullable CharSequence charSequence, @Nullable Icon icon, @Nullable String str) {
            Intrinsics.checkNotNullParameter(userId, "userId");
            this.userId = userId;
            this.userDisplayName = charSequence;
            this.credentialTypeIcon = icon;
            this.preferDefaultProvider = str;
            if (userId.length() <= 0) {
                throw new IllegalArgumentException("userId should not be empty");
            }
        }

        public /* synthetic */ DisplayInfo(CharSequence charSequence, CharSequence charSequence2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(charSequence, (i10 & 2) != 0 ? null : charSequence2);
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public DisplayInfo(@NotNull CharSequence userId, @Nullable CharSequence charSequence) {
            this(userId, charSequence, (Icon) null, (String) null);
            Intrinsics.checkNotNullParameter(userId, "userId");
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public DisplayInfo(@NotNull CharSequence userId, @Nullable CharSequence charSequence, @Nullable String str) {
            this(userId, charSequence, (Icon) null, str);
            Intrinsics.checkNotNullParameter(userId, "userId");
        }
    }

    public CreateCredentialRequest(@NotNull String type, @NotNull Bundle credentialData, @NotNull Bundle candidateQueryData, boolean z10, boolean z11, @NotNull DisplayInfo displayInfo, @Nullable String str, boolean z12) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(credentialData, "credentialData");
        Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
        Intrinsics.checkNotNullParameter(displayInfo, "displayInfo");
        this.type = type;
        this.credentialData = credentialData;
        this.candidateQueryData = candidateQueryData;
        this.isSystemProviderRequired = z10;
        this.isAutoSelectAllowed = z11;
        this.displayInfo = displayInfo;
        this.origin = str;
        this.preferImmediatelyAvailableCredentials = z12;
        credentialData.putBoolean("androidx.credentials.BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED", z11);
        credentialData.putBoolean("androidx.credentials.BUNDLE_KEY_PREFER_IMMEDIATELY_AVAILABLE_CREDENTIALS", z12);
        candidateQueryData.putBoolean("androidx.credentials.BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED", z11);
    }

    @RequiresApi(23)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @Nullable
    public static final CreateCredentialRequest createFrom(@NotNull String str, @NotNull Bundle bundle, @NotNull Bundle bundle2, boolean z10, @Nullable String str2) {
        return Companion.createFrom(str, bundle, bundle2, z10, str2);
    }

    @NotNull
    public final Bundle getCandidateQueryData() {
        return this.candidateQueryData;
    }

    @NotNull
    public final Bundle getCredentialData() {
        return this.credentialData;
    }

    @NotNull
    public final DisplayInfo getDisplayInfo() {
        return this.displayInfo;
    }

    @Nullable
    public final String getOrigin() {
        return this.origin;
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

    public final boolean preferImmediatelyAvailableCredentials() {
        return this.preferImmediatelyAvailableCredentials;
    }
}
