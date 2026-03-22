package io.ktor.client.plugins;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DefaultResponseValidation.kt */
@Metadata
/* loaded from: classes8.dex */
public class ResponseException extends IllegalStateException {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final transient tr.c f59108a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResponseException(@NotNull tr.c response, @NotNull String cachedResponseText) {
        super("Bad response: " + response + ". Text: \"" + cachedResponseText + '\"');
        Intrinsics.checkNotNullParameter(response, "response");
        Intrinsics.checkNotNullParameter(cachedResponseText, "cachedResponseText");
        this.f59108a = response;
    }
}
