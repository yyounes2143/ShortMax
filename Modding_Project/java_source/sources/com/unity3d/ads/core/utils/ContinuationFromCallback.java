package com.unity3d.ads.core.utils;

import com.unity3d.ads.core.data.model.exception.ExposureException;
import com.unity3d.services.core.webview.bridge.WebViewCallback;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.f;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: ContinuationFromCallback.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ContinuationFromCallback extends WebViewCallback {
    @NotNull
    private final c<Object> continuation;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContinuationFromCallback(@NotNull c<Object> continuation) {
        super("", 0);
        Intrinsics.checkNotNullParameter(continuation, "continuation");
        this.continuation = continuation;
    }

    @Override // com.unity3d.services.core.webview.bridge.WebViewCallback
    public void error(@Nullable Enum<?> r52, @NotNull Object... params) {
        Intrinsics.checkNotNullParameter(params, "params");
        c<Object> cVar = this.continuation;
        Result.a aVar = Result.f60901b;
        cVar.resumeWith(Result.d(f.a(new ExposureException("Invocation failed with: " + r52, params))));
    }

    @Override // com.unity3d.services.core.webview.bridge.WebViewCallback
    public void invoke(@NotNull Object... params) {
        Intrinsics.checkNotNullParameter(params, "params");
        this.continuation.resumeWith(Result.d(params));
    }
}
