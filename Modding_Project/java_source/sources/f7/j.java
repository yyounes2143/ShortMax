package f7;

import androidx.annotation.Nullable;
import com.google.android.gms.tasks.TaskCompletionSource;
/* compiled from: com.google.android.play:review@@2.0.2 */
/* loaded from: classes5.dex */
public abstract class j implements Runnable {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final TaskCompletionSource f51637a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j() {
        this.f51637a = null;
    }

    protected abstract void a();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final TaskCompletionSource c() {
        return this.f51637a;
    }

    public final void d(Exception exc) {
        TaskCompletionSource taskCompletionSource = this.f51637a;
        if (taskCompletionSource != null) {
            taskCompletionSource.trySetException(exc);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            a();
        } catch (Exception e10) {
            d(e10);
        }
    }

    public j(@Nullable TaskCompletionSource taskCompletionSource) {
        this.f51637a = taskCompletionSource;
    }
}
