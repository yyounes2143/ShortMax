package com.bytedance.vcloud.cacheModule;

import android.util.Log;
import com.ss.mediakit.medialoader.AVMDLDataLoader;
import java.util.HashMap;
/* loaded from: classes3.dex */
public class CacheFileManager {
    private static final String TAG = "CacheFileManager";

    /* loaded from: classes3.dex */
    public enum CacheFileType {
        Unkown,
        Preload,
        Download
    }

    /* loaded from: classes3.dex */
    public static class HlsCacheNodeInfo {
        public int version = 1;
        public String fileKey = null;
        public int cacheStatus = NodeStatus.Cached.ordinal();
        public long expireTime = 0;
    }

    /* loaded from: classes3.dex */
    public enum NodeStatus {
        Cached,
        Caching
    }

    /* loaded from: classes3.dex */
    public static class TsCacheNodeInfo {
        public static final int KEY_TYPE_M3U8 = 1;
        public static final int KEY_TYPE_TS = 2;
        public static final int KEY_TYPE_UNKNOWN = 0;
        public int version = 1;
        public String fileKey = null;
        public int keyType = 0;
        public int cacheStatus = NodeStatus.Cached.ordinal();
    }

    static {
        CacheModuleLoader.loadLibrary();
    }

    @Deprecated
    private static native long _getAllHlsCacheSizeWithoutTs();

    private static native long _getAllHlsCacheSizeWithoutTs(int i10);

    @Deprecated
    private static native long _getHlsCacheSizeWithoutTs(String str);

    private static native long _getHlsCacheSizeWithoutTs(String str, int i10);

    @Deprecated
    private static native Object[] _getTsCacheInfos(String str);

    private static native Object[] _getTsCacheInfos(String str, int i10);

    @Deprecated
    private static native boolean _isCacheKey(String str);

    private static native boolean _isCacheKey(String str, int i10);

    @Deprecated
    private static native void _removeAllHlsCacheWithoutTs();

    private static native void _removeAllHlsCacheWithoutTs(int i10);

    @Deprecated
    private static native void _removeHlsCacheWithoutTs(String str);

    private static native void _removeHlsCacheWithoutTs(String str, int i10);

    public static void clearAllPlaylistCache(CacheFileType cacheFileType) {
        if (CacheModuleLoader.inited) {
            try {
                _removeAllHlsCacheWithoutTs(cacheFileType.ordinal());
            } catch (UnsatisfiedLinkError e10) {
                String str = TAG;
                Log.w(str, "api-native not match: " + e10.getMessage());
                if (cacheFileType == CacheFileType.Preload) {
                    try {
                        _removeAllHlsCacheWithoutTs();
                    } catch (UnsatisfiedLinkError e11) {
                        String str2 = TAG;
                        Log.w(str2, "api-native not match: " + e11.getMessage());
                    }
                }
            }
        }
    }

    private static TsCacheNodeInfo[] filterSameKey(TsCacheNodeInfo[] tsCacheNodeInfoArr) {
        if (tsCacheNodeInfoArr == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (TsCacheNodeInfo tsCacheNodeInfo : tsCacheNodeInfoArr) {
            if (!hashMap.containsKey(tsCacheNodeInfo.fileKey)) {
                hashMap.put(tsCacheNodeInfo.fileKey, tsCacheNodeInfo);
            }
        }
        return (TsCacheNodeInfo[]) hashMap.values().toArray(new TsCacheNodeInfo[0]);
    }

    public static long getAllPlaylistCacheSize(CacheFileType cacheFileType) {
        if (CacheModuleLoader.inited) {
            try {
                return _getAllHlsCacheSizeWithoutTs(cacheFileType.ordinal());
            } catch (UnsatisfiedLinkError e10) {
                String str = TAG;
                Log.w(str, "api-native not match: " + e10.getMessage());
                if (cacheFileType == CacheFileType.Preload) {
                    try {
                        return _getAllHlsCacheSizeWithoutTs();
                    } catch (UnsatisfiedLinkError e11) {
                        String str2 = TAG;
                        Log.w(str2, "api-native not match: " + e11.getMessage());
                    }
                }
            }
        }
        return 0L;
    }

    public static long getCacheSize(String str, CacheFileType cacheFileType) {
        long cacheSize;
        long hlsCacheSizeWithoutTs = getHlsCacheSizeWithoutTs(str, cacheFileType);
        if (hlsCacheSizeWithoutTs <= 0) {
            hlsCacheSizeWithoutTs = -1;
        }
        TsCacheNodeInfo[] filterSameKey = filterSameKey(getTsCacheInfos(str, cacheFileType));
        if (filterSameKey == null) {
            return hlsCacheSizeWithoutTs;
        }
        for (TsCacheNodeInfo tsCacheNodeInfo : filterSameKey) {
            if (getKeyType(tsCacheNodeInfo) == 1) {
                cacheSize = getCacheSize(tsCacheNodeInfo.fileKey, cacheFileType);
                if (cacheSize <= 0) {
                }
                hlsCacheSizeWithoutTs += cacheSize;
            } else {
                cacheSize = AVMDLDataLoader.getInstance().getCacheSize(tsCacheNodeInfo.fileKey);
                if (cacheSize <= 0) {
                }
                hlsCacheSizeWithoutTs += cacheSize;
            }
        }
        return hlsCacheSizeWithoutTs;
    }

    public static long getHlsCacheSizeWithoutTs(String str, CacheFileType cacheFileType) {
        if (CacheModuleLoader.inited) {
            try {
                return _getHlsCacheSizeWithoutTs(str, cacheFileType.ordinal());
            } catch (UnsatisfiedLinkError e10) {
                String str2 = TAG;
                Log.w(str2, "api-native not match: " + e10.getMessage());
                if (cacheFileType == CacheFileType.Preload) {
                    try {
                        return _getHlsCacheSizeWithoutTs(str);
                    } catch (UnsatisfiedLinkError e11) {
                        String str3 = TAG;
                        Log.w(str3, "api-native not match: " + e11.getMessage());
                    }
                }
            }
        }
        return 0L;
    }

    private static int getKeyType(TsCacheNodeInfo tsCacheNodeInfo) {
        int i10 = tsCacheNodeInfo.version;
        if (i10 != 2 && i10 != 3) {
            return 0;
        }
        return tsCacheNodeInfo.keyType;
    }

    public static TsCacheNodeInfo[] getTsCacheInfos(String str, CacheFileType cacheFileType) {
        if (CacheModuleLoader.inited) {
            try {
                return (TsCacheNodeInfo[]) _getTsCacheInfos(str, cacheFileType.ordinal());
            } catch (UnsatisfiedLinkError e10) {
                String str2 = TAG;
                Log.w(str2, "api-native not match: " + e10.getMessage());
                if (cacheFileType == CacheFileType.Preload) {
                    try {
                        return (TsCacheNodeInfo[]) _getTsCacheInfos(str);
                    } catch (UnsatisfiedLinkError e11) {
                        String str3 = TAG;
                        Log.w(str3, "api-native not match: " + e11.getMessage());
                    }
                }
            }
        }
        return null;
    }

    public static boolean isCacheKey(String str, CacheFileType cacheFileType) {
        if (CacheModuleLoader.inited) {
            try {
                return _isCacheKey(str, cacheFileType.ordinal());
            } catch (UnsatisfiedLinkError e10) {
                String str2 = TAG;
                Log.w(str2, "api-native not match: " + e10.getMessage());
                if (cacheFileType == CacheFileType.Preload) {
                    try {
                        return _isCacheKey(str);
                    } catch (UnsatisfiedLinkError e11) {
                        String str3 = TAG;
                        Log.w(str3, "api-native not match: " + e11.getMessage());
                    }
                }
            }
        }
        return false;
    }

    public static void removeFileCache(String str, CacheFileType cacheFileType) {
        TsCacheNodeInfo[] filterSameKey = filterSameKey(getTsCacheInfos(str, cacheFileType));
        removeHlsCacheWithoutTs(str, cacheFileType);
        if (filterSameKey == null) {
            return;
        }
        for (TsCacheNodeInfo tsCacheNodeInfo : filterSameKey) {
            if (getKeyType(tsCacheNodeInfo) == 1) {
                removeFileCache(tsCacheNodeInfo.fileKey, cacheFileType);
            } else {
                AVMDLDataLoader.getInstance().removeFileCache(tsCacheNodeInfo.fileKey);
            }
        }
    }

    private static void removeHlsCacheWithoutTs(String str, CacheFileType cacheFileType) {
        if (CacheModuleLoader.inited) {
            try {
                _removeHlsCacheWithoutTs(str, cacheFileType.ordinal());
            } catch (UnsatisfiedLinkError e10) {
                String str2 = TAG;
                Log.w(str2, "api-native not match: " + e10.getMessage());
                if (cacheFileType == CacheFileType.Preload) {
                    try {
                        _removeHlsCacheWithoutTs(str);
                    } catch (UnsatisfiedLinkError e11) {
                        String str3 = TAG;
                        Log.w(str3, "api-native not match: " + e11.getMessage());
                    }
                }
            }
        }
    }
}
