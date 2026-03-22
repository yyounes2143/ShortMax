package com.ss.ttm.player;

import android.annotation.TargetApi;
@TargetApi(16)
@Keep
/* loaded from: classes6.dex */
public class AJMediaFormat {
    @Keep
    public int channelCount;
    @Keep
    public int colorFormat;
    @Keep
    public int colorTrans;
    @Keep
    public int height;
    @Keep
    public int sampleRate;
    @Keep
    public int sliceHeight;
    @Keep
    public int stride;
    @Keep
    public int width;

    public void reset() {
        this.width = 0;
        this.height = 0;
        this.sampleRate = 0;
        this.channelCount = 0;
        this.colorFormat = 0;
        this.colorTrans = 0;
        this.sliceHeight = 0;
        this.stride = 0;
    }
}
