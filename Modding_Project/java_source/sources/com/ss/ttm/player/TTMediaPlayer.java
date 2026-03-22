package com.ss.ttm.player;

import android.content.Context;
import android.media.ImageReader;
import android.net.Uri;
import android.os.Handler;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.ss.ttm.player.MediaPlayer;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.Map;
/* loaded from: classes6.dex */
public class TTMediaPlayer implements MediaPlayer {
    protected MediaPlayerClient mClient;
    protected int mPlayerType = 0;

    static {
        TTVersion.saveVersionInfo();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00bd A[Catch: all -> 0x0097, TryCatch #1 {, blocks: (B:4:0x0003, B:6:0x0013, B:25:0x00bd, B:27:0x00c3, B:28:0x00cb, B:32:0x00d3, B:36:0x00dd, B:11:0x009a, B:13:0x00a0, B:18:0x00a9), top: B:41:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00db A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00dd A[Catch: all -> 0x0097, TRY_ENTER, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x0003, B:6:0x0013, B:25:0x00bd, B:27:0x00c3, B:28:0x00cb, B:32:0x00d3, B:36:0x00dd, B:11:0x009a, B:13:0x00a0, B:18:0x00a9), top: B:41:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final synchronized com.ss.ttm.player.TTMediaPlayer create(android.content.Context r10) {
        /*
            java.lang.Class<com.ss.ttm.player.TTMediaPlayer> r0 = com.ss.ttm.player.TTMediaPlayer.class
            monitor-enter(r0)
            com.ss.ttm.player.TTMediaPlayer r1 = new com.ss.ttm.player.TTMediaPlayer     // Catch: java.lang.Throwable -> L97
            r1.<init>()     // Catch: java.lang.Throwable -> L97
            boolean r2 = com.ss.ttm.player.TTPlayerConfiger.isPrintInfo()     // Catch: java.lang.Throwable -> L97
            r3 = 1
            r4 = 11
            r5 = 7
            r6 = 0
            if (r2 == 0) goto L99
            java.lang.String r2 = "ttplayer"
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L97
            r7.<init>()     // Catch: java.lang.Throwable -> L97
            java.lang.String r8 = "ttplayer:"
            r7.append(r8)     // Catch: java.lang.Throwable -> L97
            boolean r8 = com.ss.ttm.player.TTPlayerConfiger.getValue(r3, r6)     // Catch: java.lang.Throwable -> L97
            r7.append(r8)     // Catch: java.lang.Throwable -> L97
            java.lang.String r8 = ",ipc:"
            r7.append(r8)     // Catch: java.lang.Throwable -> L97
            r8 = 2
            boolean r8 = com.ss.ttm.player.TTPlayerConfiger.getValue(r8, r6)     // Catch: java.lang.Throwable -> L97
            r7.append(r8)     // Catch: java.lang.Throwable -> L97
            java.lang.String r8 = ",crashed:"
            r7.append(r8)     // Catch: java.lang.Throwable -> L97
            boolean r8 = com.ss.ttm.player.TTPlayerConfiger.getValue(r5, r6)     // Catch: java.lang.Throwable -> L97
            r7.append(r8)     // Catch: java.lang.Throwable -> L97
            java.lang.String r8 = ",cpu family"
            r7.append(r8)     // Catch: java.lang.Throwable -> L97
            int r8 = com.ss.ttm.utils.HardWareInfo.getCpuFamily()     // Catch: java.lang.Throwable -> L97
            r7.append(r8)     // Catch: java.lang.Throwable -> L97
            java.lang.String r8 = ",debug:"
            r7.append(r8)     // Catch: java.lang.Throwable -> L97
            r7.append(r6)     // Catch: java.lang.Throwable -> L97
            java.lang.String r8 = ",timeout count:"
            r7.append(r8)     // Catch: java.lang.Throwable -> L97
            r8 = 10
            int r8 = com.ss.ttm.player.TTPlayerConfiger.getValue(r8, r6)     // Catch: java.lang.Throwable -> L97
            r7.append(r8)     // Catch: java.lang.Throwable -> L97
            java.lang.String r8 = ",forbid create os player:"
            r7.append(r8)     // Catch: java.lang.Throwable -> L97
            boolean r8 = com.ss.ttm.player.TTPlayerConfiger.getValue(r4, r6)     // Catch: java.lang.Throwable -> L97
            r7.append(r8)     // Catch: java.lang.Throwable -> L97
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> L97
            com.ss.ttm.utils.AVLogger.d(r2, r7)     // Catch: java.lang.Throwable -> L97
            java.lang.String r2 = "ttplayer"
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L97
            r7.<init>()     // Catch: java.lang.Throwable -> L97
            java.lang.String r8 = "version info:"
            r7.append(r8)     // Catch: java.lang.Throwable -> L97
            java.lang.String r8 = "not find version info"
            r9 = 15
            java.lang.String r8 = com.ss.ttm.player.TTPlayerConfiger.getValue(r9, r8)     // Catch: java.lang.Throwable -> L97
            r7.append(r8)     // Catch: java.lang.Throwable -> L97
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> L97
            com.ss.ttm.utils.AVLogger.d(r2, r7)     // Catch: java.lang.Throwable -> L97
            goto L99
        L97:
            r10 = move-exception
            goto Le1
        L99:
            r2 = 0
            boolean r7 = com.ss.ttm.player.TTPlayerConfiger.isOnTTPlayer()     // Catch: java.lang.Throwable -> La7
            if (r7 != 0) goto La9
            boolean r7 = com.ss.ttm.player.TTPlayerConfiger.getValue(r4, r6)     // Catch: java.lang.Throwable -> La7
            if (r7 == 0) goto Lba
            goto La9
        La7:
            r7 = move-exception
            goto Lae
        La9:
            com.ss.ttm.player.TTPlayerClient r3 = com.ss.ttm.player.TTPlayerClient.create(r1, r10, r2)     // Catch: java.lang.Throwable -> La7
            goto Lbb
        Lae:
            r7.printStackTrace()     // Catch: java.lang.Throwable -> L97
            boolean r7 = com.ss.ttm.player.TTPlayerConfiger.getValue(r5, r6)     // Catch: java.lang.Throwable -> L97
            if (r7 != 0) goto Lba
            com.ss.ttm.player.TTPlayerConfiger.setValue(r5, r3)     // Catch: java.lang.Throwable -> L97
        Lba:
            r3 = r2
        Lbb:
            if (r3 != 0) goto Ld9
            boolean r3 = com.ss.ttm.player.TTPlayerConfiger.isPrintInfo()     // Catch: java.lang.Throwable -> L97
            if (r3 == 0) goto Lcb
            java.lang.String r3 = "ttplayer"
            java.lang.String r5 = "---------->ttplayer off<------------"
            com.ss.ttm.utils.AVLogger.d(r3, r5)     // Catch: java.lang.Throwable -> L97
        Lcb:
            boolean r3 = com.ss.ttm.player.TTPlayerConfiger.getValue(r4, r6)     // Catch: java.lang.Throwable -> L97
            if (r3 == 0) goto Ld3
            monitor-exit(r0)
            return r2
        Ld3:
            com.ss.ttm.player.OSPlayerClient r3 = com.ss.ttm.player.OSPlayerClient.create(r1, r10)     // Catch: java.lang.Throwable -> L97
            r1.mPlayerType = r6     // Catch: java.lang.Throwable -> L97
        Ld9:
            if (r3 != 0) goto Ldd
            monitor-exit(r0)
            return r2
        Ldd:
            r1.mClient = r3     // Catch: java.lang.Throwable -> L97
            monitor-exit(r0)
            return r1
        Le1:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L97
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttm.player.TTMediaPlayer.create(android.content.Context):com.ss.ttm.player.TTMediaPlayer");
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void deselectTrack(int i10) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null && i10 == 0) {
            mediaPlayerClient.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_SET_RADIO_MODE, 1);
        } else if (mediaPlayerClient != null) {
            mediaPlayerClient.setIntOption(65, i10 << 8);
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
            return mediaPlayerClient.getSelectedTrack(i10);
        }
        return -1;
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public String getStringOption(int i10) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            return mediaPlayerClient.getStringOption(i10);
        }
        return null;
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
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null && mediaPlayerClient.getType() != 0) {
            return false;
        }
        return true;
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
    @Deprecated
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
        if (mediaPlayerClient != null && i10 == 0) {
            mediaPlayerClient.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_SET_RADIO_MODE, 0);
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
            return mediaPlayerClient.setFloatOption(i10, f10);
        }
        return -1;
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setFloatOptionArray(int[] iArr, float[] fArr) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setFloatOptionArray(iArr, fArr);
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
    public void setIntOptionArray(int[] iArr, int[] iArr2) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setIntOptionArray(iArr, iArr2);
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setIsMute(boolean z10) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setIsMute(z10);
        }
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
    public void setLongOptionArray(int[] iArr, long[] jArr) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setLongOptionArray(iArr, jArr);
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setLooping(boolean z10) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setLooping(z10);
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setMediaTransport(MediaTransport mediaTransport) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setMediaTransport(mediaTransport);
        }
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
    public void setOnImageAvailableListener(ImageReader.OnImageAvailableListener onImageAvailableListener, Handler handler) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient == null) {
            mediaPlayerClient.setOnImageAvailableListener(onImageAvailableListener, handler);
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

    @Override // com.ss.ttm.player.MediaPlayer
    public void setStringOptionArray(int[] iArr, String[] strArr) {
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setStringOptionArray(iArr, strArr);
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setSurface(Surface surface) {
        MediaPlayerClient mediaPlayerClient;
        if (surface != null && surface.isValid() && (mediaPlayerClient = this.mClient) != null) {
            mediaPlayerClient.setSurface(surface);
        }
    }

    @Override // com.ss.ttm.player.MediaPlayer
    public void setSurfaceTimeOut(Surface surface, int i10) {
        MediaPlayerClient mediaPlayerClient;
        if (surface != null && surface.isValid() && (mediaPlayerClient = this.mClient) != null) {
            mediaPlayerClient.setSurfaceTimeOut(surface, i10);
        }
    }

    public void setUnSupportSampleRates(int[] iArr) {
        if (isOSPlayer() || (r0 = iArr.length) <= 0) {
            return;
        }
        int length = MediaPlayer.MEDIA_PLAYER_SUPPORT_SAMPLERATES.length;
        int i10 = 0;
        for (int i11 : iArr) {
            int i12 = 0;
            while (true) {
                if (i12 >= length) {
                    break;
                } else if (MediaPlayer.MEDIA_PLAYER_SUPPORT_SAMPLERATES[i12] == i11) {
                    i10 |= 1 << i12;
                    break;
                } else {
                    i12++;
                }
            }
        }
        MediaPlayerClient mediaPlayerClient = this.mClient;
        if (mediaPlayerClient != null) {
            mediaPlayerClient.setIntOption(111, i10);
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

    @Override // com.ss.ttm.player.MediaPlayer
    public void setCacheFile(String str, int i10) {
    }
}
