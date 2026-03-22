package com.unity3d.ads.core.domain;

import com.unity3d.services.core.network.core.HttpClient;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: HttpClientProvider.kt */
@Metadata
/* loaded from: classes7.dex */
public interface HttpClientProvider {

    /* compiled from: HttpClientProvider.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ Object invoke$default(HttpClientProvider httpClientProvider, boolean z10, c cVar, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 1) != 0) {
                    z10 = false;
                }
                return httpClientProvider.invoke(z10, cVar);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: invoke");
        }
    }

    @Nullable
    Object invoke(boolean z10, @NotNull c<? super HttpClient> cVar);
}
