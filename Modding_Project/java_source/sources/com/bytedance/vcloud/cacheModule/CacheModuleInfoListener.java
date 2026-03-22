package com.bytedance.vcloud.cacheModule;

import com.bytedance.vcloud.cacheModule.info.PlaylistCacheInfo;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class CacheModuleInfoListener {
    public static final int HIT_TYPE_CACHE = 1;
    public static final int HIT_TYPE_DOWNLOAD = 2;
    public static final int HIT_TYPE_UNKNOWN = 0;
    static final int INFO_TYPE_CACHE = 2;
    static final int INFO_TYPE_HIT = 1;
    static final int INFO_TYPE_UNKNOWN = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class HitInfo {
        public String fileKey;
        public int hitType;

        private HitInfo() {
        }
    }

    private HitInfo parseHitInfo(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            HitInfo hitInfo = new HitInfo();
            hitInfo.fileKey = jSONObject.optString("fileKey", "");
            hitInfo.hitType = jSONObject.optInt("hitType", 0);
            return hitInfo;
        } catch (JSONException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onInfoListener(int i10, String str) {
        PlaylistCacheInfo parsePlaylistCacheInfo;
        if (i10 == 1) {
            HitInfo parseHitInfo = parseHitInfo(str);
            if (parseHitInfo != null) {
                cacheHit(parseHitInfo.fileKey, parseHitInfo.hitType);
            }
        } else if (i10 == 2 && (parsePlaylistCacheInfo = PlaylistCacheInfo.parsePlaylistCacheInfo(str)) != null) {
            cacheUrlInfo(parsePlaylistCacheInfo);
        }
    }

    public void cacheUrlInfo(PlaylistCacheInfo playlistCacheInfo) {
    }

    public void cacheHit(String str, int i10) {
    }
}
