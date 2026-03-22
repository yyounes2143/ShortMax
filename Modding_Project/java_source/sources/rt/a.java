package rt;

import java.util.concurrent.Executor;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Tasks.kt */
@Metadata
/* loaded from: classes8.dex */
final class a implements Executor {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f66152a = new a();

    private a() {
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NotNull Runnable runnable) {
        runnable.run();
    }
}
