package com.ss.ttvideoengine.model;

import androidx.annotation.Nullable;
import com.ss.ttvideoengine.Resolution;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public interface IVideoInfo {
    int fromMediaInfoJsonObject(JSONObject jSONObject);

    @Nullable
    MediaBitrateFitterInfo getBitrateFitterInfo();

    int getMediatype();

    Resolution getResolution();

    boolean getValueBool(int i10);

    float getValueFloat(int i10);

    int getValueInt(int i10);

    long getValueLong(int i10);

    String getValueStr(int i10);

    String[] getValueStrArr(int i10);

    @Nullable
    JSONObject toBashJsonObject();

    Map<String, Object> toMediaInfo();
}
