package c8;

import com.google.android.gms.tasks.CancellationTokenSource;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: CrashlyticsTasks.java */
/* loaded from: classes5.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final Executor f3338a = new androidx.credentials.a();

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Task b(TaskCompletionSource taskCompletionSource, AtomicBoolean atomicBoolean, CancellationTokenSource cancellationTokenSource, Task task) throws Exception {
        if (task.isSuccessful()) {
            taskCompletionSource.trySetResult(task.getResult());
        } else if (task.getException() != null) {
            taskCompletionSource.trySetException(task.getException());
        } else if (atomicBoolean.getAndSet(true)) {
            cancellationTokenSource.cancel();
        }
        return Tasks.forResult(null);
    }

    public static <T> Task<T> c(Task<T> task, Task<T> task2) {
        final CancellationTokenSource cancellationTokenSource = new CancellationTokenSource();
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource(cancellationTokenSource.getToken());
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        Continuation<T, Task<TContinuationResult>> continuation = new Continuation() { // from class: c8.a
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task3) {
                Task b10;
                b10 = b.b(TaskCompletionSource.this, atomicBoolean, cancellationTokenSource, task3);
                return b10;
            }
        };
        Executor executor = f3338a;
        task.continueWithTask(executor, continuation);
        task2.continueWithTask(executor, continuation);
        return taskCompletionSource.getTask();
    }
}
