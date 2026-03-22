package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Exceptions.kt */
@Metadata
/* loaded from: classes8.dex */
public final class JobCancellationException extends CancellationException implements gt.w<JobCancellationException> {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final transient r f61281a;

    public JobCancellationException(@NotNull String str, @Nullable Throwable th2, @NotNull r rVar) {
        super(str);
        this.f61281a = rVar;
        if (th2 != null) {
            initCause(th2);
        }
    }

    @Override // gt.w
    @Nullable
    /* renamed from: d */
    public JobCancellationException b() {
        return null;
    }

    @NotNull
    public final r e() {
        r rVar = this.f61281a;
        if (rVar == null) {
            return v.f61916a;
        }
        return rVar;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj != this) {
            if (obj instanceof JobCancellationException) {
                JobCancellationException jobCancellationException = (JobCancellationException) obj;
                if (!Intrinsics.areEqual(jobCancellationException.getMessage(), getMessage()) || !Intrinsics.areEqual(jobCancellationException.e(), e()) || !Intrinsics.areEqual(jobCancellationException.getCause(), getCause())) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.lang.Throwable
    @NotNull
    public Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    public int hashCode() {
        int i10;
        String message = getMessage();
        Intrinsics.checkNotNull(message);
        int hashCode = message.hashCode() * 31;
        r e10 = e();
        int i11 = 0;
        if (e10 != null) {
            i10 = e10.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = (hashCode + i10) * 31;
        Throwable cause = getCause();
        if (cause != null) {
            i11 = cause.hashCode();
        }
        return i12 + i11;
    }

    @Override // java.lang.Throwable
    @NotNull
    public String toString() {
        return super.toString() + "; job=" + e();
    }
}
