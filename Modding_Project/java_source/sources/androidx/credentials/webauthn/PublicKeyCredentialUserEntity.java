package androidx.credentials.webauthn;

import androidx.annotation.RestrictTo;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FidoDataTypes.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public final class PublicKeyCredentialUserEntity {
    @NotNull
    private final String displayName;
    @NotNull

    /* renamed from: id  reason: collision with root package name */
    private final byte[] f1421id;
    @NotNull
    private final String name;

    public PublicKeyCredentialUserEntity(@NotNull String name, @NotNull byte[] id2, @NotNull String displayName) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(displayName, "displayName");
        this.name = name;
        this.f1421id = id2;
        this.displayName = displayName;
    }

    public static /* synthetic */ PublicKeyCredentialUserEntity copy$default(PublicKeyCredentialUserEntity publicKeyCredentialUserEntity, String str, byte[] bArr, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = publicKeyCredentialUserEntity.name;
        }
        if ((i10 & 2) != 0) {
            bArr = publicKeyCredentialUserEntity.f1421id;
        }
        if ((i10 & 4) != 0) {
            str2 = publicKeyCredentialUserEntity.displayName;
        }
        return publicKeyCredentialUserEntity.copy(str, bArr, str2);
    }

    @NotNull
    public final String component1() {
        return this.name;
    }

    @NotNull
    public final byte[] component2() {
        return this.f1421id;
    }

    @NotNull
    public final String component3() {
        return this.displayName;
    }

    @NotNull
    public final PublicKeyCredentialUserEntity copy(@NotNull String name, @NotNull byte[] id2, @NotNull String displayName) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(displayName, "displayName");
        return new PublicKeyCredentialUserEntity(name, id2, displayName);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PublicKeyCredentialUserEntity)) {
            return false;
        }
        PublicKeyCredentialUserEntity publicKeyCredentialUserEntity = (PublicKeyCredentialUserEntity) obj;
        if (Intrinsics.areEqual(this.name, publicKeyCredentialUserEntity.name) && Intrinsics.areEqual(this.f1421id, publicKeyCredentialUserEntity.f1421id) && Intrinsics.areEqual(this.displayName, publicKeyCredentialUserEntity.displayName)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String getDisplayName() {
        return this.displayName;
    }

    @NotNull
    public final byte[] getId() {
        return this.f1421id;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        return (((this.name.hashCode() * 31) + Arrays.hashCode(this.f1421id)) * 31) + this.displayName.hashCode();
    }

    @NotNull
    public String toString() {
        return "PublicKeyCredentialUserEntity(name=" + this.name + ", id=" + Arrays.toString(this.f1421id) + ", displayName=" + this.displayName + ')';
    }
}
