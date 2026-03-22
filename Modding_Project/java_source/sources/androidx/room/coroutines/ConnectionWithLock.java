package androidx.room.coroutines;

import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pt.f;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ConnectionPoolImpl.kt */
@Metadata
@SourceDebugExtension({"SMAP\nConnectionPoolImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionPoolImpl.kt\nandroidx/room/coroutines/ConnectionWithLock\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,552:1\n1#2:553\n1869#3,2:554\n*S KotlinDebug\n*F\n+ 1 ConnectionPoolImpl.kt\nandroidx/room/coroutines/ConnectionWithLock\n*L\n320#1:554,2\n*E\n"})
/* loaded from: classes2.dex */
public final class ConnectionWithLock implements SQLiteConnection, qt.a {
    @Nullable
    private CoroutineContext acquireCoroutineContext;
    @Nullable
    private Throwable acquireThrowable;
    @NotNull
    private final SQLiteConnection delegate;
    @NotNull
    private final qt.a lock;

    public ConnectionWithLock(@NotNull SQLiteConnection delegate, @NotNull qt.a lock) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(lock, "lock");
        this.delegate = delegate;
        this.lock = lock;
    }

    @Override // androidx.sqlite.SQLiteConnection, java.lang.AutoCloseable
    public void close() {
        this.delegate.close();
    }

    public final void dump(@NotNull StringBuilder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        if (this.acquireCoroutineContext == null && this.acquireThrowable == null) {
            builder.append("\t\tStatus: Free connection");
            builder.append('\n');
            return;
        }
        builder.append("\t\tStatus: Acquired connection");
        builder.append('\n');
        CoroutineContext coroutineContext = this.acquireCoroutineContext;
        if (coroutineContext != null) {
            builder.append("\t\tCoroutine: " + coroutineContext);
            builder.append('\n');
        }
        Throwable th2 = this.acquireThrowable;
        if (th2 != null) {
            builder.append("\t\tAcquired:");
            builder.append('\n');
            Iterator it = CollectionsKt.j0(StringsKt.B0(ms.d.c(th2)), 1).iterator();
            while (it.hasNext()) {
                builder.append("\t\t" + ((String) it.next()));
                builder.append('\n');
            }
        }
    }

    @Override // qt.a
    @NotNull
    public f<Object, qt.a> getOnLock() {
        return this.lock.getOnLock();
    }

    @Override // qt.a
    public boolean holdsLock(@NotNull Object owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        return this.lock.holdsLock(owner);
    }

    @Override // androidx.sqlite.SQLiteConnection
    public boolean inTransaction() {
        return this.delegate.inTransaction();
    }

    @Override // qt.a
    public boolean isLocked() {
        return this.lock.isLocked();
    }

    @Override // qt.a
    @Nullable
    public Object lock(@Nullable Object obj, @NotNull rs.c<? super Unit> cVar) {
        return this.lock.lock(obj, cVar);
    }

    @NotNull
    public final ConnectionWithLock markAcquired(@NotNull CoroutineContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.acquireCoroutineContext = context;
        this.acquireThrowable = new Throwable();
        return this;
    }

    @NotNull
    public final ConnectionWithLock markReleased() {
        this.acquireCoroutineContext = null;
        this.acquireThrowable = null;
        return this;
    }

    @Override // androidx.sqlite.SQLiteConnection
    @NotNull
    public SQLiteStatement prepare(@NotNull String sql) {
        Intrinsics.checkNotNullParameter(sql, "sql");
        return this.delegate.prepare(sql);
    }

    @NotNull
    public String toString() {
        return this.delegate.toString();
    }

    @Override // qt.a
    public boolean tryLock(@Nullable Object obj) {
        return this.lock.tryLock(obj);
    }

    @Override // qt.a
    public void unlock(@Nullable Object obj) {
        this.lock.unlock(obj);
    }

    public /* synthetic */ ConnectionWithLock(SQLiteConnection sQLiteConnection, qt.a aVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(sQLiteConnection, (i10 & 2) != 0 ? qt.d.b(false, 1, null) : aVar);
    }
}
