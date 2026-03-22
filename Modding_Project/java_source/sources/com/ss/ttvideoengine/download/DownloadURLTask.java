package com.ss.ttvideoengine.download;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.download.DownloadTask;
import com.ss.ttvideoengine.utils.Error;
import com.ss.ttvideoengine.utils.FormatProvider;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class DownloadURLTask extends DownloadTask {
    private static final String TAG = "TTVideoEngine.DownloadURLTask";
    private ArrayList<String> urls = null;
    private String key = null;

    private DownloadURLTask() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DownloadURLTask taskItem() {
        DownloadURLTask downloadURLTask = new DownloadURLTask();
        downloadURLTask.setupBaseFiled();
        return downloadURLTask;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.ss.ttvideoengine.download.DownloadTask
    public boolean _shouldRetry(Error error) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.ss.ttvideoengine.download.DownloadTask
    public void assignWithJson(JSONObject jSONObject) {
        super.assignWithJson(jSONObject.optJSONObject("base_json"));
        this.key = jSONObject.optString("key");
        JSONArray optJSONArray = jSONObject.optJSONArray("urls");
        if (optJSONArray != null && optJSONArray.length() > 0) {
            ArrayList<String> arrayList = new ArrayList<>();
            for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                String optString = optJSONArray.optString(i10);
                if (!TextUtils.isEmpty(optString)) {
                    arrayList.add(optString);
                }
            }
            updateUrls(arrayList);
        }
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (super.equals(obj)) {
            return true;
        }
        if (!obj.getClass().equals(DownloadURLTask.class)) {
            return false;
        }
        return ((DownloadURLTask) obj).key.equals(this.key);
    }

    public String getKey() {
        return this.key;
    }

    public ArrayList<String> getUrls() {
        return this.urls;
    }

    @Override // com.ss.ttvideoengine.download.DownloadTask
    @Nullable
    public String getVideoId() {
        return this.videoId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.ss.ttvideoengine.download.DownloadTask
    public JSONObject jsonObject() {
        HashMap hashMap = new HashMap();
        DownloadTask.putToMap(hashMap, "base_json", super.mapInfo());
        DownloadTask.putToMap(hashMap, "key", this.key);
        DownloadTask.putToMap(hashMap, "urls", this.urls);
        return new JSONObject(hashMap);
    }

    @Override // com.ss.ttvideoengine.download.DownloadTask
    public void resume() {
        TTVideoEngineLog.d(TAG, "[downloader] did call resume, key = " + this.mediaKeys.toString());
        if (this.canceled) {
            TTVideoEngineLog.d(TAG, "[downloader] task did canceled");
        } else if (getState() == 2) {
            TTVideoEngineLog.d(TAG, "[downloader] state is running");
        } else {
            super.resume();
            Downloader downloader = this.downloader;
            if (downloader != null && !downloader.shouldResume(this)) {
                TTVideoEngineLog.i(TAG, "[downloader] not should resume task = " + toString());
                return;
            }
            HashMap<String, List<String>> hashMap = new HashMap<>();
            this.usingUrls = hashMap;
            hashMap.put(this.key, this.urls);
            setState(2);
            DataLoaderHelper dataLoader = DataLoaderHelper.getDataLoader();
            String str = this.key;
            String str2 = this.videoId;
            ArrayList<String> arrayList = this.urls;
            String downloadUrl = dataLoader.downloadUrl(str, str2, (String[]) arrayList.toArray(new String[arrayList.size()]), this.encryptVersion.getVersion(), this.customDir);
            if (!DataLoaderHelper.getDataLoader().startDownload(downloadUrl, FormatProvider.FormatProviderHolder.isM3u8(this.urls.get(0)))) {
                receiveError(new Error(Error.Download, Error.ResultNotApplicable, 0, "resume download fail. url = " + downloadUrl + " dataload state is " + DataLoaderHelper.getDataLoader().isRunning()));
                return;
            }
            TTVideoEngineLog.i(TAG, "[downloader] resume a task. key = " + this.key + " downloader url is " + downloadUrl);
            Downloader downloader2 = this.downloader;
            if (downloader2 != null) {
                downloader2.resume(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.ss.ttvideoengine.download.DownloadTask
    public void setupBaseFiled() {
        super.setupBaseFiled();
        updateUrls(null);
        this.key = null;
        this.taskType = "url_task";
    }

    @Override // com.ss.ttvideoengine.download.DownloadTask
    public void suspend() {
        TTVideoEngineLog.d(TAG, "[downloader] did call suspend, key = " + this.mediaKeys.toString());
        if (this.canceled) {
            TTVideoEngineLog.d(TAG, "[downloader] task did canceled");
        } else if (getState() != 3 && getState() != 0 && getState() != 5) {
            if (!this.downloader.suspended(this)) {
                TTVideoEngineLog.d(TAG, "[downloader] suspend task, task in waiting, taskIdentifier: " + this.taskIdentifier);
                return;
            }
            super.suspend();
            ArrayList<String> arrayList = this.mediaKeys;
            if (arrayList != null && arrayList.size() > 0) {
                for (int i10 = 0; i10 < this.mediaKeys.size(); i10++) {
                    DataLoaderHelper.getDataLoader().suspendedDownload(this.mediaKeys.get(i10));
                }
            }
            Downloader downloader = this.downloader;
            if (downloader != null) {
                downloader.tryNextWaitingTask(this);
            }
        } else {
            TTVideoEngineLog.d(TAG, "[downloader] not need suspend, state = " + getState());
        }
    }

    public void updateUrls(ArrayList<String> arrayList) {
        DownloadTask.MediaType mediaType;
        this.urls = arrayList;
        if (arrayList != null && !arrayList.isEmpty()) {
            if (FormatProvider.FormatProviderHolder.isM3u8(arrayList.get(0))) {
                mediaType = DownloadTask.MediaType.M3u8;
            } else {
                mediaType = DownloadTask.MediaType.Other;
            }
            this.mMediaType = mediaType;
            return;
        }
        this.mMediaType = DownloadTask.MediaType.Unknown;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static DownloadURLTask taskItem(String str, ArrayList<String> arrayList, String str2) {
        return taskItem(str, arrayList, str2, DownloadTask.EncryptVersion.NONE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static DownloadURLTask taskItem(String str, ArrayList<String> arrayList, String str2, DownloadTask.EncryptVersion encryptVersion) {
        if (!TextUtils.isEmpty(str) && arrayList != null && arrayList.size() >= 1) {
            DownloadURLTask taskItem = taskItem();
            taskItem.key = str;
            taskItem.updateUrls(arrayList);
            taskItem.videoId = str2;
            ArrayList<String> arrayList2 = taskItem.mediaKeys;
            if (arrayList2 != null) {
                arrayList2.add(str);
            }
            taskItem.encryptVersion = encryptVersion;
            return taskItem;
        }
        TTVideoEngineLog.d(TAG, "[downloader] key or urls is invalid.");
        return null;
    }
}
