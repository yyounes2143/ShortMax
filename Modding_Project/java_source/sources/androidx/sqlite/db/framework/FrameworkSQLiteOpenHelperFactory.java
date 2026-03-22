package androidx.sqlite.db.framework;

import androidx.sqlite.db.SupportSQLiteOpenHelper;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: FrameworkSQLiteOpenHelperFactory.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class FrameworkSQLiteOpenHelperFactory implements SupportSQLiteOpenHelper.Factory {
    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Factory
    @NotNull
    public SupportSQLiteOpenHelper create(@NotNull SupportSQLiteOpenHelper.Configuration configuration) {
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        return new FrameworkSQLiteOpenHelper(configuration.context, configuration.name, configuration.callback, configuration.useNoBackupDirectory, configuration.allowDataLossOnRecovery);
    }
}
