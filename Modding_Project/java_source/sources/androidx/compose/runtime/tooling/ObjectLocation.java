package androidx.compose.runtime.tooling;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ComposeStackTraceBuilder.kt */
@StabilityInferred(parameters = 1)
@Metadata
/* loaded from: classes.dex */
public final class ObjectLocation {
    public static final int $stable = 0;
    @Nullable
    private final Integer dataOffset;
    private final int group;

    public ObjectLocation(int i10, @Nullable Integer num) {
        this.group = i10;
        this.dataOffset = num;
    }

    public static /* synthetic */ ObjectLocation copy$default(ObjectLocation objectLocation, int i10, Integer num, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = objectLocation.group;
        }
        if ((i11 & 2) != 0) {
            num = objectLocation.dataOffset;
        }
        return objectLocation.copy(i10, num);
    }

    public final int component1() {
        return this.group;
    }

    @Nullable
    public final Integer component2() {
        return this.dataOffset;
    }

    @NotNull
    public final ObjectLocation copy(int i10, @Nullable Integer num) {
        return new ObjectLocation(i10, num);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ObjectLocation)) {
            return false;
        }
        ObjectLocation objectLocation = (ObjectLocation) obj;
        if (this.group == objectLocation.group && Intrinsics.areEqual(this.dataOffset, objectLocation.dataOffset)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Integer getDataOffset() {
        return this.dataOffset;
    }

    public final int getGroup() {
        return this.group;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = Integer.hashCode(this.group) * 31;
        Integer num = this.dataOffset;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        return hashCode2 + hashCode;
    }

    @NotNull
    public String toString() {
        return "ObjectLocation(group=" + this.group + ", dataOffset=" + this.dataOffset + ')';
    }
}
