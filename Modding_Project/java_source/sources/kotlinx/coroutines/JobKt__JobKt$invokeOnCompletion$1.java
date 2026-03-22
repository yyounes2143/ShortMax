package kotlinx.coroutines;

import gt.g1;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Job.kt */
@Metadata
/* loaded from: classes8.dex */
public /* synthetic */ class JobKt__JobKt$invokeOnCompletion$1 extends FunctionReferenceImpl implements Function1<Throwable, Unit> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public JobKt__JobKt$invokeOnCompletion$1(Object obj) {
        super(1, obj, g1.class, "invoke", "invoke(Ljava/lang/Throwable;)V", 0);
    }

    public final void b(Throwable th2) {
        ((g1) this.receiver).v(th2);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
        b(th2);
        return Unit.f60915a;
    }
}
