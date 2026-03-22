package okio;

import java.io.Closeable;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.d;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Okio.kt */
@Metadata
/* loaded from: classes8.dex */
public final /* synthetic */ class Okio__OkioKt {
    @NotNull
    public static final Sink blackhole() {
        return new BlackholeSink();
    }

    @NotNull
    public static final BufferedSource buffer(@NotNull Source source) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        return new RealBufferedSource(source);
    }

    public static final <T extends Closeable, R> R use(T t10, @NotNull Function1<? super T, ? extends R> block) {
        R r10;
        Intrinsics.checkNotNullParameter(block, "block");
        Throwable th2 = null;
        try {
            r10 = block.invoke(t10);
            InlineMarker.finallyStart(1);
            if (t10 != null) {
                try {
                    t10.close();
                } catch (Throwable th3) {
                    th2 = th3;
                }
            }
            InlineMarker.finallyEnd(1);
        } catch (Throwable th4) {
            InlineMarker.finallyStart(1);
            if (t10 != null) {
                try {
                    t10.close();
                } catch (Throwable th5) {
                    d.a(th4, th5);
                }
            }
            InlineMarker.finallyEnd(1);
            th2 = th4;
            r10 = null;
        }
        if (th2 == null) {
            Intrinsics.checkNotNull(r10);
            return r10;
        }
        throw th2;
    }

    @NotNull
    public static final BufferedSink buffer(@NotNull Sink sink) {
        Intrinsics.checkNotNullParameter(sink, "<this>");
        return new RealBufferedSink(sink);
    }
}
