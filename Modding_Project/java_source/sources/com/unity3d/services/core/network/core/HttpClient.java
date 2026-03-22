package com.unity3d.services.core.network.core;

import com.unity3d.services.core.network.model.HttpRequest;
import com.unity3d.services.core.network.model.HttpResponse;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: HttpClient.kt */
@Metadata
/* loaded from: classes7.dex */
public interface HttpClient {
    @Nullable
    Object execute(@NotNull HttpRequest httpRequest, @NotNull c<? super HttpResponse> cVar);

    @NotNull
    HttpResponse executeBlocking(@NotNull HttpRequest httpRequest) throws Exception;
}
