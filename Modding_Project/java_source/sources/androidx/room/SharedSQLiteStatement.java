package androidx.room;

import androidx.annotation.RestrictTo;
import androidx.sqlite.db.SupportSQLiteStatement;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SharedSQLiteStatement.android.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes2.dex */
public abstract class SharedSQLiteStatement {
    @NotNull
    private final RoomDatabase database;
    @NotNull
    private final AtomicBoolean lock;
    @NotNull
    private final ms.i stmt$delegate;

    public SharedSQLiteStatement(@NotNull RoomDatabase database) {
        Intrinsics.checkNotNullParameter(database, "database");
        this.database = database;
        this.lock = new AtomicBoolean(false);
        this.stmt$delegate = kotlin.c.b(new Function0() { // from class: androidx.room.s
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                SupportSQLiteStatement createNewStatement;
                createNewStatement = SharedSQLiteStatement.this.createNewStatement();
                return createNewStatement;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SupportSQLiteStatement createNewStatement() {
        return this.database.compileStatement(createQuery());
    }

    private final SupportSQLiteStatement getStmt() {
        return (SupportSQLiteStatement) this.stmt$delegate.getValue();
    }

    @NotNull
    public SupportSQLiteStatement acquire() {
        assertNotMainThread();
        return getStmt(this.lock.compareAndSet(false, true));
    }

    protected void assertNotMainThread() {
        this.database.assertNotMainThread();
    }

    @NotNull
    protected abstract String createQuery();

    public void release(@NotNull SupportSQLiteStatement statement) {
        Intrinsics.checkNotNullParameter(statement, "statement");
        if (statement == getStmt()) {
            this.lock.set(false);
        }
    }

    private final SupportSQLiteStatement getStmt(boolean z10) {
        if (z10) {
            return getStmt();
        }
        return createNewStatement();
    }
}
