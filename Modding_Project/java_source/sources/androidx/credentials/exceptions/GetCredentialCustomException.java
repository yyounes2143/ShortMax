package androidx.credentials.exceptions;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GetCredentialCustomException.kt */
@Metadata
@SourceDebugExtension({"SMAP\nGetCredentialCustomException.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetCredentialCustomException.kt\nandroidx/credentials/exceptions/GetCredentialCustomException\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,41:1\n1#2:42\n*E\n"})
/* loaded from: classes.dex */
public final class GetCredentialCustomException extends GetCredentialException {
    @NotNull
    private final String type;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GetCredentialCustomException(@NotNull String type) {
        this(type, null, 2, null);
        Intrinsics.checkNotNullParameter(type, "type");
    }

    @Override // androidx.credentials.exceptions.GetCredentialException
    @NotNull
    public String getType() {
        return this.type;
    }

    public /* synthetic */ GetCredentialCustomException(String str, CharSequence charSequence, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? null : charSequence);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetCredentialCustomException(@NotNull String type, @Nullable CharSequence charSequence) {
        super(type, charSequence);
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        if (getType().length() <= 0) {
            throw new IllegalArgumentException("type must not be empty");
        }
    }
}
