package androidx.work.impl;

import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecKt;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StartStopToken.kt */
@Metadata
/* loaded from: classes2.dex */
public final class StartStopTokens {
    @NotNull
    private final Object lock = new Object();
    @NotNull
    private final Map<WorkGenerationalId, StartStopToken> runs = new LinkedHashMap();

    public final boolean contains(@NotNull WorkGenerationalId id2) {
        boolean containsKey;
        Intrinsics.checkNotNullParameter(id2, "id");
        synchronized (this.lock) {
            containsKey = this.runs.containsKey(id2);
        }
        return containsKey;
    }

    @Nullable
    public final StartStopToken remove(@NotNull WorkGenerationalId id2) {
        StartStopToken remove;
        Intrinsics.checkNotNullParameter(id2, "id");
        synchronized (this.lock) {
            remove = this.runs.remove(id2);
        }
        return remove;
    }

    @NotNull
    public final StartStopToken tokenFor(@NotNull WorkGenerationalId id2) {
        StartStopToken startStopToken;
        Intrinsics.checkNotNullParameter(id2, "id");
        synchronized (this.lock) {
            try {
                Map<WorkGenerationalId, StartStopToken> map = this.runs;
                StartStopToken startStopToken2 = map.get(id2);
                if (startStopToken2 == null) {
                    startStopToken2 = new StartStopToken(id2);
                    map.put(id2, startStopToken2);
                }
                startStopToken = startStopToken2;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return startStopToken;
    }

    @NotNull
    public final List<StartStopToken> remove(@NotNull String workSpecId) {
        List<StartStopToken> d12;
        Intrinsics.checkNotNullParameter(workSpecId, "workSpecId");
        synchronized (this.lock) {
            try {
                Map<WorkGenerationalId, StartStopToken> map = this.runs;
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Map.Entry<WorkGenerationalId, StartStopToken> entry : map.entrySet()) {
                    if (Intrinsics.areEqual(entry.getKey().getWorkSpecId(), workSpecId)) {
                        linkedHashMap.put(entry.getKey(), entry.getValue());
                    }
                }
                for (WorkGenerationalId workGenerationalId : linkedHashMap.keySet()) {
                    this.runs.remove(workGenerationalId);
                }
                d12 = CollectionsKt.d1(linkedHashMap.values());
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return d12;
    }

    @NotNull
    public final StartStopToken tokenFor(@NotNull WorkSpec spec) {
        Intrinsics.checkNotNullParameter(spec, "spec");
        return tokenFor(WorkSpecKt.generationalId(spec));
    }

    @Nullable
    public final StartStopToken remove(@NotNull WorkSpec spec) {
        Intrinsics.checkNotNullParameter(spec, "spec");
        return remove(WorkSpecKt.generationalId(spec));
    }
}
