package com.ss.ttvideoengine.log;

import android.content.Context;
import android.database.ContentObserver;
import android.provider.Settings;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.ss.ttvideoengine.utils.ScreenUtils;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import com.ss.ttvideoengine.utils.TTVideoEngineUtils;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class BrightnessMonitor {
    private static final int LIST_SIZE = 100;
    private static final String TAG = "BrightnessMonitor";
    private final Context mContext;
    private volatile boolean mIsPlaying;
    private volatile boolean mIsStart;
    private final ArrayList<String> mHistoryList = new ArrayList<>();
    private final ContentObserver mBrightnessObserver = new ContentObserver(null) { // from class: com.ss.ttvideoengine.log.BrightnessMonitor.1
        @Override // android.database.ContentObserver
        public void onChange(boolean z10) {
            super.onChange(z10);
            BrightnessMonitor.this.addToHistory();
        }
    };

    public BrightnessMonitor(Context context) {
        this.mContext = context.getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addToHistory() {
        if (this.mIsPlaying && this.mHistoryList.size() <= 100) {
            HashMap hashMap = new HashMap();
            hashMap.put(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, Float.valueOf(ScreenUtils.getNormalizedBrightness(this.mContext)));
            hashMap.put(IVideoEventLogger.LOG_CALLBACK_TIME, Long.valueOf(System.currentTimeMillis()));
            TTVideoEngineUtils.addToList(this.mHistoryList, new JSONObject(hashMap).toString());
        }
    }

    public ArrayList<String> getList() {
        return this.mHistoryList;
    }

    public void setPlaying(boolean z10) {
        this.mIsPlaying = z10;
    }

    public void start() {
        if (this.mIsStart) {
            return;
        }
        this.mIsStart = true;
        try {
            this.mContext.getContentResolver().registerContentObserver(Settings.System.getUriFor("screen_brightness"), true, this.mBrightnessObserver);
        } catch (Exception e10) {
            TTVideoEngineLog.w(TAG, e10.getMessage());
        }
        addToHistory();
    }

    public void stop() {
        if (!this.mIsStart) {
            return;
        }
        this.mIsStart = false;
        this.mContext.getContentResolver().unregisterContentObserver(this.mBrightnessObserver);
    }
}
