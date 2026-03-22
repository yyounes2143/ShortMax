package androidx.credentials.provider;

import android.app.slice.Slice;
import android.app.slice.SliceSpec;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.credentials.PasswordCredential;
import androidx.credentials.PublicKeyCredential;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CredentialEntry.kt */
@Metadata
/* loaded from: classes.dex */
public abstract class CredentialEntry {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final BeginGetCredentialOption beginGetCredentialOption;
    @NotNull
    private final String type;

    /* compiled from: CredentialEntry.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @RequiresApi(28)
        @Nullable
        public final CredentialEntry createFrom$credentials_release(@NotNull Slice slice) {
            SliceSpec spec;
            String str;
            Intrinsics.checkNotNullParameter(slice, "slice");
            try {
                spec = slice.getSpec();
                if (spec != null) {
                    str = spec.getType();
                } else {
                    str = null;
                }
                if (Intrinsics.areEqual(str, PasswordCredential.TYPE_PASSWORD_CREDENTIAL)) {
                    PasswordCredentialEntry fromSlice = PasswordCredentialEntry.Companion.fromSlice(slice);
                    Intrinsics.checkNotNull(fromSlice);
                    return fromSlice;
                } else if (Intrinsics.areEqual(str, PublicKeyCredential.TYPE_PUBLIC_KEY_CREDENTIAL)) {
                    PublicKeyCredentialEntry fromSlice2 = PublicKeyCredentialEntry.Companion.fromSlice(slice);
                    Intrinsics.checkNotNull(fromSlice2);
                    return fromSlice2;
                } else {
                    CustomCredentialEntry fromSlice3 = CustomCredentialEntry.Companion.fromSlice(slice);
                    Intrinsics.checkNotNull(fromSlice3);
                    return fromSlice3;
                }
            } catch (Exception unused) {
                return CustomCredentialEntry.Companion.fromSlice(slice);
            }
        }

        @RequiresApi(28)
        @Nullable
        public final Slice toSlice$credentials_release(@NotNull CredentialEntry entry) {
            Intrinsics.checkNotNullParameter(entry, "entry");
            if (entry instanceof PasswordCredentialEntry) {
                return PasswordCredentialEntry.Companion.toSlice((PasswordCredentialEntry) entry);
            }
            if (entry instanceof PublicKeyCredentialEntry) {
                return PublicKeyCredentialEntry.Companion.toSlice((PublicKeyCredentialEntry) entry);
            }
            if (entry instanceof CustomCredentialEntry) {
                return CustomCredentialEntry.Companion.toSlice((CustomCredentialEntry) entry);
            }
            return null;
        }

        private Companion() {
        }
    }

    public CredentialEntry(@NotNull String type, @NotNull BeginGetCredentialOption beginGetCredentialOption) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(beginGetCredentialOption, "beginGetCredentialOption");
        this.type = type;
        this.beginGetCredentialOption = beginGetCredentialOption;
    }

    @NotNull
    public final BeginGetCredentialOption getBeginGetCredentialOption() {
        return this.beginGetCredentialOption;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public String getType() {
        return this.type;
    }
}
