package androidx.credentials;

import android.os.Bundle;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.credentials.CreateCredentialRequest;
import androidx.credentials.internal.FrameworkClassParsingException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CreatePasswordRequest.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCreatePasswordRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreatePasswordRequest.kt\nandroidx/credentials/CreatePasswordRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,199:1\n1#2:200\n*E\n"})
/* loaded from: classes.dex */
public final class CreatePasswordRequest extends CreateCredentialRequest {
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public static final String BUNDLE_KEY_ID = "androidx.credentials.BUNDLE_KEY_ID";
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public static final String BUNDLE_KEY_PASSWORD = "androidx.credentials.BUNDLE_KEY_PASSWORD";
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: id  reason: collision with root package name */
    private final String f1395id;
    @NotNull
    private final String password;

    /* compiled from: CreatePasswordRequest.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @RequiresApi(23)
        @NotNull
        public final CreatePasswordRequest createFrom$credentials_release(@NotNull Bundle data, @Nullable String str, @NotNull Bundle candidateQueryData) {
            Intrinsics.checkNotNullParameter(data, "data");
            Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
            try {
                String string = data.getString("androidx.credentials.BUNDLE_KEY_ID");
                Intrinsics.checkNotNull(string);
                String string2 = data.getString("androidx.credentials.BUNDLE_KEY_PASSWORD");
                Intrinsics.checkNotNull(string2);
                CreateCredentialRequest.DisplayInfo parseFromCredentialDataBundle = CreateCredentialRequest.DisplayInfo.Companion.parseFromCredentialDataBundle(data);
                if (parseFromCredentialDataBundle == null) {
                    parseFromCredentialDataBundle = new CreateCredentialRequest.DisplayInfo(string, null);
                }
                boolean z10 = data.getBoolean("androidx.credentials.BUNDLE_KEY_PREFER_IMMEDIATELY_AVAILABLE_CREDENTIALS", false);
                return new CreatePasswordRequest(string, string2, data.getBoolean("androidx.credentials.BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED", false), parseFromCredentialDataBundle, str, z10, data, candidateQueryData, null);
            } catch (Exception unused) {
                throw new FrameworkClassParsingException();
            }
        }

        @NotNull
        public final Bundle toCandidateDataBundle$credentials_release() {
            return new Bundle();
        }

        @NotNull
        public final Bundle toCredentialDataBundle$credentials_release(@NotNull String id2, @NotNull String password) {
            Intrinsics.checkNotNullParameter(id2, "id");
            Intrinsics.checkNotNullParameter(password, "password");
            Bundle bundle = new Bundle();
            bundle.putString("androidx.credentials.BUNDLE_KEY_ID", id2);
            bundle.putString("androidx.credentials.BUNDLE_KEY_PASSWORD", password);
            return bundle;
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CreatePasswordRequest(@NotNull String id2, @NotNull String password) {
        this(id2, password, null, false, false, 28, null);
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(password, "password");
    }

    @NotNull
    public final String getId() {
        return this.f1395id;
    }

    @NotNull
    public final String getPassword() {
        return this.password;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CreatePasswordRequest(@NotNull String id2, @NotNull String password, @Nullable String str) {
        this(id2, password, str, false, false, 24, null);
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(password, "password");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CreatePasswordRequest(@NotNull String id2, @NotNull String password, @Nullable String str, boolean z10) {
        this(id2, password, str, z10, false, 16, null);
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(password, "password");
    }

    public /* synthetic */ CreatePasswordRequest(String str, String str2, boolean z10, CreateCredentialRequest.DisplayInfo displayInfo, String str3, boolean z11, Bundle bundle, Bundle bundle2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, z10, displayInfo, str3, z11, bundle, bundle2);
    }

    /* synthetic */ CreatePasswordRequest(String str, String str2, boolean z10, CreateCredentialRequest.DisplayInfo displayInfo, String str3, boolean z11, Bundle bundle, Bundle bundle2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, z10, displayInfo, (i10 & 16) != 0 ? null : str3, z11, (i10 & 64) != 0 ? Companion.toCredentialDataBundle$credentials_release(str, str2) : bundle, (i10 & 128) != 0 ? Companion.toCandidateDataBundle$credentials_release() : bundle2);
    }

    private CreatePasswordRequest(String str, String str2, boolean z10, CreateCredentialRequest.DisplayInfo displayInfo, String str3, boolean z11, Bundle bundle, Bundle bundle2) {
        super(PasswordCredential.TYPE_PASSWORD_CREDENTIAL, bundle, bundle2, false, z10, displayInfo, str3, z11);
        this.f1395id = str;
        this.password = str2;
        if (str2.length() <= 0) {
            throw new IllegalArgumentException("password should not be empty");
        }
    }

    public /* synthetic */ CreatePasswordRequest(String str, String str2, String str3, boolean z10, boolean z11, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i10 & 4) != 0 ? null : str3, (i10 & 8) != 0 ? false : z10, (i10 & 16) != 0 ? false : z11);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CreatePasswordRequest(@NotNull String id2, @NotNull String password, @Nullable String str, boolean z10, boolean z11) {
        this(id2, password, z11, new CreateCredentialRequest.DisplayInfo(id2, null), str, z10, null, null, 192, null);
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(password, "password");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CreatePasswordRequest(@NotNull String id2, @NotNull String password, @Nullable String str, @Nullable String str2, boolean z10, boolean z11) {
        this(id2, password, z11, new CreateCredentialRequest.DisplayInfo(id2, null, str2), str, z10, null, null, 192, null);
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(password, "password");
    }
}
