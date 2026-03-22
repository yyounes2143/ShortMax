package androidx.credentials.exceptions.publickeycredential;

import androidx.annotation.RestrictTo;
import androidx.credentials.exceptions.CreateCredentialCustomException;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.internal.FrameworkClassParsingException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CreatePublicKeyCredentialException.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCreatePublicKeyCredentialException.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreatePublicKeyCredentialException.kt\nandroidx/credentials/exceptions/publickeycredential/CreatePublicKeyCredentialException\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,63:1\n1#2:64\n*E\n"})
/* loaded from: classes.dex */
public class CreatePublicKeyCredentialException extends CreateCredentialException {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final String type;

    /* compiled from: CreatePublicKeyCredentialException.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @NotNull
        public final CreateCredentialException createFrom(@NotNull String type, @Nullable String str) {
            Intrinsics.checkNotNullParameter(type, "type");
            try {
                if (StringsKt.b0(type, CreatePublicKeyCredentialDomException.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION, false, 2, null)) {
                    return CreatePublicKeyCredentialDomException.Companion.createFrom(type, str);
                }
                throw new FrameworkClassParsingException();
            } catch (FrameworkClassParsingException unused) {
                return new CreateCredentialCustomException(type, str);
            }
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CreatePublicKeyCredentialException(@NotNull String type) {
        this(type, null, 2, null);
        Intrinsics.checkNotNullParameter(type, "type");
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public static final CreateCredentialException createFrom(@NotNull String str, @Nullable String str2) {
        return Companion.createFrom(str, str2);
    }

    @Override // androidx.credentials.exceptions.CreateCredentialException
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public String getType() {
        return this.type;
    }

    public /* synthetic */ CreatePublicKeyCredentialException(String str, CharSequence charSequence, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? null : charSequence);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreatePublicKeyCredentialException(@NotNull String type, @Nullable CharSequence charSequence) {
        super(type, charSequence);
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        if (getType().length() <= 0) {
            throw new IllegalArgumentException("type must not be empty");
        }
    }
}
