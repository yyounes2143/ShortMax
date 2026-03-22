package androidx.credentials.exceptions;

import androidx.annotation.RestrictTo;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GetCredentialException.kt */
@Metadata
/* loaded from: classes.dex */
public abstract class GetCredentialException extends Exception {
    @Nullable
    private final CharSequence errorMessage;
    @NotNull
    private final String type;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GetCredentialException(@NotNull String type) {
        this(type, null, 2, null);
        Intrinsics.checkNotNullParameter(type, "type");
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @Nullable
    public CharSequence getErrorMessage() {
        return this.errorMessage;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public String getType() {
        return this.type;
    }

    public /* synthetic */ GetCredentialException(String str, CharSequence charSequence, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? null : charSequence);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetCredentialException(@NotNull String type, @Nullable CharSequence charSequence) {
        super(charSequence != null ? charSequence.toString() : null);
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        this.errorMessage = charSequence;
    }
}
