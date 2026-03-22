package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.FunctionReferenceImpl;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JobSupport.kt */
@Metadata
/* loaded from: classes8.dex */
public /* synthetic */ class JobSupport$onAwaitInternal$1 extends FunctionReferenceImpl implements at.n<JobSupport, pt.i<?>, Object, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public static final JobSupport$onAwaitInternal$1 f61302a = new JobSupport$onAwaitInternal$1();

    JobSupport$onAwaitInternal$1() {
        super(3, JobSupport.class, "onAwaitInternalRegFunc", "onAwaitInternalRegFunc(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
    }

    public final void b(JobSupport jobSupport, pt.i<?> iVar, Object obj) {
        jobSupport.x0(iVar, obj);
    }

    @Override // at.n
    public /* bridge */ /* synthetic */ Unit invoke(JobSupport jobSupport, pt.i<?> iVar, Object obj) {
        b(jobSupport, iVar, obj);
        return Unit.f60915a;
    }
}
