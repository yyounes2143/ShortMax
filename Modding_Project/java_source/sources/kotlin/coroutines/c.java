package kotlin.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ContinuationInterceptor.kt */
@Metadata
/* loaded from: classes8.dex */
public interface c extends CoroutineContext.Element {
    @NotNull
    public static final b F8 = b.f61043a;

    /* compiled from: ContinuationInterceptor.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        @Nullable
        public static <E extends CoroutineContext.Element> E a(@NotNull c cVar, @NotNull CoroutineContext.b<E> key) {
            E e10;
            Intrinsics.checkNotNullParameter(key, "key");
            if (key instanceof kotlin.coroutines.b) {
                kotlin.coroutines.b bVar = (kotlin.coroutines.b) key;
                if (!bVar.a(cVar.getKey()) || (e10 = (E) bVar.b(cVar)) == null) {
                    return null;
                }
                return e10;
            } else if (c.F8 != key) {
                return null;
            } else {
                Intrinsics.checkNotNull(cVar, "null cannot be cast to non-null type E of kotlin.coroutines.ContinuationInterceptor.get");
                return cVar;
            }
        }

        @NotNull
        public static CoroutineContext b(@NotNull c cVar, @NotNull CoroutineContext.b<?> key) {
            Intrinsics.checkNotNullParameter(key, "key");
            if (key instanceof kotlin.coroutines.b) {
                kotlin.coroutines.b bVar = (kotlin.coroutines.b) key;
                if (bVar.a(cVar.getKey()) && bVar.b(cVar) != null) {
                    return EmptyCoroutineContext.f61040a;
                }
                return cVar;
            } else if (c.F8 == key) {
                return EmptyCoroutineContext.f61040a;
            } else {
                return cVar;
            }
        }
    }

    /* compiled from: ContinuationInterceptor.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class b implements CoroutineContext.b<c> {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ b f61043a = new b();

        private b() {
        }
    }

    @NotNull
    <T> rs.c<T> interceptContinuation(@NotNull rs.c<? super T> cVar);

    void releaseInterceptedContinuation(@NotNull rs.c<?> cVar);
}
