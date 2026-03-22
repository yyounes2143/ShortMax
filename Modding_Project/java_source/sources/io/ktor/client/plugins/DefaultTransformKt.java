package io.ktor.client.plugins;

import io.ktor.client.HttpClient;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DefaultTransform.kt */
@Metadata
/* loaded from: classes8.dex */
public final class DefaultTransformKt {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final du.a f58906a = cs.a.a("io.ktor.client.plugins.defaultTransformers");

    public static final void b(@NotNull HttpClient httpClient) {
        Intrinsics.checkNotNullParameter(httpClient, "<this>");
        httpClient.p().l(sr.d.f66601h.b(), new DefaultTransformKt$defaultTransformers$1(null));
        httpClient.q().l(tr.e.f67687h.a(), new DefaultTransformKt$defaultTransformers$2(null));
        DefaultTransformersJvmKt.b(httpClient);
    }
}
