package com.ss.ttvideoengine;

import android.content.Context;
import android.net.Uri;
import android.view.Surface;
import android.view.SurfaceHolder;
import androidx.annotation.Nullable;
import com.ss.ttm.player.ABRStrategy;
import com.ss.ttm.player.AudioProcessor;
import com.ss.ttm.player.FrameMetadataListener;
import com.ss.ttm.player.IMediaDataSource;
import com.ss.ttm.player.LoadControl;
import com.ss.ttm.player.MaskInfo;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttm.player.MediaPlayerClient;
import com.ss.ttm.player.MediaTransport;
import com.ss.ttm.player.OSPlayerClient;
import com.ss.ttm.player.PlaybackParams;
import com.ss.ttm.player.SubInfo;
import com.ss.ttm.player.TraitObject;
import com.ss.ttvideoengine.utils.TTHelper;
import com.ss.ttvideoengine.utils.TTVideoEngineInternalLog;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes6.dex */
public class MediaPlayerWrapper implements MediaPlayer {
    private static final String EXO_PLAYER_CLIENT_CLASS_NAME = "com.ss.ttexo.ExoPlayerClient";
    private static final String OWN_LITE_PLAYER_CLASS_NAME = "com.ss.ttmplayer.player.TTPlayerClient";
    private static final String OWN_PLAYER_CLASS_NAME = "com.ss.ttm.player.TTPlayerClient";
    private static final String OWN_PLUGIN_PLAYER_CLASS_NAME = "com.ss.ttmplugin.player.TTPlayerClient";
    private static final String OWN_PLUGIN_PLAYER_VERSION_CLASS_NAME = "com.ss.ttmplugin.player.TTVersion";
    public static final String TAG = "MediaPlayerWrapper";
    private static final List<Throwable> sErrorList = new ArrayList();
    private static boolean sHasLoadPlayerClass = false;
    private MediaPlayerClient mClient;
    private boolean mHasException = false;
    private String mExceptionStr = "";

    /* JADX WARN: Removed duplicated region for block: B:104:0x032d A[Catch: all -> 0x002b, TryCatch #2 {all -> 0x002b, blocks: (B:6:0x0013, B:8:0x0023, B:84:0x02c2, B:86:0x02c6, B:87:0x02e0, B:90:0x02e6, B:92:0x02f6, B:94:0x0306, B:96:0x0316, B:97:0x031c, B:99:0x0320, B:101:0x0326, B:102:0x0329, B:104:0x032d, B:106:0x033d, B:107:0x0343, B:15:0x0036, B:17:0x0048, B:19:0x0058, B:21:0x0068, B:23:0x0078, B:25:0x0088, B:42:0x00e4, B:44:0x00ea, B:50:0x012d, B:64:0x01d1, B:76:0x026f, B:26:0x0094, B:28:0x00a4, B:29:0x00ad, B:31:0x00b3, B:33:0x00b9, B:35:0x00bf, B:37:0x00c5, B:39:0x00cb, B:41:0x00db, B:46:0x00f0, B:80:0x0276, B:66:0x01d5, B:54:0x0135), top: B:116:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ea A[Catch: all -> 0x002b, TRY_LEAVE, TryCatch #2 {all -> 0x002b, blocks: (B:6:0x0013, B:8:0x0023, B:84:0x02c2, B:86:0x02c6, B:87:0x02e0, B:90:0x02e6, B:92:0x02f6, B:94:0x0306, B:96:0x0316, B:97:0x031c, B:99:0x0320, B:101:0x0326, B:102:0x0329, B:104:0x032d, B:106:0x033d, B:107:0x0343, B:15:0x0036, B:17:0x0048, B:19:0x0058, B:21:0x0068, B:23:0x0078, B:25:0x0088, B:42:0x00e4, B:44:0x00ea, B:50:0x012d, B:64:0x01d1, B:76:0x026f, B:26:0x0094, B:28:0x00a4, B:29:0x00ad, B:31:0x00b3, B:33:0x00b9, B:35:0x00bf, B:37:0x00c5, B:39:0x00cb, B:41:0x00db, B:46:0x00f0, B:80:0x0276, B:66:0x01d5, B:54:0x0135), top: B:116:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x02c6 A[Catch: all -> 0x002b, TryCatch #2 {all -> 0x002b, blocks: (B:6:0x0013, B:8:0x0023, B:84:0x02c2, B:86:0x02c6, B:87:0x02e0, B:90:0x02e6, B:92:0x02f6, B:94:0x0306, B:96:0x0316, B:97:0x031c, B:99:0x0320, B:101:0x0326, B:102:0x0329, B:104:0x032d, B:106:0x033d, B:107:0x0343, B:15:0x0036, B:17:0x0048, B:19:0x0058, B:21:0x0068, B:23:0x0078, B:25:0x0088, B:42:0x00e4, B:44:0x00ea, B:50:0x012d, B:64:0x01d1, B:76:0x026f, B:26:0x0094, B:28:0x00a4, B:29:0x00ad, B:31:0x00b3, B:33:0x00b9, B:35:0x00bf, B:37:0x00c5, B:39:0x00cb, B:41:0x00db, B:46:0x00f0, B:80:0x0276, B:66:0x01d5, B:54:0x0135), top: B:116:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x02e4 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0320 A[Catch: all -> 0x002b, TryCatch #2 {all -> 0x002b, blocks: (B:6:0x0013, B:8:0x0023, B:84:0x02c2, B:86:0x02c6, B:87:0x02e0, B:90:0x02e6, B:92:0x02f6, B:94:0x0306, B:96:0x0316, B:97:0x031c, B:99:0x0320, B:101:0x0326, B:102:0x0329, B:104:0x032d, B:106:0x033d, B:107:0x0343, B:15:0x0036, B:17:0x0048, B:19:0x0058, B:21:0x0068, B:23:0x0078, B:25:0x0088, B:42:0x00e4, B:44:0x00ea, B:50:0x012d, B:64:0x01d1, B:76:0x026f, B:26:0x0094, B:28:0x00a4, B:29:0x00ad, B:31:0x00b3, B:33:0x00b9, B:35:0x00bf, B:37:0x00c5, B:39:0x00cb, B:41:0x00db, B:46:0x00f0, B:80:0x0276, B:66:0x01d5, B:54:0x0135), top: B:116:0x0013 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.ss.ttm.player.MediaPlayer create(android.content.Context r12, int r13, java.util.HashMap<java.lang.Integer, java.lang.Integer> r14) {
        /*
            Method dump skipped, instructions count: 857
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.MediaPlayerWrapper.create(android.content.Context, int, java.util.HashMap):com.ss.ttm.player.MediaPlayer");
    }

    private static boolean createExoClient(Context context, MediaPlayerWrapper mediaPlayerWrapper) {
        if (!FeatureManager.hasPermission("lite")) {
            return false;
        }
        try {
            Class<?> cls = Class.forName(EXO_PLAYER_CLIENT_CLASS_NAME);
            Method declaredMethod = cls.getDeclaredMethod("create", MediaPlayer.class, Context.class);
            declaredMethod.setAccessible(true);
            mediaPlayerWrapper.mClient = (MediaPlayerClient) declaredMethod.invoke(cls, mediaPlayerWrapper, context);
            return true;
        } catch (Throwable th2) {
            TTVideoEngineInternalLog.e(TAG, th2.toString());
            mediaPlayerWrapper.mHasException = true;
            mediaPlayerWrapper.mExceptionStr += th2.toString();
            sErrorList.add(th2);
            return false;
        }
    }

    public static long getDemuxerFactory(int i10) {
        try {
            Class<?> clzUsingPluginLoader = TTHelper.getClzUsingPluginLoader(200, OWN_PLAYER_CLASS_NAME);
            Method declaredMethod = clzUsingPluginLoader.getDeclaredMethod("getDemuxerFactory", Integer.TYPE);
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke(clzUsingPluginLoader, Integer.valueOf(i10));
            if (invoke == null) {
                return 0L;
            }
            return ((Long) invoke).longValue();
        } catch (Throwable th2) {
            th2.printStackTrace();
            return 0L;
        }
    }

    public static String getPluginVersion() {
        try {
            return TTHelper.getClzUsingPluginLoader(201, OWN_PLUGIN_PLAYER_VERSION_CLASS_NAME).getField("VERSION_NAME").get(null).toString();
        } catch (Throwable th2) {
            TTVideoEngineInternalLog.d(th2);
            return "";
        }
    }

    public static void setGlobalIntOptionForKey(int i10, int i11) {
        try {
            Class<?> clzUsingPluginLoader = TTHelper.getClzUsingPluginLoader(200, OWN_PLAYER_CLASS_NAME);
            Class cls = Integer.TYPE;
            Method declaredMethod = clzUsingPluginLoader.getDeclaredMethod("setGlobalIntOptionForKey", cls, cls);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(clzUsingPluginLoader, Integer.valueOf(i10), Integer.valueOf(i11));
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    private static boolean shouldFallbackExoPlayer(HashMap<Integer, Integer> hashMap) {
        boolean isFallbackUseExoPlayer = TTVideoEngine.isFallbackUseExoPlayer();
        if (hashMap != null && hashMap.containsKey(27)) {
            try {
                if (((Integer) TTHelper.nonNullElse(hashMap.get(27), 0)).intValue() != 1) {
                    return false;
                }
                return true;
            } catch (Exception e10) {
                e10.printStackTrace();
                return false;
            }
        }
        return isFallbackUseExoPlayer;
    }

    public static boolean tryLoadPlayerPlugin() {
        if (sHasLoadPlayerClass) {
            return true;
        }
        try {
            TTHelper.getClzUsingPluginLoader(200, OWN_PLAYER_CLASS_NAME);
            sHasLoadPlayerClass = true;
            return true;
        } catch (Throwable th2) {
            TTVideoEngineInternalLog.d(th2);
            return false;
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void deselectTrack(int i10) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.deselectTrack(i10);
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public int getCurrentPosition() {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            return mediaPlayerClient.getCurrentPosition();
        }
        return 0;
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public String getDataSource() {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            return mediaPlayerClient.getDataSource();
        }
        return null;
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public int getDuration() {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            return mediaPlayerClient.getDuration();
        }
        return 0;
    }

    public String getExceptionStr() {
        return this.mExceptionStr;
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public float getFloatOption(int i10, float f10) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            return mediaPlayerClient.getFloatOption(i10, f10);
        }
        return f10;
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public int getIntOption(int i10, int i11) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            return mediaPlayerClient.getIntOption(i10, i11);
        }
        return i11;
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public long getLongOption(int i10, long j10) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            return mediaPlayerClient.getLongOption(i10, j10);
        }
        return j10;
    }

    public Object getObjectOption(int i10) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient == null) {
            return null;
        }
        return mediaPlayerClient.getObjectOption(i10);
    }

    public MediaPlayerClient getPlayerClient() {
        return this.mClient;
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public int getPlayerType() {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            return mediaPlayerClient.getType();
        }
        return 0;
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public int getSelectedTrack(int i10) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.getSelectedTrack(i10);
            return 0;
        }
        return 0;
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public String getStringOption(int i10) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            return mediaPlayerClient.getStringOption(i10);
        }
        return null;
    }

    @Nullable
    public String getSubtitleContent(int i10) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient == null) {
            return null;
        }
        return mediaPlayerClient.getSubtitleContent(i10);
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public MediaPlayer.TrackInfo[] getTrackInfo() {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            return mediaPlayerClient.getTrackInfo();
        }
        return null;
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public int getVideoHeight() {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            return mediaPlayerClient.getVideoHeight();
        }
        return 0;
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public int getVideoType() {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            return mediaPlayerClient.getVideoType();
        }
        return 0;
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public int getVideoWidth() {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            return mediaPlayerClient.getVideoWidth();
        }
        return 0;
    }

    public boolean hasException() {
        return this.mHasException;
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public boolean isLooping() {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            return mediaPlayerClient.isLooping();
        }
        return false;
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public boolean isMute() {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            return mediaPlayerClient.isMute();
        }
        return false;
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public boolean isOSPlayer() {
        return this.mClient instanceof OSPlayerClient;
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public boolean isPlaying() {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            return mediaPlayerClient.isPlaying();
        }
        return false;
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void mouseEvent(int i10, int i11, int i12) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.mouseEvent(i10, i11, i12);
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void pause() {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.pause();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void prepare() {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.prepare();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void prepareAsync() {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.prepareAsync();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void prevClose() {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.prevClose();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void release() {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.release();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void releaseAsync() {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.releaseAsync();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void reset() {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.reset();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void rotateCamera(float f10, float f11) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.rotateCamera(f10, f11);
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void seekTo(int i10) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.seekTo(i10);
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void selectTrack(int i10) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.selectTrack(i10);
        }
    }

    public void setABRStrategy(ABRStrategy aBRStrategy) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient == null) {
            return;
        }
        mediaPlayerClient.setABRStrategy(aBRStrategy);
    }

    public void setAIBarrageInfo(MaskInfo maskInfo) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient == null) {
            return;
        }
        mediaPlayerClient.setAIBarrageInfo(maskInfo);
    }

    public void setAudioProcessor(AudioProcessor audioProcessor) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient == null) {
            return;
        }
        mediaPlayerClient.setAudioProcessor(audioProcessor);
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setCacheFile(String str, int i10) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setCacheFile(str, i10);
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setDataSource(Context context, Uri uri, Map<String, String> map) throws IllegalArgumentException, SecurityException, IllegalStateException, IOException {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setDataSource(context, uri, map);
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setDisplay(SurfaceHolder surfaceHolder) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setDisplay(surfaceHolder);
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public int setFloatOption(int i10, float f10) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setFloatOption(i10, f10);
            return 0;
        }
        return 0;
    }

    public void setFrameMetadataListener(FrameMetadataListener frameMetadataListener) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setFrameMetadataListener(frameMetadataListener);
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setIntOption(int i10, int i11) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setIntOption(i10, i11);
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setIsMute(boolean z10) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setIsMute(z10);
        }
    }

    public void setLoadControl(LoadControl loadControl) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient == null) {
            return;
        }
        mediaPlayerClient.setLoadControl(loadControl);
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public long setLongOption(int i10, long j10) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            return mediaPlayerClient.setLongOption(i10, j10);
        }
        return -1L;
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setLooping(boolean z10) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setLooping(z10);
        }
    }

    public void setMaskInfo(MaskInfo maskInfo) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient == null) {
            return;
        }
        mediaPlayerClient.setMaskInfo(maskInfo);
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setMediaTransport(MediaTransport mediaTransport) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient == null) {
            return;
        }
        mediaPlayerClient.setMediaTransport(mediaTransport);
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setOnBufferingUpdateListener(MediaPlayer.OnBufferingUpdateListener onBufferingUpdateListener) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setOnBufferingUpdateListener(onBufferingUpdateListener);
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setOnCompletionListener(MediaPlayer.OnCompletionListener onCompletionListener) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setOnCompletionListener(onCompletionListener);
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setOnErrorListener(MediaPlayer.OnErrorListener onErrorListener) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setOnErrorListener(onErrorListener);
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setOnExternInfoListener(MediaPlayer.OnExternInfoListener onExternInfoListener) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setOnExternInfoListener(onExternInfoListener);
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setOnInfoListener(MediaPlayer.OnInfoListener onInfoListener) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setOnInfoListener(onInfoListener);
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setOnLogListener(MediaPlayer.OnLogListener onLogListener) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setOnLogListener(onLogListener);
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setOnPreparedListener(MediaPlayer.OnPreparedListener onPreparedListener) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setOnPreparedListener(onPreparedListener);
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setOnSARChangedListener(MediaPlayer.onSARChangedListener onsarchangedlistener) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setOnSARChangedListener(onsarchangedlistener);
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setOnSeekCompleteListener(MediaPlayer.OnSeekCompleteListener onSeekCompleteListener) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setOnSeekCompleteListener(onSeekCompleteListener);
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setOnVideoSizeChangedListener(MediaPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setOnVideoSizeChangedListener(onVideoSizeChangedListener);
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setPanoVideoControlModel(int i10) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setPanoVideoControlModel(i10);
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setPlaybackParams(PlaybackParams playbackParams) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setPlaybackParams(playbackParams);
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setScreenOnWhilePlaying(boolean z10) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setScreenOnWhilePlaying(z10);
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setStringOption(int i10, String str) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setStringOption(i10, str);
        }
    }

    public void setSubInfo(SubInfo subInfo) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient == null) {
            return;
        }
        mediaPlayerClient.setSubInfo(subInfo);
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setSurface(Surface surface) {
        MediaPlayerClient mediaPlayerClient;
        if ((surface != null && !surface.isValid()) || (mediaPlayerClient = this.mClient) == null) {
            return;
        }
        mediaPlayerClient.setSurface(surface);
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setSurfaceTimeOut(Surface surface, int i10) {
        MediaPlayerClient mediaPlayerClient;
        if ((surface != null && !surface.isValid()) || (mediaPlayerClient = this.mClient) == null) {
            return;
        }
        mediaPlayerClient.setSurfaceTimeOut(surface, i10);
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setTraitObject(int i10, TraitObject traitObject) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setTraitObject(i10, traitObject);
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setVolume(float f10, float f11) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setVolume(f10, f11);
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setWakeMode(Context context, int i10) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setWakeMode(context, i10);
        }
    }

    public void setupMediaCodec() {
        if (this.mClient == null) {
            return;
        }
        try {
            Method method = TTHelper.getClzUsingPluginLoader(200, OWN_PLAYER_CLASS_NAME).getMethod("setupMediaCodec", new Class[0]);
            method.setAccessible(true);
            method.invoke(this.mClient, new Object[0]);
        } catch (Throwable th2) {
            TTVideoEngineInternalLog.d(th2);
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void start() {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.start();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void stop() {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.stop();
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void switchStream(int i10, int i11) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.switchStream(i10, i11);
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void takeScreenshot(MediaPlayer.OnScreenshotListener onScreenshotListener) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.takeScreenshot(onScreenshotListener);
        }
    }

    public void seekTo(int i10, int i11) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient == null) {
            return;
        }
        mediaPlayerClient.seekTo(i10, i11);
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setDataSource(String str) throws IllegalArgumentException, SecurityException, IllegalStateException, IOException {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setDataSource(str);
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setDataSource(Context context, Uri uri) throws IllegalArgumentException, SecurityException, IllegalStateException, IOException {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setDataSource(context, uri);
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setDataSource(FileDescriptor fileDescriptor, long j10, long j11) throws IllegalStateException, IllegalArgumentException, IOException {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setDataSource(fileDescriptor, j10, j11);
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setDataSource(IMediaDataSource iMediaDataSource) throws IllegalArgumentException, IOException {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setDataSource(iMediaDataSource);
        }
    }
}
