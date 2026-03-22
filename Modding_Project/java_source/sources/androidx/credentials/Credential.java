package androidx.credentials;

import android.os.Bundle;
import androidx.annotation.RestrictTo;
import androidx.credentials.internal.FrameworkClassParsingException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Credential.kt */
@Metadata
/* loaded from: classes.dex */
public abstract class Credential {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final Bundle data;
    @NotNull
    private final String type;

    /* compiled from: Credential.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @NotNull
        public final Credential createFrom(@NotNull String type, @NotNull Bundle data) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(data, "data");
            try {
                if (Intrinsics.areEqual(type, PasswordCredential.TYPE_PASSWORD_CREDENTIAL)) {
                    return PasswordCredential.Companion.createFrom$credentials_release(data);
                }
                if (Intrinsics.areEqual(type, PublicKeyCredential.TYPE_PUBLIC_KEY_CREDENTIAL)) {
                    return PublicKeyCredential.Companion.createFrom$credentials_release(data);
                }
                throw new FrameworkClassParsingException();
            } catch (FrameworkClassParsingException unused) {
                return new CustomCredential(type, data);
            }
        }

        private Companion() {
        }
    }

    public Credential(@NotNull String type, @NotNull Bundle data) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(data, "data");
        this.type = type;
        this.data = data;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public static final Credential createFrom(@NotNull String str, @NotNull Bundle bundle) {
        return Companion.createFrom(str, bundle);
    }

    @NotNull
    public final Bundle getData() {
        return this.data;
    }

    @NotNull
    public final String getType() {
        return this.type;
    }
}
