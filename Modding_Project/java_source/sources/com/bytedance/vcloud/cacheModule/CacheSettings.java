package com.bytedance.vcloud.cacheModule;

import com.bytedance.vcloud.cacheModule.utils.CmLog;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class CacheSettings {
    private static final String TAG = "CacheSettings";
    private IExchangeUrlCallback mExchangeUrlCallback;
    private IExchangeUrlCallbackV2 mExchangeUrlCallbackV2;
    private IGenerateFileKeyCallback mGenerateFileKeyCallback;
    private final Map<OptionKey, String> mStrOptionMap;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class CacheSettingsHandler {
        public static CacheSettings sInstance = new CacheSettings();

        private CacheSettingsHandler() {
        }
    }

    /* loaded from: classes3.dex */
    public static class DstExchangeUrlInfo {
        public boolean keyChanged = false;
        public String keyTagLine = null;
        public String url;
    }

    /* loaded from: classes3.dex */
    public static class ExchangeUrlInfo {
        public static int UrlType_Hls = 0;
        public static int UrlType_Key = 2;
        public static int UrlType_Ts = 1;

        /* renamed from: id  reason: collision with root package name */
        public String f13435id;
        public boolean tsEncrypted;
        public int tsUrlIndex;
        public String url;
        public int urlType;
    }

    @Deprecated
    /* loaded from: classes3.dex */
    public interface IExchangeUrlCallback {
        String exchangeUrl(String str);
    }

    /* loaded from: classes3.dex */
    public interface IGenerateFileKeyCallback {
        String generateFileKey(String str, String str2, Map<String, String> map);
    }

    /* loaded from: classes3.dex */
    public static class OptionKey {
        private int mValue;
        public static final OptionKey CACHE_DIR = new OptionKey(0);
        public static final OptionKey DOWNLOAD_DIR = new OptionKey(1);
        public static final OptionKey ENABLE_PRELOAD_FIRST_TS = new OptionKey(2);
        public static final OptionKey ENABLE_PRELOAD_ALL_TS = new OptionKey(3);

        private OptionKey(int i10) {
            this.mValue = i10;
        }

        public int value() {
            return this.mValue;
        }
    }

    static {
        CacheModuleLoader.loadLibrary();
    }

    private native void _setExchangeUrlCb(boolean z10);

    private native void _setGenerateFileKeyCb(boolean z10);

    private native void _setStringOption(int i10, String str);

    @CalledByNative
    private static String exchangeUrlCB(String str) {
        IExchangeUrlCallback iExchangeUrlCallback = getInstance().mExchangeUrlCallback;
        if (iExchangeUrlCallback == null) {
            return null;
        }
        return iExchangeUrlCallback.exchangeUrl(str);
    }

    @CalledByNative
    private static String exchangeUrlCBInfo(Object obj) {
        IExchangeUrlCallback iExchangeUrlCallback;
        ExchangeUrlInfo exchangeUrlInfo = (ExchangeUrlInfo) obj;
        if (exchangeUrlInfo == null || (iExchangeUrlCallback = getInstance().mExchangeUrlCallback) == null) {
            return null;
        }
        return iExchangeUrlCallback.exchangeUrl(exchangeUrlInfo.url);
    }

    @CalledByNative
    private static Object exchangeUrlCBInfoV2(Object obj) {
        ExchangeUrlInfo exchangeUrlInfo = (ExchangeUrlInfo) obj;
        if (exchangeUrlInfo == null) {
            return null;
        }
        CacheSettings cacheSettings = getInstance();
        IExchangeUrlCallbackV2 iExchangeUrlCallbackV2 = cacheSettings.mExchangeUrlCallbackV2;
        if (iExchangeUrlCallbackV2 != null) {
            if (iExchangeUrlCallbackV2.mExchangeUrlVer == 2) {
                return cacheSettings.mExchangeUrlCallbackV2.exchangeUrl2(exchangeUrlInfo);
            }
            DstExchangeUrlInfo dstExchangeUrlInfo = new DstExchangeUrlInfo();
            dstExchangeUrlInfo.url = cacheSettings.mExchangeUrlCallbackV2.exchangeUrl(exchangeUrlInfo);
            return dstExchangeUrlInfo;
        } else if (cacheSettings.mExchangeUrlCallback == null) {
            return null;
        } else {
            DstExchangeUrlInfo dstExchangeUrlInfo2 = new DstExchangeUrlInfo();
            dstExchangeUrlInfo2.url = cacheSettings.mExchangeUrlCallback.exchangeUrl(exchangeUrlInfo.url);
            return dstExchangeUrlInfo2;
        }
    }

    @CalledByNative
    public static String generateFileKeyCB(String str, String str2, Object obj) {
        IGenerateFileKeyCallback iGenerateFileKeyCallback = getInstance().mGenerateFileKeyCallback;
        if (iGenerateFileKeyCallback == null) {
            return null;
        }
        return iGenerateFileKeyCallback.generateFileKey(str, str2, (Map) obj);
    }

    public static CacheSettings getInstance() {
        return CacheSettingsHandler.sInstance;
    }

    public String getStringOption(OptionKey optionKey) {
        return this.mStrOptionMap.get(optionKey);
    }

    @Deprecated
    public void setExchangeUrlCallback(IExchangeUrlCallback iExchangeUrlCallback) {
        this.mExchangeUrlCallback = iExchangeUrlCallback;
        if (CacheModuleLoader.inited) {
            try {
                _setExchangeUrlCb(this.mExchangeUrlCallback != null);
            } catch (UnsatisfiedLinkError e10) {
                String str = TAG;
                CmLog.w(str, "api-native not match: " + e10.getMessage());
            }
        }
    }

    public void setGenerateFileKeyCallback(IGenerateFileKeyCallback iGenerateFileKeyCallback) {
        boolean z10;
        this.mGenerateFileKeyCallback = iGenerateFileKeyCallback;
        if (CacheModuleLoader.inited) {
            try {
                if (this.mGenerateFileKeyCallback != null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                _setGenerateFileKeyCb(z10);
            } catch (UnsatisfiedLinkError e10) {
                String str = TAG;
                CmLog.w(str, "api-native not match: " + e10.getMessage());
            }
        }
    }

    public void setStringOption(OptionKey optionKey, String str) {
        this.mStrOptionMap.put(optionKey, str);
        if (CacheModuleLoader.inited) {
            try {
                _setStringOption(optionKey.value(), str);
            } catch (UnsatisfiedLinkError e10) {
                String str2 = TAG;
                CmLog.w(str2, "api-native not match: " + e10.getMessage());
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class IExchangeUrlCallbackV2 {
        private int mExchangeUrlVer;

        @Deprecated
        public IExchangeUrlCallbackV2() {
            this.mExchangeUrlVer = 1;
        }

        public String exchangeUrl(ExchangeUrlInfo exchangeUrlInfo) {
            return null;
        }

        public DstExchangeUrlInfo exchangeUrl2(ExchangeUrlInfo exchangeUrlInfo) {
            return null;
        }

        public IExchangeUrlCallbackV2(int i10) {
            this.mExchangeUrlVer = i10;
        }
    }

    private CacheSettings() {
        this.mStrOptionMap = new HashMap();
        this.mGenerateFileKeyCallback = null;
        this.mExchangeUrlCallback = null;
        this.mExchangeUrlCallbackV2 = null;
    }

    public void setExchangeUrlCallback(IExchangeUrlCallbackV2 iExchangeUrlCallbackV2) {
        this.mExchangeUrlCallbackV2 = iExchangeUrlCallbackV2;
        if (CacheModuleLoader.inited) {
            try {
                _setExchangeUrlCb(this.mExchangeUrlCallbackV2 != null);
            } catch (UnsatisfiedLinkError e10) {
                String str = TAG;
                CmLog.w(str, "api-native not match: " + e10.getMessage());
            }
        }
    }
}
