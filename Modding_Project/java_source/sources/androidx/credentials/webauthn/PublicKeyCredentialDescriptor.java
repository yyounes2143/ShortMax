package androidx.credentials.webauthn;

import androidx.annotation.RestrictTo;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FidoDataTypes.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public final class PublicKeyCredentialDescriptor {
    @NotNull

    /* renamed from: id  reason: collision with root package name */
    private final byte[] f1419id;
    @NotNull
    private final List<String> transports;
    @NotNull
    private final String type;

    public PublicKeyCredentialDescriptor(@NotNull String type, @NotNull byte[] id2, @NotNull List<String> transports) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(transports, "transports");
        this.type = type;
        this.f1419id = id2;
        this.transports = transports;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PublicKeyCredentialDescriptor copy$default(PublicKeyCredentialDescriptor publicKeyCredentialDescriptor, String str, byte[] bArr, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = publicKeyCredentialDescriptor.type;
        }
        if ((i10 & 2) != 0) {
            bArr = publicKeyCredentialDescriptor.f1419id;
        }
        if ((i10 & 4) != 0) {
            list = publicKeyCredentialDescriptor.transports;
        }
        return publicKeyCredentialDescriptor.copy(str, bArr, list);
    }

    @NotNull
    public final String component1() {
        return this.type;
    }

    @NotNull
    public final byte[] component2() {
        return this.f1419id;
    }

    @NotNull
    public final List<String> component3() {
        return this.transports;
    }

    @NotNull
    public final PublicKeyCredentialDescriptor copy(@NotNull String type, @NotNull byte[] id2, @NotNull List<String> transports) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(transports, "transports");
        return new PublicKeyCredentialDescriptor(type, id2, transports);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PublicKeyCredentialDescriptor)) {
            return false;
        }
        PublicKeyCredentialDescriptor publicKeyCredentialDescriptor = (PublicKeyCredentialDescriptor) obj;
        if (Intrinsics.areEqual(this.type, publicKeyCredentialDescriptor.type) && Intrinsics.areEqual(this.f1419id, publicKeyCredentialDescriptor.f1419id) && Intrinsics.areEqual(this.transports, publicKeyCredentialDescriptor.transports)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final byte[] getId() {
        return this.f1419id;
    }

    @NotNull
    public final List<String> getTransports() {
        return this.transports;
    }

    @NotNull
    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        return (((this.type.hashCode() * 31) + Arrays.hashCode(this.f1419id)) * 31) + this.transports.hashCode();
    }

    @NotNull
    public String toString() {
        return "PublicKeyCredentialDescriptor(type=" + this.type + ", id=" + Arrays.toString(this.f1419id) + ", transports=" + this.transports + ')';
    }
}
