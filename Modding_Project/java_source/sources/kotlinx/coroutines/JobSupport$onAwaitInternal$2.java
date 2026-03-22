package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.jvm.internal.FunctionReferenceImpl;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JobSupport.kt */
@Metadata
/* loaded from: classes8.dex */
public /* synthetic */ class JobSupport$onAwaitInternal$2 extends FunctionReferenceImpl implements at.n<JobSupport, Object, Object, Object> {

    /* renamed from: a  reason: collision with root package name */
    public static final JobSupport$onAwaitInternal$2 f61303a = new JobSupport$onAwaitInternal$2();

    JobSupport$onAwaitInternal$2() {
        super(3, JobSupport.class, "onAwaitInternalProcessResFunc", "onAwaitInternalProcessResFunc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", 0);
    }

    @Override // at.n
    /* renamed from: b */
    public final Object invoke(JobSupport jobSupport, Object obj, Object obj2) {
        Object w02;
        w02 = jobSupport.w0(obj, obj2);
        return w02;
    }
}
