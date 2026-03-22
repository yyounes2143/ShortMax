package com.ss.ttvideoengine.strategrycenter;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class StrategyEvent {
    private static final String EST_PLAYTIME = "est_play";
    private static final String FIRST_BLOCK_DECISION_TIME = "first_block_decision_time";
    private static final String FIRST_BLOCK_EXEC_TIME = "first_block_exec_time";
    public static final String LOG_KEY_ADAPTIVE_RANGE = "st_adaptive_range";
    private static final String LOG_KEY_ADAPTIVE_RANGE_BUFFER_LOG = "buffer_log";
    private static final String LOG_KEY_ADAPTIVE_RANGE_ENABLED = "enabled";
    private static final String LOG_KEY_BANDWIDTH_BITRATE_RATIO = "band_bitrate_ratio";
    public static final String LOG_KEY_BANDWIDTH_RANGE = "st_band_range";
    public static final String LOG_KEY_BUFFER_DURATION = "st_buf_dur";
    public static final String LOG_KEY_COMMON_EVENT_LOG = "st_common";
    private static final String LOG_KEY_CURRENT_BANDWIDTH = "current_bandwidth";
    private static final String LOG_KEY_FIRST_FRAME_LABEL = "first_frame_label";
    private static final String LOG_KEY_LOAD_CONTROL_SLIDING_WINDOW = "sliding_window";
    private static final String LOG_KEY_LOAD_CONTROL_VERSION = "lc_version";
    private static final String LOG_KEY_MODULE_ACTIVATED = "module_activated";
    private static final String LOG_KEY_PLAY_BUFFER_DIFF_COUNT = "diff_ret_count";
    public static final String LOG_KEY_PLAY_TASK_CONTROL = "st_play_task_op";
    public static final String LOG_KEY_PRELOAD = "st_preload";
    public static final String LOG_KEY_PRELOAD_DECISION_INFO = "st_preload_decision";
    public static final String LOG_KEY_PRELOAD_DECISION_INFO2 = "st_preload_decision2";
    public static final String LOG_KEY_PRELOAD_FINISHED_TIME = "st_preload_finished_time";
    public static final String LOG_KEY_PRELOAD_PERSONALIZED = "st_preload_personalized";
    private static final String LOG_KEY_PRELOAD_PERSONALIZED_OPTION = "preload_personalized_option";
    public static final String LOG_KEY_PRELOAD_STRATEGY = "st_preload_sc_info";
    public static final String LOG_KEY_REMAINING_BUFFER_DURATION = "st_remaining_buf_dur";
    private static final String LOG_KEY_RE_BUFFER_DURATION_INITIAL = "rebuf_dur_init";
    private static final String LOG_KEY_STALL_LABEL = "stall_label";
    private static final String LOG_KEY_STARTUP_BUFFER_DURATION = "startup_buf_dur";
    private static final String LOG_KEY_STARTUP_CACHE_SIZE = "startup_cache";
    public static final String LOG_KEY_THROWS = "st_throws";
    private static final String LOG_KEY_WATCH_DURATION_LABEL = "watch_duration_label";
    private static final String PAUSE = "pause";
    private static final String RANGE = "range";
    private static final String RANGE_DURATION = "range_dur";
    private static final String RESUME = "resume";
    private static final String SAFE_FACTOR = "safe_factor";
    private static final String SEEKLABEL = "seek_label";
    private static final String SMART_LEVEL = "smart_level";
    private static final String TAG = "StrategyEvent";
    private static final String TARGET_BUFFER = "target_buffer";
    private final ConcurrentMap<String, ConcurrentMap<String, Object>> mVidMap = new ConcurrentHashMap();
    private final ConcurrentMap<String, Object> mNoVidMap = new ConcurrentHashMap();
    private final Queue<Map<String, Object>> mUnexpectedThrowables = new ConcurrentLinkedQueue();

    @NonNull
    private static Map<String, Object> convertCounterMap(@NonNull Map<String, Object> map) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            if (entry.getValue() instanceof Map) {
                hashMap.put(entry.getKey(), convertCounterMap((Map) entry.getValue()));
            } else if (entry.getValue() instanceof AtomicInteger) {
                hashMap.put(entry.getKey(), Integer.valueOf(((AtomicInteger) entry.getValue()).get()));
            } else {
                hashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return hashMap;
    }

    /* JADX WARN: Removed duplicated region for block: B:139:0x03da  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void eventImpl(@androidx.annotation.Nullable java.lang.String r23, int r24, int r25, @androidx.annotation.Nullable java.lang.String r26) {
        /*
            Method dump skipped, instructions count: 1088
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.strategrycenter.StrategyEvent.eventImpl(java.lang.String, int, int, java.lang.String):void");
    }

    @NonNull
    private static ConcurrentMap<String, Object> putIfAbsentAndGetMap(@NonNull ConcurrentMap<String, Object> concurrentMap, String str) {
        concurrentMap.putIfAbsent(str, new ConcurrentHashMap());
        return (ConcurrentMap) concurrentMap.get(str);
    }

    public void event(@Nullable String str, int i10, int i11, @Nullable String str2) {
        try {
            eventImpl(str, i10, i11, str2);
        } catch (Throwable th2) {
            this.mUnexpectedThrowables.add(new HashMap<String, Object>(str, i10, i11, str2, th2) { // from class: com.ss.ttvideoengine.strategrycenter.StrategyEvent.1
                final /* synthetic */ Throwable val$e;
                final /* synthetic */ String val$id;
                final /* synthetic */ int val$key;
                final /* synthetic */ String val$logInfo;
                final /* synthetic */ int val$value;

                {
                    this.val$id = str;
                    this.val$key = i10;
                    this.val$value = i11;
                    this.val$logInfo = str2;
                    this.val$e = th2;
                    put("id", str);
                    put("key", Integer.valueOf(i10));
                    put(AppMeasurementSdk.ConditionalUserProperty.VALUE, Integer.valueOf(i11));
                    put("logInfo", str2);
                    put("throwable", th2.toString());
                }
            });
        }
    }

    @Nullable
    public Map<String, Object> getLogData(String str) {
        Map hashMap;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ConcurrentMap<String, Object> concurrentMap = this.mVidMap.get(str);
        if (concurrentMap != null) {
            hashMap = convertCounterMap(concurrentMap);
        } else {
            hashMap = new HashMap();
        }
        hashMap.putAll(this.mNoVidMap);
        String stringValue = StrategyHelper.helper().getCenter().getStringValue(com.bytedance.vcloud.strategy.StrategyCenter.GET_PRELOAD_STRATEGY_LOG_INFO, str);
        if (!TextUtils.isEmpty(stringValue)) {
            hashMap.put(LOG_KEY_PRELOAD_STRATEGY, stringValue);
        }
        if (!this.mUnexpectedThrowables.isEmpty()) {
            hashMap.put(LOG_KEY_THROWS, this.mUnexpectedThrowables);
            this.mUnexpectedThrowables.clear();
        }
        TTVideoEngineLog.i(TAG, "vid: " + str + ", gotten log data: " + hashMap);
        return hashMap;
    }

    @Nullable
    public Map<String, Object> popLogData(int i10, String str) {
        try {
            JSONObject jSONObject = new JSONObject(StrategyHelper.helper().getCenter().popLogData(i10, str));
            HashMap hashMap = new HashMap();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, jSONObject.get(next));
            }
            TTVideoEngineLog.i(TAG, "traceId: " + str + ", type: " + i10 + ", gotten log data: " + hashMap);
            return hashMap;
        } catch (JSONException e10) {
            TTVideoEngineLog.e(TAG, "event log parse failed: " + e10);
            return null;
        }
    }

    public void removeLogData(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.mVidMap.remove(str);
    }

    @Nullable
    public Map<String, Object> getLogData(String str, String str2) {
        Map map;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || !str2.equals("st_play_task_op") || (map = (Map) this.mVidMap.get(str).get(str2)) == null) {
            return null;
        }
        return convertCounterMap(map);
    }
}
