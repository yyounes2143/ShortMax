package com.bytedance.vcloud.networkpredictor;

import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class SpeedPredictorRecord {
    private String mFileId = "";
    private ArrayList<SpeedPredictorRecordItem> mSpeedRecordItems;

    public void extractFields(JSONObject jSONObject) throws Throwable {
        if (jSONObject == null) {
            return;
        }
        this.mFileId = jSONObject.optString("stream_id");
        JSONArray optJSONArray = jSONObject.optJSONArray("downinfo");
        if (optJSONArray != null && optJSONArray.length() > 0) {
            this.mSpeedRecordItems = new ArrayList<>();
            for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                JSONObject jSONObject2 = optJSONArray.getJSONObject(i10);
                SpeedPredictorRecordItem speedPredictorRecordItem = new SpeedPredictorRecordItem();
                speedPredictorRecordItem.extractFields(jSONObject2);
                this.mSpeedRecordItems.add(speedPredictorRecordItem);
            }
        }
    }

    public String getFileId() {
        return this.mFileId;
    }

    public ArrayList<SpeedPredictorRecordItem> getSpeedRecordItems() {
        return this.mSpeedRecordItems;
    }

    public void setFileId(String str) {
        this.mFileId = str;
    }

    public void setSpeedRecordItems(ArrayList<SpeedPredictorRecordItem> arrayList) {
        this.mSpeedRecordItems = arrayList;
    }
}
