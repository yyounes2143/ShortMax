package com.bytedance.applog.game;

import android.text.TextUtils;
import com.bytedance.applog.AppLog;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.bytedance.applog.log.LoggerImpl;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class OhayooGameHelper {
    public static final String GAME_ACTIVITY = "ohayoo_game_activity";
    public static final String GAME_BUTTONCLICK = "ohayoo_game_buttonclick";
    public static final String GAME_GUILD = "ohayoo_game_guild";
    public static final String GAME_RANK = "ohayoo_game_rank";
    public static final String GAME_SHARE = "ohayoo_game_share";
    public static final String GAME_SNS = "ohayoo_game_sns";
    public static final String GAME_TASK = "ohayoo_game_task";
    public static final String GAME_UNLOCK = "ohayoo_game_unlock";
    public static final String KEY_LEVEL = "ohayoo_level";
    public static final String KEY_PACKAGE_CHANNEL = "ohayoo_packagechannel";
    public static final String KEY_ROLE_ID = "ohayoo_roleid";
    public static final String KEY_SDK_OPEN_ID = "ohayoo_sdk_open_id";
    public static final String KEY_SERVER_ID = "ohayoo_serverid";
    public static final String KEY_USER_TYPE = "ohayoo_usertype";
    public static final String KEY_ZONE_ID = "ohayoo_zoneid";

    public static void fillOtherParams(HashMap<String, Object> hashMap, JSONObject jSONObject) {
        if (hashMap != null && !hashMap.isEmpty()) {
            for (Map.Entry<String, Object> entry : hashMap.entrySet()) {
                if (!TextUtils.isEmpty(entry.getKey())) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
            }
        }
    }

    public static void onEventGameActivity(String str, String str2, String str3, String str4, int i10, String str5, long j10, long j11, HashMap<String, Object> hashMap) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("activitytype", str);
            jSONObject.put("actid", str2);
            jSONObject.put("actname", str3);
            jSONObject.put("actdesc", str4);
            jSONObject.put("actresult", i10);
            jSONObject.put("actreward", str5);
            jSONObject.put("starttime", j10);
            jSONObject.put("endtime", j11);
            fillOtherParams(hashMap, jSONObject);
            AppLog.onEventV3(GAME_ACTIVITY, jSONObject);
        } catch (JSONException e10) {
            LoggerImpl.global().error(Collections.singletonList("OhayooGameHelper"), "JSON handle failed", e10, new Object[0]);
        }
    }

    public static void onEventGameButtonClick(String str, String str2, String str3, int i10, HashMap<String, Object> hashMap) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("buttontype", str);
            jSONObject.put("buttonid", str2);
            jSONObject.put("buttonname", str3);
            jSONObject.put("buttonresult", i10);
            fillOtherParams(hashMap, jSONObject);
            AppLog.onEventV3(GAME_BUTTONCLICK, jSONObject);
        } catch (JSONException e10) {
            LoggerImpl.global().error(Collections.singletonList("OhayooGameHelper"), "JSON handle failed", e10, new Object[0]);
        }
    }

    public static void onEventGameGuild(String str, String str2, String str3, int i10, int i11, int i12, HashMap<String, Object> hashMap) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("membergrade", str);
            jSONObject.put("guildid", str2);
            jSONObject.put("guildname", str3);
            jSONObject.put("guildlevel", i10);
            jSONObject.put("guildresult", i11);
            jSONObject.put("guildrank", i12);
            fillOtherParams(hashMap, jSONObject);
            AppLog.onEventV3(GAME_GUILD, jSONObject);
        } catch (JSONException e10) {
            LoggerImpl.global().error(Collections.singletonList("OhayooGameHelper"), "JSON handle failed", e10, new Object[0]);
        }
    }

    public static void onEventGameRank(String str, int i10, int i11, int i12, int i13, int i14, int i15, HashMap<String, Object> hashMap) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ranktype", str);
            jSONObject.put("rankid", i10);
            jSONObject.put("rank", i11);
            jSONObject.put("befrank", i12);
            jSONObject.put("point", i13);
            jSONObject.put("befpoint", i14);
            jSONObject.put("allpoint", i15);
            fillOtherParams(hashMap, jSONObject);
            AppLog.onEventV3(GAME_RANK, jSONObject);
        } catch (JSONException e10) {
            LoggerImpl.global().error(Collections.singletonList("OhayooGameHelper"), "JSON handle failed", e10, new Object[0]);
        }
    }

    public static void onEventGameShare(String str, String str2, int i10, String str3, String str4, HashMap<String, Object> hashMap) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("sharetype", str);
            jSONObject.put("sharefocus", str2);
            jSONObject.put("shareresult", i10);
            jSONObject.put("shareid", str3);
            jSONObject.put("shareidentify", str4);
            fillOtherParams(hashMap, jSONObject);
            AppLog.onEventV3(GAME_SHARE, jSONObject);
        } catch (JSONException e10) {
            LoggerImpl.global().error(Collections.singletonList("OhayooGameHelper"), "JSON handle failed", e10, new Object[0]);
        }
    }

    public static void onEventGameSns(int i10, int i11, String str, String str2, HashMap<String, Object> hashMap) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("recnum", i10);
            jSONObject.put(MetricsSQLiteCacheKt.METRICS_COUNT, i11);
            jSONObject.put("snstype", str);
            jSONObject.put("snssubtype", str2);
            fillOtherParams(hashMap, jSONObject);
            AppLog.onEventV3(GAME_SNS, jSONObject);
        } catch (JSONException e10) {
            LoggerImpl.global().error(Collections.singletonList("OhayooGameHelper"), "JSON handle failed", e10, new Object[0]);
        }
    }

    public static void onEventGameTask(String str, String str2, String str3, String str4, int i10, HashMap<String, Object> hashMap) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("tasktype", str);
            jSONObject.put("taskid", str2);
            jSONObject.put("taskname", str3);
            jSONObject.put("taskdesc", str4);
            jSONObject.put("taskresult", i10);
            fillOtherParams(hashMap, jSONObject);
            AppLog.onEventV3(GAME_TASK, jSONObject);
        } catch (JSONException e10) {
            LoggerImpl.global().error(Collections.singletonList("OhayooGameHelper"), "JSON handle failed", e10, new Object[0]);
        }
    }

    public static void onEventGameUnlock(String str, String str2, String str3, HashMap<String, Object> hashMap) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("unlocktype", str);
            jSONObject.put("unlockid", str2);
            jSONObject.put("unlockname", str3);
            fillOtherParams(hashMap, jSONObject);
            AppLog.onEventV3(GAME_UNLOCK, jSONObject);
        } catch (JSONException e10) {
            LoggerImpl.global().error(Collections.singletonList("OhayooGameHelper"), "JSON handle failed", e10, new Object[0]);
        }
    }

    public static void setOhayooCustomHeader(String str, Object obj) {
        AppLog.setHeaderInfo(str, obj);
    }
}
