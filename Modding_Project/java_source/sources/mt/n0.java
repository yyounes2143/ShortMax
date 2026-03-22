package mt;

import gt.s1;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ThreadContext.kt */
@Metadata
/* loaded from: classes8.dex */
public final class n0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final CoroutineContext f62689a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Object[] f62690b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final s1<Object>[] f62691c;

    /* renamed from: d  reason: collision with root package name */
    private int f62692d;

    public n0(@NotNull CoroutineContext coroutineContext, int i10) {
        this.f62689a = coroutineContext;
        this.f62690b = new Object[i10];
        this.f62691c = new s1[i10];
    }

    public final void a(@NotNull s1<?> s1Var, @Nullable Object obj) {
        Object[] objArr = this.f62690b;
        int i10 = this.f62692d;
        objArr[i10] = obj;
        s1<Object>[] s1VarArr = this.f62691c;
        this.f62692d = i10 + 1;
        Intrinsics.checkNotNull(s1Var, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        s1VarArr[i10] = s1Var;
    }

    public final void b(@NotNull CoroutineContext coroutineContext) {
        int length = this.f62691c.length - 1;
        if (length < 0) {
            return;
        }
        while (true) {
            int i10 = length - 1;
            s1<Object> s1Var = this.f62691c[length];
            Intrinsics.checkNotNull(s1Var);
            s1Var.restoreThreadContext(coroutineContext, this.f62690b[length]);
            if (i10 >= 0) {
                length = i10;
            } else {
                return;
            }
        }
    }
}
