package com.ss.ttvideoengine.log;

import androidx.annotation.NonNull;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes6.dex */
public class VegaCollector {
    private Map<String, Object> mParamMap = new HashMap();

    @NonNull
    public Map<String, Object> get() {
        return this.mParamMap;
    }

    public void reset() {
        if (!this.mParamMap.isEmpty()) {
            this.mParamMap = new HashMap();
        }
    }

    public void retrieveEventParam(@NonNull VideoEventBase videoEventBase, @NonNull VideoEventOnePlay videoEventOnePlay) {
        HashMap hashMap = new HashMap();
        LoggerUtils.putToMap(hashMap, "setds_t", videoEventOnePlay.setds_t);
        LoggerUtils.putToMap(hashMap, "surface_set_time", videoEventOnePlay.surfaceSetTime);
        LoggerUtils.putToMap(hashMap, IVideoEventLogger.LOG_CALLBACK_PLAY_START_TIME, videoEventOnePlay.ps_t);
        LoggerUtils.putToMap(hashMap, "pt", videoEventOnePlay.f37081pt);
        LoggerUtils.putToMap(hashMap, "at", videoEventOnePlay.f37073at);
        LoggerUtils.putToMap(hashMap, "prepare_start_time", videoEventOnePlay.prepare_start_time);
        LoggerUtils.putToMap(hashMap, "formater_create_t", videoEventOnePlay.formater_create_t);
        LoggerUtils.putToMap(hashMap, "demuxer_begin_t", videoEventOnePlay.demuxer_begin_t);
        LoggerUtils.putToMap(hashMap, "tran_ct", videoEventOnePlay.tranConnectT);
        LoggerUtils.putToMap(hashMap, "a_tran_ct", videoEventOnePlay.audioTranConnectT);
        LoggerUtils.putToMap(hashMap, "tran_ft", videoEventOnePlay.tranFirstPacketT);
        LoggerUtils.putToMap(hashMap, "a_tran_ft", videoEventOnePlay.audioTranFirstPacketT);
        LoggerUtils.putToMap(hashMap, "avformat_open_t", videoEventOnePlay.avformat_open_t);
        LoggerUtils.putToMap(hashMap, "demuxer_create_t", videoEventOnePlay.demuxer_create_t);
        LoggerUtils.putToMap(hashMap, "dec_create_t", videoEventOnePlay.dec_create_t);
        LoggerUtils.putToMap(hashMap, "outlet_create_t", videoEventOnePlay.outlet_create_t);
        LoggerUtils.putToMap(hashMap, "prepare_end_time", videoEventOnePlay.prepare_end_time);
        LoggerUtils.putToMap(hashMap, "dns_start_t", videoEventOnePlay.dns_start_t);
        LoggerUtils.putToMap(hashMap, "a_dns_start_t", videoEventOnePlay.a_dns_start_t);
        LoggerUtils.putToMap(hashMap, "dns_end_t", videoEventOnePlay.dns_end_t);
        LoggerUtils.putToMap(hashMap, "a_dns_t", videoEventOnePlay.audioDnsT);
        LoggerUtils.putToMap(hashMap, "v_dec_start_t", videoEventOnePlay.v_dec_start_t);
        LoggerUtils.putToMap(hashMap, "a_dec_start_t", videoEventOnePlay.a_dec_start_t);
        LoggerUtils.putToMap(hashMap, "v_dec_opened_t", videoEventOnePlay.v_dec_opened_t);
        LoggerUtils.putToMap(hashMap, "a_dec_opened_t", videoEventOnePlay.a_dec_opened_t);
        LoggerUtils.putToMap(hashMap, "video_device_start_t", videoEventOnePlay.videoDeviceStartTime);
        LoggerUtils.putToMap(hashMap, "video_device_opened_t", videoEventOnePlay.videoDeviceOpenedTime);
        LoggerUtils.putToMap(hashMap, "audio_device_start_t", videoEventOnePlay.audioDeviceStartTime);
        LoggerUtils.putToMap(hashMap, "audio_device_opened_t", videoEventOnePlay.audioDeviceOpenedTime);
        LoggerUtils.putToMap(hashMap, "re_f_videoframet", videoEventOnePlay.receiveFirstVideoFrameT);
        LoggerUtils.putToMap(hashMap, "re_f_audioframet", videoEventOnePlay.receiveFirstAudioFrameT);
        LoggerUtils.putToMap(hashMap, "de_f_videoframet", videoEventOnePlay.decodeFirstVideoFrameT);
        LoggerUtils.putToMap(hashMap, "de_f_audioframet", videoEventOnePlay.decodeFirstAudioFrameT);
        LoggerUtils.putToMap(hashMap, "v_render_f_t", videoEventOnePlay.v_render_f_t);
        LoggerUtils.putToMap(hashMap, "a_render_f_t", videoEventOnePlay.a_render_f_t);
        this.mParamMap.put("req_phase", Integer.valueOf(videoEventOnePlay.leave_reason));
        this.mParamMap.put("req_phase_cost", hashMap);
        this.mParamMap.put("hw", Integer.valueOf(videoEventBase.mVideoHW));
        this.mParamMap.put(ITTVideoEngineEventSource.KEY_HW_USER, Integer.valueOf(videoEventBase.mVideoHWUser));
    }
}
