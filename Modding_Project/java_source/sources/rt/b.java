package rt;

import com.google.android.gms.tasks.CancellationTokenSource;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import gt.i;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: Tasks.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTasks.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tasks.kt\nkotlinx/coroutines/tasks/TasksKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,164:1\n426#2,11:165\n*S KotlinDebug\n*F\n+ 1 Tasks.kt\nkotlinx/coroutines/tasks/TasksKt\n*L\n136#1:165,11\n*E\n"})
/* loaded from: classes8.dex */
public final class b {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Tasks.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a<TResult> implements OnCompleteListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i<T> f66153a;

        /* JADX WARN: Multi-variable type inference failed */
        a(i<? super T> iVar) {
            this.f66153a = iVar;
        }

        @Override // com.google.android.gms.tasks.OnCompleteListener
        public final void onComplete(Task<T> task) {
            Exception exception = task.getException();
            if (exception == null) {
                if (task.isCanceled()) {
                    i.a.a(this.f66153a, null, 1, null);
                    return;
                }
                c cVar = this.f66153a;
                Result.a aVar = Result.f60901b;
                cVar.resumeWith(Result.d(task.getResult()));
                return;
            }
            c cVar2 = this.f66153a;
            Result.a aVar2 = Result.f60901b;
            cVar2.resumeWith(Result.d(f.a(exception)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Tasks.kt */
    @Metadata
    /* renamed from: rt.b$b  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0918b implements Function1<Throwable, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CancellationTokenSource f66154a;

        C0918b(CancellationTokenSource cancellationTokenSource) {
            this.f66154a = cancellationTokenSource;
        }

        public final void a(Throwable th2) {
            this.f66154a.cancel();
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
            a(th2);
            return Unit.f60915a;
        }
    }

    @Nullable
    public static final <T> Object a(@NotNull Task<T> task, @NotNull c<? super T> cVar) {
        return b(task, null, cVar);
    }

    private static final <T> Object b(Task<T> task, CancellationTokenSource cancellationTokenSource, c<? super T> cVar) {
        if (task.isComplete()) {
            Exception exception = task.getException();
            if (exception == null) {
                if (!task.isCanceled()) {
                    return task.getResult();
                }
                throw new CancellationException("Task " + task + " was cancelled normally.");
            }
            throw exception;
        }
        e eVar = new e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        task.addOnCompleteListener(rt.a.f66152a, new a(eVar));
        if (cancellationTokenSource != null) {
            eVar.u(new C0918b(cancellationTokenSource));
        }
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        return B;
    }
}
