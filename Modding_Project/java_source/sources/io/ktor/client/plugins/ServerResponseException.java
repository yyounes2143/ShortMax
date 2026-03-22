package io.ktor.client.plugins;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DefaultResponseValidation.kt */
@Metadata
/* loaded from: classes8.dex */
public final class ServerResponseException extends ResponseException {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f59109b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ServerResponseException(@NotNull tr.c response, @NotNull String cachedResponseText) {
        super(response, cachedResponseText);
        Intrinsics.checkNotNullParameter(response, "response");
        Intrinsics.checkNotNullParameter(cachedResponseText, "cachedResponseText");
        this.f59109b = "Server error(" + response.x().d().getMethod().d() + ' ' + response.x().d().getUrl() + ": " + response.e() + ". Text: \"" + cachedResponseText + '\"';
    }

    @Override // java.lang.Throwable
    @NotNull
    public String getMessage() {
        return this.f59109b;
    }
}
