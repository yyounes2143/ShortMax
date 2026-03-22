package gt;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Builders.common.kt */
@Metadata
/* loaded from: classes8.dex */
public class p1 extends kotlinx.coroutines.a<Unit> {
    public p1(@NotNull CoroutineContext coroutineContext, boolean z10) {
        super(coroutineContext, true, z10);
    }

    @Override // kotlinx.coroutines.JobSupport
    protected boolean h0(@NotNull Throwable th2) {
        e0.a(getContext(), th2);
        return true;
    }
}
