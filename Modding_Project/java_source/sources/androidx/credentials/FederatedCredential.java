package androidx.credentials;

import android.os.Bundle;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: FederatedCredential.kt */
@Metadata
/* loaded from: classes.dex */
public final class FederatedCredential extends Credential {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String TYPE_FEDERATED_CREDENTIAL = "type.federated_credential";

    /* compiled from: FederatedCredential.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    private FederatedCredential() {
        super(TYPE_FEDERATED_CREDENTIAL, new Bundle());
    }
}
