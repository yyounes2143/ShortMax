package com.ss.ttvideoengine.strategy.refresh;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.vcloud.cacheModule.info.PlaylistCacheInfo;
import com.ss.ttvideoengine.strategy.refresh.TTVideoEngineUrlFetcher;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* loaded from: classes6.dex */
public final class PlaylistInfoUtils {

    /* loaded from: classes6.dex */
    public static class PlaylistCacheInfoHolder {
        private final String mLogcatTag;
        private PlaylistCacheInfo mPlaylistCacheInfo;

        public PlaylistCacheInfoHolder(String str) {
            this.mLogcatTag = str;
        }

        private boolean isMasterPlaylistContainsChildPlaylist(PlaylistCacheInfo playlistCacheInfo) {
            PlaylistCacheInfo playlistCacheInfo2 = this.mPlaylistCacheInfo;
            if (playlistCacheInfo2 != null && playlistCacheInfo != null) {
                for (PlaylistCacheInfo playlistCacheInfo3 : playlistCacheInfo2.childCacheInfos) {
                    if (playlistCacheInfo3 != null && PlaylistInfoUtils.isUrlInfoEquals(playlistCacheInfo3.playlistUrlInfo, playlistCacheInfo.playlistUrlInfo)) {
                        return true;
                    }
                }
            }
            return false;
        }

        public void buildPlaylistHierarchy(PlaylistCacheInfo playlistCacheInfo) {
            if (playlistCacheInfo != null && PlaylistInfoUtils.isUrlInfoValid(playlistCacheInfo.playlistUrlInfo)) {
                PlaylistCacheInfo.PlaylistType playlistType = playlistCacheInfo.playlistType;
                PlaylistCacheInfo.PlaylistType playlistType2 = PlaylistCacheInfo.PlaylistType.Master;
                if (playlistType == playlistType2) {
                    if (this.mPlaylistCacheInfo == null) {
                        String str = this.mLogcatTag;
                        TTVideoEngineLog.d(str, "buildPlaylistHierarchy master " + PlaylistInfoUtils.dumpPlaylistCacheInfo(playlistCacheInfo));
                        this.mPlaylistCacheInfo = playlistCacheInfo;
                    }
                } else if (playlistType == PlaylistCacheInfo.PlaylistType.Media) {
                    PlaylistCacheInfo playlistCacheInfo2 = this.mPlaylistCacheInfo;
                    if (playlistCacheInfo2 != null && playlistCacheInfo2.playlistType == playlistType2) {
                        if (PlaylistInfoUtils.isMasterPlaylistParentOfChildPlaylist(playlistCacheInfo2, playlistCacheInfo)) {
                            PlaylistCacheInfo playlistCacheInfo3 = this.mPlaylistCacheInfo;
                            if (playlistCacheInfo3.childCacheInfos == null) {
                                playlistCacheInfo3.childCacheInfos = new ArrayList();
                            }
                            if (!isMasterPlaylistContainsChildPlaylist(playlistCacheInfo)) {
                                String str2 = this.mLogcatTag;
                                TTVideoEngineLog.d(str2, "buildPlaylistHierarchy master add " + PlaylistInfoUtils.dumpPlaylistCacheInfo(playlistCacheInfo));
                                this.mPlaylistCacheInfo.childCacheInfos.add(playlistCacheInfo);
                            }
                        }
                    } else if (playlistCacheInfo2 == null) {
                        String str3 = this.mLogcatTag;
                        TTVideoEngineLog.d(str3, "buildPlaylistHierarchy media " + PlaylistInfoUtils.dumpPlaylistCacheInfo(playlistCacheInfo));
                        this.mPlaylistCacheInfo = playlistCacheInfo;
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public PlaylistChildUrlInfo findChildUrlInfoInPlaylistHierarchy(TTVideoEngineUrlFetcher.UrlRequest urlRequest) {
            PlaylistCacheInfo playlistCacheInfo;
            PlaylistCacheInfo.UrlInfo urlInfo;
            if (urlRequest == null || (playlistCacheInfo = this.mPlaylistCacheInfo) == null || (urlInfo = playlistCacheInfo.playlistUrlInfo) == null || !TextUtils.equals(urlInfo.rawKey, urlRequest.vid)) {
                return null;
            }
            return PlaylistInfoUtils.findChildUrlInfoInPlaylist(urlRequest, this.mPlaylistCacheInfo);
        }

        public PlaylistCacheInfo getPlaylistCacheInfo() {
            return this.mPlaylistCacheInfo;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static class PlaylistChildUrlInfo {
        @Nullable
        final PlaylistCacheInfo childPlaylist;
        final boolean isUrlInfoPlaylist;
        @NonNull
        final PlaylistCacheInfo parentPlaylist;
        @NonNull
        final PlaylistCacheInfo.UrlInfo urlInfo;

        PlaylistChildUrlInfo(@NonNull PlaylistCacheInfo playlistCacheInfo, @Nullable PlaylistCacheInfo playlistCacheInfo2, @NonNull PlaylistCacheInfo.UrlInfo urlInfo, boolean z10) {
            this.parentPlaylist = playlistCacheInfo;
            this.childPlaylist = playlistCacheInfo2;
            this.urlInfo = urlInfo;
            this.isUrlInfoPlaylist = z10;
        }
    }

    private PlaylistInfoUtils() {
    }

    public static String dumpPlaylistCacheInfo(PlaylistCacheInfo playlistCacheInfo) {
        int length;
        if (playlistCacheInfo == null) {
            return null;
        }
        Locale locale = Locale.getDefault();
        PlaylistCacheInfo.PlaylistType playlistType = playlistCacheInfo.playlistType;
        String str = playlistCacheInfo.f13436id;
        String dumpUrlInfo = dumpUrlInfo(playlistCacheInfo.playlistUrlInfo);
        Integer valueOf = Integer.valueOf(playlistCacheInfo.errorCode);
        String str2 = playlistCacheInfo.errorMsg;
        PlaylistCacheInfo.UrlInfo[] urlInfoArr = playlistCacheInfo.childUrlInfos;
        int i10 = 0;
        if (urlInfoArr == null) {
            length = 0;
        } else {
            length = urlInfoArr.length;
        }
        Integer valueOf2 = Integer.valueOf(length);
        List<PlaylistCacheInfo> list = playlistCacheInfo.childCacheInfos;
        if (list != null) {
            i10 = list.size();
        }
        return String.format(locale, "%s %s %s %d %s %s %s", playlistType, str, dumpUrlInfo, valueOf, str2, valueOf2, Integer.valueOf(i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String dumpUrlInfo(PlaylistCacheInfo.UrlInfo urlInfo) {
        if (urlInfo == null) {
            return null;
        }
        return String.format(Locale.getDefault(), "%s %s %s", urlInfo.rawKey, urlInfo.fileKey, urlInfo.cdnUrl);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PlaylistChildUrlInfo findChildUrlInfoInPlaylist(TTVideoEngineUrlFetcher.UrlRequest urlRequest, PlaylistCacheInfo playlistCacheInfo) {
        PlaylistCacheInfo.PlaylistType playlistType;
        PlaylistCacheInfo.UrlInfo[] urlInfoArr;
        PlaylistCacheInfo.UrlInfo[] urlInfoArr2;
        if (urlRequest == null || playlistCacheInfo == null || (playlistType = playlistCacheInfo.playlistType) == PlaylistCacheInfo.PlaylistType.Unknown) {
            return null;
        }
        if (playlistType == PlaylistCacheInfo.PlaylistType.Master) {
            PlaylistCacheInfo.UrlInfo[] urlInfoArr3 = playlistCacheInfo.childUrlInfos;
            if (urlInfoArr3 != null) {
                for (PlaylistCacheInfo.UrlInfo urlInfo : urlInfoArr3) {
                    if (isUrlInfoValid(urlInfo) && TextUtils.equals(urlInfo.rawKey, urlRequest.vid) && TextUtils.equals(urlInfo.fileKey, urlRequest.cacheKey)) {
                        return new PlaylistChildUrlInfo(playlistCacheInfo, null, urlInfo, true);
                    }
                }
            }
            List<PlaylistCacheInfo> list = playlistCacheInfo.childCacheInfos;
            if (list != null) {
                for (PlaylistCacheInfo playlistCacheInfo2 : list) {
                    if (playlistCacheInfo2 != null && (urlInfoArr2 = playlistCacheInfo2.childUrlInfos) != null) {
                        for (PlaylistCacheInfo.UrlInfo urlInfo2 : urlInfoArr2) {
                            if (isUrlInfoValid(urlInfo2) && TextUtils.equals(urlInfo2.rawKey, urlRequest.vid) && TextUtils.equals(urlInfo2.fileKey, urlRequest.cacheKey)) {
                                return new PlaylistChildUrlInfo(playlistCacheInfo, playlistCacheInfo2, urlInfo2, false);
                            }
                        }
                        continue;
                    }
                }
            }
        } else if (playlistType == PlaylistCacheInfo.PlaylistType.Media) {
            for (PlaylistCacheInfo.UrlInfo urlInfo3 : playlistCacheInfo.childUrlInfos) {
                if (isUrlInfoValid(urlInfo3) && TextUtils.equals(urlInfo3.rawKey, urlRequest.vid) && TextUtils.equals(urlInfo3.fileKey, urlRequest.cacheKey)) {
                    return new PlaylistChildUrlInfo(playlistCacheInfo, null, urlInfo3, false);
                }
            }
        }
        return null;
    }

    public static boolean isAllChildPlaylistDownload(PlaylistCacheInfo playlistCacheInfo) {
        List<PlaylistCacheInfo> list;
        if (playlistCacheInfo == null) {
            return false;
        }
        PlaylistCacheInfo.PlaylistType playlistType = playlistCacheInfo.playlistType;
        if (playlistType == PlaylistCacheInfo.PlaylistType.Media) {
            return true;
        }
        if (playlistType != PlaylistCacheInfo.PlaylistType.Master || (list = playlistCacheInfo.childCacheInfos) == null || playlistCacheInfo.childUrlInfos == null || list.size() != playlistCacheInfo.childUrlInfos.length) {
            return false;
        }
        return true;
    }

    static boolean isMasterPlaylistParentOfChildPlaylist(PlaylistCacheInfo playlistCacheInfo, PlaylistCacheInfo playlistCacheInfo2) {
        PlaylistCacheInfo.UrlInfo[] urlInfoArr;
        if (playlistCacheInfo == null || playlistCacheInfo2 == null || playlistCacheInfo.playlistType != PlaylistCacheInfo.PlaylistType.Master || playlistCacheInfo2.playlistUrlInfo == null) {
            return false;
        }
        for (PlaylistCacheInfo.UrlInfo urlInfo : playlistCacheInfo.childUrlInfos) {
            if (urlInfo == null) {
                return false;
            }
            if (isUrlInfoEquals(urlInfo, playlistCacheInfo2.playlistUrlInfo)) {
                return true;
            }
        }
        return false;
    }

    static boolean isUrlInfoEquals(PlaylistCacheInfo.UrlInfo urlInfo, PlaylistCacheInfo.UrlInfo urlInfo2) {
        if (isUrlInfoValid(urlInfo) && isUrlInfoValid(urlInfo2) && TextUtils.equals(urlInfo.rawKey, urlInfo2.rawKey) && TextUtils.equals(urlInfo.fileKey, urlInfo2.fileKey) && TextUtils.equals(urlInfo.cdnUrl, urlInfo2.cdnUrl)) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isUrlInfoValid(PlaylistCacheInfo.UrlInfo urlInfo) {
        if (urlInfo != null && !TextUtils.isEmpty(urlInfo.rawKey) && !TextUtils.isEmpty(urlInfo.fileKey) && !TextUtils.isEmpty(urlInfo.cdnUrl)) {
            return true;
        }
        return false;
    }
}
