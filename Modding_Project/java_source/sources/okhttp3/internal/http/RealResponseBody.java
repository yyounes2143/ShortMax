package okhttp3.internal.http;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.ResponseBody;
import okio.BufferedSource;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RealResponseBody.kt */
@Metadata
/* loaded from: classes8.dex */
public final class RealResponseBody extends ResponseBody {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f63877a;

    /* renamed from: b  reason: collision with root package name */
    private final long f63878b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final BufferedSource f63879c;

    public RealResponseBody(@Nullable String str, long j10, @NotNull BufferedSource source) {
        Intrinsics.checkNotNullParameter(source, "source");
        this.f63877a = str;
        this.f63878b = j10;
        this.f63879c = source;
    }

    @Override // okhttp3.ResponseBody
    public long contentLength() {
        return this.f63878b;
    }

    @Override // okhttp3.ResponseBody
    @Nullable
    public MediaType contentType() {
        String str = this.f63877a;
        if (str != null) {
            return MediaType.f63480e.b(str);
        }
        return null;
    }

    @Override // okhttp3.ResponseBody
    @NotNull
    public BufferedSource source() {
        return this.f63879c;
    }
}
