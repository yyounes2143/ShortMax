package androidx.room;

import androidx.lifecycle.LiveData;
import androidx.sqlite.SQLiteConnection;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: InvalidationLiveDataContainer.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class InvalidationLiveDataContainer {
    @NotNull
    private final RoomDatabase database;
    @NotNull
    private final Set<LiveData<?>> liveDataSet;

    public InvalidationLiveDataContainer(@NotNull RoomDatabase database) {
        Intrinsics.checkNotNullParameter(database, "database");
        this.database = database;
        Set<LiveData<?>> newSetFromMap = Collections.newSetFromMap(new IdentityHashMap());
        Intrinsics.checkNotNullExpressionValue(newSetFromMap, "newSetFromMap(...)");
        this.liveDataSet = newSetFromMap;
    }

    @NotNull
    public final <T> LiveData<T> create(@NotNull String[] tableNames, boolean z10, @NotNull Callable<T> callableFunction) {
        Intrinsics.checkNotNullParameter(tableNames, "tableNames");
        Intrinsics.checkNotNullParameter(callableFunction, "callableFunction");
        return new RoomCallableTrackingLiveData(this.database, this, z10, tableNames, callableFunction);
    }

    @NotNull
    public final Set<LiveData<?>> getLiveDataSet$room_runtime() {
        return this.liveDataSet;
    }

    public final void onActive(@NotNull LiveData<?> liveData) {
        Intrinsics.checkNotNullParameter(liveData, "liveData");
        this.liveDataSet.add(liveData);
    }

    public final void onInactive(@NotNull LiveData<?> liveData) {
        Intrinsics.checkNotNullParameter(liveData, "liveData");
        this.liveDataSet.remove(liveData);
    }

    @NotNull
    public final <T> LiveData<T> create(@NotNull String[] tableNames, boolean z10, @NotNull Function1<? super SQLiteConnection, ? extends T> lambdaFunction) {
        Intrinsics.checkNotNullParameter(tableNames, "tableNames");
        Intrinsics.checkNotNullParameter(lambdaFunction, "lambdaFunction");
        return new RoomLambdaTrackingLiveData(this.database, this, z10, tableNames, lambdaFunction);
    }
}
