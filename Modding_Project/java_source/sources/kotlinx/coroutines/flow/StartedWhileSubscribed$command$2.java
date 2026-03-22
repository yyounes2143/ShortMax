package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* compiled from: SharingStarted.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.StartedWhileSubscribed$command$2", f = "SharingStarted.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes8.dex */
final class StartedWhileSubscribed$command$2 extends SuspendLambda implements Function2<SharingCommand, rs.c<? super Boolean>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f61669h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f61670i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public StartedWhileSubscribed$command$2(rs.c<? super StartedWhileSubscribed$command$2> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        StartedWhileSubscribed$command$2 startedWhileSubscribed$command$2 = new StartedWhileSubscribed$command$2(cVar);
        startedWhileSubscribed$command$2.f61670i = obj;
        return startedWhileSubscribed$command$2;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: i */
    public final Object invoke(SharingCommand sharingCommand, rs.c<? super Boolean> cVar) {
        return ((StartedWhileSubscribed$command$2) create(sharingCommand, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z10;
        kotlin.coroutines.intrinsics.a.f();
        if (this.f61669h == 0) {
            kotlin.f.b(obj);
            if (((SharingCommand) this.f61670i) != SharingCommand.START) {
                z10 = true;
            } else {
                z10 = false;
            }
            return kotlin.coroutines.jvm.internal.a.a(z10);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
