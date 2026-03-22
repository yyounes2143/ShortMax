package com.ss.ttvideoengine;

import android.text.TextUtils;
import com.bytedance.vcloud.networkpredictor.ISpeedPredictor;
import com.bytedance.vcloud.networkpredictor.SpeedPredictorRecordOld;
import com.bytedance.vcloud.networkpredictor.SpeedPredictorResultCollection;
import com.ss.ttvideoengine.model.IVideoModel;
import com.ss.ttvideoengine.model.VideoInfo;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.lang.ref.WeakReference;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class TTTestSpeedListener implements TestSpeedListener {
    private static final String TAG = "TTVideoEngine";
    private static final int TYPE_AUDIO = 1;
    private static final int TYPE_VIDEO = 0;
    private WeakReference<TTVideoEngine> engineWeakReference;
    private ISpeedPredictor mAbrPredictor;
    private ISpeedPredictor mPredictor;
    public float mAverageDownloadSpeed = 0.0f;
    public float mAveragePredictSpeed = 0.0f;
    public int mSpeedAverageCount = 0;
    private long lastSampleTimestamp = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TTTestSpeedListener(TTVideoEngine tTVideoEngine, ISpeedPredictor iSpeedPredictor, ISpeedPredictor iSpeedPredictor2) {
        this.engineWeakReference = new WeakReference<>(tTVideoEngine);
        this.mPredictor = iSpeedPredictor;
        this.mAbrPredictor = iSpeedPredictor2;
    }

    private Map<String, Integer> _getCurrentPlaybackStreamId() {
        IVideoModel iVideoModel;
        List<VideoInfo> videoInfoList;
        TTVideoEngine tTVideoEngine = this.engineWeakReference.get();
        if (tTVideoEngine == null || (iVideoModel = tTVideoEngine.getIVideoModel()) == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        if (iVideoModel.hasData() && (videoInfoList = iVideoModel.getVideoInfoList()) != null && videoInfoList.size() > 0) {
            for (VideoInfo videoInfo : videoInfoList) {
                hashMap.put(videoInfo.getValueStr(15), Integer.valueOf(videoInfo.getMediatype()));
            }
        }
        return hashMap;
    }

    private float _getDownSpeed(Map<String, String> map, StringBuffer stringBuffer, Map<String, String> map2) {
        float f10;
        if (map != null && map.size() > 1 && map.get("download_speed") != null) {
            try {
                f10 = Float.parseFloat(map.get("download_speed"));
            } catch (NumberFormatException e10) {
                TTVideoEngineLog.e(TAG, String.format(Locale.US, "[SPEEDPREDICT] exception %s", e10.toString()));
                f10 = 0.0f;
            }
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key != null && !key.equals("stream_id") && !key.equals("download_speed")) {
                    map2.put(entry.getKey(), entry.getValue());
                }
            }
            String str = map.get("stream_id");
            if (str != null && !str.equals("-1")) {
                stringBuffer.delete(0, stringBuffer.capacity()).append(map.get("stream_id"));
                return f10;
            }
        }
        return 0.0f;
    }

    private long _getIntInfoFromtcpInfoJson(String str, String str2) {
        if (str != null && str.length() > 0) {
            try {
                try {
                    return Long.parseLong(new JSONObject(str).optJSONObject("tcpInfo").optString(str2));
                } catch (NumberFormatException unused) {
                    return 0L;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                return 0L;
            }
        }
        return -1L;
    }

    private String _getProtocolFromJson(String str) {
        if (str != null && str.length() > 0) {
            try {
                return new JSONObject(str).optString("protocol");
            } catch (Exception e10) {
                e10.printStackTrace();
                return "";
            }
        }
        return "unknown";
    }

    private long _getTcpInfoRtt(String str) {
        if (str != null && str.length() > 0) {
            try {
                try {
                    return Long.parseLong(new JSONObject(str).optJSONObject("tcpInfo").optString("tcpRtt"));
                } catch (NumberFormatException unused) {
                    return 0L;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                return 0L;
            }
        }
        return -1L;
    }

    private void _streamInfoMapAppendOtherInfo(Map<String, Integer> map) {
        TTVideoEngine tTVideoEngine = this.engineWeakReference.get();
        if (tTVideoEngine != null && map != null) {
            long longOption = tTVideoEngine.getLongOption(62);
            long longOption2 = tTVideoEngine.getLongOption(61);
            map.put("playerVideoBufLen", Integer.valueOf((int) longOption));
            map.put("playerAudioBufLen", Integer.valueOf((int) longOption2));
            map.put("playerVideoMaxBufLen", Integer.valueOf(tTVideoEngine.getIntOption(0) * 1000));
            map.put("playerAudioMaxBufLen", Integer.valueOf(tTVideoEngine.getIntOption(0) * 1000));
        }
    }

    @Override // com.ss.ttvideoengine.TestSpeedListener
    public void onNotify(int i10, long j10, long j11, String str, String str2, String str3) {
        int i11;
        int i12;
        Locale locale = Locale.US;
        TTVideoEngineLog.d(TAG, String.format(locale, "speed notify, what:%d, code:%d, para:%d, inf:%s, extraInfoJsonStr:%s", Integer.valueOf(i10), Long.valueOf(j10), Long.valueOf(j11), str, str3));
        TTVideoEngine tTVideoEngine = this.engineWeakReference.get();
        if (tTVideoEngine == null) {
            return;
        }
        if (i10 == 2) {
            tTVideoEngine.getLogger().updateGlobalNetworkSpeed(j10, j11, -1);
        }
        ISpeedPredictor iSpeedPredictor = this.mAbrPredictor;
        if (iSpeedPredictor != null && i10 == 2) {
            SpeedPredictorRecordOld speedPredictorRecordOld = new SpeedPredictorRecordOld();
            speedPredictorRecordOld.setSteamId(str);
            speedPredictorRecordOld.setBytes(j10);
            speedPredictorRecordOld.setTime(j11);
            long _getTcpInfoRtt = _getTcpInfoRtt(str3);
            long _getIntInfoFromtcpInfoJson = _getIntInfoFromtcpInfoJson(str3, "tcpLastRecvDate");
            speedPredictorRecordOld.setTcpInfoRtt(_getTcpInfoRtt);
            speedPredictorRecordOld.setLastRecvDate(_getIntInfoFromtcpInfoJson);
            speedPredictorRecordOld.setProtocol(_getProtocolFromJson(str3));
            speedPredictorRecordOld.setTrackType(((TextUtils.isEmpty(str2) || !str2.equals("audio")) ? 1 : 0) ^ 1);
            speedPredictorRecordOld.setTimestamp(System.currentTimeMillis());
            if (speedPredictorRecordOld.getTime() != 0) {
                TTVideoEngineLog.d(TAG, String.format(locale, "[ABR]: speedRecord:%s", new DecimalFormat("#.000000000").format(speedPredictorRecordOld.getBytes() / speedPredictorRecordOld.getTime())));
            }
            Map<String, Integer> _getCurrentPlaybackStreamId = _getCurrentPlaybackStreamId();
            _streamInfoMapAppendOtherInfo(_getCurrentPlaybackStreamId);
            iSpeedPredictor.update(speedPredictorRecordOld, _getCurrentPlaybackStreamId);
            this.mSpeedAverageCount++;
            Map<String, String> downloadSpeed = iSpeedPredictor.getDownloadSpeed(0);
            float predictSpeed = iSpeedPredictor.getPredictSpeed(0);
            Map<String, String> downloadSpeed2 = iSpeedPredictor.getDownloadSpeed(1);
            float predictSpeed2 = iSpeedPredictor.getPredictSpeed(1);
            StringBuffer stringBuffer = new StringBuffer(" ");
            StringBuffer stringBuffer2 = new StringBuffer(" ");
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            float _getDownSpeed = _getDownSpeed(downloadSpeed, stringBuffer, hashMap);
            float _getDownSpeed2 = _getDownSpeed(downloadSpeed2, stringBuffer2, hashMap2);
            long currentTimeMillis = System.currentTimeMillis();
            long j12 = this.lastSampleTimestamp;
            long j13 = currentTimeMillis - j12;
            if (j12 == 0) {
                j13 = 0;
            }
            this.lastSampleTimestamp = currentTimeMillis;
            if (_getDownSpeed > 0.0f && (i12 = this.mSpeedAverageCount) > 0) {
                float f10 = this.mAverageDownloadSpeed;
                this.mAverageDownloadSpeed = f10 + ((_getDownSpeed - f10) / i12);
            }
            if (predictSpeed > 0.0f && (i11 = this.mSpeedAverageCount) > 0) {
                float f11 = this.mAveragePredictSpeed;
                this.mAveragePredictSpeed = f11 + ((predictSpeed - f11) / i11);
            }
            tTVideoEngine.getLogger().updateNetworkSpeedPredictorSampleValue(stringBuffer.toString(), stringBuffer2.toString(), _getDownSpeed, _getDownSpeed2, predictSpeed, predictSpeed2, j13, hashMap, hashMap2);
            tTVideoEngine.getLogger().setIsMultiDimensionsInput(1);
            tTVideoEngine.getLogger().setIsMultiDimensionsOut(0);
        }
    }

    @Override // com.ss.ttvideoengine.TestSpeedListener
    public void onNotifyGlobalSpeed(long j10, long j11, int i10) {
        TTVideoEngine tTVideoEngine = this.engineWeakReference.get();
        if (tTVideoEngine != null) {
            tTVideoEngine.getLogger().updateGlobalNetworkSpeed(j10, j11, i10);
        }
    }

    @Override // com.ss.ttvideoengine.TestSpeedListener
    public void onNotify(int i10, String str) {
        int i11;
        int i12;
        Locale locale = Locale.US;
        TTVideoEngineLog.d(TAG, String.format(locale, "speed notify, what:%d, info:%s", Integer.valueOf(i10), str));
        TTVideoEngine tTVideoEngine = this.engineWeakReference.get();
        if (tTVideoEngine == null) {
            return;
        }
        if (i10 == 2) {
            tTVideoEngine.getLogger().updateMultiNetworkSpeed(str);
        }
        ISpeedPredictor iSpeedPredictor = this.mAbrPredictor;
        if (iSpeedPredictor != null && TTVideoEngine.getSpeedPredictorInputType() == 2 && i10 == 2) {
            Map<String, Integer> _getCurrentPlaybackStreamId = _getCurrentPlaybackStreamId();
            _streamInfoMapAppendOtherInfo(_getCurrentPlaybackStreamId);
            iSpeedPredictor.update(str, _getCurrentPlaybackStreamId);
            if (str != null) {
                TTVideoEngineLog.d(TAG, String.format(locale, "[ABR]: speedRecordsJson:%s", str));
            }
            this.mSpeedAverageCount++;
            Map<String, String> downloadSpeed = iSpeedPredictor.getDownloadSpeed(0);
            float predictSpeed = iSpeedPredictor.getPredictSpeed(0);
            Map<String, String> downloadSpeed2 = iSpeedPredictor.getDownloadSpeed(1);
            float predictSpeed2 = iSpeedPredictor.getPredictSpeed(1);
            StringBuffer stringBuffer = new StringBuffer(" ");
            StringBuffer stringBuffer2 = new StringBuffer(" ");
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            float _getDownSpeed = _getDownSpeed(downloadSpeed, stringBuffer, hashMap);
            float _getDownSpeed2 = _getDownSpeed(downloadSpeed2, stringBuffer2, hashMap2);
            if (_getDownSpeed > 0.0f && (i12 = this.mSpeedAverageCount) > 0) {
                float f10 = this.mAverageDownloadSpeed;
                this.mAverageDownloadSpeed = f10 + ((_getDownSpeed - f10) / i12);
            }
            if (predictSpeed > 0.0f && (i11 = this.mSpeedAverageCount) > 0) {
                float f11 = this.mAveragePredictSpeed;
                this.mAveragePredictSpeed = f11 + ((predictSpeed - f11) / i11);
            }
            SpeedPredictorResultCollection multidimensionalDownloadSpeedsObj = iSpeedPredictor.getMultidimensionalDownloadSpeedsObj();
            SpeedPredictorResultCollection multidimensionalPredictSpeedsObj = iSpeedPredictor.getMultidimensionalPredictSpeedsObj();
            long currentTimeMillis = System.currentTimeMillis();
            long j10 = this.lastSampleTimestamp;
            long j11 = j10 == 0 ? 0L : currentTimeMillis - j10;
            this.lastSampleTimestamp = currentTimeMillis;
            if (tTVideoEngine.getIntOption(525) == 0) {
                TTVideoEngineLog.d(TAG, String.format(locale, "[SPEEDPREDICT] use sing predictor data outing", new Object[0]));
                tTVideoEngine.getLogger().updateNetworkSpeedPredictorSampleValue(stringBuffer.toString(), stringBuffer2.toString(), _getDownSpeed, _getDownSpeed2, predictSpeed, predictSpeed2, j11, hashMap, hashMap2);
                tTVideoEngine.getLogger().setIsMultiDimensionsOut(0);
            } else if (tTVideoEngine.getIntOption(525) == 1) {
                TTVideoEngineLog.d(TAG, String.format(locale, "[SPEEDPREDICT] use multi data outing", new Object[0]));
                if (multidimensionalPredictSpeedsObj != null && multidimensionalPredictSpeedsObj.getResultCollection() != null && !multidimensionalPredictSpeedsObj.getResultCollection().isEmpty()) {
                    tTVideoEngine.getLogger().updateNetworkSpeedPredictorSampleMutiValue(multidimensionalDownloadSpeedsObj, multidimensionalPredictSpeedsObj, j11);
                }
                tTVideoEngine.getLogger().setIsMultiDimensionsOut(1);
            }
            tTVideoEngine.getLogger().setIsMultiDimensionsInput(2);
        }
    }
}
