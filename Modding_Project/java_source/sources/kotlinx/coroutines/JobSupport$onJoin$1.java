package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.FunctionReferenceImpl;
/* compiled from: JobSupport.kt */
@Metadata
/* loaded from: classes8.dex */
/* synthetic */ class JobSupport$onJoin$1 extends FunctionReferenceImpl implements at.n<JobSupport, pt.i<?>, Object, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public static final JobSupport$onJoin$1 f61304a = new JobSupport$onJoin$1();

    JobSupport$onJoin$1() {
        super(3, JobSupport.class, "registerSelectForOnJoin", "registerSelectForOnJoin(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
    }

    public final void b(JobSupport jobSupport, pt.i<?> iVar, Object obj) {
        jobSupport.D0(iVar, obj);
    }

    @Override // at.n
    public /* bridge */ /* synthetic */ Unit invoke(JobSupport jobSupport, pt.i<?> iVar, Object obj) {
        b(jobSupport, iVar, obj);
        return Unit.f60915a;
    }
}
