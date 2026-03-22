package androidx.credentials.webauthn;

import androidx.annotation.RestrictTo;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FidoDataTypes.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public final class PublicKeyCredentialParameters {
    private final long alg;
    @NotNull
    private final String type;

    public PublicKeyCredentialParameters(@NotNull String type, long j10) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        this.alg = j10;
    }

    public static /* synthetic */ PublicKeyCredentialParameters copy$default(PublicKeyCredentialParameters publicKeyCredentialParameters, String str, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = publicKeyCredentialParameters.type;
        }
        if ((i10 & 2) != 0) {
            j10 = publicKeyCredentialParameters.alg;
        }
        return publicKeyCredentialParameters.copy(str, j10);
    }

    @NotNull
    public final String component1() {
        return this.type;
    }

    public final long component2() {
        return this.alg;
    }

    @NotNull
    public final PublicKeyCredentialParameters copy(@NotNull String type, long j10) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new PublicKeyCredentialParameters(type, j10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PublicKeyCredentialParameters)) {
            return false;
        }
        PublicKeyCredentialParameters publicKeyCredentialParameters = (PublicKeyCredentialParameters) obj;
        if (Intrinsics.areEqual(this.type, publicKeyCredentialParameters.type) && this.alg == publicKeyCredentialParameters.alg) {
            return true;
        }
        return false;
    }

    public final long getAlg() {
        return this.alg;
    }

    @NotNull
    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        return (this.type.hashCode() * 31) + Long.hashCode(this.alg);
    }

    @NotNull
    public String toString() {
        return "PublicKeyCredentialParameters(type=" + this.type + ", alg=" + this.alg + ')';
    }
}
