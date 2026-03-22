package androidx.compose.runtime.snapshots.tooling;

import androidx.compose.runtime.ExperimentalComposeRuntimeApi;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.Nullable;
/* compiled from: SnapshotObserver.kt */
@StabilityInferred(parameters = 1)
@ExperimentalComposeRuntimeApi
@Metadata
/* loaded from: classes.dex */
public final class SnapshotInstanceObservers {
    public static final int $stable = 0;
    @Nullable
    private final Function1<Object, Unit> readObserver;
    @Nullable
    private final Function1<Object, Unit> writeObserver;

    public SnapshotInstanceObservers() {
        this(null, null, 3, null);
    }

    @Nullable
    public final Function1<Object, Unit> getReadObserver() {
        return this.readObserver;
    }

    @Nullable
    public final Function1<Object, Unit> getWriteObserver() {
        return this.writeObserver;
    }

    public SnapshotInstanceObservers(@Nullable Function1<Object, Unit> function1, @Nullable Function1<Object, Unit> function12) {
        this.readObserver = function1;
        this.writeObserver = function12;
    }

    public /* synthetic */ SnapshotInstanceObservers(Function1 function1, Function1 function12, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : function1, (i10 & 2) != 0 ? null : function12);
    }
}
