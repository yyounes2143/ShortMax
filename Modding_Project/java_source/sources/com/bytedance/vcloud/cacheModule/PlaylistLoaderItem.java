package com.bytedance.vcloud.cacheModule;

import com.bytedance.vcloud.cacheModule.CacheFileManager;
import com.bytedance.vcloud.cacheModule.info.MasterPlaylist;
import com.bytedance.vcloud.cacheModule.utils.CmLog;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes3.dex */
public class PlaylistLoaderItem {
    public static int BoolOption_TryNextEvenIfError;
    public static int IntOption_TimeoutMs;
    private static final String TAG = PlaylistDownloaderItem.class.getSimpleName();
    private long nativeHandler;

    /* loaded from: classes3.dex */
    public enum PlayListType {
        Unknown,
        MasterPlaylist,
        Live,
        Vod,
        Event
    }

    /* loaded from: classes3.dex */
    public enum PlaylistOption {
        CdnUrlStr
    }

    static {
        CacheModuleLoader.loadLibrary();
        IntOption_TimeoutMs = 0;
        BoolOption_TryNextEvenIfError = 1;
    }

    public PlaylistLoaderItem(String str) {
        this.nativeHandler = 0L;
        if (CacheModuleLoader.inited) {
            try {
                this.nativeHandler = _createLoader(str);
            } catch (UnsatisfiedLinkError e10) {
                String str2 = TAG;
                CmLog.w(str2, "api-native not match: " + e10.getMessage());
            }
        }
    }

    private native void _cancel(long j10);

    private native long _createLoader(String str);

    private native Object _getBestStreamIndex(long j10);

    private native long _getExpireTime(long j10);

    private native Object _getMasterPlaylistInfo(long j10);

    private native int _getPlaylistType(long j10);

    private native String _getStrOption(long j10, int i10);

    private native Object _getSubUrls(long j10);

    private native Object _getSubUrls(long j10, String str);

    private native int _preload(long j10);

    private native void _releaseLoader(long j10);

    private native void _setIntOption(long j10, int i10, int i11);

    private native void _writeHlsNodeInfo(long j10, Object obj);

    private native void _writeTsNodeInfo(long j10, Object obj);

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

    public MasterPlaylist.BestStream getBestStreamIndex() {
        Object _getBestStreamIndex;
        long j10 = this.nativeHandler;
        if (j10 != 0) {
            try {
                _getBestStreamIndex = _getBestStreamIndex(j10);
            } catch (UnsatisfiedLinkError e10) {
                String str = TAG;
                CmLog.w(str, "api-native not match: " + e10.getMessage());
            }
            return (MasterPlaylist.BestStream) _getBestStreamIndex;
        }
        _getBestStreamIndex = null;
        return (MasterPlaylist.BestStream) _getBestStreamIndex;
    }

    public long getExpireTime() {
        long j10 = this.nativeHandler;
        if (j10 == 0) {
            return 0L;
        }
        try {
            return _getExpireTime(j10);
        } catch (UnsatisfiedLinkError e10) {
            String str = TAG;
            CmLog.w(str, "api-native not match: " + e10.getMessage());
            return 0L;
        }
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

    public String getStrOption(PlaylistOption playlistOption) {
        long j10 = this.nativeHandler;
        if (j10 != 0) {
            return _getStrOption(j10, playlistOption.ordinal());
        }
        return null;
    }

    public List<String> getSubUrls(String str) {
        Object obj;
        long j10 = this.nativeHandler;
        if (j10 != 0) {
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
        return null;
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

    public int preload() {
        long j10 = this.nativeHandler;
        if (j10 != 0) {
            try {
                return _preload(j10);
            } catch (UnsatisfiedLinkError e10) {
                String str = TAG;
                CmLog.w(str, "api-native not match: " + e10.getMessage());
            }
        }
        return -1;
    }

    public void release() {
        long j10 = this.nativeHandler;
        if (j10 != 0) {
            try {
                _releaseLoader(j10);
            } catch (UnsatisfiedLinkError e10) {
                String str = TAG;
                CmLog.w(str, "api-native not match: " + e10.getMessage());
            }
        }
        this.nativeHandler = 0L;
    }

    public void setIntOption(int i10, int i11) {
        long j10 = this.nativeHandler;
        if (j10 != 0) {
            try {
                _setIntOption(j10, i10, i11);
            } catch (UnsatisfiedLinkError e10) {
                String str = TAG;
                CmLog.w(str, "api-native not match: " + e10.getMessage());
            }
        }
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

    public List<String> getSubUrls() {
        return getSubUrls(null);
    }
}
