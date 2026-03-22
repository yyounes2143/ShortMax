package com.ss.ttm.player;

import com.ss.ttm.player.BufferProcessCallback;
import java.nio.ByteBuffer;
@JNINamespace("PLAYER")
/* loaded from: classes6.dex */
public class BufferProcessProto extends TraitObject {
    private static final int Version0 = 0;
    private BufferProcessCallback mBufferProcessCallback;
    private BufferProcessCallback.ProcessBufferResult mBufferResult;

    public BufferProcessProto(BufferProcessCallback bufferProcessCallback) {
        super(8, 0, 0L);
        this.mBufferResult = null;
        this.mBufferProcessCallback = bufferProcessCallback;
    }

    private void closed(String str, int i10) {
        BufferProcessCallback bufferProcessCallback = this.mBufferProcessCallback;
        if (bufferProcessCallback != null) {
            bufferProcessCallback.closed(str, i10);
        }
    }

    private String getProtoName() {
        BufferProcessCallback bufferProcessCallback = this.mBufferProcessCallback;
        if (bufferProcessCallback == null) {
            return null;
        }
        return bufferProcessCallback.getProtoName();
    }

    private boolean isChunk(String str) {
        BufferProcessCallback bufferProcessCallback = this.mBufferProcessCallback;
        if (bufferProcessCallback == null) {
            return false;
        }
        return bufferProcessCallback.isChunk(str);
    }

    private void opened(String str, int i10) {
        BufferProcessCallback bufferProcessCallback = this.mBufferProcessCallback;
        if (bufferProcessCallback != null) {
            bufferProcessCallback.opened(str, i10);
        }
    }

    private void readed(String str, int i10) {
        BufferProcessCallback bufferProcessCallback = this.mBufferProcessCallback;
        if (bufferProcessCallback != null) {
            bufferProcessCallback.readed(str, i10);
        }
    }

    private ByteBuffer receiveProcessedBuffer(String str) {
        return this.mBufferResult.buffer;
    }

    private void seeked(String str, long j10, int i10) {
        BufferProcessCallback bufferProcessCallback = this.mBufferProcessCallback;
        if (bufferProcessCallback != null) {
            bufferProcessCallback.seeked(str, j10, i10);
        }
    }

    private int sendProcessBuffer(String str, ByteBuffer byteBuffer) {
        BufferProcessCallback bufferProcessCallback = this.mBufferProcessCallback;
        if (bufferProcessCallback == null) {
            return Integer.MIN_VALUE;
        }
        BufferProcessCallback.ProcessBufferResult processBuffer = bufferProcessCallback.processBuffer(str, byteBuffer);
        this.mBufferResult = processBuffer;
        if (processBuffer == null) {
            return Integer.MIN_VALUE;
        }
        return processBuffer.ret;
    }

    @CalledByNative
    protected void native_closed(String str, int i10) {
        closed(str, i10);
    }

    @CalledByNative
    protected String native_getProtoName() {
        return getProtoName();
    }

    @CalledByNative
    protected boolean native_isChunk(String str) {
        return isChunk(str);
    }

    @CalledByNative
    protected void native_opened(String str, int i10) {
        opened(str, i10);
    }

    @CalledByNative
    protected void native_readed(String str, int i10) {
        readed(str, i10);
    }

    @CalledByNative
    protected ByteBuffer native_receive_process_buffer(String str) {
        return receiveProcessedBuffer(str);
    }

    @CalledByNative
    protected void native_seeked(String str, long j10, int i10) {
        seeked(str, j10, i10);
    }

    @CalledByNative
    protected int native_send_process_buffer(String str, ByteBuffer byteBuffer) {
        return sendProcessBuffer(str, byteBuffer);
    }
}
