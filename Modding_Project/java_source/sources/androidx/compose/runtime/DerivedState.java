package androidx.compose.runtime;

import androidx.collection.ObjectIntMap;
import androidx.compose.runtime.snapshots.StateObject;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DerivedState.kt */
@Metadata
/* loaded from: classes.dex */
public interface DerivedState<T> extends State<T> {

    /* compiled from: DerivedState.kt */
    @Metadata
    /* loaded from: classes.dex */
    public interface Record<T> {
        T getCurrentValue();

        @NotNull
        ObjectIntMap<StateObject> getDependencies();
    }

    @NotNull
    Record<T> getCurrentRecord();

    @Nullable
    SnapshotMutationPolicy<T> getPolicy();
}
