package com.startshorts.androidplayer.bean.event;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UploadSupersetEventResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class UploadSupersetEventResult {
    private final long diffTimeLong;

    public UploadSupersetEventResult(long j10) {
        this.diffTimeLong = j10;
    }

    public static /* synthetic */ UploadSupersetEventResult copy$default(UploadSupersetEventResult uploadSupersetEventResult, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = uploadSupersetEventResult.diffTimeLong;
        }
        return uploadSupersetEventResult.copy(j10);
    }

    public final long component1() {
        return this.diffTimeLong;
    }

    @NotNull
    public final UploadSupersetEventResult copy(long j10) {
        return new UploadSupersetEventResult(j10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof UploadSupersetEventResult) && this.diffTimeLong == ((UploadSupersetEventResult) obj).diffTimeLong) {
            return true;
        }
        return false;
    }

    public final long getDiffTimeLong() {
        return this.diffTimeLong;
    }

    public int hashCode() {
        return Long.hashCode(this.diffTimeLong);
    }

    @NotNull
    public String toString() {
        return "UploadSupersetEventResult(diffTimeLong=" + this.diffTimeLong + ')';
    }
}
