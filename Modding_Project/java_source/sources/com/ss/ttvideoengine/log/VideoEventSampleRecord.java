package com.ss.ttvideoengine.log;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.collection.SieveCacheKt;
import com.bytedance.vcloud.networkpredictor.SpeedPredictorResult;
import com.bytedance.vcloud.networkpredictor.SpeedPredictorResultCollection;
import com.bytedance.vcloud.networkpredictor.SpeedPredictorResultItem;
import com.mbridge.msdk.MBridgeConstans;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttvideoengine.utils.EngineThreadPool;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class VideoEventSampleRecord {
    private static final String TAG = "VideoEventSampleRecord";
    public static final boolean enableBitrateMap = true;
    public static final String monitorName = "videoplayer_sample";
    public VideoEventBase mEventBase;
    private EventContext mEventContext;
    public int mMaxWindowSize = 200;
    public float mSampingRate = 0.0f;
    public boolean mIsStarted = false;
    public int mSampleInterval = Integer.MIN_VALUE;
    private long mLastVideoDownBytes = 0;
    private long mLastAudioDownBytes = 0;
    private long mLastVideoTotalCachedLen = 0;
    private long mLastAudioTotalCachedLen = 0;
    private final ReentrantLock mLock = new ReentrantLock();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class AsyncGetLogDataRunnable implements Runnable {
        private Context rContext;
        private VideoEventSampleRecord rEvent;
        private VideoEventBase rEventBase;
        private EventContext rEventContext;
        private Handler rHandler = new Handler(Looper.getMainLooper());

        public AsyncGetLogDataRunnable(Context context, VideoEventSampleRecord videoEventSampleRecord, VideoEventBase videoEventBase, EventContext eventContext) {
            this.rEvent = videoEventSampleRecord;
            this.rEventBase = videoEventBase;
            this.rContext = context;
            this.rEventContext = eventContext;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoEventSampleRecord videoEventSampleRecord = this.rEvent;
            if (videoEventSampleRecord != null) {
                final JSONObject jsonObject = videoEventSampleRecord.toJsonObject(this.rEventContext);
                Handler handler = this.rHandler;
                if (handler != null && handler.getLooper() != null) {
                    this.rHandler.post(new Runnable() { // from class: com.ss.ttvideoengine.log.VideoEventSampleRecord.AsyncGetLogDataRunnable.1
                        @Override // java.lang.Runnable
                        public void run() {
                            VideoEventManager.instance.addEventV2(true, jsonObject, VideoEventSampleRecord.monitorName);
                        }
                    });
                } else {
                    VideoEventManager.instance.addEventV2(true, jsonObject, VideoEventSampleRecord.monitorName);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public class EventContext {
        public ArrayList<Integer> audio_biterate_set;
        public ArrayList<Long> audio_downLoad_cost_time_set;
        public ArrayList<Integer> audio_download_bitrate_set;
        public ArrayList<Float> audio_download_size_set;
        public ArrayList<Integer> audio_play_bitrate_set;
        public ArrayList<String> audio_predict_speed_load_type_set;
        public ArrayList<Float> audio_predict_speed_set;
        public ArrayList<String> audio_protocol_set;
        public int audio_sample_count;
        public ArrayList<Integer> audio_sample_interval;
        public ArrayList<String> audio_speed_load_type_set;
        public ArrayList<Float> audio_speed_set;
        public ArrayList<Long> audio_tcpinfo_lastRevDate;
        public ArrayList<Long> audio_tcpinfo_rtt_set;
        public JSONObject bitrate_compress_table;
        public ArrayList<Long> buffer_len_set;
        public int index;
        public int is_abr;
        public int is_multi_dimensions;
        public int is_multi_dimensions_input;
        public long local_time_ms;
        public ArrayList<Integer> play_pos_set;
        public ArrayList<Float> play_speed_set;
        public String player_sessionid;
        public int sample_interval;
        public String url;
        public ArrayList<Integer> video_biterate_set;
        public ArrayList<Long> video_downLoad_cost_time_set;
        public ArrayList<Integer> video_download_bitrate_set;
        public ArrayList<Float> video_download_size_set;
        public String video_id;
        public ArrayList<Integer> video_play_bitrate_set;
        public ArrayList<String> video_predict_speed_load_type_set;
        public ArrayList<Float> video_predict_speed_set;
        public ArrayList<String> video_protocol_set;
        public int video_sample_count;
        public ArrayList<Integer> video_sample_interval;
        public ArrayList<String> video_speed_load_type_set;
        public ArrayList<Float> video_speed_set;
        public ArrayList<Long> video_tcpinfo_lastRevDate;
        public ArrayList<Long> video_tcpinfo_rtt_set;
        public String vtype;

        private EventContext() {
            this.local_time_ms = SieveCacheKt.NodeMetaAndPreviousMask;
            this.is_abr = -1;
            this.sample_interval = Integer.MIN_VALUE;
            this.video_sample_count = 0;
            this.video_sample_interval = new ArrayList<>();
            this.video_speed_set = new ArrayList<>();
            this.video_speed_load_type_set = new ArrayList<>();
            this.video_predict_speed_set = new ArrayList<>();
            this.video_predict_speed_load_type_set = new ArrayList<>();
            this.video_play_bitrate_set = new ArrayList<>();
            this.video_download_bitrate_set = new ArrayList<>();
            this.video_download_size_set = new ArrayList<>();
            this.video_downLoad_cost_time_set = new ArrayList<>();
            this.video_tcpinfo_rtt_set = new ArrayList<>();
            this.video_tcpinfo_lastRevDate = new ArrayList<>();
            this.video_protocol_set = new ArrayList<>();
            this.audio_sample_count = 0;
            this.audio_sample_interval = new ArrayList<>();
            this.audio_speed_set = new ArrayList<>();
            this.audio_speed_load_type_set = new ArrayList<>();
            this.audio_predict_speed_set = new ArrayList<>();
            this.audio_predict_speed_load_type_set = new ArrayList<>();
            this.audio_play_bitrate_set = new ArrayList<>();
            this.audio_download_bitrate_set = new ArrayList<>();
            this.audio_download_size_set = new ArrayList<>();
            this.audio_downLoad_cost_time_set = new ArrayList<>();
            this.audio_tcpinfo_rtt_set = new ArrayList<>();
            this.audio_tcpinfo_lastRevDate = new ArrayList<>();
            this.audio_protocol_set = new ArrayList<>();
            this.buffer_len_set = new ArrayList<>();
            this.play_speed_set = new ArrayList<>();
            this.play_pos_set = new ArrayList<>();
            this.index = 0;
            this.player_sessionid = "";
            this.video_id = "";
            this.url = "";
            this.video_biterate_set = new ArrayList<>();
            this.audio_biterate_set = new ArrayList<>();
            this.vtype = "";
            this.is_multi_dimensions = -1;
            this.is_multi_dimensions_input = -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public VideoEventSampleRecord(VideoEventBase videoEventBase) {
        this.mEventContext = null;
        this.mEventBase = null;
        this.mEventContext = new EventContext();
        this.mEventBase = videoEventBase;
    }

    private void _addResultItemToPredictorSet(SpeedPredictorResult speedPredictorResult, Integer num) {
        if (speedPredictorResult == null) {
            return;
        }
        Iterator<SpeedPredictorResultItem> it = speedPredictorResult.getResultItems().iterator();
        while (it.hasNext()) {
            SpeedPredictorResultItem next = it.next();
            String format = String.format("%s|%s|%s|%s", next.getLoadType(), next.getHost(), String.valueOf(num), String.valueOf(this.mEventBase.speed_predict_type));
            if (next.getTrackType() == 0) {
                this.mEventContext.video_predict_speed_set.add(Float.valueOf(next.getBandwidth()));
                this.mEventContext.video_predict_speed_load_type_set.add(format);
            } else if (next.getTrackType() == 1) {
                this.mEventContext.audio_predict_speed_set.add(Float.valueOf(next.getBandwidth()));
                this.mEventContext.audio_predict_speed_load_type_set.add(format);
            }
        }
    }

    private void _addResultItemToSampleSet(SpeedPredictorResult speedPredictorResult, Integer num, long j10, Boolean[] boolArr, Boolean[] boolArr2) {
        if (speedPredictorResult == null) {
            return;
        }
        Iterator<SpeedPredictorResultItem> it = speedPredictorResult.getResultItems().iterator();
        while (it.hasNext()) {
            SpeedPredictorResultItem next = it.next();
            String format = String.format("%s|%s|%s", next.getLoadType(), next.getHost(), String.valueOf(num));
            if (next.getTrackType() == 0) {
                this.mEventContext.video_speed_set.add(Float.valueOf(next.getBandwidth()));
                this.mEventContext.video_speed_load_type_set.add(format);
                if (!boolArr[0].booleanValue()) {
                    this.mEventContext.video_sample_interval.add(Integer.valueOf((int) j10));
                    boolArr[0] = Boolean.TRUE;
                } else {
                    this.mEventContext.video_sample_interval.add(0);
                }
            } else if (next.getTrackType() == 1) {
                this.mEventContext.audio_speed_set.add(Float.valueOf(next.getBandwidth()));
                this.mEventContext.audio_speed_load_type_set.add(format);
                if (!boolArr2[0].booleanValue()) {
                    this.mEventContext.audio_sample_interval.add(Integer.valueOf((int) j10));
                    boolArr2[0] = Boolean.TRUE;
                } else {
                    this.mEventContext.audio_sample_interval.add(0);
                }
            }
        }
    }

    private Integer _doBitrateMap(Integer num) {
        VideoEventBase videoEventBase = this.mEventBase;
        if (videoEventBase == null) {
            return num;
        }
        Map videoInfo = videoEventBase.getVideoInfo();
        if (videoInfo == null) {
            return num;
        }
        Map map = (Map) videoInfo.get("bitrateMapTable");
        if (map != null) {
            if (((Integer) map.get(num)) == null) {
                return -1;
            }
            return (Integer) map.get(num);
        }
        return num;
    }

    private void _popHead() {
        EventContext eventContext;
        EventContext eventContext2 = this.mEventContext;
        int i10 = eventContext2.video_sample_count;
        int i11 = this.mMaxWindowSize;
        if (i10 > i11 || eventContext2.audio_sample_count > i11) {
            if (!eventContext2.play_pos_set.isEmpty()) {
                this.mEventContext.play_pos_set.remove(0);
            }
            if (!this.mEventContext.buffer_len_set.isEmpty()) {
                this.mEventContext.buffer_len_set.remove(0);
            }
            if (!this.mEventContext.play_speed_set.isEmpty()) {
                this.mEventContext.play_speed_set.remove(0);
            }
            if (!this.mEventContext.video_sample_interval.isEmpty()) {
                this.mEventContext.video_sample_interval.remove(0);
            }
            if (!this.mEventContext.video_speed_set.isEmpty()) {
                this.mEventContext.video_speed_set.remove(0);
            }
            if (!this.mEventContext.video_speed_load_type_set.isEmpty()) {
                this.mEventContext.video_speed_load_type_set.remove(0);
            }
            if (!this.mEventContext.video_predict_speed_set.isEmpty()) {
                this.mEventContext.video_predict_speed_set.remove(0);
            }
            if (!this.mEventContext.video_predict_speed_load_type_set.isEmpty()) {
                this.mEventContext.video_predict_speed_load_type_set.remove(0);
            }
            if (!this.mEventContext.video_download_bitrate_set.isEmpty()) {
                this.mEventContext.video_download_bitrate_set.remove(0);
            }
            if (!this.mEventContext.video_play_bitrate_set.isEmpty()) {
                this.mEventContext.video_play_bitrate_set.remove(0);
            }
            if (!this.mEventContext.video_download_size_set.isEmpty()) {
                this.mEventContext.video_download_size_set.remove(0);
            }
            if (!this.mEventContext.video_downLoad_cost_time_set.isEmpty()) {
                this.mEventContext.video_downLoad_cost_time_set.remove(0);
            }
            if (!this.mEventContext.video_tcpinfo_rtt_set.isEmpty()) {
                this.mEventContext.video_tcpinfo_rtt_set.remove(0);
            }
            if (!this.mEventContext.video_tcpinfo_lastRevDate.isEmpty()) {
                this.mEventContext.video_tcpinfo_lastRevDate.remove(0);
            }
            if (!this.mEventContext.video_protocol_set.isEmpty()) {
                this.mEventContext.video_protocol_set.remove(0);
            }
            eventContext.video_sample_count--;
            if (!this.mEventContext.audio_sample_interval.isEmpty()) {
                this.mEventContext.audio_sample_interval.remove(0);
            }
            if (!this.mEventContext.audio_speed_set.isEmpty()) {
                this.mEventContext.audio_speed_set.remove(0);
            }
            if (!this.mEventContext.audio_speed_load_type_set.isEmpty()) {
                this.mEventContext.audio_speed_load_type_set.remove(0);
            }
            if (!this.mEventContext.audio_predict_speed_set.isEmpty()) {
                this.mEventContext.audio_predict_speed_set.remove(0);
            }
            if (!this.mEventContext.audio_predict_speed_load_type_set.isEmpty()) {
                this.mEventContext.audio_predict_speed_load_type_set.remove(0);
            }
            if (!this.mEventContext.audio_play_bitrate_set.isEmpty()) {
                this.mEventContext.audio_play_bitrate_set.remove(0);
            }
            if (!this.mEventContext.audio_download_bitrate_set.isEmpty()) {
                this.mEventContext.audio_download_bitrate_set.remove(0);
            }
            if (!this.mEventContext.audio_download_size_set.isEmpty()) {
                this.mEventContext.audio_download_size_set.remove(0);
            }
            if (!this.mEventContext.audio_downLoad_cost_time_set.isEmpty()) {
                this.mEventContext.audio_downLoad_cost_time_set.remove(0);
            }
            if (!this.mEventContext.audio_tcpinfo_rtt_set.isEmpty()) {
                this.mEventContext.audio_tcpinfo_rtt_set.remove(0);
            }
            if (!this.mEventContext.audio_tcpinfo_lastRevDate.isEmpty()) {
                this.mEventContext.audio_tcpinfo_lastRevDate.remove(0);
            }
            if (!this.mEventContext.audio_protocol_set.isEmpty()) {
                this.mEventContext.audio_protocol_set.remove(0);
            }
            EventContext eventContext3 = this.mEventContext;
            eventContext3.audio_sample_count--;
        }
    }

    private void _sendEvent(int i10) {
        EventContext eventContext = this.mEventContext;
        if (eventContext.video_sample_count == 0 && eventContext.audio_sample_count == 0 && !checkCurrentPlayBackVideoIsLegal()) {
            return;
        }
        this.mEventContext.local_time_ms = System.currentTimeMillis();
        EventContext eventContext2 = this.mEventContext;
        eventContext2.sample_interval = this.mSampleInterval;
        VideoEventBase videoEventBase = this.mEventBase;
        if (videoEventBase != null) {
            eventContext2.is_abr = videoEventBase.is_enable_abr;
            eventContext2.is_multi_dimensions = videoEventBase.is_multi_dimensions;
            eventContext2.is_multi_dimensions_input = videoEventBase.is_multi_dimensionsInput;
            eventContext2.player_sessionid = videoEventBase.mSessionID;
            eventContext2.video_id = videoEventBase.mVid;
            eventContext2.url = videoEventBase.mCurURL;
            eventContext2.vtype = videoEventBase.vtype;
            Map videoInfo = videoEventBase.getVideoInfo();
            if (videoInfo != null && videoInfo.get("bitrateMapTable") != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    for (Map.Entry entry : ((Map) videoInfo.get("bitrateMapTable")).entrySet()) {
                        jSONObject.put(((Integer) entry.getKey()).toString(), entry.getValue());
                    }
                    this.mEventContext.bitrate_compress_table = jSONObject;
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            if (videoInfo != null && videoInfo.get("video_bitrate") != null) {
                Iterator it = ((ArrayList) videoInfo.get("video_bitrate")).iterator();
                while (it.hasNext()) {
                    this.mEventContext.video_biterate_set.add((Integer) it.next());
                }
            }
            if (videoInfo != null && videoInfo.get("audio_bitrate") != null) {
                Iterator it2 = ((ArrayList) videoInfo.get("audio_bitrate")).iterator();
                while (it2.hasNext()) {
                    this.mEventContext.audio_biterate_set.add((Integer) it2.next());
                }
            }
        }
        VideoEventBase videoEventBase2 = this.mEventBase;
        EngineThreadPool.addExecuteTask(new AsyncGetLogDataRunnable(videoEventBase2.mContext, this, videoEventBase2, this.mEventContext));
        EventContext eventContext3 = new EventContext();
        this.mEventContext = eventContext3;
        if (i10 == 0) {
            eventContext3.index = 1;
        }
    }

    private void _updateEventBaseInfo() {
        VideoEventBase videoEventBase = this.mEventBase;
        if (videoEventBase != null) {
            EventLoggerSource eventLoggerSource = videoEventBase.mDataSource;
            if (eventLoggerSource != null) {
                this.mEventContext.play_pos_set.add(Integer.valueOf(eventLoggerSource.getLogValueInt(67)));
                this.mEventContext.buffer_len_set.add(Long.valueOf(this.mEventBase.mDataSource.getLogValueLong(68)));
                Map videoInfo = this.mEventBase.getVideoInfo();
                if (videoInfo != null) {
                    Map map = (Map) videoInfo.get("bitrate");
                    if (map != null) {
                        Integer num = (Integer) map.get(this.mEventBase.mCurrentResolution);
                        if (num == null) {
                            this.mEventContext.video_play_bitrate_set.add(-1);
                        } else if (num.intValue() == 0) {
                            this.mEventContext.video_play_bitrate_set.add(-1);
                        } else {
                            this.mEventContext.video_play_bitrate_set.add(_doBitrateMap(num));
                        }
                    }
                    ArrayList arrayList = (ArrayList) videoInfo.get("audio_bitrate");
                    if (arrayList != null && !arrayList.isEmpty()) {
                        if (arrayList.get(0) == null) {
                            this.mEventContext.audio_play_bitrate_set.add(-1);
                        } else if (((Integer) arrayList.get(0)).intValue() == 0) {
                            this.mEventContext.audio_play_bitrate_set.add(-1);
                        } else {
                            this.mEventContext.audio_play_bitrate_set.add(_doBitrateMap((Integer) arrayList.get(0)));
                        }
                    }
                }
            }
            this.mEventContext.play_speed_set.add(Float.valueOf(this.mEventBase.mPlaySpeed));
        }
    }

    private boolean checkCurrentPlayBackVideoIsLegal() {
        Map videoInfo = this.mEventBase.getVideoInfo();
        if (videoInfo == null) {
            return false;
        }
        Map map = (Map) videoInfo.get("fileKey");
        ArrayList arrayList = new ArrayList();
        if (map != null) {
            for (String str : map.values()) {
                if (str.equals("") || str.equals(MBridgeConstans.ENDCARD_URL_TYPE_PL)) {
                    return false;
                }
                arrayList.add(str);
            }
        }
        int i10 = 0;
        while (i10 < arrayList.size()) {
            String str2 = (String) arrayList.get(i10);
            i10++;
            for (int i11 = i10; i11 < arrayList.size(); i11++) {
                if (str2.equals(arrayList.get(i11))) {
                    return false;
                }
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject toJsonObject(EventContext eventContext) {
        HashMap hashMap = new HashMap();
        LoggerUtils.putToMap(hashMap, "local_time_ms", eventContext.local_time_ms);
        LoggerUtils.putToMap((Map) hashMap, "is_abr", eventContext.is_abr);
        LoggerUtils.putToMap(hashMap, "vtype", eventContext.vtype);
        LoggerUtils.putToMap((Map) hashMap, "sample_interval", eventContext.sample_interval);
        LoggerUtils.putToMap((Map) hashMap, "video_sample_count", eventContext.video_sample_count);
        LoggerUtils.putToMap(hashMap, "video_sample_interval", eventContext.video_sample_interval);
        LoggerUtils.putToMap(hashMap, "video_network_speed_sampling_set", eventContext.video_speed_set);
        LoggerUtils.putToMap(hashMap, "video_network_speed_sampling_load_types", eventContext.video_speed_load_type_set);
        LoggerUtils.putToMap(hashMap, "video_network_speed_predict_set", eventContext.video_predict_speed_set);
        LoggerUtils.putToMap(hashMap, "video_network_speed_predict_load_types", eventContext.video_predict_speed_load_type_set);
        LoggerUtils.putToMap(hashMap, "video_play_bitrate_set", eventContext.video_play_bitrate_set);
        LoggerUtils.putToMap(hashMap, "video_download_bitrate_set", eventContext.video_download_bitrate_set);
        LoggerUtils.putToMap(hashMap, "video_download_size_set", eventContext.video_download_size_set);
        LoggerUtils.putToMap(hashMap, "video_download_costtime_set", eventContext.video_downLoad_cost_time_set);
        LoggerUtils.putToMap(hashMap, "video_tcpInfo_rtt_set", eventContext.video_tcpinfo_rtt_set);
        LoggerUtils.putToMap(hashMap, "video_tcpInfo_lastRecvDate", eventContext.video_tcpinfo_lastRevDate);
        LoggerUtils.putToMap(hashMap, "video_mdl_loader_type", eventContext.video_protocol_set);
        LoggerUtils.putToMap((Map) hashMap, "audio_sample_count", eventContext.audio_sample_count);
        LoggerUtils.putToMap(hashMap, "audio_sample_interval", eventContext.audio_sample_interval);
        LoggerUtils.putToMap(hashMap, "audio_network_speed_sampling_set", eventContext.audio_speed_set);
        LoggerUtils.putToMap(hashMap, "audio_network_speed_sampling_load_types", eventContext.audio_speed_load_type_set);
        LoggerUtils.putToMap(hashMap, "audio_network_speed_predict_set", eventContext.audio_predict_speed_set);
        LoggerUtils.putToMap(hashMap, "audio_network_speed_predict_load_types", eventContext.audio_predict_speed_load_type_set);
        LoggerUtils.putToMap(hashMap, "audio_play_bitrate_set", eventContext.audio_play_bitrate_set);
        LoggerUtils.putToMap(hashMap, "audio_download_bitrate_set", eventContext.audio_download_bitrate_set);
        LoggerUtils.putToMap(hashMap, "audio_download_size_set", eventContext.audio_download_size_set);
        LoggerUtils.putToMap(hashMap, "audio_download_costtime_set", eventContext.audio_downLoad_cost_time_set);
        LoggerUtils.putToMap(hashMap, "audio_tcpInfo_rtt_set", eventContext.audio_tcpinfo_rtt_set);
        LoggerUtils.putToMap(hashMap, "audio_tcpInfo_lastRecvDate", eventContext.audio_tcpinfo_lastRevDate);
        LoggerUtils.putToMap(hashMap, "audio_mdl_loader_type", eventContext.audio_protocol_set);
        LoggerUtils.putToMap(hashMap, "buffer_len_set", eventContext.buffer_len_set);
        LoggerUtils.putToMap(hashMap, "play_speed_set", eventContext.play_speed_set);
        LoggerUtils.putToMap(hashMap, "play_pos_set", eventContext.play_pos_set);
        LoggerUtils.putToMap((Map) hashMap, TextureRenderKeys.KEY_IS_INDEX, eventContext.index);
        LoggerUtils.putToMap(hashMap, "player_sessionid", eventContext.player_sessionid);
        LoggerUtils.putToMap(hashMap, "video_id", eventContext.video_id);
        LoggerUtils.putToMap(hashMap, "video_bitrate_set", eventContext.video_biterate_set);
        LoggerUtils.putToMap(hashMap, "audio_bitrate_set", eventContext.audio_biterate_set);
        LoggerUtils.putToMap((Map) hashMap, "is_multi_dimensions", eventContext.is_multi_dimensions);
        LoggerUtils.putToMap((Map) hashMap, "is_multi_dimensions_input", eventContext.is_multi_dimensions_input);
        JSONObject jSONObject = new JSONObject(hashMap);
        try {
            jSONObject.put("bitrate_map_table", eventContext.bitrate_compress_table);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return jSONObject;
    }

    void addExtraMapInfoForTrackType(Map<String, String> map, int i10) {
        if (map != null && map.size() > 0 && i10 <= 1) {
            if (i10 == 0) {
                String str = map.get("download_size");
                String str2 = map.get("download_time");
                String str3 = map.get("rtt");
                String str4 = map.get("last_data_recv");
                String str5 = map.get("mdl_loader_type");
                if (str != null) {
                    this.mEventContext.video_download_size_set.add(Float.valueOf(Float.parseFloat(str)));
                }
                if (str2 != null) {
                    this.mEventContext.video_downLoad_cost_time_set.add(Long.valueOf(Long.parseLong(str2)));
                }
                if (str3 != null) {
                    this.mEventContext.video_tcpinfo_rtt_set.add(Long.valueOf(Long.parseLong(str3)));
                }
                if (str4 != null) {
                    this.mEventContext.video_tcpinfo_lastRevDate.add(Long.valueOf(Long.parseLong(str4)));
                }
                if (str5 != null) {
                    this.mEventContext.video_protocol_set.add(str5);
                }
            } else if (i10 == 1) {
                String str6 = map.get("download_size");
                String str7 = map.get("download_time");
                String str8 = map.get("rtt");
                String str9 = map.get("last_data_recv");
                String str10 = map.get("mdl_loader_type");
                if (str6 != null) {
                    this.mEventContext.audio_download_size_set.add(Float.valueOf(Float.parseFloat(str6)));
                }
                if (str7 != null) {
                    this.mEventContext.audio_downLoad_cost_time_set.add(Long.valueOf(Long.parseLong(str7)));
                }
                if (str8 != null) {
                    this.mEventContext.audio_tcpinfo_rtt_set.add(Long.valueOf(Long.parseLong(str8)));
                }
                if (str9 != null) {
                    this.mEventContext.audio_tcpinfo_lastRevDate.add(Long.valueOf(Long.parseLong(str9)));
                }
                if (str10 != null) {
                    this.mEventContext.audio_protocol_set.add(str10);
                }
            }
        }
    }

    public void setInterval(int i10) {
        if (i10 > 0) {
            this.mSampleInterval = i10;
        }
    }

    public void setMaxWindowSize(int i10) {
        if (i10 > 0) {
            this.mMaxWindowSize = i10;
        }
    }

    public void setSamplingRate(float f10) {
        this.mSampingRate = f10;
    }

    public void startRecord() {
        if (Math.random() > this.mSampingRate) {
            this.mIsStarted = false;
        } else {
            this.mIsStarted = true;
        }
    }

    public void stopRecord() {
        this.mLock.lock();
        try {
            if (this.mIsStarted) {
                this.mIsStarted = false;
                _sendEvent(1);
            }
        } finally {
            this.mLock.unlock();
        }
    }

    public void updateNetworkMutiSpeed(SpeedPredictorResultCollection speedPredictorResultCollection, SpeedPredictorResultCollection speedPredictorResultCollection2, long j10) {
        Map map;
        if (this.mIsStarted && this.mEventBase != null && speedPredictorResultCollection != null && speedPredictorResultCollection2 != null) {
            _updateEventBaseInfo();
            Map videoInfo = this.mEventBase.getVideoInfo();
            if (videoInfo != null && (map = (Map) videoInfo.get("fileKey")) != null && !map.isEmpty()) {
                Boolean bool = Boolean.FALSE;
                Boolean[] boolArr = {bool};
                Boolean[] boolArr2 = {bool};
                for (Map.Entry entry : map.entrySet()) {
                    String str = (String) entry.getValue();
                    Iterator<SpeedPredictorResult> it = speedPredictorResultCollection.getResultCollection().iterator();
                    while (it.hasNext()) {
                        SpeedPredictorResult next = it.next();
                        if (next.getFileId().equals(str)) {
                            if (!next.getResultItems().isEmpty()) {
                                if (next.getResultItems().get(0).getTrackType() == 0) {
                                    if (entry.getKey() == null) {
                                        this.mEventContext.video_download_bitrate_set.add(-1);
                                    } else if (((Integer) entry.getKey()).intValue() == 0) {
                                        this.mEventContext.video_download_bitrate_set.add(-1);
                                    } else {
                                        this.mEventContext.video_download_bitrate_set.add(_doBitrateMap((Integer) entry.getKey()));
                                    }
                                } else if (entry.getKey() == null) {
                                    this.mEventContext.audio_download_bitrate_set.add(-1);
                                } else if (((Integer) entry.getKey()).intValue() == 0) {
                                    this.mEventContext.audio_download_bitrate_set.add(-1);
                                } else {
                                    this.mEventContext.audio_download_bitrate_set.add(_doBitrateMap((Integer) entry.getKey()));
                                }
                            }
                            _addResultItemToSampleSet(next, (Integer) entry.getKey(), j10, boolArr, boolArr2);
                        }
                    }
                    Iterator<SpeedPredictorResult> it2 = speedPredictorResultCollection2.getResultCollection().iterator();
                    while (it2.hasNext()) {
                        SpeedPredictorResult next2 = it2.next();
                        if (next2.getFileId().equals(str)) {
                            _addResultItemToPredictorSet(next2, (Integer) entry.getKey());
                        }
                    }
                }
                EventContext eventContext = this.mEventContext;
                int i10 = eventContext.video_sample_count + 1;
                eventContext.video_sample_count = i10;
                int i11 = eventContext.audio_sample_count + 1;
                eventContext.audio_sample_count = i11;
                int i12 = this.mMaxWindowSize;
                if (i10 >= i12 || i11 >= i12) {
                    if (eventContext.index == 0) {
                        _sendEvent(0);
                    } else {
                        _popHead();
                    }
                }
            }
        }
    }

    public void updateNetworkSpeed(String str, String str2, float f10, float f11, float f12, float f13, long j10, Map<String, String> map, Map<String, String> map2) {
        Map videoInfo;
        if (this.mIsStarted && this.mEventBase != null) {
            _updateEventBaseInfo();
            String valueOf = String.valueOf(this.mEventBase.speed_predict_type);
            if (this.mEventBase != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && (videoInfo = this.mEventBase.getVideoInfo()) != null && !str.equals("-1") && !str2.equals("-1")) {
                Map map3 = (Map) videoInfo.get("fileKey");
                if (map3 == null) {
                    map3 = new HashMap();
                }
                for (Map.Entry entry : map3.entrySet()) {
                    if (((String) entry.getValue()).equals(str)) {
                        if (entry.getKey() == null) {
                            this.mEventContext.video_download_bitrate_set.add(-1);
                        } else if (((Integer) entry.getKey()).intValue() == 0) {
                            this.mEventContext.video_download_bitrate_set.add(-1);
                        } else {
                            this.mEventContext.video_download_bitrate_set.add(_doBitrateMap((Integer) entry.getKey()));
                        }
                        this.mEventContext.video_sample_interval.add(Integer.valueOf((int) j10));
                        this.mEventContext.video_speed_set.add(Float.valueOf(f10));
                        this.mEventContext.video_predict_speed_set.add(Float.valueOf(f12));
                        this.mEventContext.video_predict_speed_load_type_set.add(valueOf);
                        addExtraMapInfoForTrackType(map, 0);
                    }
                    if (((String) entry.getValue()).equals(str2)) {
                        if (entry.getKey() == null) {
                            this.mEventContext.audio_download_bitrate_set.add(-1);
                        } else if (((Integer) entry.getKey()).intValue() == 0) {
                            this.mEventContext.audio_download_bitrate_set.add(-1);
                        } else {
                            this.mEventContext.audio_download_bitrate_set.add(_doBitrateMap((Integer) entry.getKey()));
                        }
                        this.mEventContext.audio_sample_interval.add(Integer.valueOf((int) j10));
                        this.mEventContext.audio_speed_set.add(Float.valueOf(f11));
                        this.mEventContext.audio_predict_speed_set.add(Float.valueOf(f13));
                        this.mEventContext.audio_predict_speed_load_type_set.add(valueOf);
                        addExtraMapInfoForTrackType(map2, 1);
                    }
                }
            }
            EventContext eventContext = this.mEventContext;
            eventContext.video_sample_count++;
            eventContext.audio_sample_count++;
            TTVideoEngineLog.d(TAG, "brian video count:" + this.mEventContext.video_sample_count + ",audio count:" + this.mEventContext.audio_sample_count);
            EventContext eventContext2 = this.mEventContext;
            int i10 = eventContext2.video_sample_count;
            int i11 = this.mMaxWindowSize;
            if (i10 >= i11 || eventContext2.audio_sample_count >= i11) {
                if (eventContext2.index == 0) {
                    _sendEvent(0);
                } else {
                    _popHead();
                }
            }
        }
    }
}
