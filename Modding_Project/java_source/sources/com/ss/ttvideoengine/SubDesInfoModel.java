package com.ss.ttvideoengine;

import androidx.annotation.NonNull;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class SubDesInfoModel implements SubDesInfoModelProvider {
    private final ArrayList<SubModelProvider> mSubModelList = new ArrayList<>();

    public SubDesInfoModel(@NonNull JSONObject jSONObject) {
        JSONArray optJSONArray;
        if (!jSONObject.has("list") || (optJSONArray = jSONObject.optJSONArray("list")) == null) {
            return;
        }
        for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(i10);
            if (optJSONObject != null && optJSONObject.has("language_id") && optJSONObject.has("format") && optJSONObject.has("url") && optJSONObject.has("sub_id")) {
                this.mSubModelList.add(new SubModel(optJSONObject));
            }
        }
    }

    @Override // com.ss.ttvideoengine.SubDesInfoModelProvider
    public void addSubModel(@NonNull SubModelProvider subModelProvider) {
        JSONObject json = subModelProvider.toJson();
        if (json != null && json.has("url") && json.has("language_id") && json.has("format") && json.has("sub_id")) {
            this.mSubModelList.add(subModelProvider);
        }
    }

    public ArrayList<SubModelProvider> getSubModelList() {
        return this.mSubModelList;
    }

    @Override // com.ss.ttvideoengine.SubDesInfoModelProvider
    public int subtitleCount() {
        return this.mSubModelList.size();
    }

    @Override // com.ss.ttvideoengine.SubDesInfoModelProvider
    public String toString() {
        if (this.mSubModelList.size() > 0) {
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            for (int i10 = 0; i10 < this.mSubModelList.size(); i10++) {
                JSONObject json = this.mSubModelList.get(i10).toJson();
                if (json != null && json.has("url") && json.has("language_id") && json.has("format") && json.has("sub_id")) {
                    jSONArray.put(json);
                }
            }
            try {
                jSONObject.putOpt("list", jSONArray);
                return jSONObject.toString();
            } catch (JSONException e10) {
                TTVideoEngineLog.d(e10);
            }
        }
        return null;
    }

    public SubDesInfoModel(@NonNull ArrayList<SubModelProvider> arrayList) {
        SubModelProvider subModelProvider;
        JSONObject json;
        if (arrayList.size() <= 0) {
            return;
        }
        for (int i10 = 0; i10 < arrayList.size() && (json = (subModelProvider = arrayList.get(i10)).toJson()) != null; i10++) {
            if (json.has("url") && json.has("language_id") && json.has("format") && json.has("sub_id")) {
                this.mSubModelList.add(subModelProvider);
            }
        }
    }
}
