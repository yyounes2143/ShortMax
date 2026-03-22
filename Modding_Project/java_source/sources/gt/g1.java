package gt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: JobSupport.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class g1 extends LockFreeLinkedListNode implements s0, f1 {

    /* renamed from: d  reason: collision with root package name */
    public JobSupport f52536d;

    @Override // gt.f1
    @Nullable
    public k1 b() {
        return null;
    }

    @Override // gt.s0
    public void dispose() {
        t().E0(this);
    }

    @Override // gt.f1
    public boolean isActive() {
        return true;
    }

    @NotNull
    public final JobSupport t() {
        JobSupport jobSupport = this.f52536d;
        if (jobSupport != null) {
            return jobSupport;
        }
        Intrinsics.throwUninitializedPropertyAccessException("job");
        return null;
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    @NotNull
    public String toString() {
        return h0.a(this) + '@' + h0.b(this) + "[job@" + h0.b(t()) + ']';
    }

    public abstract boolean u();

    public abstract void v(@Nullable Throwable th2);

    public final void w(@NotNull JobSupport jobSupport) {
        this.f52536d = jobSupport;
    }
}
