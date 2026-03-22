package androidx.compose.runtime.snapshots;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Snapshot.kt */
@Metadata
/* loaded from: classes.dex */
public interface StateObject {

    /* compiled from: Snapshot.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        @Nullable
        public static StateRecord mergeRecords(@NotNull StateObject stateObject, @NotNull StateRecord stateRecord, @NotNull StateRecord stateRecord2, @NotNull StateRecord stateRecord3) {
            return StateObject.super.mergeRecords(stateRecord, stateRecord2, stateRecord3);
        }
    }

    @NotNull
    StateRecord getFirstStateRecord();

    @Nullable
    default StateRecord mergeRecords(@NotNull StateRecord stateRecord, @NotNull StateRecord stateRecord2, @NotNull StateRecord stateRecord3) {
        return null;
    }

    void prependStateRecord(@NotNull StateRecord stateRecord);
}
