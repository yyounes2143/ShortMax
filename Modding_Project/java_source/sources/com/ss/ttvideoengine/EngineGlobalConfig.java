package com.ss.ttvideoengine;

import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes6.dex */
public class EngineGlobalConfig {
    private static final String TAG = "EngineGlobalConfig";
    private int dnsCustomType;
    private boolean onlyUseMediaLoader = true;
    private int renderType = -1;
    private int outputLogLevel = 0;
    private int outputLogLevelPercise = -1;
    private long mALogWriteAddr = 0;
    private int mEnableCPPh265CodecOpt = -1;
    private int mEnableBmf = 0;
    private int mEnableUseRealBitrate = 0;
    private int mLazyLoadVideodec = 0;
    private int mEnablePcdnAuto = 0;
    private long mEngineOptimizeFlag = 3;
    private int mEnableSelectStringMapMethod = 0;
    private int mEnableSelectUseObject = 0;
    public int dataLoaderHelperLockType = 0;
    public int enableMdlLockOptimizeV2 = 0;

    /* loaded from: classes6.dex */
    private static final class InstanceHolder {
        private static final EngineGlobalConfig sInstance = new EngineGlobalConfig();

        private InstanceHolder() {
        }
    }

    public static EngineGlobalConfig getInstance() {
        return InstanceHolder.sInstance;
    }

    public long getALogWriteAddr() {
        return this.mALogWriteAddr;
    }

    public int getDnsCustomType() {
        return this.dnsCustomType;
    }

    public int getEnableBmf() {
        return this.mEnableBmf;
    }

    public int getEnableCPPh265CodecOpt() {
        return this.mEnableCPPh265CodecOpt;
    }

    public int getEnableSelectStringMapMethod() {
        return this.mEnableSelectStringMapMethod;
    }

    public int getEnableSelectUseObject() {
        return this.mEnableSelectUseObject;
    }

    public int getEnableUseRealBitrate() {
        return this.mEnableUseRealBitrate;
    }

    public long getEngineOptimizeFlag() {
        return this.mEngineOptimizeFlag;
    }

    public int getLazyLoadVideodec() {
        return this.mLazyLoadVideodec;
    }

    public int getOutputLogLevel() {
        return this.outputLogLevel;
    }

    public int getOutputLogLevelPercise() {
        return this.outputLogLevelPercise;
    }

    public int getPcdnAuto() {
        return this.mEnablePcdnAuto;
    }

    public int getRenderType() {
        return this.renderType;
    }

    public boolean isOnlyUseMediaLoader() {
        return this.onlyUseMediaLoader;
    }

    public void onlyUseMediaLoader(boolean z10) {
        this.onlyUseMediaLoader = z10;
    }

    public void setALogWriteAddr(long j10) {
        this.mALogWriteAddr = j10;
    }

    public void setDnsCustomType(int i10) {
        this.dnsCustomType = i10;
    }

    public void setEnableBmf(int i10) {
        this.mEnableBmf = i10;
    }

    public void setEnableCPPh265CodecOpt(int i10) {
        this.mEnableCPPh265CodecOpt = i10;
    }

    public void setEnablePcdnAuto(int i10) {
        this.mEnablePcdnAuto = i10;
    }

    public void setEnableSelectStringMapMethod(int i10) {
        this.mEnableSelectStringMapMethod = i10;
    }

    public void setEnableSelectUseObject(int i10) {
        this.mEnableSelectUseObject = i10;
    }

    public void setEnableUseRealBitrate(int i10) {
        this.mEnableUseRealBitrate = i10;
    }

    public void setEngineOptimizeFlag(long j10) {
        this.mEngineOptimizeFlag = j10;
    }

    public void setLazyLoadVideodec(int i10) {
        this.mLazyLoadVideodec = i10;
    }

    public void setOutputLogLevel(int i10) {
        this.outputLogLevel = i10;
    }

    public void setOutputLogLevelPercise(int i10) {
        this.outputLogLevelPercise = i10;
    }

    public void setRenderType(int i10) {
        this.renderType = i10;
    }
}
