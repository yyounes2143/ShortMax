package androidx.sqlite.db;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: SupportSQLiteQuery.android.kt */
@Metadata
/* loaded from: classes2.dex */
public interface SupportSQLiteQuery {
    void bindTo(@NotNull SupportSQLiteProgram supportSQLiteProgram);

    int getArgCount();

    @NotNull
    String getSql();
}
