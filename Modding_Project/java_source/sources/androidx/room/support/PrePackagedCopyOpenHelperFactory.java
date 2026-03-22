package androidx.room.support;

import androidx.sqlite.db.SupportSQLiteOpenHelper;
import java.io.File;
import java.io.InputStream;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PrePackagedCopyOpenHelperFactory.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class PrePackagedCopyOpenHelperFactory implements SupportSQLiteOpenHelper.Factory {
    @Nullable
    private final String copyFromAssetPath;
    @Nullable
    private final File copyFromFile;
    @Nullable
    private final Callable<InputStream> copyFromInputStream;
    @NotNull
    private final SupportSQLiteOpenHelper.Factory delegate;

    public PrePackagedCopyOpenHelperFactory(@Nullable String str, @Nullable File file, @Nullable Callable<InputStream> callable, @NotNull SupportSQLiteOpenHelper.Factory delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.copyFromAssetPath = str;
        this.copyFromFile = file;
        this.copyFromInputStream = callable;
        this.delegate = delegate;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Factory
    @NotNull
    public SupportSQLiteOpenHelper create(@NotNull SupportSQLiteOpenHelper.Configuration configuration) {
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        return new PrePackagedCopyOpenHelper(configuration.context, this.copyFromAssetPath, this.copyFromFile, this.copyFromInputStream, configuration.callback.version, this.delegate.create(configuration));
    }
}
