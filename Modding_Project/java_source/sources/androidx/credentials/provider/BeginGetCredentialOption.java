package androidx.credentials.provider;

import android.os.Bundle;
import androidx.credentials.PasswordCredential;
import androidx.credentials.PublicKeyCredential;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: BeginGetCredentialOption.kt */
@Metadata
/* loaded from: classes.dex */
public abstract class BeginGetCredentialOption {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final Bundle candidateQueryData;
    @NotNull

    /* renamed from: id  reason: collision with root package name */
    private final String f1397id;
    @NotNull
    private final String type;

    /* compiled from: BeginGetCredentialOption.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final BeginGetCredentialOption createFrom$credentials_release(@NotNull String id2, @NotNull String type, @NotNull Bundle candidateQueryData) {
            Intrinsics.checkNotNullParameter(id2, "id");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
            if (Intrinsics.areEqual(type, PasswordCredential.TYPE_PASSWORD_CREDENTIAL)) {
                return BeginGetPasswordOption.Companion.createFrom$credentials_release(candidateQueryData, id2);
            }
            if (Intrinsics.areEqual(type, PublicKeyCredential.TYPE_PUBLIC_KEY_CREDENTIAL)) {
                return BeginGetPublicKeyCredentialOption.Companion.createFrom$credentials_release(candidateQueryData, id2);
            }
            return new BeginGetCustomCredentialOption(id2, type, candidateQueryData);
        }

        private Companion() {
        }
    }

    public BeginGetCredentialOption(@NotNull String id2, @NotNull String type, @NotNull Bundle candidateQueryData) {
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
        this.f1397id = id2;
        this.type = type;
        this.candidateQueryData = candidateQueryData;
    }

    @NotNull
    public final Bundle getCandidateQueryData() {
        return this.candidateQueryData;
    }

    @NotNull
    public final String getId() {
        return this.f1397id;
    }

    @NotNull
    public final String getType() {
        return this.type;
    }
}
