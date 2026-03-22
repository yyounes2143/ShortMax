package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BufferedChannel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.channels.BufferedChannel", f = "BufferedChannel.kt", l = {3117}, m = "receiveCatchingOnNoWaiterSuspend-GKJJFZk")
/* loaded from: classes8.dex */
public final class BufferedChannel$receiveCatchingOnNoWaiterSuspend$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f61343h;

    /* renamed from: i  reason: collision with root package name */
    Object f61344i;

    /* renamed from: j  reason: collision with root package name */
    int f61345j;

    /* renamed from: k  reason: collision with root package name */
    long f61346k;

    /* renamed from: l  reason: collision with root package name */
    /* synthetic */ Object f61347l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ BufferedChannel<E> f61348m;

    /* renamed from: n  reason: collision with root package name */
    int f61349n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BufferedChannel$receiveCatchingOnNoWaiterSuspend$1(BufferedChannel<E> bufferedChannel, rs.c<? super BufferedChannel$receiveCatchingOnNoWaiterSuspend$1> cVar) {
        super(cVar);
        this.f61348m = bufferedChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object W0;
        this.f61347l = obj;
        this.f61349n |= Integer.MIN_VALUE;
        W0 = this.f61348m.W0(null, 0, 0L, this);
        if (W0 == kotlin.coroutines.intrinsics.a.f()) {
            return W0;
        }
        return a.b(W0);
    }
}
