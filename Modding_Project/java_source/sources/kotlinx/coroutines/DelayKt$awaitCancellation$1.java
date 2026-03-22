package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Delay.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.DelayKt", f = "Delay.kt", l = {160}, m = "awaitCancellation")
/* loaded from: classes8.dex */
public final class DelayKt$awaitCancellation$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f61275h;

    /* renamed from: i  reason: collision with root package name */
    int f61276i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DelayKt$awaitCancellation$1(rs.c<? super DelayKt$awaitCancellation$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f61275h = obj;
        this.f61276i |= Integer.MIN_VALUE;
        return DelayKt.a(this);
    }
}
