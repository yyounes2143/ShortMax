package androidx.credentials;

import android.os.Bundle;
import androidx.credentials.CreateCredentialRequest;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CreateCustomCredentialRequest.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCreateCustomCredentialRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateCustomCredentialRequest.kt\nandroidx/credentials/CreateCustomCredentialRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,83:1\n1#2:84\n*E\n"})
/* loaded from: classes.dex */
public class CreateCustomCredentialRequest extends CreateCredentialRequest {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CreateCustomCredentialRequest(@NotNull String type, @NotNull Bundle credentialData, @NotNull Bundle candidateQueryData, boolean z10, @NotNull CreateCredentialRequest.DisplayInfo displayInfo) {
        this(type, credentialData, candidateQueryData, z10, displayInfo, false, null, false, 224, null);
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(credentialData, "credentialData");
        Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
        Intrinsics.checkNotNullParameter(displayInfo, "displayInfo");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CreateCustomCredentialRequest(@NotNull String type, @NotNull Bundle credentialData, @NotNull Bundle candidateQueryData, boolean z10, @NotNull CreateCredentialRequest.DisplayInfo displayInfo, boolean z11) {
        this(type, credentialData, candidateQueryData, z10, displayInfo, z11, null, false, 192, null);
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(credentialData, "credentialData");
        Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
        Intrinsics.checkNotNullParameter(displayInfo, "displayInfo");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CreateCustomCredentialRequest(@NotNull String type, @NotNull Bundle credentialData, @NotNull Bundle candidateQueryData, boolean z10, @NotNull CreateCredentialRequest.DisplayInfo displayInfo, boolean z11, @Nullable String str) {
        this(type, credentialData, candidateQueryData, z10, displayInfo, z11, str, false, 128, null);
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(credentialData, "credentialData");
        Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
        Intrinsics.checkNotNullParameter(displayInfo, "displayInfo");
    }

    public /* synthetic */ CreateCustomCredentialRequest(String str, Bundle bundle, Bundle bundle2, boolean z10, CreateCredentialRequest.DisplayInfo displayInfo, boolean z11, String str2, boolean z12, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, bundle, bundle2, z10, displayInfo, (i10 & 32) != 0 ? false : z11, (i10 & 64) != 0 ? null : str2, (i10 & 128) != 0 ? false : z12);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateCustomCredentialRequest(@NotNull String type, @NotNull Bundle credentialData, @NotNull Bundle candidateQueryData, boolean z10, @NotNull CreateCredentialRequest.DisplayInfo displayInfo, boolean z11, @Nullable String str, boolean z12) {
        super(type, credentialData, candidateQueryData, z10, z11, displayInfo, str, z12);
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(credentialData, "credentialData");
        Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
        Intrinsics.checkNotNullParameter(displayInfo, "displayInfo");
        if (type.length() <= 0) {
            throw new IllegalArgumentException("type should not be empty");
        }
    }
}
