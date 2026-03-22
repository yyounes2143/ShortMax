package com.bytedance.vcloud.networkpredictor;

import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class SpeedPredictorResult {
    private String fileId;
    private ArrayList<SpeedPredictorResultItem> resultItems = new ArrayList<>();

    public void add(SpeedPredictorResultItem speedPredictorResultItem) {
        this.resultItems.add(speedPredictorResultItem);
    }

    public SpeedPredictorResultItem get(int i10) {
        return this.resultItems.get(i10);
    }

    public String getFileId() {
        return this.fileId;
    }

    public ArrayList<SpeedPredictorResultItem> getResultItems() {
        return this.resultItems;
    }

    public void setFileId(String str) {
        this.fileId = str;
    }

    public void setResultItems(ArrayList<SpeedPredictorResultItem> arrayList) {
        this.resultItems = arrayList;
    }

    public int size() {
        return this.resultItems.size();
    }

    public JSONObject toJsonObject() {
        JSONObject jsonObject;
        try {
            JSONObject jSONObject = new JSONObject();
            String str = this.fileId;
            if (str != null) {
                jSONObject.put("fileid", str);
            }
            JSONArray jSONArray = new JSONArray();
            Iterator<SpeedPredictorResultItem> it = this.resultItems.iterator();
            while (it.hasNext()) {
                SpeedPredictorResultItem next = it.next();
                if (next != null && (jsonObject = next.toJsonObject()) != null) {
                    jSONArray.put(jsonObject);
                }
            }
            if (jSONArray.length() > 0) {
                jSONObject.put("predictInfo", jSONArray);
                return jSONObject;
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
