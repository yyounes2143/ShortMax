package kotlinx.coroutines.flow;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: Delay.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1", f = "Delay.kt", l = {215, 415}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1\n+ 2 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Select.kt\nkotlinx/coroutines/selects/SelectKt\n*L\n1#1,407:1\n14#2:408\n14#2:410\n1#3:409\n54#4,5:411\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1\n*L\n212#1:408\n215#1:410\n222#1:411,5\n*E\n"})
/* loaded from: classes8.dex */
public final class FlowKt__DelayKt$debounceInternal$1<T> extends SuspendLambda implements at.n<g0, kt.c<? super T>, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f61443h;

    /* renamed from: i  reason: collision with root package name */
    Object f61444i;

    /* renamed from: j  reason: collision with root package name */
    int f61445j;

    /* renamed from: k  reason: collision with root package name */
    private /* synthetic */ Object f61446k;

    /* renamed from: l  reason: collision with root package name */
    /* synthetic */ Object f61447l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ Function1<T, Long> f61448m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ kt.b<T> f61449n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__DelayKt$debounceInternal$1(Function1<? super T, Long> function1, kt.b<? extends T> bVar, rs.c<? super FlowKt__DelayKt$debounceInternal$1> cVar) {
        super(3, cVar);
        this.f61448m = function1;
        this.f61449n = bVar;
    }

    @Override // at.n
    /* renamed from: i */
    public final Object invoke(g0 g0Var, kt.c<? super T> cVar, rs.c<? super Unit> cVar2) {
        FlowKt__DelayKt$debounceInternal$1 flowKt__DelayKt$debounceInternal$1 = new FlowKt__DelayKt$debounceInternal$1(this.f61448m, this.f61449n, cVar2);
        flowKt__DelayKt$debounceInternal$1.f61446k = g0Var;
        flowKt__DelayKt$debounceInternal$1.f61447l = cVar;
        return flowKt__DelayKt$debounceInternal$1.invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00e4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00e5  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00e2 -> B:7:0x001e). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
