package t3;

import android.os.Process;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PriorityThreadFactory.kt */
@Metadata
/* loaded from: classes3.dex */
public final class y implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    private final int f67045a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f67046b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f67047c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final AtomicInteger f67048d;

    public y(int i10, @NotNull String prefix, boolean z10) {
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        this.f67045a = i10;
        this.f67046b = prefix;
        this.f67047c = z10;
        this.f67048d = new AtomicInteger(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(y this$0, Runnable runnable) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(runnable, "$runnable");
        try {
            Process.setThreadPriority(this$0.f67045a);
        } catch (Throwable unused) {
        }
        runnable.run();
    }

    @Override // java.util.concurrent.ThreadFactory
    @NotNull
    public Thread newThread(@NotNull final Runnable runnable) {
        String str;
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        Runnable runnable2 = new Runnable() { // from class: t3.x
            @Override // java.lang.Runnable
            public final void run() {
                y.b(y.this, runnable);
            }
        };
        if (this.f67047c) {
            str = this.f67046b + "-" + this.f67048d.getAndIncrement();
        } else {
            str = this.f67046b;
        }
        return new Thread(runnable2, str);
    }
}
