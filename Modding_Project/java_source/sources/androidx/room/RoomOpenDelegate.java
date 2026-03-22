package androidx.room;

import androidx.annotation.RestrictTo;
import androidx.sqlite.SQLiteConnection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RoomOpenDelegate.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes2.dex */
public abstract class RoomOpenDelegate implements RoomOpenDelegateMarker {
    @NotNull
    private final String identityHash;
    @NotNull
    private final String legacyIdentityHash;
    private final int version;

    /* compiled from: RoomOpenDelegate.kt */
    @Metadata
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes2.dex */
    public static final class ValidationResult {
        @Nullable
        public final String expectedFoundMsg;
        public final boolean isValid;

        public ValidationResult(boolean z10, @Nullable String str) {
            this.isValid = z10;
            this.expectedFoundMsg = str;
        }
    }

    public RoomOpenDelegate(int i10, @NotNull String identityHash, @NotNull String legacyIdentityHash) {
        Intrinsics.checkNotNullParameter(identityHash, "identityHash");
        Intrinsics.checkNotNullParameter(legacyIdentityHash, "legacyIdentityHash");
        this.version = i10;
        this.identityHash = identityHash;
        this.legacyIdentityHash = legacyIdentityHash;
    }

    public abstract void createAllTables(@NotNull SQLiteConnection sQLiteConnection);

    public abstract void dropAllTables(@NotNull SQLiteConnection sQLiteConnection);

    @NotNull
    public final String getIdentityHash() {
        return this.identityHash;
    }

    @NotNull
    public final String getLegacyIdentityHash() {
        return this.legacyIdentityHash;
    }

    public final int getVersion() {
        return this.version;
    }

    public abstract void onCreate(@NotNull SQLiteConnection sQLiteConnection);

    public abstract void onOpen(@NotNull SQLiteConnection sQLiteConnection);

    public abstract void onPostMigrate(@NotNull SQLiteConnection sQLiteConnection);

    public abstract void onPreMigrate(@NotNull SQLiteConnection sQLiteConnection);

    @NotNull
    public abstract ValidationResult onValidateSchema(@NotNull SQLiteConnection sQLiteConnection);
}
