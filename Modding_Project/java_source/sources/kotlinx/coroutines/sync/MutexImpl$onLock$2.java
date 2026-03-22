package kotlinx.coroutines.sync;

import at.n;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionReferenceImpl;
/* compiled from: Mutex.kt */
@Metadata
/* loaded from: classes8.dex */
/* synthetic */ class MutexImpl$onLock$2 extends FunctionReferenceImpl implements n<MutexImpl, Object, Object, Object> {

    /* renamed from: a  reason: collision with root package name */
    public static final MutexImpl$onLock$2 f61888a = new MutexImpl$onLock$2();

    MutexImpl$onLock$2() {
        super(3, MutexImpl.class, "onLockProcessResult", "onLockProcessResult(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", 0);
    }

    @Override // at.n
    /* renamed from: b */
    public final Object invoke(MutexImpl mutexImpl, Object obj, Object obj2) {
        return mutexImpl.A(obj, obj2);
    }
}
