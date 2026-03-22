package kotlinx.coroutines.channels;

import at.n;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionReferenceImpl;
/* compiled from: BufferedChannel.kt */
@Metadata
/* loaded from: classes8.dex */
/* synthetic */ class BufferedChannel$onReceiveCatching$2 extends FunctionReferenceImpl implements n<BufferedChannel<?>, Object, Object, Object> {

    /* renamed from: a  reason: collision with root package name */
    public static final BufferedChannel$onReceiveCatching$2 f61339a = new BufferedChannel$onReceiveCatching$2();

    BufferedChannel$onReceiveCatching$2() {
        super(3, BufferedChannel.class, "processResultSelectReceiveCatching", "processResultSelectReceiveCatching(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", 0);
    }

    @Override // at.n
    /* renamed from: b */
    public final Object invoke(BufferedChannel<?> bufferedChannel, Object obj, Object obj2) {
        Object T0;
        T0 = bufferedChannel.T0(obj, obj2);
        return T0;
    }
}
