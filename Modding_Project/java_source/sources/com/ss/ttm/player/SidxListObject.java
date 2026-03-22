package com.ss.ttm.player;

import java.util.ArrayList;
import java.util.List;
@JNINamespace("PLAYER")
/* loaded from: classes6.dex */
public class SidxListObject extends NativeObject {
    private long mBitrate;
    private int mEndIndex;
    private String mFileId;
    private List<SidxItem> mItems = new ArrayList();
    private int mMediaType;
    private int mStartIndex;
    private int mTotalNum;

    /* loaded from: classes6.dex */
    public static class SidxItem {
        private long mDuration;
        private int mIndex;
        private long mOffset;
        private long mSize;
        private long mTimestamp;

        public SidxItem(int i10, long j10, long j11, long j12, long j13) {
            this.mIndex = i10;
            this.mOffset = j10;
            this.mTimestamp = j11;
            this.mDuration = j12;
            this.mSize = j13;
        }

        public long getDuration() {
            return this.mDuration;
        }

        public int getIndex() {
            return this.mIndex;
        }

        public long getOffset() {
            return this.mOffset;
        }

        public long getSize() {
            return this.mSize;
        }

        public long getTimestamp() {
            return this.mTimestamp;
        }
    }

    @CalledByNative
    public SidxListObject(int i10, int i11, int i12, int i13, long j10, String str) {
        this.mMediaType = i10;
        this.mTotalNum = i11;
        this.mStartIndex = i12;
        this.mEndIndex = i13;
        this.mBitrate = j10;
        this.mFileId = str;
    }

    @CalledByNative
    public void addItem(int i10, long j10, long j11, long j12, long j13) {
        this.mItems.add(new SidxItem(i10, j10, j11, j12, j13));
    }

    public long getBitrate() {
        return this.mBitrate;
    }

    public int getEndIndex() {
        return this.mEndIndex;
    }

    public String getFileId() {
        return this.mFileId;
    }

    public SidxItem getItem(int i10) {
        if (i10 >= 0 && i10 < this.mItems.size()) {
            return this.mItems.get(i10);
        }
        return null;
    }

    public int getMediaType() {
        return this.mMediaType;
    }

    public int getStartIndex() {
        return this.mStartIndex;
    }

    public int getTotalNum() {
        return this.mTotalNum;
    }
}
