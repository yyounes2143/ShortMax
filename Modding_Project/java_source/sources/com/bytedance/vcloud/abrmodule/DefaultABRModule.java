package com.bytedance.vcloud.abrmodule;

import android.text.TextUtils;
import com.ss.ttm.player.ABRStrategy;
import com.ss.ttm.player.NativeABRStrategy;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class DefaultABRModule implements IABRModule {
    public static final int PREDICTBITRATE_ALGO_BABB = 0;
    public static final int PREDICTBITRATE_ALGO_BB = 1;
    public static final int PREDICTBITRATE_ALGO_BBA = 9;
    public static final int PREDICTBITRATE_ALGO_BOLA = 6;
    public static final int PREDICTBITRATE_ALGO_BW = 3;
    public static final int PREDICTBITRATE_ALGO_CS = 4;
    public static final int PREDICTBITRATE_ALGO_FESTIVE = 7;
    public static final int PREDICTBITRATE_ALGO_MPC = 2;
    public static final int PREDICTBITRATE_ALGO_MPC2 = 8;
    public static final int PREDICTBITRATE_ALGO_RL = 5;
    private int mAlgoType = -1;
    private long mHandle;

    public DefaultABRModule() {
        this.mHandle = 0L;
        ABRJniLoader.loadLibrary();
        if (!ABRJniLoader.isLibraryLoaded) {
            return;
        }
        long _create = _create();
        this.mHandle = _create;
        _setIntValue(_create, 0, ABRConfig.getLogLevel());
        _setIntValue(this.mHandle, 1, ABRConfig.getSwitchSensitivity());
        _setIntValue(this.mHandle, 3, ABRConfig.getSwitchModel());
        _setIntValue(this.mHandle, 4, ABRConfig.getFixedLevel());
        _setIntValue(this.mHandle, 5, ABRConfig.getStartupModel());
        _setIntValue(this.mHandle, 37, ABRConfig.getStartupUseCache());
        _setIntValue(this.mHandle, 45, ABRConfig.getNarrowScreenUseWidth());
        _setFloatValue(this.mHandle, 8, ABRConfig.getStartupBandwidthParameter());
        _setFloatValue(this.mHandle, 9, ABRConfig.getStallPenaltyParameter());
        _setFloatValue(this.mHandle, 10, ABRConfig.getSwitchPenaltyParameter());
        _setFloatValue(this.mHandle, 11, ABRConfig.getBandwidthParameter());
        _setDoubleValue(this.mHandle, 29, ABRConfig.getStartupModelFirstParam());
        _setDoubleValue(this.mHandle, 30, ABRConfig.getStartupModelSecondParam());
        _setDoubleValue(this.mHandle, 31, ABRConfig.getStartupModelThirdParam());
        _setDoubleValue(this.mHandle, 32, ABRConfig.getStartupModelFourthParam());
        String abrStartupJson = ABRConfig.getAbrStartupJson();
        if (!TextUtils.isEmpty(abrStartupJson)) {
            _setStringValue(this.mHandle, 51, abrStartupJson);
        }
        String abrFlowJson = ABRConfig.getAbrFlowJson();
        if (!TextUtils.isEmpty(abrFlowJson)) {
            _setStringValue(this.mHandle, 52, abrFlowJson);
        }
        String abrPreloadJson = ABRConfig.getAbrPreloadJson();
        if (!TextUtils.isEmpty(abrPreloadJson)) {
            _setStringValue(this.mHandle, 50, abrPreloadJson);
        }
    }

    private native void _addBufferInfo(long j10, int i10, String str, long j11, long j12, long j13);

    private native long _create();

    private native double _getDoubleValue(long j10, int i10, double d10);

    private native float _getFloatValue(long j10, int i10, float f10);

    private native long _getLongValue(long j10, int i10, long j11);

    private native ABRResult _getPredict(long j10);

    private native String _getPredictByJsonParams(long j10, String str);

    private native String _getStringValue(long j10, int i10, String str);

    private native String _getVersion();

    private native void _release(long j10);

    private native ABRResult _select(long j10, int i10, int i11);

    private native void _setDataSource(long j10, IPlayStateSupplier iPlayStateSupplier);

    private native void _setDeviceInfo(long j10, IDeviceInfo iDeviceInfo);

    private native void _setDoubleValue(long j10, int i10, double d10);

    private native void _setFloatValue(long j10, int i10, float f10);

    private native void _setInfoListener(long j10, IABRInfoListener iABRInfoListener);

    private native void _setIntValue(long j10, int i10, int i11);

    private native void _setLongValue(long j10, int i10, long j11);

    private native void _setMediaInfo(long j10, List<IVideoStream> list, List<IAudioStream> list2);

    private native void _setSRBenchmark(long j10, Map<Integer, Integer> map);

    private native void _setSRBenchmarkMap(long j10, Map<Integer, List<Integer>> map);

    private native void _setStringValue(long j10, int i10, String str);

    private native void _start(long j10, int i10, int i11);

    private native void _stop(long j10);

    @Override // com.bytedance.vcloud.abrmodule.IABRModule
    public void addBufferInfo(int i10, String str, long j10, long j11, long j12) {
        long j13 = this.mHandle;
        if (j13 == 0) {
            return;
        }
        _addBufferInfo(j13, i10, str, j10, j11, j12);
    }

    @Override // com.bytedance.vcloud.abrmodule.IABRModule
    public float getFloatOption(int i10, float f10) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return f10;
        }
        return _getFloatValue(j10, i10, f10);
    }

    @Override // com.bytedance.vcloud.abrmodule.IABRModule
    public long getLongOption(int i10, long j10) {
        long j11 = this.mHandle;
        if (j11 == 0) {
            return j10;
        }
        if (i10 == 19) {
            return this.mAlgoType;
        }
        return _getLongValue(j11, i10, j10);
    }

    @Override // com.bytedance.vcloud.abrmodule.IABRModule
    public ABRResult getPredict() {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return null;
        }
        return _getPredict(j10);
    }

    @Override // com.bytedance.vcloud.abrmodule.IABRModule
    public String getPredictByJsonParams(String str) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return null;
        }
        return _getPredictByJsonParams(j10, str);
    }

    @Override // com.bytedance.vcloud.abrmodule.IABRModule
    public String getStringOption(int i10, String str) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return str;
        }
        try {
            return _getStringValue(j10, i10, str);
        } catch (Throwable th2) {
            th2.printStackTrace();
            return str;
        }
    }

    @Override // com.bytedance.vcloud.abrmodule.IABRModule
    public String getVersion() {
        if (this.mHandle == 0) {
            return "j_2.172.1-tob";
        }
        return _getVersion();
    }

    @Override // com.bytedance.vcloud.abrmodule.IABRModule
    public void init(IPlayStateSupplier iPlayStateSupplier) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        try {
            _setDataSource(j10, iPlayStateSupplier);
        } catch (Throwable unused) {
        }
    }

    @Override // com.bytedance.vcloud.abrmodule.IABRModule
    public ABRResult onceSelect(int i10, int i11) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return null;
        }
        return _select(j10, i10, i11);
    }

    @Override // com.bytedance.vcloud.abrmodule.IABRModule
    public void release() {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        _release(j10);
    }

    @Override // com.bytedance.vcloud.abrmodule.IABRModule
    public void setDeviceInfo(IDeviceInfo iDeviceInfo) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        _setDeviceInfo(j10, iDeviceInfo);
    }

    @Override // com.bytedance.vcloud.abrmodule.IABRModule
    public void setDoubleOptionForKey(int i10, double d10) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        _setDoubleValue(j10, i10, d10);
    }

    @Override // com.bytedance.vcloud.abrmodule.IABRModule
    public void setFloatOptionForKey(int i10, float f10) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        _setFloatValue(j10, i10, f10);
    }

    @Override // com.bytedance.vcloud.abrmodule.IABRModule
    public void setInfoListener(IABRInfoListener iABRInfoListener) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        _setInfoListener(j10, iABRInfoListener);
    }

    @Override // com.bytedance.vcloud.abrmodule.IABRModule
    public void setIntOptionForKey(int i10, int i11) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        _setIntValue(j10, i10, i11);
    }

    @Override // com.bytedance.vcloud.abrmodule.IABRModule
    public void setLongOptionForKey(int i10, long j10) {
        long j11 = this.mHandle;
        if (j11 == 0) {
            return;
        }
        _setLongValue(j11, i10, j10);
    }

    @Override // com.bytedance.vcloud.abrmodule.IABRModule
    public void setMediaInfo(List<IVideoStream> list, List<IAudioStream> list2) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        _setMediaInfo(j10, list, list2);
    }

    @Override // com.bytedance.vcloud.abrmodule.IABRModule
    public void setSRBenchmark(Map<Integer, Integer> map) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        _setSRBenchmark(j10, map);
    }

    @Override // com.bytedance.vcloud.abrmodule.IABRModule
    public void setSRBenchmarkMap(Map<Integer, List<Integer>> map) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        _setSRBenchmarkMap(j10, map);
    }

    @Override // com.bytedance.vcloud.abrmodule.IABRModule
    public void setStringOptionForKey(int i10, String str) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        _setStringValue(j10, i10, str);
    }

    @Override // com.bytedance.vcloud.abrmodule.IABRModule
    public void start(int i10, int i11) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        this.mAlgoType = i10;
        _start(j10, i10, i11);
    }

    @Override // com.bytedance.vcloud.abrmodule.IABRModule
    public void stop() {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        _stop(j10);
    }

    @Override // com.bytedance.vcloud.abrmodule.IABRModule
    public ABRStrategy toStratrgy() {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return null;
        }
        return new NativeABRStrategy(j10);
    }
}
