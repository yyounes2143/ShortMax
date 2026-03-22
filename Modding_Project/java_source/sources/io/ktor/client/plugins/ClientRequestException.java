package io.ktor.client.plugins;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DefaultResponseValidation.kt */
@Metadata
/* loaded from: classes8.dex */
public final class ClientRequestException extends ResponseException {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f58887b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClientRequestException(@NotNull tr.c response, @NotNull String cachedResponseText) {
        super(response, cachedResponseText);
        Intrinsics.checkNotNullParameter(response, "response");
        Intrinsics.checkNotNullParameter(cachedResponseText, "cachedResponseText");
        this.f58887b = "Client request(" + response.x().d().getMethod().d() + ' ' + response.x().d().getUrl() + ") invalid: " + response.e() + ". Text: \"" + cachedResponseText + '\"';
    }

    @Override // java.lang.Throwable
    @NotNull
    public String getMessage() {
        return this.f58887b;
    }
}
