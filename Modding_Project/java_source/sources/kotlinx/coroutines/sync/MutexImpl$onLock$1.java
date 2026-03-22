package kotlinx.coroutines.sync;

import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.FunctionReferenceImpl;
import pt.i;
/* compiled from: Mutex.kt */
@Metadata
/* loaded from: classes8.dex */
/* synthetic */ class MutexImpl$onLock$1 extends FunctionReferenceImpl implements n<MutexImpl, i<?>, Object, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public static final MutexImpl$onLock$1 f61887a = new MutexImpl$onLock$1();

    MutexImpl$onLock$1() {
        super(3, MutexImpl.class, "onLockRegFunction", "onLockRegFunction(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
    }

    public final void b(MutexImpl mutexImpl, i<?> iVar, Object obj) {
        mutexImpl.B(iVar, obj);
    }

    @Override // at.n
    public /* bridge */ /* synthetic */ Unit invoke(MutexImpl mutexImpl, i<?> iVar, Object obj) {
        b(mutexImpl, iVar, obj);
        return Unit.f60915a;
    }
}
