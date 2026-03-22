package kotlinx.coroutines.flow;

import com.ss.ttvideoengine.model.VideoRef;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.channels.a;
/* compiled from: Delay.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$3$2", f = "Delay.kt", l = {VideoRef.VALUE_VIDEO_REF_CONST_DEPTH}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$2\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n*L\n1#1,407:1\n1009#2,2:408\n1026#2:410\n1027#2:413\n1#3:411\n14#4:412\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$2\n*L\n232#1:408,2\n233#1:410\n233#1:413\n236#1:412\n*E\n"})
/* loaded from: classes8.dex */
final class FlowKt__DelayKt$debounceInternal$1$3$2 extends SuspendLambda implements Function2<kotlinx.coroutines.channels.a<? extends Object>, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f61453h;

    /* renamed from: i  reason: collision with root package name */
    int f61454i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f61455j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ Ref.ObjectRef<Object> f61456k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ kt.c<T> f61457l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__DelayKt$debounceInternal$1$3$2(Ref.ObjectRef<Object> objectRef, kt.c<? super T> cVar, rs.c<? super FlowKt__DelayKt$debounceInternal$1$3$2> cVar2) {
        super(2, cVar2);
        this.f61456k = objectRef;
        this.f61457l = cVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        FlowKt__DelayKt$debounceInternal$1$3$2 flowKt__DelayKt$debounceInternal$1$3$2 = new FlowKt__DelayKt$debounceInternal$1$3$2(this.f61456k, this.f61457l, cVar);
        flowKt__DelayKt$debounceInternal$1$3$2.f61455j = obj;
        return flowKt__DelayKt$debounceInternal$1$3$2;
    }

    public final Object i(Object obj, rs.c<? super Unit> cVar) {
        return ((FlowKt__DelayKt$debounceInternal$1$3$2) create(kotlinx.coroutines.channels.a.b(obj), cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(kotlinx.coroutines.channels.a<? extends Object> aVar, rs.c<? super Unit> cVar) {
        return i(aVar.k(), cVar);
    }

    /* JADX WARN: Type inference failed for: r7v3, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v6, types: [mt.a0, T] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Ref.ObjectRef<Object> objectRef;
        Ref.ObjectRef<Object> objectRef2;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f61454i;
        if (i10 != 0) {
            if (i10 == 1) {
                objectRef2 = (Ref.ObjectRef) this.f61453h;
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            ?? k10 = ((kotlinx.coroutines.channels.a) this.f61455j).k();
            objectRef = this.f61456k;
            boolean z10 = k10 instanceof a.c;
            if (!z10) {
                objectRef.element = k10;
            }
            kt.c<T> cVar = this.f61457l;
            if (z10) {
                Throwable e10 = kotlinx.coroutines.channels.a.e(k10);
                if (e10 == null) {
                    Object obj2 = objectRef.element;
                    if (obj2 != null) {
                        if (obj2 == lt.i.f62309a) {
                            obj2 = null;
                        }
                        this.f61455j = k10;
                        this.f61453h = objectRef;
                        this.f61454i = 1;
                        if (cVar.emit(obj2, this) == f10) {
                            return f10;
                        }
                        objectRef2 = objectRef;
                    }
                    objectRef.element = lt.i.f62311c;
                } else {
                    throw e10;
                }
            }
            return Unit.f60915a;
        }
        objectRef = objectRef2;
        objectRef.element = lt.i.f62311c;
        return Unit.f60915a;
    }
}
