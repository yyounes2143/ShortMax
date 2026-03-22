package androidx.sqlite.db;

import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: SupportSQLiteStatement.android.kt */
@Metadata
/* loaded from: classes2.dex */
public interface SupportSQLiteStatement extends SupportSQLiteProgram {
    void execute();

    long executeInsert();

    int executeUpdateDelete();

    long simpleQueryForLong();

    @Nullable
    String simpleQueryForString();
}
