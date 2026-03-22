package com.ss.ttvideoengine.model;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class VideoAdRef {
    public static final int TYPE_PATCH_BEGIN = 1;
    public static final int TYPE_PATCH_END = 2;
    public static final int TYPE_PATCH_MAIN = 3;
    public List<String> action_track_url_list;
    public int duration;
    public String external_url;

    /* renamed from: id  reason: collision with root package name */
    public long f37098id;
    public String log_extra;
    public VideoInfo mVideo1;
    public VideoInfo mVideo2;
    public VideoInfo mVideo3;
    public int patch_position;
    public List<String> play_track_url_list;
    public List<String> playover_track_url_list;
    public int skip_time;

    @Nullable
    public static List<String> parseTrackUrl(Object obj, String[] strArr) {
        JSONArray jSONArray;
        int length;
        if (strArr != null && strArr.length > 0) {
            strArr[0] = null;
        }
        if (obj == null) {
            return null;
        }
        try {
            if (obj instanceof String) {
                ArrayList arrayList = new ArrayList();
                String str = (String) obj;
                arrayList.add(str);
                if (strArr != null && strArr.length > 0) {
                    strArr[0] = str;
                }
                return arrayList;
            } else if (!(obj instanceof JSONArray) || (length = (jSONArray = (JSONArray) obj).length()) == 0) {
                return null;
            } else {
                ArrayList arrayList2 = new ArrayList();
                for (int i10 = 0; i10 < length; i10++) {
                    String string = jSONArray.getString(i10);
                    if (!TextUtils.isEmpty(string)) {
                        arrayList2.add(string);
                    }
                }
                if (arrayList2.isEmpty()) {
                    return null;
                }
                if (strArr != null && strArr.length > 0) {
                    strArr[0] = jSONArray.toString();
                }
                return arrayList2;
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public void extractFields(JSONObject jSONObject) {
        this.f37098id = jSONObject.optLong("id");
        this.log_extra = jSONObject.optString("log_extra");
        this.skip_time = jSONObject.optInt("skip_time");
        this.patch_position = jSONObject.optInt("patch_position");
        this.duration = jSONObject.optInt("duration");
        this.external_url = jSONObject.optString("external_url");
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("play_track_url_list");
            if (jSONArray != null) {
                this.play_track_url_list = parseTrackUrl(jSONArray, new String[1]);
            }
        } catch (JSONException unused) {
        }
        try {
            JSONArray jSONArray2 = jSONObject.getJSONArray("playover_track_url_list");
            if (jSONArray2 != null) {
                this.playover_track_url_list = parseTrackUrl(jSONArray2, new String[1]);
            }
        } catch (JSONException unused2) {
        }
        try {
            JSONArray jSONArray3 = jSONObject.getJSONArray("action_track_url_list");
            if (jSONArray3 != null) {
                this.action_track_url_list = parseTrackUrl(jSONArray3, new String[1]);
            }
        } catch (JSONException unused3) {
        }
    }
}
