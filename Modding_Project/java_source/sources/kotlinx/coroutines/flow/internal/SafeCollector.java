package kotlinx.coroutines.flow.internal;

import at.n;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.flow.internal.SafeCollector;
import kotlinx.coroutines.t;
import lt.e;
import lt.l;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SafeCollector.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSafeCollector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.kt\nkotlinx/coroutines/flow/internal/SafeCollector\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,182:1\n1#2:183\n*E\n"})
/* loaded from: classes8.dex */
public final class SafeCollector<T> extends ContinuationImpl implements kt.c<T>, kotlin.coroutines.jvm.internal.c {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final kt.c<T> f61780h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public final CoroutineContext f61781i;

    /* renamed from: j  reason: collision with root package name */
    public final int f61782j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private CoroutineContext f61783k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private rs.c<? super Unit> f61784l;

    /* JADX WARN: Multi-variable type inference failed */
    public SafeCollector(@NotNull kt.c<? super T> cVar, @NotNull CoroutineContext coroutineContext) {
        super(c.f61793a, EmptyCoroutineContext.f61040a);
        this.f61780h = cVar;
        this.f61781i = coroutineContext;
        this.f61782j = ((Number) coroutineContext.fold(0, new Function2() { // from class: lt.j
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                int k10;
                k10 = SafeCollector.k(((Integer) obj).intValue(), (CoroutineContext.Element) obj2);
                return Integer.valueOf(k10);
            }
        })).intValue();
    }

    private final void j(CoroutineContext coroutineContext, CoroutineContext coroutineContext2, T t10) {
        if (coroutineContext2 instanceof e) {
            q((e) coroutineContext2, t10);
        }
        l.b(this, coroutineContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int k(int i10, CoroutineContext.Element element) {
        return i10 + 1;
    }

    private final Object n(rs.c<? super Unit> cVar, T t10) {
        CoroutineContext context = cVar.getContext();
        t.k(context);
        CoroutineContext coroutineContext = this.f61783k;
        if (coroutineContext != context) {
            j(context, coroutineContext, t10);
            this.f61783k = context;
        }
        this.f61784l = cVar;
        n a10 = SafeCollectorKt.a();
        kt.c<T> cVar2 = this.f61780h;
        Intrinsics.checkNotNull(cVar2, "null cannot be cast to non-null type kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>");
        Intrinsics.checkNotNull(this, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Unit>");
        Object invoke = a10.invoke(cVar2, t10, this);
        if (!Intrinsics.areEqual(invoke, kotlin.coroutines.intrinsics.a.f())) {
            this.f61784l = null;
        }
        return invoke;
    }

    private final void q(e eVar, Object obj) {
        throw new IllegalStateException(StringsKt.n("\n            Flow exception transparency is violated:\n                Previous 'emit' call has thrown exception " + eVar.f62307b + ", but then emission attempt of value '" + obj + "' has been detected.\n                Emissions from 'catch' blocks are prohibited in order to avoid unspecified behaviour, 'Flow.catch' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            ").toString());
    }

    @Override // kt.c
    @Nullable
    public Object emit(T t10, @NotNull rs.c<? super Unit> cVar) {
        try {
            Object n10 = n(cVar, t10);
            if (n10 == kotlin.coroutines.intrinsics.a.f()) {
                f.c(cVar);
            }
            if (n10 == kotlin.coroutines.intrinsics.a.f()) {
                return n10;
            }
            return Unit.f60915a;
        } catch (Throwable th2) {
            this.f61783k = new e(th2, cVar.getContext());
            throw th2;
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl, kotlin.coroutines.jvm.internal.c
    @Nullable
    public kotlin.coroutines.jvm.internal.c getCallerFrame() {
        rs.c<? super Unit> cVar = this.f61784l;
        if (cVar instanceof kotlin.coroutines.jvm.internal.c) {
            return (kotlin.coroutines.jvm.internal.c) cVar;
        }
        return null;
    }

    @Override // kotlin.coroutines.jvm.internal.ContinuationImpl, rs.c
    @NotNull
    public CoroutineContext getContext() {
        CoroutineContext coroutineContext = this.f61783k;
        if (coroutineContext == null) {
            return EmptyCoroutineContext.f61040a;
        }
        return coroutineContext;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    protected Object invokeSuspend(@NotNull Object obj) {
        Throwable g10 = Result.g(obj);
        if (g10 != null) {
            this.f61783k = new e(g10, getContext());
        }
        rs.c<? super Unit> cVar = this.f61784l;
        if (cVar != null) {
            cVar.resumeWith(obj);
        }
        return kotlin.coroutines.intrinsics.a.f();
    }

    @Override // kotlin.coroutines.jvm.internal.ContinuationImpl, kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public void releaseIntercepted() {
        super.releaseIntercepted();
    }
}
