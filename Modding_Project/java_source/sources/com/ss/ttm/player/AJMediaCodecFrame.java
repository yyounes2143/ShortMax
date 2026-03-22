package com.ss.ttm.player;

import android.annotation.TargetApi;
import java.nio.ByteBuffer;
@TargetApi(16)
@Keep
/* loaded from: classes6.dex */
public class AJMediaCodecFrame implements Cloneable {
    @Keep
    public ByteBuffer data;
    @Keep
    public int flags;
    @Keep
    public int index;
    @Keep
    public long pts = -269488145;
    @Keep
    public int size;

    /* renamed from: clone */
    public AJMediaCodecFrame m4704clone() {
        try {
            return (AJMediaCodecFrame) super.clone();
        } catch (Throwable th2) {
            th2.printStackTrace();
            return null;
        }
    }
}
