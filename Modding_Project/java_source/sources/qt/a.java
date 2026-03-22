package qt;

import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Mutex.kt */
@Metadata
/* loaded from: classes8.dex */
public interface a {

    /* compiled from: Mutex.kt */
    @Metadata
    /* renamed from: qt.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0910a {
        public static /* synthetic */ Object a(a aVar, Object obj, rs.c cVar, int i10, Object obj2) {
            if (obj2 == null) {
                if ((i10 & 1) != 0) {
                    obj = null;
                }
                return aVar.lock(obj, cVar);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lock");
        }

        public static /* synthetic */ boolean b(a aVar, Object obj, int i10, Object obj2) {
            if (obj2 == null) {
                if ((i10 & 1) != 0) {
                    obj = null;
                }
                return aVar.tryLock(obj);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: tryLock");
        }

        public static /* synthetic */ void c(a aVar, Object obj, int i10, Object obj2) {
            if (obj2 == null) {
                if ((i10 & 1) != 0) {
                    obj = null;
                }
                aVar.unlock(obj);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: unlock");
        }
    }

    @NotNull
    pt.f<Object, a> getOnLock();

    boolean holdsLock(@NotNull Object obj);

    boolean isLocked();

    @Nullable
    Object lock(@Nullable Object obj, @NotNull rs.c<? super Unit> cVar);

    boolean tryLock(@Nullable Object obj);

    void unlock(@Nullable Object obj);
}
