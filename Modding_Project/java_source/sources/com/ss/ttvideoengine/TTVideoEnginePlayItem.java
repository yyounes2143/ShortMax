package com.ss.ttvideoengine;
/* loaded from: classes6.dex */
public class TTVideoEnginePlayItem {
    public long expire;
    public String playURL;
    public Resolution resolution;
    public String vid;

    public boolean isExpired() {
        if (System.currentTimeMillis() / 1000 > this.expire) {
            return true;
        }
        return false;
    }
}
