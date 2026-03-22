package androidx.room;

import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RoomTrackingLiveData.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class RoomCallableTrackingLiveData<T> extends RoomTrackingLiveData<T> {
    @NotNull
    private final Callable<T> callableFunction;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoomCallableTrackingLiveData(@NotNull RoomDatabase database, @NotNull InvalidationLiveDataContainer container, boolean z10, @NotNull String[] tableNames, @NotNull Callable<T> callableFunction) {
        super(database, container, z10, tableNames, null);
        Intrinsics.checkNotNullParameter(database, "database");
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(tableNames, "tableNames");
        Intrinsics.checkNotNullParameter(callableFunction, "callableFunction");
        this.callableFunction = callableFunction;
    }

    @Override // androidx.room.RoomTrackingLiveData
    @Nullable
    public Object compute(@NotNull rs.c<? super T> cVar) {
        return this.callableFunction.call();
    }
}
