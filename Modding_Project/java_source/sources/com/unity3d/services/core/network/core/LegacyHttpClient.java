package com.unity3d.services.core.network.core;

import com.unity3d.services.core.domain.ISDKDispatchers;
import com.unity3d.services.core.network.model.HttpRequest;
import com.unity3d.services.core.network.model.HttpResponse;
import gt.e;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: LegacyHttpClient.kt */
@Metadata
/* loaded from: classes7.dex */
public final class LegacyHttpClient implements HttpClient {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String NETWORK_CLIENT_LEGACY = "legacy";
    @NotNull
    private final ISDKDispatchers dispatchers;

    /* compiled from: LegacyHttpClient.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public LegacyHttpClient(@NotNull ISDKDispatchers dispatchers) {
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        this.dispatchers = dispatchers;
    }

    @Override // com.unity3d.services.core.network.core.HttpClient
    @Nullable
    public Object execute(@NotNull HttpRequest httpRequest, @NotNull c<? super HttpResponse> cVar) {
        return e.g(this.dispatchers.getIo(), new LegacyHttpClient$execute$2(httpRequest, null), cVar);
    }

    @Override // com.unity3d.services.core.network.core.HttpClient
    @NotNull
    public HttpResponse executeBlocking(@NotNull HttpRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        return (HttpResponse) e.e(this.dispatchers.getIo(), new LegacyHttpClient$executeBlocking$1(this, request, null));
    }
}
