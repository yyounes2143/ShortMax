package kotlinx.coroutines.channels;

import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.FunctionReferenceImpl;
/* compiled from: BufferedChannel.kt */
@Metadata
/* loaded from: classes8.dex */
/* synthetic */ class BufferedChannel$onReceiveCatching$1 extends FunctionReferenceImpl implements n<BufferedChannel<?>, pt.i<?>, Object, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public static final BufferedChannel$onReceiveCatching$1 f61338a = new BufferedChannel$onReceiveCatching$1();

    BufferedChannel$onReceiveCatching$1() {
        super(3, BufferedChannel.class, "registerSelectForReceive", "registerSelectForReceive(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
    }

    public final void b(BufferedChannel<?> bufferedChannel, pt.i<?> iVar, Object obj) {
        bufferedChannel.Y0(iVar, obj);
    }

    @Override // at.n
    public /* bridge */ /* synthetic */ Unit invoke(BufferedChannel<?> bufferedChannel, pt.i<?> iVar, Object obj) {
        b(bufferedChannel, iVar, obj);
        return Unit.f60915a;
    }
}
