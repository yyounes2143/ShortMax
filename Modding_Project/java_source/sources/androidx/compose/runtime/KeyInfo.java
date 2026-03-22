package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: SlotTable.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class KeyInfo {
    public static final int $stable = 8;
    private final int index;
    private final int key;
    private final int location;
    private final int nodes;
    @Nullable
    private final Object objectKey;

    public KeyInfo(int i10, @Nullable Object obj, int i11, int i12, int i13) {
        this.key = i10;
        this.objectKey = obj;
        this.location = i11;
        this.nodes = i12;
        this.index = i13;
    }

    public final int getIndex() {
        return this.index;
    }

    public final int getKey() {
        return this.key;
    }

    public final int getLocation() {
        return this.location;
    }

    public final int getNodes() {
        return this.nodes;
    }

    @Nullable
    public final Object getObjectKey() {
        return this.objectKey;
    }
}
