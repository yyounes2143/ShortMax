package io.ktor.client;

import io.ktor.client.engine.HttpClientEngine;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import or.d;
import or.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HttpClient.kt */
@Metadata
/* loaded from: classes8.dex */
public final class HttpClientKt {
    @NotNull
    public static final <T extends d> HttpClient a(@NotNull e<? extends T> engineFactory, @NotNull Function1<? super HttpClientConfig<T>, Unit> block) {
        Intrinsics.checkNotNullParameter(engineFactory, "engineFactory");
        Intrinsics.checkNotNullParameter(block, "block");
        HttpClientConfig httpClientConfig = new HttpClientConfig();
        block.invoke(httpClientConfig);
        final HttpClientEngine a10 = engineFactory.a(httpClientConfig.c());
        HttpClient httpClient = new HttpClient(a10, httpClientConfig, true);
        CoroutineContext.Element element = httpClient.getCoroutineContext().get(r.G8);
        Intrinsics.checkNotNull(element);
        ((r) element).invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: io.ktor.client.HttpClientKt$HttpClient$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
                invoke2(th2);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th2) {
                HttpClientEngine.this.close();
            }
        });
        return httpClient;
    }
}
