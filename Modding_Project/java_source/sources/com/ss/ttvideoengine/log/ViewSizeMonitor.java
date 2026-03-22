package com.ss.ttvideoengine.log;

import com.ss.ttvideoengine.superresolution.SRStrategy;
import com.ss.ttvideoengine.utils.TTVideoEngineUtils;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes6.dex */
public class ViewSizeMonitor {
    private int currentHeight;
    private int currentWidth;
    private final ArrayList<String> historyList = new ArrayList<>();
    private int lastValidHeight;
    private int lastValidWidth;

    private void maybeAddToHistory(int i10, int i11) {
        if (i10 > 0 && i11 > 0) {
            HashMap hashMap = new HashMap();
            hashMap.put(SRStrategy.MEDIAINFO_KEY_WIDTH, Integer.valueOf(i10));
            hashMap.put("h", Integer.valueOf(i11));
            hashMap.put(IVideoEventLogger.LOG_CALLBACK_TIME, Long.valueOf(System.currentTimeMillis()));
            try {
                TTVideoEngineUtils.addToList(this.historyList, new JSONObject(hashMap).toString());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            this.currentWidth = 0;
            this.currentHeight = 0;
        }
    }

    public ArrayList<String> getHistory() {
        return new ArrayList<>(this.historyList);
    }

    public void reset() {
        this.currentWidth = 0;
        this.currentHeight = 0;
        this.historyList.clear();
    }

    public void setSize(int i10, int i11) {
        if (i10 > 0) {
            this.currentWidth = i10;
            this.lastValidWidth = i10;
        }
        if (i11 > 0) {
            this.currentHeight = i11;
            this.lastValidHeight = i11;
        }
        maybeAddToHistory(this.currentWidth, this.currentHeight);
    }

    public void tryAddLastSizeToHistory() {
        if (this.currentWidth <= 0 && this.currentHeight <= 0) {
            maybeAddToHistory(this.lastValidWidth, this.lastValidHeight);
        }
    }
}
