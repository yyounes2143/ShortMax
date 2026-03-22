package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SequenceBuilder.kt */
@Metadata
/* loaded from: classes8.dex */
final class h<T> extends i<T> implements Iterator<T>, rs.c<Unit>, KMappedMarker {

    /* renamed from: a  reason: collision with root package name */
    private int f61127a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private T f61128b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Iterator<? extends T> f61129c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private rs.c<? super Unit> f61130d;

    private final Throwable d() {
        int i10 = this.f61127a;
        if (i10 != 4) {
            if (i10 != 5) {
                return new IllegalStateException("Unexpected state of the iterator: " + this.f61127a);
            }
            return new IllegalStateException("Iterator has failed.");
        }
        return new NoSuchElementException();
    }

    private final T h() {
        if (hasNext()) {
            return next();
        }
        throw new NoSuchElementException();
    }

    @Override // kotlin.sequences.i
    @Nullable
    public Object a(T t10, @NotNull rs.c<? super Unit> cVar) {
        this.f61128b = t10;
        this.f61127a = 3;
        this.f61130d = cVar;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        if (f10 == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        if (f10 == kotlin.coroutines.intrinsics.a.f()) {
            return f10;
        }
        return Unit.f60915a;
    }

    @Override // kotlin.sequences.i
    @Nullable
    public Object b(@NotNull Iterator<? extends T> it, @NotNull rs.c<? super Unit> cVar) {
        if (!it.hasNext()) {
            return Unit.f60915a;
        }
        this.f61129c = it;
        this.f61127a = 2;
        this.f61130d = cVar;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        if (f10 == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        if (f10 == kotlin.coroutines.intrinsics.a.f()) {
            return f10;
        }
        return Unit.f60915a;
    }

    @Override // rs.c
    @NotNull
    public CoroutineContext getContext() {
        return EmptyCoroutineContext.f61040a;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        while (true) {
            int i10 = this.f61127a;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2 || i10 == 3) {
                        return true;
                    }
                    if (i10 == 4) {
                        return false;
                    }
                    throw d();
                }
                Iterator<? extends T> it = this.f61129c;
                Intrinsics.checkNotNull(it);
                if (it.hasNext()) {
                    this.f61127a = 2;
                    return true;
                }
                this.f61129c = null;
            }
            this.f61127a = 5;
            rs.c<? super Unit> cVar = this.f61130d;
            Intrinsics.checkNotNull(cVar);
            this.f61130d = null;
            Result.a aVar = Result.f60901b;
            cVar.resumeWith(Result.d(Unit.f60915a));
        }
    }

    public final void i(@Nullable rs.c<? super Unit> cVar) {
        this.f61130d = cVar;
    }

    @Override // java.util.Iterator
    public T next() {
        int i10 = this.f61127a;
        if (i10 != 0 && i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    this.f61127a = 0;
                    T t10 = this.f61128b;
                    this.f61128b = null;
                    return t10;
                }
                throw d();
            }
            this.f61127a = 1;
            Iterator<? extends T> it = this.f61129c;
            Intrinsics.checkNotNull(it);
            return it.next();
        }
        return h();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // rs.c
    public void resumeWith(@NotNull Object obj) {
        kotlin.f.b(obj);
        this.f61127a = 4;
    }
}
