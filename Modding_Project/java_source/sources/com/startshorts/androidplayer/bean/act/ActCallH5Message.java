package com.startshorts.androidplayer.bean.act;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ActCallH5Message.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ActCallH5Message {
    @NotNull
    private final Object data;
    private final int h5_type;

    public ActCallH5Message(int i10, @NotNull Object data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.h5_type = i10;
        this.data = data;
    }

    public static /* synthetic */ ActCallH5Message copy$default(ActCallH5Message actCallH5Message, int i10, Object obj, int i11, Object obj2) {
        if ((i11 & 1) != 0) {
            i10 = actCallH5Message.h5_type;
        }
        if ((i11 & 2) != 0) {
            obj = actCallH5Message.data;
        }
        return actCallH5Message.copy(i10, obj);
    }

    public final int component1() {
        return this.h5_type;
    }

    @NotNull
    public final Object component2() {
        return this.data;
    }

    @NotNull
    public final ActCallH5Message copy(int i10, @NotNull Object data) {
        Intrinsics.checkNotNullParameter(data, "data");
        return new ActCallH5Message(i10, data);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActCallH5Message)) {
            return false;
        }
        ActCallH5Message actCallH5Message = (ActCallH5Message) obj;
        if (this.h5_type == actCallH5Message.h5_type && Intrinsics.areEqual(this.data, actCallH5Message.data)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final Object getData() {
        return this.data;
    }

    public final int getH5_type() {
        return this.h5_type;
    }

    public int hashCode() {
        return (Integer.hashCode(this.h5_type) * 31) + this.data.hashCode();
    }

    @NotNull
    public String toString() {
        return "ActCallH5Message(h5_type=" + this.h5_type + ", data=" + this.data + ')';
    }
}
