package com.startshorts.androidplayer.bean.act;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ActExtraResource.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ActExtraResource {
    @Nullable
    private final List<ActResource> resourceList;
    private final int type;

    public ActExtraResource(int i10, @Nullable List<ActResource> list) {
        this.type = i10;
        this.resourceList = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ActExtraResource copy$default(ActExtraResource actExtraResource, int i10, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = actExtraResource.type;
        }
        if ((i11 & 2) != 0) {
            list = actExtraResource.resourceList;
        }
        return actExtraResource.copy(i10, list);
    }

    public final int component1() {
        return this.type;
    }

    @Nullable
    public final List<ActResource> component2() {
        return this.resourceList;
    }

    @NotNull
    public final ActExtraResource copy(int i10, @Nullable List<ActResource> list) {
        return new ActExtraResource(i10, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActExtraResource)) {
            return false;
        }
        ActExtraResource actExtraResource = (ActExtraResource) obj;
        if (this.type == actExtraResource.type && Intrinsics.areEqual(this.resourceList, actExtraResource.resourceList)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final List<ActResource> getResourceList() {
        return this.resourceList;
    }

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = Integer.hashCode(this.type) * 31;
        List<ActResource> list = this.resourceList;
        if (list == null) {
            hashCode = 0;
        } else {
            hashCode = list.hashCode();
        }
        return hashCode2 + hashCode;
    }

    @NotNull
    public String toString() {
        return "ActExtraResource(type=" + this.type + ", resourceList=" + this.resourceList + ')';
    }
}
