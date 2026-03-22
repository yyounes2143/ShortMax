package coil.network;

import kotlin.Metadata;
import okhttp3.Response;
import org.jetbrains.annotations.NotNull;
/* compiled from: HttpException.kt */
@Metadata
/* loaded from: classes2.dex */
public final class HttpException extends RuntimeException {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Response f4082a;

    public HttpException(@NotNull Response response) {
        super("HTTP " + response.o() + ": " + response.w());
        this.f4082a = response;
    }
}
