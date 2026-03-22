package okhttp3.internal.http2;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: StreamResetException.kt */
@Metadata
/* loaded from: classes8.dex */
public final class StreamResetException extends IOException {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final ErrorCode f64094a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StreamResetException(@NotNull ErrorCode errorCode) {
        super("stream was reset: " + errorCode);
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        this.f64094a = errorCode;
    }
}
