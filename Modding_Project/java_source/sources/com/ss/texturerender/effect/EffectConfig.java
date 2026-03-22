package com.ss.texturerender.effect;

import com.ss.texturerender.TextureRenderLog;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes6.dex */
public class EffectConfig {
    private static final String LOG_TAG = "EffectConfig";
    private int mEGLBitDepth;
    private ConcurrentHashMap<Integer, Integer> mEffectOpenMap;
    private int mTexType;
    private boolean openSR;
    private boolean openSharpen;
    private boolean openTile;

    public EffectConfig(int i10) {
        this.openSR = false;
        this.openSharpen = false;
        this.openTile = false;
        this.mEffectOpenMap = new ConcurrentHashMap<>();
        this.mEGLBitDepth = 8;
        this.mTexType = i10;
    }

    public int getEGLBitDepth() {
        return this.mEGLBitDepth;
    }

    public ConcurrentHashMap<Integer, Integer> getEffectConfigMap() {
        return this.mEffectOpenMap;
    }

    public boolean getEffectOpen(int i10) {
        Integer num = this.mEffectOpenMap.get(Integer.valueOf(i10));
        if (num == null || num.intValue() != 1) {
            return false;
        }
        return true;
    }

    public boolean hasFboEffect() {
        for (Map.Entry<Integer, Integer> entry : this.mEffectOpenMap.entrySet()) {
            if (entry.getKey().intValue() != 1 && entry.getKey().intValue() != 5) {
                return true;
            }
        }
        return false;
    }

    public boolean isOpenSR() {
        return this.openSR;
    }

    public boolean isOpenSharpen() {
        return this.openSharpen;
    }

    public boolean isOpenTile() {
        return this.openTile;
    }

    public boolean isSubSet(EffectConfig effectConfig) {
        if (effectConfig.openSR && !this.openSR) {
            return false;
        }
        if (effectConfig.openSharpen && !this.openSharpen) {
            return false;
        }
        if (effectConfig.getEffectOpen(14) && !getEffectOpen(14)) {
            return false;
        }
        if (effectConfig.getEffectOpen(16) && !getEffectOpen(16)) {
            return false;
        }
        if (!effectConfig.openSharpen && !effectConfig.openSR && !effectConfig.getEffectOpen(14) && !effectConfig.getEffectOpen(16)) {
            if (this.openSR || this.openSharpen || getEffectOpen(14) || getEffectOpen(16)) {
                return false;
            }
            return true;
        }
        return true;
    }

    public void reset() {
        this.mEffectOpenMap.clear();
        this.openSR = false;
        this.openSharpen = false;
    }

    public void setEGLBitDepth(int i10) {
        this.mEGLBitDepth = i10;
    }

    public EffectConfig setEffectOpen(int i10, int i11) {
        boolean z10;
        TextureRenderLog.i(this.mTexType, LOG_TAG, "setEffectOpen effect:" + i10 + ",isOpen:" + i11);
        boolean z11 = false;
        if (i10 == 1) {
            if (i11 == 1) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.openSharpen = z10;
        }
        if (i10 == 5) {
            if (i11 == 1) {
                z11 = true;
            }
            this.openSR = z11;
        }
        this.mEffectOpenMap.put(Integer.valueOf(i10), Integer.valueOf(i11));
        return this;
    }

    public EffectConfig setOpenSR(boolean z10) {
        this.openSR = z10;
        this.mEffectOpenMap.put(5, Integer.valueOf(z10 ? 1 : 0));
        return this;
    }

    public EffectConfig setOpenSharpen(boolean z10) {
        this.openSharpen = z10;
        this.mEffectOpenMap.put(1, Integer.valueOf(z10 ? 1 : 0));
        return this;
    }

    public EffectConfig setOpenTile(boolean z10) {
        this.openTile = z10;
        return this;
    }

    public void setTexType(int i10) {
        this.mTexType = i10;
    }

    public int texType() {
        return this.mTexType;
    }

    public String toString() {
        return "Config:[opengSR:" + this.openSR + " opengSharpen:" + this.openSharpen + " config:" + this.mEffectOpenMap.toString() + "]";
    }

    public EffectConfig() {
        this(-1);
    }
}
