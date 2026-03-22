package kotlinx.coroutines.flow.internal;

import gt.g0;
import gt.h0;
import java.util.ArrayList;
import jt.h;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.i;
import lt.g;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ChannelFlow.kt */
@Metadata
@SourceDebugExtension({"SMAP\nChannelFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelFlow.kt\nkotlinx/coroutines/flow/internal/ChannelFlow\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,241:1\n1#2:242\n*E\n"})
/* loaded from: classes8.dex */
public abstract class ChannelFlow<T> implements g<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final CoroutineContext f61703a;

    /* renamed from: b  reason: collision with root package name */
    public final int f61704b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final BufferOverflow f61705c;

    public ChannelFlow(@NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow) {
        this.f61703a = coroutineContext;
        this.f61704b = i10;
        this.f61705c = bufferOverflow;
    }

    static /* synthetic */ <T> Object e(ChannelFlow<T> channelFlow, kt.c<? super T> cVar, rs.c<? super Unit> cVar2) {
        Object f10 = i.f(new ChannelFlow$collect$2(cVar, channelFlow, null), cVar2);
        if (f10 == kotlin.coroutines.intrinsics.a.f()) {
            return f10;
        }
        return Unit.f60915a;
    }

    @Override // lt.g
    @NotNull
    public kt.b<T> a(@NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow) {
        CoroutineContext plus = coroutineContext.plus(this.f61703a);
        if (bufferOverflow == BufferOverflow.SUSPEND) {
            int i11 = this.f61704b;
            if (i11 != -3) {
                if (i10 != -3) {
                    if (i11 != -2) {
                        if (i10 != -2) {
                            i10 += i11;
                            if (i10 < 0) {
                                i10 = Integer.MAX_VALUE;
                            }
                        }
                    }
                }
                i10 = i11;
            }
            bufferOverflow = this.f61705c;
        }
        if (Intrinsics.areEqual(plus, this.f61703a) && i10 == this.f61704b && bufferOverflow == this.f61705c) {
            return this;
        }
        return i(plus, i10, bufferOverflow);
    }

    @Nullable
    protected String c() {
        return null;
    }

    @Override // kt.b
    @Nullable
    public Object collect(@NotNull kt.c<? super T> cVar, @NotNull rs.c<? super Unit> cVar2) {
        return e(this, cVar, cVar2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public abstract Object f(@NotNull h<? super T> hVar, @NotNull rs.c<? super Unit> cVar);

    @NotNull
    protected abstract ChannelFlow<T> i(@NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow);

    @Nullable
    public kt.b<T> j() {
        return null;
    }

    @NotNull
    public final Function2<h<? super T>, rs.c<? super Unit>, Object> k() {
        return new ChannelFlow$collectToFun$1(this, null);
    }

    public final int l() {
        int i10 = this.f61704b;
        if (i10 == -3) {
            return -2;
        }
        return i10;
    }

    @NotNull
    public jt.i<T> m(@NotNull g0 g0Var) {
        return ProduceKt.e(g0Var, this.f61703a, l(), this.f61705c, CoroutineStart.ATOMIC, null, k(), 16, null);
    }

    @NotNull
    public String toString() {
        ArrayList arrayList = new ArrayList(4);
        String c10 = c();
        if (c10 != null) {
            arrayList.add(c10);
        }
        if (this.f61703a != EmptyCoroutineContext.f61040a) {
            arrayList.add("context=" + this.f61703a);
        }
        if (this.f61704b != -3) {
            arrayList.add("capacity=" + this.f61704b);
        }
        if (this.f61705c != BufferOverflow.SUSPEND) {
            arrayList.add("onBufferOverflow=" + this.f61705c);
        }
        return h0.a(this) + '[' + CollectionsKt.A0(arrayList, ", ", null, null, 0, null, null, 62, null) + ']';
    }
}
