package com.ss.ttm.player;

import java.nio.ByteBuffer;
/* loaded from: classes6.dex */
public abstract class BufferProcessCallback {
    private String mProtoName = null;

    /* loaded from: classes6.dex */
    public static class ProcessBufferResult {
        public static final int EAGAIN = -11;
        public static final int EOF = 0;
        public ByteBuffer buffer;
        public int ret;
    }

    public abstract void closed(String str, int i10);

    public String getProtoName() {
        return this.mProtoName;
    }

    public abstract boolean isChunk(String str);

    public abstract void opened(String str, int i10);

    public abstract ProcessBufferResult processBuffer(String str, ByteBuffer byteBuffer);

    public abstract void readed(String str, int i10);

    public abstract void seeked(String str, long j10, int i10);

    public void setProtoName(String str) {
        this.mProtoName = str;
    }
}
