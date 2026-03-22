package androidx.credentials.provider;

import android.os.Bundle;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BeginCreateCustomCredentialRequest.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBeginCreateCustomCredentialRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BeginCreateCustomCredentialRequest.kt\nandroidx/credentials/provider/BeginCreateCustomCredentialRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,56:1\n1#2:57\n*E\n"})
/* loaded from: classes.dex */
public class BeginCreateCustomCredentialRequest extends BeginCreateCredentialRequest {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BeginCreateCustomCredentialRequest(@NotNull String type, @NotNull Bundle candidateQueryData, @Nullable CallingAppInfo callingAppInfo) {
        super(type, candidateQueryData, callingAppInfo);
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
        if (type.length() > 0) {
            return;
        }
        throw new IllegalArgumentException("type should not be empty");
    }
}
