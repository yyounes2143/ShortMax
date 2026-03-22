package androidx.credentials.webauthn;

import androidx.annotation.RestrictTo;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FidoDataTypes.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public final class AuthenticatorSelectionCriteria {
    @NotNull
    private final String authenticatorAttachment;
    private final boolean requireResidentKey;
    @NotNull
    private final String residentKey;
    @NotNull
    private final String userVerification;

    public AuthenticatorSelectionCriteria(@NotNull String authenticatorAttachment, @NotNull String residentKey, boolean z10, @NotNull String userVerification) {
        Intrinsics.checkNotNullParameter(authenticatorAttachment, "authenticatorAttachment");
        Intrinsics.checkNotNullParameter(residentKey, "residentKey");
        Intrinsics.checkNotNullParameter(userVerification, "userVerification");
        this.authenticatorAttachment = authenticatorAttachment;
        this.residentKey = residentKey;
        this.requireResidentKey = z10;
        this.userVerification = userVerification;
    }

    public static /* synthetic */ AuthenticatorSelectionCriteria copy$default(AuthenticatorSelectionCriteria authenticatorSelectionCriteria, String str, String str2, boolean z10, String str3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = authenticatorSelectionCriteria.authenticatorAttachment;
        }
        if ((i10 & 2) != 0) {
            str2 = authenticatorSelectionCriteria.residentKey;
        }
        if ((i10 & 4) != 0) {
            z10 = authenticatorSelectionCriteria.requireResidentKey;
        }
        if ((i10 & 8) != 0) {
            str3 = authenticatorSelectionCriteria.userVerification;
        }
        return authenticatorSelectionCriteria.copy(str, str2, z10, str3);
    }

    @NotNull
    public final String component1() {
        return this.authenticatorAttachment;
    }

    @NotNull
    public final String component2() {
        return this.residentKey;
    }

    public final boolean component3() {
        return this.requireResidentKey;
    }

    @NotNull
    public final String component4() {
        return this.userVerification;
    }

    @NotNull
    public final AuthenticatorSelectionCriteria copy(@NotNull String authenticatorAttachment, @NotNull String residentKey, boolean z10, @NotNull String userVerification) {
        Intrinsics.checkNotNullParameter(authenticatorAttachment, "authenticatorAttachment");
        Intrinsics.checkNotNullParameter(residentKey, "residentKey");
        Intrinsics.checkNotNullParameter(userVerification, "userVerification");
        return new AuthenticatorSelectionCriteria(authenticatorAttachment, residentKey, z10, userVerification);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AuthenticatorSelectionCriteria)) {
            return false;
        }
        AuthenticatorSelectionCriteria authenticatorSelectionCriteria = (AuthenticatorSelectionCriteria) obj;
        if (Intrinsics.areEqual(this.authenticatorAttachment, authenticatorSelectionCriteria.authenticatorAttachment) && Intrinsics.areEqual(this.residentKey, authenticatorSelectionCriteria.residentKey) && this.requireResidentKey == authenticatorSelectionCriteria.requireResidentKey && Intrinsics.areEqual(this.userVerification, authenticatorSelectionCriteria.userVerification)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getAuthenticatorAttachment() {
        return this.authenticatorAttachment;
    }

    public final boolean getRequireResidentKey() {
        return this.requireResidentKey;
    }

    @NotNull
    public final String getResidentKey() {
        return this.residentKey;
    }

    @NotNull
    public final String getUserVerification() {
        return this.userVerification;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.authenticatorAttachment.hashCode() * 31) + this.residentKey.hashCode()) * 31;
        boolean z10 = this.requireResidentKey;
        int i10 = z10;
        if (z10 != 0) {
            i10 = 1;
        }
        return ((hashCode + i10) * 31) + this.userVerification.hashCode();
    }

    @NotNull
    public String toString() {
        return "AuthenticatorSelectionCriteria(authenticatorAttachment=" + this.authenticatorAttachment + ", residentKey=" + this.residentKey + ", requireResidentKey=" + this.requireResidentKey + ", userVerification=" + this.userVerification + ')';
    }

    public /* synthetic */ AuthenticatorSelectionCriteria(String str, String str2, boolean z10, String str3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i10 & 4) != 0 ? false : z10, (i10 & 8) != 0 ? "preferred" : str3);
    }
}
