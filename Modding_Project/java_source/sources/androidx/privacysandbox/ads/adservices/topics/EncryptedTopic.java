package androidx.privacysandbox.ads.adservices.topics;

import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import java.util.Arrays;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EncryptedTopic.kt */
@ExperimentalFeatures.Ext11OptIn
@Metadata
/* loaded from: classes2.dex */
public final class EncryptedTopic {
    @NotNull
    private final byte[] encapsulatedKey;
    @NotNull
    private final byte[] encryptedTopic;
    @NotNull
    private final String keyIdentifier;

    public EncryptedTopic(@NotNull byte[] encryptedTopic, @NotNull String keyIdentifier, @NotNull byte[] encapsulatedKey) {
        Intrinsics.checkNotNullParameter(encryptedTopic, "encryptedTopic");
        Intrinsics.checkNotNullParameter(keyIdentifier, "keyIdentifier");
        Intrinsics.checkNotNullParameter(encapsulatedKey, "encapsulatedKey");
        this.encryptedTopic = encryptedTopic;
        this.keyIdentifier = keyIdentifier;
        this.encapsulatedKey = encapsulatedKey;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EncryptedTopic)) {
            return false;
        }
        EncryptedTopic encryptedTopic = (EncryptedTopic) obj;
        if (Arrays.equals(this.encryptedTopic, encryptedTopic.encryptedTopic) && this.keyIdentifier.contentEquals(encryptedTopic.keyIdentifier) && Arrays.equals(this.encapsulatedKey, encryptedTopic.encapsulatedKey)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final byte[] getEncapsulatedKey() {
        return this.encapsulatedKey;
    }

    @NotNull
    public final byte[] getEncryptedTopic() {
        return this.encryptedTopic;
    }

    @NotNull
    public final String getKeyIdentifier() {
        return this.keyIdentifier;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(Arrays.hashCode(this.encryptedTopic)), this.keyIdentifier, Integer.valueOf(Arrays.hashCode(this.encapsulatedKey)));
    }

    @NotNull
    public String toString() {
        return "EncryptedTopic { " + ("EncryptedTopic=" + StringsKt.C(this.encryptedTopic) + ", KeyIdentifier=" + this.keyIdentifier + ", EncapsulatedKey=" + StringsKt.C(this.encapsulatedKey) + " }");
    }
}
