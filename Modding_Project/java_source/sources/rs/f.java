package rs;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SafeContinuationJvm.kt */
@Metadata
/* loaded from: classes8.dex */
public final class f<T> implements c<T>, kotlin.coroutines.jvm.internal.c {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final a f66149b = new a(null);

    /* renamed from: c  reason: collision with root package name */
    private static final AtomicReferenceFieldUpdater<f<?>, Object> f66150c = AtomicReferenceFieldUpdater.newUpdater(f.class, Object.class, "result");
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final c<T> f66151a;
    @Nullable
    private volatile Object result;

    /* compiled from: SafeContinuationJvm.kt */
    @Metadata
    /* loaded from: classes8.dex */
    private static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public f(@NotNull c<? super T> delegate, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.f66151a = delegate;
        this.result = obj;
    }

    @Nullable
    public final Object a() {
        Object obj = this.result;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.UNDECIDED;
        if (obj == coroutineSingletons) {
            if (androidx.concurrent.futures.a.a(f66150c, this, coroutineSingletons, kotlin.coroutines.intrinsics.a.f())) {
                return kotlin.coroutines.intrinsics.a.f();
            }
            obj = this.result;
        }
        if (obj == CoroutineSingletons.RESUMED) {
            return kotlin.coroutines.intrinsics.a.f();
        }
        if (!(obj instanceof Result.Failure)) {
            return obj;
        }
        throw ((Result.Failure) obj).f60903a;
    }

    @Override // kotlin.coroutines.jvm.internal.c
    @Nullable
    public kotlin.coroutines.jvm.internal.c getCallerFrame() {
        c<T> cVar = this.f66151a;
        if (cVar instanceof kotlin.coroutines.jvm.internal.c) {
            return (kotlin.coroutines.jvm.internal.c) cVar;
        }
        return null;
    }

    @Override // rs.c
    @NotNull
    public CoroutineContext getContext() {
        return this.f66151a.getContext();
    }

    @Override // rs.c
    public void resumeWith(@NotNull Object obj) {
        while (true) {
            Object obj2 = this.result;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.UNDECIDED;
            if (obj2 == coroutineSingletons) {
                if (androidx.concurrent.futures.a.a(f66150c, this, coroutineSingletons, obj)) {
                    return;
                }
            } else if (obj2 == kotlin.coroutines.intrinsics.a.f()) {
                if (androidx.concurrent.futures.a.a(f66150c, this, kotlin.coroutines.intrinsics.a.f(), CoroutineSingletons.RESUMED)) {
                    this.f66151a.resumeWith(obj);
                    return;
                }
            } else {
                throw new IllegalStateException("Already resumed");
            }
        }
    }

    @NotNull
    public String toString() {
        return "SafeContinuation for " + this.f66151a;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public f(@NotNull c<? super T> delegate) {
        this(delegate, CoroutineSingletons.UNDECIDED);
        Intrinsics.checkNotNullParameter(delegate, "delegate");
    }
}
