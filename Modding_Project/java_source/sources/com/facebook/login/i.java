package com.facebook.login;

import android.content.Context;
import android.os.Bundle;
import com.facebook.internal.m0;
import com.facebook.login.LoginClient;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: GetTokenClient.kt */
@Metadata
/* loaded from: classes3.dex */
public final class i extends m0 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(@NotNull Context context, @NotNull LoginClient.Request request) {
        super(context, 65536, 65537, 20121101, request.a(), request.n());
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(request, "request");
    }

    @Override // com.facebook.internal.m0
    protected void d(@NotNull Bundle data) {
        Intrinsics.checkNotNullParameter(data, "data");
    }
}
