package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Channels.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__ChannelsKt", f = "Channels.kt", l = {32, 33}, m = "emitAllImpl$FlowKt__ChannelsKt")
/* loaded from: classes8.dex */
public final class FlowKt__ChannelsKt$emitAllImpl$1<T> extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f61431h;

    /* renamed from: i  reason: collision with root package name */
    Object f61432i;

    /* renamed from: j  reason: collision with root package name */
    Object f61433j;

    /* renamed from: k  reason: collision with root package name */
    boolean f61434k;

    /* renamed from: l  reason: collision with root package name */
    /* synthetic */ Object f61435l;

    /* renamed from: m  reason: collision with root package name */
    int f61436m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlowKt__ChannelsKt$emitAllImpl$1(rs.c<? super FlowKt__ChannelsKt$emitAllImpl$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d10;
        this.f61435l = obj;
        this.f61436m |= Integer.MIN_VALUE;
        d10 = FlowKt__ChannelsKt.d(null, null, false, this);
        return d10;
    }
}
