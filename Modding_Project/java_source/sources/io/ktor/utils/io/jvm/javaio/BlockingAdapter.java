package io.ktor.utils.io.jvm.javaio;

import gt.s0;
import gt.x0;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Blocking.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBlocking.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Blocking.kt\nio/ktor/utils/io/jvm/javaio/BlockingAdapter\n+ 2 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n*L\n1#1,316:1\n164#2,4:317\n164#2,4:321\n*S KotlinDebug\n*F\n+ 1 Blocking.kt\nio/ktor/utils/io/jvm/javaio/BlockingAdapter\n*L\n209#1:317,4\n285#1:321,4\n*E\n"})
/* loaded from: classes8.dex */
abstract class BlockingAdapter {

    /* renamed from: f  reason: collision with root package name */
    static final /* synthetic */ AtomicReferenceFieldUpdater f59581f = AtomicReferenceFieldUpdater.newUpdater(BlockingAdapter.class, Object.class, "state");
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final r f59582a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final rs.c<Unit> f59583b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final s0 f59584c;

    /* renamed from: d  reason: collision with root package name */
    private int f59585d;

    /* renamed from: e  reason: collision with root package name */
    private int f59586e;
    @NotNull
    volatile /* synthetic */ int result;
    @NotNull
    volatile /* synthetic */ Object state;

    /* compiled from: Blocking.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nBlocking.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Blocking.kt\nio/ktor/utils/io/jvm/javaio/BlockingAdapter$end$1\n+ 2 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n*L\n1#1,316:1\n175#2,4:317\n*S KotlinDebug\n*F\n+ 1 Blocking.kt\nio/ktor/utils/io/jvm/javaio/BlockingAdapter$end$1\n*L\n148#1:317,4\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class a implements rs.c<Unit> {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final CoroutineContext f59587a;

        a() {
            CoroutineContext coroutineContext;
            if (BlockingAdapter.this.g() != null) {
                coroutineContext = e.f59627a.plus(BlockingAdapter.this.g());
            } else {
                coroutineContext = e.f59627a;
            }
            this.f59587a = coroutineContext;
        }

        @Override // rs.c
        @NotNull
        public CoroutineContext getContext() {
            return this.f59587a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // rs.c
        public void resumeWith(@NotNull Object obj) {
            Object obj2;
            boolean z10;
            boolean z11;
            boolean areEqual;
            Throwable g10;
            r g11;
            Object g12 = Result.g(obj);
            if (g12 == null) {
                g12 = Unit.f60915a;
            }
            BlockingAdapter blockingAdapter = BlockingAdapter.this;
            do {
                obj2 = blockingAdapter.state;
                z10 = obj2 instanceof Thread;
                if (z10) {
                    z11 = true;
                } else {
                    z11 = obj2 instanceof rs.c;
                }
                if (z11) {
                    areEqual = true;
                } else {
                    areEqual = Intrinsics.areEqual(obj2, this);
                }
                if (!areEqual) {
                    return;
                }
            } while (!androidx.concurrent.futures.a.a(BlockingAdapter.f59581f, blockingAdapter, obj2, g12));
            if (z10) {
                c.a().b(obj2);
            } else if ((obj2 instanceof rs.c) && (g10 = Result.g(obj)) != null) {
                ((rs.c) obj2).resumeWith(Result.d(f.a(g10)));
            }
            if (Result.i(obj) && !(Result.g(obj) instanceof CancellationException) && (g11 = BlockingAdapter.this.g()) != null) {
                r.a.b(g11, null, 1, null);
            }
            s0 s0Var = BlockingAdapter.this.f59584c;
            if (s0Var != null) {
                s0Var.dispose();
            }
        }
    }

    public BlockingAdapter() {
        this(null, 1, null);
    }

    private final void i(Thread thread) {
        if (this.state != thread) {
            return;
        }
        if (!c.b()) {
            BlockingKt.a().d("Blocking network thread detected. \nIt can possible lead to a performance decline or even a deadlock.\nPlease make sure you're using blocking IO primitives like InputStream and OutputStream only in \nthe context of Dispatchers.IO:\n```\nwithContext(Dispatchers.IO) {\n    myInputStream.read()\n}\n```");
        }
        while (true) {
            long b10 = x0.b();
            if (this.state == thread) {
                if (b10 > 0) {
                    c.a().a(b10);
                }
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final Object j(rs.c<Object> cVar) {
        Object obj;
        rs.c c10;
        Object obj2 = null;
        while (true) {
            Object obj3 = this.state;
            if (obj3 instanceof Thread) {
                c10 = kotlin.coroutines.intrinsics.a.c(cVar);
                obj = obj3;
            } else if (Intrinsics.areEqual(obj3, this)) {
                obj = obj2;
                c10 = kotlin.coroutines.intrinsics.a.c(cVar);
            } else {
                throw new IllegalStateException("Already suspended or in finished state");
            }
            if (androidx.concurrent.futures.a.a(f59581f, this, obj3, c10)) {
                if (obj != null) {
                    c.a().b(obj);
                }
                return kotlin.coroutines.intrinsics.a.f();
            }
            obj2 = obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void d(int i10) {
        this.result = i10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int e() {
        return this.f59586e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int f() {
        return this.f59585d;
    }

    @Nullable
    public final r g() {
        return this.f59582a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public abstract Object h(@NotNull rs.c<? super Unit> cVar);

    public final void k() {
        s0 s0Var = this.f59584c;
        if (s0Var != null) {
            s0Var.dispose();
        }
        rs.c<Unit> cVar = this.f59583b;
        Result.a aVar = Result.f60901b;
        cVar.resumeWith(Result.d(f.a(new CancellationException("Stream closed"))));
    }

    public final int l(@NotNull Object jobToken) {
        Object obj;
        Object noWhenBranchMatchedException;
        Intrinsics.checkNotNullParameter(jobToken, "jobToken");
        Thread thread = Thread.currentThread();
        rs.c cVar = null;
        do {
            obj = this.state;
            if (obj instanceof rs.c) {
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any>");
                cVar = (rs.c) obj;
                noWhenBranchMatchedException = thread;
            } else if (obj instanceof Unit) {
                return this.result;
            } else {
                if (!(obj instanceof Throwable)) {
                    if (!(obj instanceof Thread)) {
                        if (!Intrinsics.areEqual(obj, this)) {
                            noWhenBranchMatchedException = new NoWhenBranchMatchedException();
                        } else {
                            throw new IllegalStateException("Not yet started");
                        }
                    } else {
                        throw new IllegalStateException("There is already thread owning adapter");
                    }
                } else {
                    throw ((Throwable) obj);
                }
            }
            Intrinsics.checkNotNullExpressionValue(noWhenBranchMatchedException, "when (value) {\n         …Exception()\n            }");
        } while (!androidx.concurrent.futures.a.a(f59581f, this, obj, noWhenBranchMatchedException));
        Intrinsics.checkNotNull(cVar);
        cVar.resumeWith(Result.d(jobToken));
        Intrinsics.checkNotNullExpressionValue(thread, "thread");
        i(thread);
        Object obj2 = this.state;
        if (!(obj2 instanceof Throwable)) {
            return this.result;
        }
        throw ((Throwable) obj2);
    }

    public final int m(@NotNull byte[] buffer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        this.f59585d = i10;
        this.f59586e = i11;
        return l(buffer);
    }

    public BlockingAdapter(@Nullable r rVar) {
        this.f59582a = rVar;
        a aVar = new a();
        this.f59583b = aVar;
        this.state = this;
        this.result = 0;
        this.f59584c = rVar != null ? rVar.invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: io.ktor.utils.io.jvm.javaio.BlockingAdapter$disposable$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
                invoke2(th2);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th2) {
                rs.c cVar;
                if (th2 != null) {
                    cVar = BlockingAdapter.this.f59583b;
                    Result.a aVar2 = Result.f60901b;
                    cVar.resumeWith(Result.d(f.a(th2)));
                }
            }
        }) : null;
        ((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(new BlockingAdapter$block$1(this, null), 1)).invoke(aVar);
        if (this.state == this) {
            throw new IllegalArgumentException("Failed requirement.");
        }
    }

    public /* synthetic */ BlockingAdapter(r rVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : rVar);
    }
}
