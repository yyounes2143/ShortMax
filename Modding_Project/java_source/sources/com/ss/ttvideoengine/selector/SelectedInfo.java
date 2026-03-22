package com.ss.ttvideoengine.selector;

import androidx.annotation.Nullable;
import com.ss.ttvideoengine.model.IVideoInfo;
import com.ss.ttvideoengine.utils.Error;
import java.util.Map;
/* loaded from: classes6.dex */
public class SelectedInfo {
    public static final int DOUBLE_CALC_BITRATE = 0;
    private double calcBitRate;
    private final Error err;
    private Map<String, Object> gearResult;
    private final IVideoInfo selected;

    public SelectedInfo(IVideoInfo iVideoInfo) {
        this.calcBitRate = 0.0d;
        this.selected = iVideoInfo;
        this.err = null;
    }

    public double getDoubleValue(int i10, double d10) {
        if (i10 == 0) {
            return this.calcBitRate;
        }
        return d10;
    }

    @Nullable
    public Error getError() {
        return this.err;
    }

    public Map<String, Object> getGearResult() {
        return this.gearResult;
    }

    @Deprecated
    public IVideoInfo getSelected() {
        return this.selected;
    }

    @Nullable
    public IVideoInfo getVideoInfo() {
        return this.selected;
    }

    public boolean hasError() {
        if (this.err != null) {
            return true;
        }
        return false;
    }

    public void setDoubleValue(int i10, double d10) {
        if (i10 == 0) {
            this.calcBitRate = d10;
        }
    }

    public void setGearResult(Map<String, Object> map) {
        this.gearResult = map;
    }

    public SelectedInfo(Error error) {
        this.calcBitRate = 0.0d;
        this.selected = null;
        this.err = error;
    }

    public SelectedInfo(IVideoInfo iVideoInfo, Error error) {
        this.calcBitRate = 0.0d;
        this.selected = iVideoInfo;
        this.err = error;
    }
}
