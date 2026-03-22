package com.ss.ttvideoengine.setting;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bytedance.vodsetting.BuildConfig;
import com.bytedance.vodsetting.ConfigEnv;
import com.bytedance.vodsetting.Module;
import com.bytedance.vodsetting.NetInterface;
import com.bytedance.vodsetting.SettingsListener;
import com.bytedance.vodsetting.SettingsManager;
import com.huawei.hms.framework.common.ContainerUtils;
import com.ss.ttm.player.TTPlayerConfiger;
import com.ss.ttvideoengine.AppInfo;
import com.ss.ttvideoengine.BaseAppInfo;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.InfoWrapper;
import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.configcenter.ConfigCenter;
import com.ss.ttvideoengine.net.TTHTTPNetwork;
import com.ss.ttvideoengine.net.TTVNetClient;
import com.ss.ttvideoengine.portrait.PortraitEngine;
import com.ss.ttvideoengine.strategrycenter.StrategyHelper;
import com.ss.ttvideoengine.utils.DeviceUtil;
import com.ss.ttvideoengine.utils.Error;
import com.ss.ttvideoengine.utils.TTHelper;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class SettingsHelper {
    public static int HARDWARE_CONFIG_SETTINGS = 3;
    public static int HARDWARE_CONFIG_VIDEO_MODEL = 2;
    public static String MODULE_ALL = "all";
    public static String MODULE_BIZ_PORTRAIT = "biz_portrait";
    public static String MODULE_MDL = "mdl";
    public static String MODULE_VOD = "vod";
    private static final String TAG = "VodSettings";
    private Context mContext;
    private boolean mDebug;
    private String mDeviceId;
    private int mEnable;
    private final ReentrantReadWriteLock mListenerLock;
    private final ArrayList<ISettingsListener> mListeners;
    private String mMdlVersion;
    private TTVNetClient mNetClient;
    private final List<TTVNetClient> mNetClients;
    private String mPlayerVersion;
    private final SettingsManager mSettingsManager;
    private JSONObject mVodCustomJSONObject;
    public static String REGION_CN = ConfigEnv.REGION_CN;
    public static String REGION_US = ConfigEnv.REGION_US;
    public static String REGION_SG = ConfigEnv.REGION_SG;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class HelperHolder {
        private static final SettingsHelper Instance = new SettingsHelper();

        private HelperHolder() {
        }
    }

    /* loaded from: classes6.dex */
    private static class MyListener implements SettingsListener {
        private MyListener() {
        }

        @Override // com.bytedance.vodsetting.SettingsListener
        public void onNotify(String str, int i10) {
            JSONObject jsonObject = HelperHolder.Instance.getJsonObject(str);
            if (jsonObject != null) {
                StrategyHelper.helper().getCenter().setSettingsInfo(str, jsonObject.toString());
                PortraitEngine.getInstance().updateLabelBySettings(str, jsonObject.toString());
                if (str.equals("vod") || str.equals(Module.MDL)) {
                    ConfigCenter.getInstance().updateVodSettings(str, jsonObject);
                }
            }
            SettingsHelper.helper()._notifyListener(str, i10);
        }
    }

    private String _mdlVersion() {
        if (this.mMdlVersion == null) {
            this.mMdlVersion = DataLoaderHelper.getDataLoader().getStringValue(6);
        }
        return this.mMdlVersion;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _notifyListener(String str, int i10) {
        this.mListenerLock.readLock().lock();
        ArrayList arrayList = new ArrayList(this.mListeners);
        this.mListenerLock.readLock().unlock();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ISettingsListener iSettingsListener = (ISettingsListener) it.next();
            if (i10 == 1000 && str == MODULE_BIZ_PORTRAIT) {
                iSettingsListener.onNotify(1);
            }
        }
    }

    private String _playerVersion() {
        if (this.mPlayerVersion == null) {
            this.mPlayerVersion = TTPlayerConfiger.getValue(14, "");
        }
        return this.mPlayerVersion;
    }

    private String _sdkVersion() {
        return "1.10.172.340-jzdrm-premium";
    }

    private String _settingsVersion() {
        return BuildConfig.VERSION_NAME;
    }

    private String _strategyVersion() {
        return "3.148.1";
    }

    private void addDeviceInfo(Map<String, Object> map) {
        Context context = this.mContext;
        if (context != null) {
            map.put("player_unique_id", TTVideoEngine.getEngineUniqueId(context));
        }
    }

    private void addLicenseInfo(Map<String, Object> map) {
        List<String> licenseIds = InfoWrapper.getLicenseIds();
        if (licenseIds != null && !licenseIds.isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            for (int i10 = 0; i10 < licenseIds.size(); i10++) {
                String str = licenseIds.get(i10);
                if (i10 != 0) {
                    sb2.append(",");
                }
                sb2.append(str);
            }
            map.put("volc_license_ids", sb2);
        }
    }

    private void addSignatureInfo(Map<String, Object> map) {
        Context context = this.mContext;
        if (context == null) {
            return;
        }
        String md5 = TTHelper.md5(context.getPackageName());
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        String signature = getSignature(md5, currentTimeMillis);
        map.put("bundle_id", md5);
        map.put("timestamp", Long.valueOf(currentTimeMillis));
        map.put(InAppPurchaseMetaData.KEY_SIGNATURE, signature);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String buildURLString(String str, Map<String, String> map) {
        if (str != null && map != null && !map.isEmpty()) {
            Uri.Builder buildUpon = Uri.parse(str).buildUpon();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                buildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
            }
            return buildUpon.build().toString();
        }
        return str;
    }

    private String getSignature(String str, long j10) {
        return TTHelper.hmacSha1(str + ContainerUtils.FIELD_DELIMITER + BaseAppInfo.mAppID + ContainerUtils.FIELD_DELIMITER + this.mDeviceId + ContainerUtils.FIELD_DELIMITER + DeviceUtil.getDeviceModel().toLowerCase() + ContainerUtils.FIELD_DELIMITER + j10);
    }

    public static SettingsHelper helper() {
        return HelperHolder.Instance;
    }

    public void addListener(SettingsListener settingsListener) {
        this.mSettingsManager.addListener(settingsListener);
    }

    public SettingsHelper config() {
        if (!TextUtils.isEmpty(BaseAppInfo.mRegion)) {
            if (BaseAppInfo.mRegion.equals("china")) {
                ConfigEnv.setRegion(ConfigEnv.REGION_CN);
            } else if (BaseAppInfo.mRegion.equals(AppInfo.APP_REGION_SINGAPORE)) {
                ConfigEnv.setRegion(ConfigEnv.REGION_SG);
            } else {
                ConfigEnv.setRegion(BaseAppInfo.mRegion);
            }
        }
        this.mDeviceId = AppInfo.getDeviceId();
        HashMap hashMap = new HashMap();
        hashMap.put(TTVideoEngineInterface.PLAY_API_KEY_APPID, Integer.valueOf(BaseAppInfo.mAppID));
        hashMap.put(TTVideoEngineInterface.PLAY_API_KEY_APPNAME, BaseAppInfo.mAppName);
        hashMap.put("device_id", this.mDeviceId);
        hashMap.put("app_channel", BaseAppInfo.mAppChannel);
        hashMap.put("app_version", BaseAppInfo.mAppVersion);
        addSignatureInfo(hashMap);
        addDeviceInfo(hashMap);
        ConfigEnv.setAppInfo(hashMap);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("ttsdk_version", InfoWrapper.getTTSDKVersion());
        addLicenseInfo(hashMap2);
        hashMap2.put("sdk_version", _sdkVersion());
        hashMap2.put(TTVideoEngineInterface.PLAY_API_KEY_PLAYERVERSION, _playerVersion());
        hashMap2.put("st_version", _strategyVersion());
        hashMap2.put("settings_version", _settingsVersion());
        ConfigEnv.setSDKInfo(hashMap2);
        return this;
    }

    @Nullable
    public JSONObject getJsonObject(String str) {
        if (this.mEnable == 0) {
            return null;
        }
        if (TextUtils.equals(str, MODULE_VOD)) {
            synchronized (this) {
                try {
                    JSONObject jSONObject = this.mVodCustomJSONObject;
                    if (jSONObject != null) {
                        return jSONObject;
                    }
                } finally {
                }
            }
        }
        return this.mSettingsManager.getJsonObject(str);
    }

    public int getMDLInt(String str, int i10) {
        if (this.mEnable == 0) {
            return i10;
        }
        return this.mSettingsManager.getInt(Module.MDL, str, i10);
    }

    public JSONObject getMDLJsonObject(String str) {
        if (this.mEnable == 0) {
            return null;
        }
        return this.mSettingsManager.getJsonObject(Module.MDL, str);
    }

    public long getMDLLong(String str, long j10) {
        if (this.mEnable == 0) {
            return j10;
        }
        return this.mSettingsManager.getLong(Module.MDL, str, j10);
    }

    public String getMDLString(String str, String str2) {
        if (this.mEnable == 0) {
            return str2;
        }
        return this.mSettingsManager.getString(Module.MDL, str, str2);
    }

    public int getVodInt(String str, int i10) {
        if (this.mEnable == 0) {
            return i10;
        }
        synchronized (this) {
            try {
                JSONObject jSONObject = this.mVodCustomJSONObject;
                if (jSONObject != null) {
                    return jSONObject.optInt(str, i10);
                }
                return this.mSettingsManager.getInt("vod", str, i10);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public JSONArray getVodJsonArray(String str) {
        if (this.mEnable == 0) {
            return null;
        }
        synchronized (this) {
            try {
                JSONObject jSONObject = this.mVodCustomJSONObject;
                if (jSONObject != null) {
                    return jSONObject.optJSONArray(str);
                }
                return this.mSettingsManager.getVodJsonArray(str);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public JSONObject getVodJsonObject(String str) {
        if (this.mEnable == 0) {
            return null;
        }
        synchronized (this) {
            try {
                JSONObject jSONObject = this.mVodCustomJSONObject;
                if (jSONObject != null) {
                    return jSONObject.optJSONObject(str);
                }
                return this.mSettingsManager.getJsonObject("vod", str);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public long getVodLong(String str, long j10) {
        if (this.mEnable == 0) {
            return j10;
        }
        synchronized (this) {
            try {
                JSONObject jSONObject = this.mVodCustomJSONObject;
                if (jSONObject != null) {
                    return jSONObject.optLong(str, j10);
                }
                return this.mSettingsManager.getLong("vod", str, j10);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public String getVodString(String str, String str2) {
        if (this.mEnable == 0) {
            return str2;
        }
        synchronized (this) {
            try {
                JSONObject jSONObject = this.mVodCustomJSONObject;
                if (jSONObject != null) {
                    return jSONObject.optString(str, str2);
                }
                return this.mSettingsManager.getString("vod", str, str2);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public SettingsHelper load(String str) {
        if (this.mEnable == 0) {
            return this;
        }
        if (this.mContext == null) {
            return this;
        }
        SettingsManager settingsManager = this.mSettingsManager;
        if (settingsManager != null) {
            settingsManager.loadLocalAndRefresh(str, true);
        }
        return this;
    }

    public SettingsHelper loadMDLCache() {
        if (this.mContext == null) {
            return this;
        }
        SettingsManager settingsManager = this.mSettingsManager;
        if (settingsManager != null) {
            settingsManager.loadLocal(2);
        }
        return this;
    }

    public void removeListener(ISettingsListener iSettingsListener) {
        if (iSettingsListener == null) {
            return;
        }
        this.mListenerLock.writeLock().lock();
        this.mListeners.remove(iSettingsListener);
        this.mListenerLock.writeLock().unlock();
    }

    public SettingsHelper setContext(Context context) {
        this.mContext = context;
        SettingsManager settingsManager = this.mSettingsManager;
        if (settingsManager != null) {
            settingsManager.setContext(context);
            this.mSettingsManager.setDebug(this.mDebug);
            this.mSettingsManager.setNet(new NetInterface() { // from class: com.ss.ttvideoengine.setting.SettingsHelper.1
                @Override // com.bytedance.vodsetting.NetInterface
                public void cancel() {
                    ArrayList<TTVNetClient> arrayList;
                    synchronized (SettingsHelper.this.mNetClients) {
                        arrayList = new ArrayList(SettingsHelper.this.mNetClients);
                        SettingsHelper.this.mNetClients.clear();
                    }
                    for (TTVNetClient tTVNetClient : arrayList) {
                        tTVNetClient.cancel();
                    }
                    arrayList.clear();
                }

                @Override // com.bytedance.vodsetting.NetInterface
                public void start(String str, Map<String, String> map, final NetInterface.CompletionListener completionListener) {
                    String buildURLString = SettingsHelper.this.buildURLString(str, map);
                    TTVideoEngineLog.d(SettingsHelper.TAG, "setting query " + buildURLString);
                    final TTHTTPNetwork tTHTTPNetwork = new TTHTTPNetwork();
                    synchronized (SettingsHelper.this.mNetClients) {
                        try {
                            if (!SettingsHelper.this.mNetClients.contains(tTHTTPNetwork)) {
                                SettingsHelper.this.mNetClients.add(tTHTTPNetwork);
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                    tTHTTPNetwork.startTask(buildURLString, null, new TTVNetClient.CompletionListener() { // from class: com.ss.ttvideoengine.setting.SettingsHelper.1.1
                        @Override // com.ss.ttvideoengine.net.TTVNetClient.CompletionListener
                        public void onCompletion(JSONObject jSONObject, Error error) {
                            TTVideoEngineLog.d(SettingsHelper.TAG, "setting result " + jSONObject);
                            SettingsHelper.this.mNetClients.remove(tTHTTPNetwork);
                            if (error != null) {
                                NetInterface.CompletionListener completionListener2 = completionListener;
                                completionListener2.onCompletion(null, new Error(" fail. info: " + error));
                            } else if (jSONObject != null) {
                                completionListener.onCompletion(jSONObject, null);
                            }
                        }
                    });
                }
            });
        }
        return this;
    }

    public void setDebug(boolean z10) {
        this.mDebug = z10;
    }

    public void setEnable(int i10) {
        this.mEnable = i10;
        if (ConfigEnv.getRegion() != null) {
            config().load(MODULE_ALL);
        }
    }

    public void setEnableNotLoad(int i10) {
        this.mEnable = i10;
    }

    public void setNetClient(TTVNetClient tTVNetClient) {
        synchronized (this) {
            this.mNetClient = tTVNetClient;
        }
    }

    public SettingsHelper setRegionHost(int i10, String str) {
        switch (i10) {
            case 116:
                ConfigEnv.setHostForCN(str);
                break;
            case 117:
                ConfigEnv.setHostForSG(str);
                break;
            case 118:
                ConfigEnv.setHostForUS(str);
                break;
        }
        return this;
    }

    public void setVodCustomJSONObject(JSONObject jSONObject) {
        synchronized (this) {
            this.mVodCustomJSONObject = jSONObject;
        }
    }

    public SettingsManager settings() {
        return this.mSettingsManager;
    }

    private SettingsHelper() {
        this.mContext = null;
        this.mPlayerVersion = null;
        this.mMdlVersion = null;
        this.mDebug = false;
        this.mEnable = 0;
        this.mNetClient = null;
        this.mNetClients = Collections.synchronizedList(new ArrayList());
        this.mListenerLock = new ReentrantReadWriteLock();
        this.mListeners = new ArrayList<>();
        SettingsManager shareSettings = SettingsManager.shareSettings();
        this.mSettingsManager = shareSettings;
        shareSettings.addListener(new MyListener());
    }

    public void addListener(ISettingsListener iSettingsListener) {
        if (iSettingsListener == null) {
            return;
        }
        this.mListenerLock.writeLock().lock();
        this.mListeners.add(iSettingsListener);
        this.mListenerLock.writeLock().unlock();
    }
}
