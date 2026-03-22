package com.ss.ttm.player;

import java.nio.ByteBuffer;
/* loaded from: classes6.dex */
public class AJCodecBuffer implements Cloneable {
    public ByteBuffer data;
    public int index;
    public long pts;
    public int size;

    /* renamed from: clone */
    public AJCodecBuffer m4703clone() {
        AJCodecBuffer aJCodecBuffer;
        try {
            aJCodecBuffer = (AJCodecBuffer) super.clone();
        } catch (Throwable th2) {
            th2.printStackTrace();
            aJCodecBuffer = null;
        }
        aJCodecBuffer.size = this.size;
        aJCodecBuffer.pts = this.pts;
        aJCodecBuffer.index = this.index;
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(this.size);
        allocateDirect.put(this.data);
        aJCodecBuffer.data = allocateDirect;
        return aJCodecBuffer;
    }
}
