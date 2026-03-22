package com.startshorts.androidplayer.bean.immersion;

import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImmersionBackRecordListInfo.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ImmersionBackRecordListInfo {
    @Nullable
    private List<ImmersionBackRecordInfo> list;

    /* compiled from: ImmersionBackRecordListInfo.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class ImmersionBackRecordInfo {
        private int shortId;
        private long showTime;

        public final int getShortId() {
            return this.shortId;
        }

        public final long getShowTime() {
            return this.showTime;
        }

        public final void setShortId(int i10) {
            this.shortId = i10;
        }

        public final void setShowTime(long j10) {
            this.showTime = j10;
        }
    }

    @Nullable
    public final List<ImmersionBackRecordInfo> getList() {
        return this.list;
    }

    public final void setList(@Nullable List<ImmersionBackRecordInfo> list) {
        this.list = list;
    }
}
