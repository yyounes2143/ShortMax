package com.ss.ttvideoengine.model;

import android.text.TextUtils;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class BarrageMaskInfo {
    public static final String KEY_MASK_BITRATE = "bitrate";
    public static final String KEY_MASK_FILE_HASH = "file_hash";
    public static final String KEY_MASK_FILE_ID = "file_id";
    public static final String KEY_MASK_FILE_SIZE = "file_size";
    public static final String KEY_MASK_HEAD_LEN = "head_len";
    public static final String KEY_MASK_UPDATED_AT = "updated_at";
    public static final String KEY_MASK_URL = "barrage_mask_url";
    public static final String KEY_MASK_VERSION = "version";
    public static final String KEY_VER4_MASK_BITRATE = "Bitrate";
    public static final String KEY_VER4_MASK_FILE_HASH = "FileHash";
    public static final String KEY_VER4_MASK_FILE_ID = "FileId";
    public static final String KEY_VER4_MASK_FILE_SIZE = "FileSize";
    public static final String KEY_VER4_MASK_HEAD_LEN = "HeadLen";
    public static final String KEY_VER4_MASK_UPDATED_AT = "UpdatedAt";
    public static final String KEY_VER4_MASK_URL = "BarrageMaskUrl";
    public static final String KEY_VER4_MASK_VERSION = "Version";
    public static final int VALUE_VIDEO_MASK_INFO_BITRATE = 6;
    public static final int VALUE_VIDEO_MASK_INFO_FILE_HASH = 3;
    public static final int VALUE_VIDEO_MASK_INFO_FILE_ID = 2;
    public static final int VALUE_VIDEO_MASK_INFO_FILE_SIZE = 4;
    public static final int VALUE_VIDEO_MASK_INFO_HEAD_LEN = 7;
    public static final int VALUE_VIDEO_MASK_INFO_UPDATED_AT = 5;
    public static final int VALUE_VIDEO_MASK_INFO_URL = 1;
    public static final int VALUE_VIDEO_MASK_INFO_VERSION = 0;
    public String mMaskFileHash;
    public String mMaskFileId;
    public String mMaskUrl;
    public String mMaskVersion;
    public long mMaskFileSize = 0;
    public long mMaskUpdatedAt = 0;
    public int mMaskBitrate = 0;
    public int mMaskHeadLen = 0;

    public void extractFields(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            this.mMaskVersion = jSONObject.optString("version");
            this.mMaskUrl = jSONObject.optString(KEY_MASK_URL);
            this.mMaskFileId = jSONObject.optString("file_id");
            this.mMaskFileHash = jSONObject.optString(KEY_MASK_FILE_HASH);
            this.mMaskFileSize = jSONObject.optLong(KEY_MASK_FILE_SIZE);
            this.mMaskUpdatedAt = jSONObject.optLong(KEY_MASK_UPDATED_AT);
            this.mMaskBitrate = jSONObject.optInt("bitrate");
            this.mMaskHeadLen = jSONObject.optInt(KEY_MASK_HEAD_LEN);
        } catch (Exception e10) {
            TTVideoEngineLog.d(e10);
        }
    }

    public void extractFieldsV4(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            this.mMaskVersion = jSONObject.optString("Version");
            this.mMaskUrl = jSONObject.optString(KEY_VER4_MASK_URL);
            this.mMaskFileId = jSONObject.optString(KEY_VER4_MASK_FILE_ID);
            this.mMaskFileHash = jSONObject.optString(KEY_VER4_MASK_FILE_HASH);
            this.mMaskFileSize = jSONObject.optLong(KEY_VER4_MASK_FILE_SIZE);
            this.mMaskUpdatedAt = jSONObject.optLong(KEY_VER4_MASK_UPDATED_AT);
            this.mMaskBitrate = jSONObject.optInt(KEY_VER4_MASK_BITRATE);
            this.mMaskHeadLen = jSONObject.optInt(KEY_VER4_MASK_HEAD_LEN);
        } catch (Exception e10) {
            TTVideoEngineLog.d(e10);
        }
    }

    public Map<String, Object> getMediaInfo() {
        HashMap hashMap = new HashMap();
        hashMap.put("file_id", getValueStr(2));
        hashMap.put("media_type", "mask");
        hashMap.put(KEY_MASK_FILE_SIZE, Long.valueOf(getValueLong(4)));
        hashMap.put("bitrate", Integer.valueOf(getValueInt(6)));
        String valueStr = getValueStr(1);
        if (!TextUtils.isEmpty(valueStr)) {
            hashMap.put("urls", new String[]{valueStr});
        }
        hashMap.put(KEY_MASK_FILE_HASH, getValueStr(3));
        return hashMap;
    }

    public int getValueInt(int i10) {
        if (i10 != 6) {
            if (i10 != 7) {
                return -1;
            }
            return this.mMaskHeadLen;
        }
        return this.mMaskBitrate;
    }

    public long getValueLong(int i10) {
        if (i10 != 4) {
            if (i10 != 5) {
                return 0L;
            }
            return this.mMaskUpdatedAt;
        }
        return this.mMaskFileSize;
    }

    public String getValueStr(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        return "";
                    }
                    return this.mMaskFileHash;
                }
                return this.mMaskFileId;
            }
            return this.mMaskUrl;
        }
        return this.mMaskVersion;
    }
}
