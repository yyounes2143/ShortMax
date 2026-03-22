package androidx.room;

import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteConnection;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RoomTrackingLiveData.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class RoomLambdaTrackingLiveData<T> extends RoomTrackingLiveData<T> {
    @NotNull
    private final Function1<SQLiteConnection, T> lambdaFunction;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public RoomLambdaTrackingLiveData(@NotNull RoomDatabase database, @NotNull InvalidationLiveDataContainer container, boolean z10, @NotNull String[] tableNames, @NotNull Function1<? super SQLiteConnection, ? extends T> lambdaFunction) {
        super(database, container, z10, tableNames, null);
        Intrinsics.checkNotNullParameter(database, "database");
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(tableNames, "tableNames");
        Intrinsics.checkNotNullParameter(lambdaFunction, "lambdaFunction");
        this.lambdaFunction = lambdaFunction;
    }

    @Override // androidx.room.RoomTrackingLiveData
    @Nullable
    public Object compute(@NotNull rs.c<? super T> cVar) {
        return DBUtil.performSuspending(getDatabase(), true, getInTransaction(), this.lambdaFunction, cVar);
    }
}
