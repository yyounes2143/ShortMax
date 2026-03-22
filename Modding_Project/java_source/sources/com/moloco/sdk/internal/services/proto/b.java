package com.moloco.sdk.internal.services.proto;

import android.util.Base64;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.UserIntent$UserAdInteractionExt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class b implements a {
    @Override // com.moloco.sdk.internal.services.proto.a
    @NotNull
    public String a(@NotNull UserIntent$UserAdInteractionExt input, int i10) {
        Intrinsics.checkNotNullParameter(input, "input");
        String encodeToString = Base64.encodeToString(input.toByteArray(), i10);
        Intrinsics.checkNotNullExpressionValue(encodeToString, "encodeToString(...)");
        return encodeToString;
    }
}
