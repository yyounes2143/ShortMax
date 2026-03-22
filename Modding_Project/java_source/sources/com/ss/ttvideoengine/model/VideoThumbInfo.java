package com.ss.ttvideoengine.model;

import android.text.TextUtils;
import com.ss.ttvideoengine.model.VideoModelPb;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class VideoThumbInfo {
    public static final String KEY_DURATION = "duration";
    public static final String KEY_FEXT = "fext";
    public static final String KEY_IMG_NUM = "img_num";
    public static final String KEY_IMG_URI = "img_uri";
    public static final String KEY_IMG_URL = "img_url";
    public static final String KEY_IMG_URLS = "img_urls";
    public static final String KEY_IMG_X_LEN = "img_x_len";
    public static final String KEY_IMG_X_SIZE = "img_x_size";
    public static final String KEY_IMG_Y_LEN = "img_y_len";
    public static final String KEY_IMG_Y_SIZE = "img_y_size";
    public static final String KEY_INTERVAL = "interval";
    public static final String KEY_URI = "uri";
    private static final String KEY_VER2_DURATION = "Duration";
    private static final String KEY_VER2_FEXT = "Fext";
    private static final String KEY_VER2_IMG_NUM = "ImgNum";
    private static final String KEY_VER2_IMG_URL = "ImgUrl";
    private static final String KEY_VER2_IMG_X_LEN = "ImgXLen";
    private static final String KEY_VER2_IMG_X_SIZE = "ImgXSize";
    private static final String KEY_VER2_IMG_Y_LEN = "ImgYLen";
    private static final String KEY_VER2_IMG_Y_SIZE = "ImgYSize";
    private static final String KEY_VER2_INTERVAL = "Interval";
    private static final String KEY_VER2_URI = "Uri";
    private static final String KEY_VER4_CAPTURE_NUM = "CaptureNum";
    private static final String KEY_VER4_CELL_HEIGHT = "CellHeight";
    private static final String KEY_VER4_CELL_WIDTH = "CellWidth";
    private static final String KEY_VER4_FORMAT = "Format";
    private static final String KEY_VER4_IMG_X_LEN = "ImgXLen";
    private static final String KEY_VER4_IMG_Y_LEN = "ImgYLen";
    private static final String KEY_VER4_INTERVAL = "Interval";
    private static final String KEY_VER4_STORE_URLS = "StoreUrls";
    public static final int VALUE_VIDEO_THUMB_INFO_CAPTURE_NUM = 0;
    public static final int VALUE_VIDEO_THUMB_INFO_CELL_HEIGHT = 4;
    public static final int VALUE_VIDEO_THUMB_INFO_CELL_WIDTH = 3;
    public static final int VALUE_VIDEO_THUMB_INFO_DURATION = 7;
    public static final int VALUE_VIDEO_THUMB_INFO_FEXT = 9;
    public static final int VALUE_VIDEO_THUMB_INFO_FORMAT = 9;
    public static final int VALUE_VIDEO_THUMB_INFO_IMG_NUM = 0;
    public static final int VALUE_VIDEO_THUMB_INFO_IMG_URL = 2;
    public static final int VALUE_VIDEO_THUMB_INFO_IMG_X_LEN = 5;
    public static final int VALUE_VIDEO_THUMB_INFO_IMG_X_SIZE = 3;
    public static final int VALUE_VIDEO_THUMB_INFO_IMG_Y_LEN = 6;
    public static final int VALUE_VIDEO_THUMB_INFO_IMG_Y_SIZE = 4;
    public static final int VALUE_VIDEO_THUMB_INFO_INTERVAL = 8;
    public static final int VALUE_VIDEO_THUMB_INFO_URI = 1;
    private int mCaptureNumVer4;
    private int mCellHeightVer4;
    private int mCellWidthVer4;
    public double mDuration;
    private double mDurationVer2;
    public String mFext;
    private String mFextVer2;
    private String mFormatVer4;
    public int mImgNum;
    private int mImgNumVer2;
    public String mImgUrl;
    public ArrayList<String> mImgUrlList;
    private String mImgUrlVer2;
    private int mImgXLenVer4;
    public int mImgXlen;
    private int mImgXlenVer2;
    public int mImgXsize;
    private int mImgXsizeVer2;
    private int mImgYLenVer4;
    public int mImgYlen;
    private int mImgYlenVer2;
    public int mImgYsize;
    private int mImgYsizeVer2;
    public double mInterval;
    private double mIntervalVer2;
    private double mIntervalVer4;
    private ArrayList<String> mStoreUrlsVer4;
    public String mUri;
    private String mUriVer2;
    private int mVersion = 1;

    public void extractFields(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        if (jSONObject.has(KEY_IMG_NUM)) {
            if (this.mVersion != 3) {
                this.mVersion = 1;
            }
        } else if (jSONObject.has(KEY_VER2_IMG_URL)) {
            this.mVersion = 2;
        }
        int i10 = this.mVersion;
        int i11 = 0;
        if (i10 != 1 && i10 != 3) {
            if (i10 == 2) {
                try {
                    this.mImgNumVer2 = jSONObject.getInt(KEY_VER2_IMG_NUM);
                    this.mUriVer2 = jSONObject.optString(KEY_VER2_URI);
                    this.mImgUrlVer2 = jSONObject.optString(KEY_VER2_IMG_URL);
                    this.mImgXsizeVer2 = jSONObject.optInt(KEY_VER2_IMG_X_SIZE);
                    this.mImgYsizeVer2 = jSONObject.optInt(KEY_VER2_IMG_Y_SIZE);
                    this.mImgXlenVer2 = jSONObject.optInt("ImgXLen");
                    this.mImgYlenVer2 = jSONObject.optInt("ImgYLen");
                    this.mDurationVer2 = jSONObject.optDouble(KEY_VER2_DURATION);
                    this.mIntervalVer2 = jSONObject.optDouble("Interval");
                    this.mFextVer2 = jSONObject.optString(KEY_VER2_FEXT);
                    return;
                } catch (JSONException e10) {
                    TTVideoEngineLog.d(e10);
                    return;
                }
            } else if (i10 == 4) {
                this.mCaptureNumVer4 = jSONObject.optInt(KEY_VER4_CAPTURE_NUM);
                JSONArray optJSONArray = jSONObject.optJSONArray(KEY_VER4_STORE_URLS);
                if (optJSONArray != null && optJSONArray.length() > 0) {
                    this.mStoreUrlsVer4 = new ArrayList<>();
                    while (i11 < optJSONArray.length()) {
                        this.mStoreUrlsVer4.add(optJSONArray.optString(i11));
                        i11++;
                    }
                }
                this.mCellWidthVer4 = jSONObject.optInt(KEY_VER4_CELL_WIDTH);
                this.mCellHeightVer4 = jSONObject.optInt(KEY_VER4_CELL_HEIGHT);
                this.mImgXLenVer4 = jSONObject.optInt("ImgXLen");
                this.mImgYLenVer4 = jSONObject.optInt("ImgYLen");
                this.mIntervalVer4 = jSONObject.optDouble("Interval");
                this.mFormatVer4 = jSONObject.optString("Format");
                return;
            } else {
                return;
            }
        }
        try {
            this.mImgNum = jSONObject.getInt(KEY_IMG_NUM);
            String optString = jSONObject.optString(KEY_URI);
            this.mUri = optString;
            if (TextUtils.isEmpty(optString)) {
                this.mUri = jSONObject.optString(KEY_IMG_URI);
            }
            this.mImgUrl = jSONObject.optString(KEY_IMG_URL);
            this.mImgXsize = jSONObject.optInt(KEY_IMG_X_SIZE);
            this.mImgYsize = jSONObject.optInt(KEY_IMG_Y_SIZE);
            this.mImgXlen = jSONObject.optInt(KEY_IMG_X_LEN);
            this.mImgYlen = jSONObject.optInt(KEY_IMG_Y_LEN);
            this.mDuration = jSONObject.optDouble("duration");
            this.mInterval = jSONObject.optDouble("interval");
            this.mFext = jSONObject.optString(KEY_FEXT);
            JSONArray optJSONArray2 = jSONObject.optJSONArray(KEY_IMG_URLS);
            if (optJSONArray2 != null && optJSONArray2.length() > 0) {
                this.mImgUrlList = new ArrayList<>();
                while (i11 < optJSONArray2.length()) {
                    this.mImgUrlList.add(optJSONArray2.optString(i11));
                    i11++;
                }
            }
        } catch (JSONException e11) {
            TTVideoEngineLog.d(e11);
        }
    }

    public List<String> getUrls() {
        if (this.mVersion == 4 && this.mStoreUrlsVer4 != null) {
            return new ArrayList(this.mStoreUrlsVer4);
        }
        return null;
    }

    public double getValueDouble(int i10) {
        int i11 = this.mVersion;
        if (i11 == 2) {
            if (i10 != 7) {
                if (i10 != 8) {
                    return -1.0d;
                }
                return this.mIntervalVer2;
            }
            return this.mDurationVer2;
        } else if (i11 == 4) {
            if (i10 != 8) {
                return -1.0d;
            }
            return this.mIntervalVer4;
        } else if (i10 != 7) {
            if (i10 != 8) {
                return -1.0d;
            }
            return this.mInterval;
        } else {
            return this.mDuration;
        }
    }

    public int getValueInt(int i10) {
        int i11 = this.mVersion;
        if (i11 == 2) {
            if (i10 != 0) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        if (i10 != 5) {
                            if (i10 != 6) {
                                return -1;
                            }
                            return this.mImgYlenVer2;
                        }
                        return this.mImgXlenVer2;
                    }
                    return this.mImgYsizeVer2;
                }
                return this.mImgXsizeVer2;
            }
            return this.mImgNumVer2;
        } else if (i11 == 4) {
            if (i10 != 0) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        if (i10 != 5) {
                            if (i10 != 6) {
                                return -1;
                            }
                            return this.mImgYLenVer4;
                        }
                        return this.mImgXLenVer4;
                    }
                    return this.mCellHeightVer4;
                }
                return this.mCellWidthVer4;
            }
            return this.mCaptureNumVer4;
        } else if (i10 != 0) {
            if (i10 != 3) {
                if (i10 != 4) {
                    if (i10 != 5) {
                        if (i10 != 6) {
                            return -1;
                        }
                        return this.mImgYlen;
                    }
                    return this.mImgXlen;
                }
                return this.mImgYsize;
            }
            return this.mImgXsize;
        } else {
            return this.mImgNum;
        }
    }

    public String getValueStr(int i10) {
        int i11 = this.mVersion;
        if (i11 == 2) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 9) {
                        return "";
                    }
                    return this.mFextVer2;
                }
                return this.mImgUrlVer2;
            }
            return this.mUriVer2;
        } else if (i11 == 4) {
            if (i10 != 9) {
                return "";
            }
            return this.mFormatVer4;
        } else if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 9) {
                    return "";
                }
                return this.mFext;
            }
            return this.mImgUrl;
        } else {
            return this.mUri;
        }
    }

    public void setVersion(int i10) {
        this.mVersion = i10;
    }

    public void parseFromPb(VideoModelPb.BigThumb bigThumb) {
    }
}
