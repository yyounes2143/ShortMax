package ds;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: StackWalkingFailed.kt */
@Metadata
/* loaded from: classes8.dex */
public final class j {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final j f50586a = new j();

    private j() {
    }

    public final void a() {
        throw new IllegalStateException("Failed to capture stack frame. This is usually happens when a coroutine is running so the frame stack is changing quickly and the coroutine debug agent is unable to capture it concurrently. You may retry running your test to see this particular trace.");
    }
}
