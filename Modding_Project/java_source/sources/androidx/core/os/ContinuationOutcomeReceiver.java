package androidx.core.os;

import android.os.OutcomeReceiver;
import androidx.annotation.RequiresApi;
import java.lang.Throwable;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.f;
import org.jetbrains.annotations.NotNull;
import rs.c;
/* compiled from: OutcomeReceiver.kt */
@RequiresApi(31)
@Metadata
/* loaded from: classes.dex */
final class ContinuationOutcomeReceiver<R, E extends Throwable> extends AtomicBoolean implements OutcomeReceiver {
    @NotNull
    private final c<R> continuation;

    /* JADX WARN: Multi-variable type inference failed */
    public ContinuationOutcomeReceiver(@NotNull c<? super R> cVar) {
        super(false);
        this.continuation = cVar;
    }

    public void onError(@NotNull E e10) {
        if (compareAndSet(false, true)) {
            c<R> cVar = this.continuation;
            Result.a aVar = Result.f60901b;
            cVar.resumeWith(Result.d(f.a(e10)));
        }
    }

    public void onResult(R r10) {
        if (compareAndSet(false, true)) {
            this.continuation.resumeWith(Result.d(r10));
        }
    }

    @Override // java.util.concurrent.atomic.AtomicBoolean
    @NotNull
    public String toString() {
        return "ContinuationOutcomeReceiver(outcomeReceived = " + get() + ')';
    }
}
