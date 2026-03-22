package okio;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: GzipSink.kt */
@Metadata
/* renamed from: okio.-GzipSinkExtensions  reason: invalid class name */
/* loaded from: classes8.dex */
public final class GzipSinkExtensions {
    @NotNull
    public static final GzipSink gzip(@NotNull Sink sink) {
        Intrinsics.checkNotNullParameter(sink, "<this>");
        return new GzipSink(sink);
    }
}
