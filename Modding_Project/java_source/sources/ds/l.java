package ds;

import at.n;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SuspendFunctionGun.kt */
@Metadata
/* loaded from: classes8.dex */
public final class l<TSubject, TContext> extends c<TSubject, TContext> {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final List<n<c<TSubject, TContext>, TSubject, rs.c<? super Unit>, Object>> f50588b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final rs.c<Unit> f50589c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private TSubject f50590d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final rs.c<TSubject>[] f50591e;

    /* renamed from: f  reason: collision with root package name */
    private int f50592f;

    /* renamed from: g  reason: collision with root package name */
    private int f50593g;

    /* compiled from: SuspendFunctionGun.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a implements rs.c<Unit>, kotlin.coroutines.jvm.internal.c {

        /* renamed from: a  reason: collision with root package name */
        private int f50594a = Integer.MIN_VALUE;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ l<TSubject, TContext> f50595b;

        a(l<TSubject, TContext> lVar) {
            this.f50595b = lVar;
        }

        private final rs.c<?> a() {
            if (this.f50594a == Integer.MIN_VALUE) {
                this.f50594a = ((l) this.f50595b).f50592f;
            }
            if (this.f50594a >= 0) {
                try {
                    rs.c<?>[] cVarArr = ((l) this.f50595b).f50591e;
                    int i10 = this.f50594a;
                    rs.c<?> cVar = cVarArr[i10];
                    if (cVar == null) {
                        return k.f50587a;
                    }
                    this.f50594a = i10 - 1;
                    return cVar;
                } catch (Throwable unused) {
                    return k.f50587a;
                }
            }
            this.f50594a = Integer.MIN_VALUE;
            return null;
        }

        @Override // kotlin.coroutines.jvm.internal.c
        @Nullable
        public kotlin.coroutines.jvm.internal.c getCallerFrame() {
            rs.c<?> a10 = a();
            if (a10 instanceof kotlin.coroutines.jvm.internal.c) {
                return (kotlin.coroutines.jvm.internal.c) a10;
            }
            return null;
        }

        @Override // rs.c
        @NotNull
        public CoroutineContext getContext() {
            rs.c cVar = ((l) this.f50595b).f50591e[((l) this.f50595b).f50592f];
            if (cVar != this && cVar != null) {
                return cVar.getContext();
            }
            int i10 = ((l) this.f50595b).f50592f - 1;
            while (i10 >= 0) {
                int i11 = i10 - 1;
                rs.c cVar2 = ((l) this.f50595b).f50591e[i10];
                if (cVar2 != this && cVar2 != null) {
                    return cVar2.getContext();
                }
                i10 = i11;
            }
            throw new IllegalStateException("Not started");
        }

        @Override // rs.c
        public void resumeWith(@NotNull Object obj) {
            if (!Result.i(obj)) {
                this.f50595b.l(false);
                return;
            }
            l<TSubject, TContext> lVar = this.f50595b;
            Throwable g10 = Result.g(obj);
            Intrinsics.checkNotNull(g10);
            lVar.n(Result.d(kotlin.f.a(g10)));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public l(@NotNull TSubject initial, @NotNull TContext context, @NotNull List<? extends n<? super c<TSubject, TContext>, ? super TSubject, ? super rs.c<? super Unit>, ? extends Object>> blocks) {
        super(context);
        Intrinsics.checkNotNullParameter(initial, "initial");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(blocks, "blocks");
        this.f50588b = blocks;
        this.f50589c = new a(this);
        this.f50590d = initial;
        this.f50591e = new rs.c[blocks.size()];
        this.f50592f = -1;
    }

    private final void j() {
        int i10 = this.f50592f;
        if (i10 >= 0) {
            rs.c<TSubject>[] cVarArr = this.f50591e;
            this.f50592f = i10 - 1;
            cVarArr[i10] = null;
            return;
        }
        throw new IllegalStateException("No more continuations to resume");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean l(boolean z10) {
        int i10;
        do {
            i10 = this.f50593g;
            if (i10 == this.f50588b.size()) {
                if (z10) {
                    return true;
                }
                Result.a aVar = Result.f60901b;
                n(Result.d(k()));
                return false;
            }
            this.f50593g = i10 + 1;
            try {
            } catch (Throwable th2) {
                Result.a aVar2 = Result.f60901b;
                n(Result.d(kotlin.f.a(th2)));
                return false;
            }
        } while (this.f50588b.get(i10).invoke(this, k(), this.f50589c) != kotlin.coroutines.intrinsics.a.f());
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n(Object obj) {
        int i10 = this.f50592f;
        if (i10 >= 0) {
            rs.c<TSubject> cVar = this.f50591e[i10];
            Intrinsics.checkNotNull(cVar);
            rs.c<TSubject>[] cVarArr = this.f50591e;
            int i11 = this.f50592f;
            this.f50592f = i11 - 1;
            cVarArr[i11] = null;
            if (!Result.i(obj)) {
                cVar.resumeWith(obj);
                return;
            }
            Throwable g10 = Result.g(obj);
            Intrinsics.checkNotNull(g10);
            cVar.resumeWith(Result.d(kotlin.f.a(i.a(g10, cVar))));
            return;
        }
        throw new IllegalStateException("No more continuations to resume");
    }

    @Override // ds.c
    @Nullable
    public Object a(@NotNull TSubject tsubject, @NotNull rs.c<? super TSubject> cVar) {
        this.f50593g = 0;
        if (this.f50588b.size() == 0) {
            return tsubject;
        }
        o(tsubject);
        if (this.f50592f < 0) {
            return c(cVar);
        }
        throw new IllegalStateException("Already started");
    }

    @Override // ds.c
    @Nullable
    public Object c(@NotNull rs.c<? super TSubject> cVar) {
        Object f10;
        if (this.f50593g == this.f50588b.size()) {
            f10 = k();
        } else {
            i(kotlin.coroutines.intrinsics.a.c(cVar));
            if (l(true)) {
                j();
                f10 = k();
            } else {
                f10 = kotlin.coroutines.intrinsics.a.f();
            }
        }
        if (f10 == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        return f10;
    }

    @Override // ds.c
    @Nullable
    public Object d(@NotNull TSubject tsubject, @NotNull rs.c<? super TSubject> cVar) {
        o(tsubject);
        return c(cVar);
    }

    @Override // gt.g0
    @NotNull
    public CoroutineContext getCoroutineContext() {
        return this.f50589c.getContext();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void i(@NotNull rs.c<? super TSubject> continuation) {
        Intrinsics.checkNotNullParameter(continuation, "continuation");
        int i10 = this.f50592f + 1;
        this.f50592f = i10;
        this.f50591e[i10] = continuation;
    }

    @NotNull
    public TSubject k() {
        return this.f50590d;
    }

    public void o(@NotNull TSubject tsubject) {
        Intrinsics.checkNotNullParameter(tsubject, "<set-?>");
        this.f50590d = tsubject;
    }
}
