package androidx.room.support;

import androidx.sqlite.db.SupportSQLiteOpenHelper;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AutoClosingRoomOpenHelperFactory.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class AutoClosingRoomOpenHelperFactory implements SupportSQLiteOpenHelper.Factory {
    @NotNull
    private final AutoCloser autoCloser;
    @NotNull
    private final SupportSQLiteOpenHelper.Factory delegate;

    public AutoClosingRoomOpenHelperFactory(@NotNull SupportSQLiteOpenHelper.Factory delegate, @NotNull AutoCloser autoCloser) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(autoCloser, "autoCloser");
        this.delegate = delegate;
        this.autoCloser = autoCloser;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Factory
    @NotNull
    public AutoClosingRoomOpenHelper create(@NotNull SupportSQLiteOpenHelper.Configuration configuration) {
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        return new AutoClosingRoomOpenHelper(this.delegate.create(configuration), this.autoCloser);
    }
}
