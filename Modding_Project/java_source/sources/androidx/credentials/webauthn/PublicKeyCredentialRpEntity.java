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
public final class PublicKeyCredentialRpEntity {
    @NotNull

    /* renamed from: id  reason: collision with root package name */
    private final String f1420id;
    @NotNull
    private final String name;

    public PublicKeyCredentialRpEntity(@NotNull String name, @NotNull String id2) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(id2, "id");
        this.name = name;
        this.f1420id = id2;
    }

    public static /* synthetic */ PublicKeyCredentialRpEntity copy$default(PublicKeyCredentialRpEntity publicKeyCredentialRpEntity, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = publicKeyCredentialRpEntity.name;
        }
        if ((i10 & 2) != 0) {
            str2 = publicKeyCredentialRpEntity.f1420id;
        }
        return publicKeyCredentialRpEntity.copy(str, str2);
    }

    @NotNull
    public final String component1() {
        return this.name;
    }

    @NotNull
    public final String component2() {
        return this.f1420id;
    }

    @NotNull
    public final PublicKeyCredentialRpEntity copy(@NotNull String name, @NotNull String id2) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(id2, "id");
        return new PublicKeyCredentialRpEntity(name, id2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PublicKeyCredentialRpEntity)) {
            return false;
        }
        PublicKeyCredentialRpEntity publicKeyCredentialRpEntity = (PublicKeyCredentialRpEntity) obj;
        if (Intrinsics.areEqual(this.name, publicKeyCredentialRpEntity.name) && Intrinsics.areEqual(this.f1420id, publicKeyCredentialRpEntity.f1420id)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getId() {
        return this.f1420id;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        return (this.name.hashCode() * 31) + this.f1420id.hashCode();
    }

    @NotNull
    public String toString() {
        return "PublicKeyCredentialRpEntity(name=" + this.name + ", id=" + this.f1420id + ')';
    }
}
