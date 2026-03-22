package com.bytedance.vcloud.cacheModule;

import com.bytedance.vcloud.cacheModule.CacheFileManager;
import com.bytedance.vcloud.cacheModule.info.MasterPlaylist;
import com.bytedance.vcloud.cacheModule.utils.CmLog;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes3.dex */
public class PlaylistDownloaderItem {
    private static final String TAG = "PlaylistDownloaderItem";
    private long nativeHandler;

    /* loaded from: classes3.dex */
    public enum PlayListType {
        Unknown,
        MasterPlaylist,
        Live,
        Vod,
        Event
    }

    static {
        CacheModuleLoader.loadLibrary();
    }

    public PlaylistDownloaderItem(String str) {
        this.nativeHandler = 0L;
        if (CacheModuleLoader.inited) {
            try {
                this.nativeHandler = _createDownloader(str);
            } catch (UnsatisfiedLinkError e10) {
                String str2 = TAG;
                CmLog.w(str2, "api-native not match: " + e10.getMessage());
            }
        }
    }

    private native void _allDownloadCompleted(long j10);

    private native void _cancel(long j10);

    private native long _createDownloader(String str);

    private native int _download(long j10);

    private native String _getDownloadFilePath(long j10);

    private native Object _getMasterPlaylistInfo(long j10);

    private native int _getPlaylistType(long j10);

    private native Object _getSubUrls(long j10);

    private native Object _getSubUrls(long j10, String str);

    private native void _releaseDownloader(long j10);

    private native void _writeHlsNodeInfo(long j10, Object obj);

    private native void _writeTsNodeInfo(long j10, Object obj);

    public void allDownloadCompleted() {
        long j10 = this.nativeHandler;
        if (j10 != 0) {
            try {
                _allDownloadCompleted(j10);
            } catch (UnsatisfiedLinkError e10) {
                String str = TAG;
                CmLog.w(str, "api-native not match: " + e10.getMessage());
            }
        }
    }

    public void cancel() {
        long j10 = this.nativeHandler;
        if (j10 != 0) {
            try {
                _cancel(j10);
            } catch (UnsatisfiedLinkError e10) {
                String str = TAG;
                CmLog.w(str, "api-native not match: " + e10.getMessage());
            }
        }
    }

    public int download() {
        long j10 = this.nativeHandler;
        if (j10 != 0) {
            try {
                return _download(j10);
            } catch (UnsatisfiedLinkError e10) {
                String str = TAG;
                CmLog.w(str, "api-native not match: " + e10.getMessage());
            }
        }
        return -1;
    }

    public String getDownloadFilePath() {
        long j10 = this.nativeHandler;
        if (j10 != 0) {
            try {
                return _getDownloadFilePath(j10);
            } catch (UnsatisfiedLinkError e10) {
                String str = TAG;
                CmLog.w(str, "api-native not match: " + e10.getMessage());
            }
        }
        return null;
    }

    public MasterPlaylist getMasterPlaylist() {
        long j10 = this.nativeHandler;
        if (j10 != 0) {
            try {
                return (MasterPlaylist) _getMasterPlaylistInfo(j10);
            } catch (UnsatisfiedLinkError e10) {
                String str = TAG;
                CmLog.w(str, "api-native not match: " + e10.getMessage());
            }
        }
        return null;
    }

    public List<String> getSubUrls(String str) {
        Object obj;
        long j10 = this.nativeHandler;
        if (j10 == 0) {
            return null;
        }
        try {
            obj = _getSubUrls(j10, str);
        } catch (UnsatisfiedLinkError e10) {
            String str2 = TAG;
            CmLog.w(str2, "api-native not match: " + e10.getMessage());
            try {
                obj = _getSubUrls(this.nativeHandler);
            } catch (UnsatisfiedLinkError e11) {
                String str3 = TAG;
                CmLog.w(str3, "api-native not match: " + e11.getMessage());
                obj = null;
            }
        }
        if (obj == null) {
            return null;
        }
        return (LinkedList) obj;
    }

    public PlayListType getType() {
        int i10;
        long j10 = this.nativeHandler;
        if (j10 != 0) {
            try {
                i10 = _getPlaylistType(j10);
            } catch (UnsatisfiedLinkError e10) {
                String str = TAG;
                CmLog.w(str, "api-native not match: " + e10.getMessage());
                i10 = 0;
            }
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            if (i10 != 4) {
                                return PlayListType.Unknown;
                            }
                            return PlayListType.Event;
                        }
                        return PlayListType.Vod;
                    }
                    return PlayListType.Live;
                }
                return PlayListType.MasterPlaylist;
            }
            return PlayListType.Unknown;
        }
        return PlayListType.Unknown;
    }

    public void release() {
        long j10 = this.nativeHandler;
        if (j10 != 0) {
            try {
                _releaseDownloader(j10);
            } catch (UnsatisfiedLinkError e10) {
                String str = TAG;
                CmLog.w(str, "api-native not match: " + e10.getMessage());
            }
        }
        this.nativeHandler = 0L;
    }

    public void writeHlsNodeInfo(CacheFileManager.HlsCacheNodeInfo hlsCacheNodeInfo) {
        long j10 = this.nativeHandler;
        if (j10 != 0) {
            try {
                _writeHlsNodeInfo(j10, hlsCacheNodeInfo);
            } catch (UnsatisfiedLinkError e10) {
                String str = TAG;
                CmLog.w(str, "api-native not match: " + e10.getMessage());
            }
        }
    }

    public void writeTsNodeInfo(CacheFileManager.TsCacheNodeInfo tsCacheNodeInfo) {
        long j10 = this.nativeHandler;
        if (j10 != 0) {
            try {
                _writeTsNodeInfo(j10, tsCacheNodeInfo);
            } catch (UnsatisfiedLinkError e10) {
                String str = TAG;
                CmLog.w(str, "api-native not match: " + e10.getMessage());
            }
        }
    }
}
