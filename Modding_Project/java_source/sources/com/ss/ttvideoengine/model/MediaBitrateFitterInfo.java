package com.ss.ttvideoengine.model;

import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class MediaBitrateFitterInfo {
    public static final String KEY_FITTER_DURATION = "duration";
    public static final String KEY_FITTER_FUNC_PARAMS = "func_params";
    public static final String KEY_FITTER_FUNC_TYPE = "func_method";
    public static final String KEY_FITTER_HEADER_SIZE = "header_size";
    private static final String TAG = "FitterInfo";
    private int mDuration;
    private float[] mFunctionParams = null;
    private int mFunctionType = 0;
    private int mHeaderSize;

    private int calculateSize(float f10) {
        float[] functionParams = getFunctionParams();
        getHeaderSize();
        if (functionParams.length > 50) {
            TTVideoEngineLog.e(TAG, "bitrateFitterParams num: " + functionParams.length);
            return 0;
        }
        double d10 = 0.0d;
        for (int i10 = 0; i10 < functionParams.length; i10++) {
            double d11 = 1.0d;
            for (int i11 = 0; i11 < (functionParams.length - i10) - 1; i11++) {
                d11 *= f10;
            }
            d10 += d11 * functionParams[i10];
        }
        return (int) (((d10 * f10) * 1024.0d) / 8.0d);
    }

    private int calculateSizeByFun2(float f10) {
        float[] functionParams;
        if (getFunctionParams().length != 3) {
            return 0;
        }
        double d10 = f10;
        return (int) (((((functionParams[0] / Math.pow(d10, functionParams[2])) + functionParams[1]) * d10) * 1024.0d) / 8.0d);
    }

    public int calculateSizeBySecond(float f10) {
        if (this.mFunctionParams == null) {
            TTVideoEngineLog.e(TAG, "fitter params empty");
            return 0;
        } else if (f10 <= getDuration() && f10 > 0.0f) {
            int i10 = this.mFunctionType;
            if (i10 == 0) {
                return calculateSize(f10);
            }
            if (i10 == 1) {
                return calculateSizeByFun2(f10);
            }
            return calculateSize(f10);
        } else {
            TTVideoEngineLog.e(TAG, String.format("preload second:%f, fitter duration:%d", Float.valueOf(f10), Integer.valueOf(getDuration())));
            return 0;
        }
    }

    public void extractFields(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            if (jSONObject.has(KEY_FITTER_FUNC_PARAMS)) {
                JSONArray jSONArray = jSONObject.getJSONArray(KEY_FITTER_FUNC_PARAMS);
                if (jSONArray.length() <= 0) {
                    return;
                }
                this.mFunctionParams = new float[jSONArray.length()];
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    this.mFunctionParams[i10] = (float) jSONArray.optDouble(i10);
                }
            }
            this.mHeaderSize = jSONObject.optInt(KEY_FITTER_HEADER_SIZE);
            this.mDuration = jSONObject.optInt("duration");
            this.mFunctionType = jSONObject.optInt(KEY_FITTER_FUNC_TYPE);
        } catch (Exception e10) {
            TTVideoEngineLog.d(e10);
        }
    }

    public int getDuration() {
        return this.mDuration;
    }

    public float[] getFunctionParams() {
        return this.mFunctionParams;
    }

    public int getFunctionType() {
        return this.mFunctionType;
    }

    public int getHeaderSize() {
        return this.mHeaderSize;
    }
}
