package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Timeout.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timeout.kt\nkotlinx/coroutines/TimeoutCancellationException\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,191:1\n1#2:192\n*E\n"})
/* loaded from: classes8.dex */
public final class TimeoutCancellationException extends CancellationException implements gt.w<TimeoutCancellationException> {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final transient r f61305a;

    public TimeoutCancellationException(@NotNull String str, @Nullable r rVar) {
        super(str);
        this.f61305a = rVar;
    }

    @Override // gt.w
    @NotNull
    /* renamed from: d */
    public TimeoutCancellationException b() {
        String message = getMessage();
        if (message == null) {
            message = "";
        }
        TimeoutCancellationException timeoutCancellationException = new TimeoutCancellationException(message, this.f61305a);
        timeoutCancellationException.initCause(this);
        return timeoutCancellationException;
    }

    public TimeoutCancellationException(@NotNull String str) {
        this(str, null);
    }
}
