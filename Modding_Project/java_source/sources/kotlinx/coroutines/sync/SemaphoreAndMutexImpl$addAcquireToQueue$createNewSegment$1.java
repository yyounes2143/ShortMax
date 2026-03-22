package kotlinx.coroutines.sync;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Semaphore.kt */
@Metadata
/* loaded from: classes8.dex */
public /* synthetic */ class SemaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1 extends FunctionReferenceImpl implements Function2<Long, e, e> {

    /* renamed from: a  reason: collision with root package name */
    public static final SemaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1 f61896a = new SemaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1();

    SemaphoreAndMutexImpl$addAcquireToQueue$createNewSegment$1() {
        super(2, d.class, "createSegment", "createSegment(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;", 1);
    }

    public final e b(long j10, e eVar) {
        e j11;
        j11 = d.j(j10, eVar);
        return j11;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ e invoke(Long l10, e eVar) {
        return b(l10.longValue(), eVar);
    }
}
