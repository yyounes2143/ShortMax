package com.ss.ttvideoengine.model;

import org.json.JSONObject;
/* loaded from: classes6.dex */
public class VideoStyle {
    public static final int DIMENSION_2D = 0;
    public static final int DIMENSION_3D_SIDE_BY_SIDE = 2;
    public static final int DIMENSION_3D_TOP_AND_BUTTOM = 1;
    private static final String KEY_DIMENSION = "dimension";
    private static final String KEY_PROJECTION_MODEL = "projection_model";
    private static final String KEY_VIDEO_STYLE = "vstyle";
    private static final String KEY_VIEW_SIZE = "view_size";
    public static final int PROJECTION_MODEL_CUBEMAP = 2;
    public static final int PROJECTION_MODEL_ERP = 1;
    public static final int PROJECTION_MODEL_NORMAL = 0;
    public static final int PROJECTION_MODEL_OFFSET_CUBEMAP = 3;
    public static final int VALUE_DIMENSION = 1;
    public static final int VALUE_PROJECTION_MODEL = 2;
    public static final int VALUE_VIDEO_STYLE = 0;
    public static final int VALUE_VIEW_SIZE = 3;
    public static final int VIDEO_STYLE_NORMAL = 0;
    public static final int VIDEO_STYLE_VR = 1;
    private int mVideoStyle = 0;
    private int mDimension = 0;
    private int mProjectionModel = 0;
    private int mViewSize = 0;

    public void extractFields(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.mVideoStyle = jSONObject.optInt(KEY_VIDEO_STYLE, 0);
        this.mDimension = jSONObject.optInt("dimension", 0);
        this.mProjectionModel = jSONObject.optInt(KEY_PROJECTION_MODEL, 0);
        this.mViewSize = jSONObject.optInt("view_size", 0);
    }

    public int getValueInt(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        return -1;
                    }
                    return this.mViewSize;
                }
                return this.mProjectionModel;
            }
            return this.mDimension;
        }
        return this.mVideoStyle;
    }
}
