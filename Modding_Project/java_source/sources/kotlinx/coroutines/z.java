package kotlinx.coroutines;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Timeout.kt */
@Metadata
/* loaded from: classes8.dex */
public final class z<U, T extends U> extends mt.w<T> implements Runnable {

    /* renamed from: e  reason: collision with root package name */
    public final long f61922e;

    public z(long j10, @NotNull rs.c<? super U> cVar) {
        super(cVar.getContext(), cVar);
        this.f61922e = j10;
    }

    @Override // java.lang.Runnable
    public void run() {
        K(TimeoutKt.a(this.f61922e, DelayKt.d(getContext()), this));
    }

    @Override // kotlinx.coroutines.a, kotlinx.coroutines.JobSupport
    @NotNull
    public String s0() {
        return super.s0() + "(timeMillis=" + this.f61922e + ')';
    }
}
