package androidx.credentials;

import android.content.ComponentName;
import android.os.Bundle;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.y0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: GetCustomCredentialOption.kt */
@Metadata
@SourceDebugExtension({"SMAP\nGetCustomCredentialOption.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetCustomCredentialOption.kt\nandroidx/credentials/GetCustomCredentialOption\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,74:1\n1#2:75\n*E\n"})
/* loaded from: classes.dex */
public class GetCustomCredentialOption extends CredentialOption {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GetCustomCredentialOption(@NotNull String type, @NotNull Bundle requestData, @NotNull Bundle candidateQueryData, boolean z10) {
        this(type, requestData, candidateQueryData, z10, false, null, 48, null);
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(requestData, "requestData");
        Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GetCustomCredentialOption(@NotNull String type, @NotNull Bundle requestData, @NotNull Bundle candidateQueryData, boolean z10, boolean z11) {
        this(type, requestData, candidateQueryData, z10, z11, null, 32, null);
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(requestData, "requestData");
        Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
    }

    public /* synthetic */ GetCustomCredentialOption(String str, Bundle bundle, Bundle bundle2, boolean z10, boolean z11, Set set, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, bundle, bundle2, z10, (i10 & 16) != 0 ? false : z11, (i10 & 32) != 0 ? y0.f() : set);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetCustomCredentialOption(@NotNull String type, @NotNull Bundle requestData, @NotNull Bundle candidateQueryData, boolean z10, boolean z11, @NotNull Set<ComponentName> allowedProviders) {
        super(type, requestData, candidateQueryData, z10, z11, allowedProviders);
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(requestData, "requestData");
        Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
        Intrinsics.checkNotNullParameter(allowedProviders, "allowedProviders");
        if (type.length() <= 0) {
            throw new IllegalArgumentException("type should not be empty");
        }
    }
}
