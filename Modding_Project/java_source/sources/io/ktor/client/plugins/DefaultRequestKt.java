package io.ktor.client.plugins;

import io.ktor.client.HttpClientConfig;
import io.ktor.client.plugins.DefaultRequest;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DefaultRequest.kt */
@Metadata
/* loaded from: classes8.dex */
public final class DefaultRequestKt {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final du.a f58897a = cs.a.a("io.ktor.client.plugins.DefaultRequest");

    public static final void b(@NotNull HttpClientConfig<?> httpClientConfig, @NotNull final Function1<? super DefaultRequest.a, Unit> block) {
        Intrinsics.checkNotNullParameter(httpClientConfig, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        httpClientConfig.i(DefaultRequest.f58888b, new Function1<DefaultRequest.a, Unit>() { // from class: io.ktor.client.plugins.DefaultRequestKt$defaultRequest$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            public final void b(@NotNull DefaultRequest.a install) {
                Intrinsics.checkNotNullParameter(install, "$this$install");
                block.invoke(install);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DefaultRequest.a aVar) {
                b(aVar);
                return Unit.f60915a;
            }
        });
    }
}
