package androidx.room.coroutines;

import androidx.room.Transactor;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PassthroughConnectionPool.kt */
@Metadata
/* loaded from: classes2.dex */
public final class PassthroughConnectionPool implements ConnectionPool {
    @NotNull
    private final i<SQLiteConnection> connection;
    @NotNull
    private final SQLiteDriver driver;
    @NotNull
    private final String fileName;
    @Nullable
    private final Function2<Function1<? super rs.c<Object>, ? extends Object>, rs.c<Object>, Object> transactionWrapper;

    /* compiled from: PassthroughConnectionPool.kt */
    @Metadata
    /* loaded from: classes2.dex */
    private static final class ConnectionElement implements CoroutineContext.Element {
        @NotNull
        public static final Key Key = new Key(null);
        @NotNull
        private final PassthroughConnection connectionWrapper;

        /* compiled from: PassthroughConnectionPool.kt */
        @Metadata
        /* loaded from: classes2.dex */
        public static final class Key implements CoroutineContext.b<ConnectionElement> {
            public /* synthetic */ Key(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Key() {
            }
        }

        public ConnectionElement(@NotNull PassthroughConnection connectionWrapper) {
            Intrinsics.checkNotNullParameter(connectionWrapper, "connectionWrapper");
            this.connectionWrapper = connectionWrapper;
        }

        @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
        public <R> R fold(R r10, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
            return (R) CoroutineContext.Element.a.a(this, r10, function2);
        }

        @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
        @Nullable
        public <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.b<E> bVar) {
            return (E) CoroutineContext.Element.a.b(this, bVar);
        }

        @NotNull
        public final PassthroughConnection getConnectionWrapper() {
            return this.connectionWrapper;
        }

        @Override // kotlin.coroutines.CoroutineContext.Element
        @NotNull
        public CoroutineContext.b<ConnectionElement> getKey() {
            return Key;
        }

        @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
        @NotNull
        public CoroutineContext minusKey(@NotNull CoroutineContext.b<?> bVar) {
            return CoroutineContext.Element.a.c(this, bVar);
        }

        @Override // kotlin.coroutines.CoroutineContext
        @NotNull
        public CoroutineContext plus(@NotNull CoroutineContext coroutineContext) {
            return CoroutineContext.Element.a.d(this, coroutineContext);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PassthroughConnectionPool(@NotNull SQLiteDriver driver, @NotNull String fileName, @Nullable Function2<? super Function1<? super rs.c<Object>, ? extends Object>, ? super rs.c<Object>, ? extends Object> function2) {
        Intrinsics.checkNotNullParameter(driver, "driver");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        this.driver = driver;
        this.fileName = fileName;
        this.transactionWrapper = function2;
        this.connection = kotlin.c.b(new Function0() { // from class: androidx.room.coroutines.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                SQLiteConnection connection$lambda$0;
                connection$lambda$0 = PassthroughConnectionPool.connection$lambda$0(PassthroughConnectionPool.this);
                return connection$lambda$0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SQLiteConnection connection$lambda$0(PassthroughConnectionPool passthroughConnectionPool) {
        return passthroughConnectionPool.driver.open(passthroughConnectionPool.fileName);
    }

    @Override // androidx.room.coroutines.ConnectionPool, java.lang.AutoCloseable
    public void close() {
        if (this.connection.isInitialized()) {
            this.connection.getValue().close();
        }
    }

    @Override // androidx.room.coroutines.ConnectionPool
    @Nullable
    public <R> Object useConnection(boolean z10, @NotNull Function2<? super Transactor, ? super rs.c<? super R>, ? extends Object> function2, @NotNull rs.c<? super R> cVar) {
        PassthroughConnection passthroughConnection;
        ConnectionElement connectionElement = (ConnectionElement) cVar.getContext().get(ConnectionElement.Key);
        if (connectionElement != null) {
            passthroughConnection = connectionElement.getConnectionWrapper();
        } else {
            passthroughConnection = null;
        }
        if (passthroughConnection != null) {
            return function2.invoke(passthroughConnection, cVar);
        }
        PassthroughConnection passthroughConnection2 = new PassthroughConnection(this.transactionWrapper, this.connection.getValue());
        return gt.e.g(new ConnectionElement(passthroughConnection2), new PassthroughConnectionPool$useConnection$2(function2, passthroughConnection2, null), cVar);
    }

    public /* synthetic */ PassthroughConnectionPool(SQLiteDriver sQLiteDriver, String str, Function2 function2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(sQLiteDriver, str, (i10 & 4) != 0 ? null : function2);
    }
}
