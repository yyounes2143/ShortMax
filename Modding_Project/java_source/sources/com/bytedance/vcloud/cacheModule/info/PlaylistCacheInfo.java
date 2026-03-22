package com.bytedance.vcloud.cacheModule.info;

import com.bytedance.vcloud.cacheModule.utils.CmLog;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class PlaylistCacheInfo {
    private static final String TAG = "PlaylistCacheInfo";
    public List<PlaylistCacheInfo> childCacheInfos;
    public UrlInfo[] childUrlInfos;
    public int errorCode;
    public String errorMsg;

    /* renamed from: id  reason: collision with root package name */
    public String f13436id;
    public long playlistExpireTimeS;
    public PlaylistType playlistType;
    public UrlInfo playlistUrlInfo;

    /* loaded from: classes3.dex */
    public enum PlaylistType {
        Unknown,
        Media,
        Master
    }

    /* loaded from: classes3.dex */
    public static class UrlInfo {
        public String cdnUrl;
        public String fileKey;
        public String rawKey;
    }

    private static UrlInfo[] parseChildUrlInfos(String str) {
        try {
            JSONArray jSONArray = new JSONArray(str);
            int length = jSONArray.length();
            UrlInfo[] urlInfoArr = new UrlInfo[length];
            for (int i10 = 0; i10 < length; i10++) {
                urlInfoArr[i10] = parseUrlInfo(jSONArray.getString(i10));
            }
            return urlInfoArr;
        } catch (JSONException unused) {
            return null;
        }
    }

    public static PlaylistCacheInfo parsePlaylistCacheInfo(String str) {
        String str2 = TAG;
        CmLog.w(str2, "parsePlaylistCacheInfo : " + str);
        try {
            JSONObject jSONObject = new JSONObject(str);
            PlaylistCacheInfo playlistCacheInfo = new PlaylistCacheInfo();
            playlistCacheInfo.f13436id = jSONObject.optString("id", "");
            playlistCacheInfo.errorCode = jSONObject.optInt("errorCode", 0);
            playlistCacheInfo.errorMsg = jSONObject.optString("errorMsg", "");
            playlistCacheInfo.playlistExpireTimeS = jSONObject.optLong("playlistExpireTimeS", 0L);
            int optInt = jSONObject.optInt("playlistType", 0);
            if (optInt == 0) {
                playlistCacheInfo.playlistType = PlaylistType.Unknown;
            } else if (optInt == 1) {
                playlistCacheInfo.playlistType = PlaylistType.Master;
            } else {
                playlistCacheInfo.playlistType = PlaylistType.Media;
            }
            playlistCacheInfo.playlistUrlInfo = parseUrlInfo(jSONObject.optString("playlistUrlInfo", ""));
            playlistCacheInfo.childUrlInfos = parseChildUrlInfos(jSONObject.optString("childUrlInfos", ""));
            return playlistCacheInfo;
        } catch (JSONException unused) {
            return null;
        }
    }

    private static UrlInfo parseUrlInfo(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            UrlInfo urlInfo = new UrlInfo();
            urlInfo.fileKey = jSONObject.optString("fileKey", "");
            urlInfo.rawKey = jSONObject.optString("rawKey", "");
            urlInfo.cdnUrl = jSONObject.optString("cdnUrl", "");
            return urlInfo;
        } catch (JSONException unused) {
            return null;
        }
    }
}
