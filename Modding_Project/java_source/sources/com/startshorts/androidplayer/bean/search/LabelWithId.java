package com.startshorts.androidplayer.bean.search;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EpisodeSearchResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class LabelWithId {

    /* renamed from: id  reason: collision with root package name */
    private final long f38124id;
    @Nullable
    private final String labelName;

    public LabelWithId(long j10, @Nullable String str) {
        this.f38124id = j10;
        this.labelName = str;
    }

    public static /* synthetic */ LabelWithId copy$default(LabelWithId labelWithId, long j10, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = labelWithId.f38124id;
        }
        if ((i10 & 2) != 0) {
            str = labelWithId.labelName;
        }
        return labelWithId.copy(j10, str);
    }

    public final long component1() {
        return this.f38124id;
    }

    @Nullable
    public final String component2() {
        return this.labelName;
    }

    @NotNull
    public final LabelWithId copy(long j10, @Nullable String str) {
        return new LabelWithId(j10, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LabelWithId)) {
            return false;
        }
        LabelWithId labelWithId = (LabelWithId) obj;
        if (this.f38124id == labelWithId.f38124id && Intrinsics.areEqual(this.labelName, labelWithId.labelName)) {
            return true;
        }
        return false;
    }

    public final long getId() {
        return this.f38124id;
    }

    @Nullable
    public final String getLabelName() {
        return this.labelName;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = Long.hashCode(this.f38124id) * 31;
        String str = this.labelName;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return hashCode2 + hashCode;
    }

    @NotNull
    public String toString() {
        return "LabelWithId(id=" + this.f38124id + ", labelName=" + this.labelName + ')';
    }
}
