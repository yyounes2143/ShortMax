package kotlin.coroutines.jvm.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ContinuationImpl.kt */
@Metadata
@SourceDebugExtension({"SMAP\nContinuationImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContinuationImpl.kt\nkotlin/coroutines/jvm/internal/ContinuationImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,168:1\n1#2:169\n*E\n"})
/* loaded from: classes8.dex */
public abstract class ContinuationImpl extends BaseContinuationImpl {
    @Nullable
    private final CoroutineContext _context;
    @Nullable
    private transient rs.c<Object> intercepted;

    public ContinuationImpl(@Nullable rs.c<Object> cVar, @Nullable CoroutineContext coroutineContext) {
        super(cVar);
        this._context = coroutineContext;
    }

    @Override // rs.c
    @NotNull
    public CoroutineContext getContext() {
        CoroutineContext coroutineContext = this._context;
        Intrinsics.checkNotNull(coroutineContext);
        return coroutineContext;
    }

    @NotNull
    public final rs.c<Object> intercepted() {
        rs.c<Object> cVar = this.intercepted;
        if (cVar == null) {
            kotlin.coroutines.c cVar2 = (kotlin.coroutines.c) getContext().get(kotlin.coroutines.c.F8);
            if (cVar2 == null || (cVar = cVar2.interceptContinuation(this)) == null) {
                cVar = this;
            }
            this.intercepted = cVar;
        }
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public void releaseIntercepted() {
        rs.c<?> cVar = this.intercepted;
        if (cVar != null && cVar != this) {
            CoroutineContext.Element element = getContext().get(kotlin.coroutines.c.F8);
            Intrinsics.checkNotNull(element);
            ((kotlin.coroutines.c) element).releaseInterceptedContinuation(cVar);
        }
        this.intercepted = b.f61050a;
    }

    public ContinuationImpl(@Nullable rs.c<Object> cVar) {
        this(cVar, cVar != null ? cVar.getContext() : null);
    }
}
