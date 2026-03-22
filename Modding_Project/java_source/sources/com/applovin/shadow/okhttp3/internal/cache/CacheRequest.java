package com.applovin.shadow.okhttp3.internal.cache;

import com.applovin.shadow.okio.Sink;
import java.io.IOException;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: CacheRequest.kt */
@Metadata
/* loaded from: classes2.dex */
public interface CacheRequest {
    void abort();

    @NotNull
    Sink body() throws IOException;
}
