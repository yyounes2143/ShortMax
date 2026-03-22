package com.ss.ttm.player;

import android.media.AudioTrack;
import com.ss.ttm.utils.AVLogger;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes6.dex */
public final class AudioTrackPool {
    private static final String TAG = "AudioTrackPool";
    private static volatile AudioTrackPool instance;
    private AtomicInteger trackPoolSizeLimit = new AtomicInteger(1);
    private Queue<AudioTrackBuffer> trackPool = new LinkedBlockingQueue();

    private AudioTrackPool() {
        setAudioTrackPoolSize(TTPlayerConfiger.getValue(47, 1));
    }

    public static AudioTrackPool getInstance() {
        if (instance == null) {
            synchronized (AudioTrackPool.class) {
                try {
                    if (instance == null) {
                        instance = new AudioTrackPool();
                        AVLogger.d(TAG, "AudioTrackPool log: Construct AudioTrackPool!");
                    }
                } finally {
                }
            }
        }
        return instance;
    }

    public AudioTrack getReuseAudioTrack(int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        AudioTrackBuffer audioTrackBuffer;
        if (this.trackPool.isEmpty()) {
            AVLogger.Debug(TAG, this, "AudioTrackPool log: trackPool is empty!");
            return null;
        }
        synchronized (this) {
            try {
                Iterator<AudioTrackBuffer> it = this.trackPool.iterator();
                while (true) {
                    if (it.hasNext()) {
                        audioTrackBuffer = it.next();
                        if (audioTrackBuffer.streamType == i10 && audioTrackBuffer.sampleRate == i11 && audioTrackBuffer.channelsLayout == i12 && audioTrackBuffer.audioFormat == i13 && audioTrackBuffer.trackBufferSize == i14 && audioTrackBuffer.sessionId == i15 && audioTrackBuffer.contentType == i16) {
                            break;
                        }
                    } else {
                        audioTrackBuffer = null;
                        break;
                    }
                }
                if (audioTrackBuffer != null) {
                    this.trackPool.remove(audioTrackBuffer);
                    if (audioTrackBuffer.AudioTrack.getPlayState() == 1) {
                        AVLogger.Debug(TAG, this, "AudioTrackPool log: find best-matched AudioTrack: " + audioTrackBuffer.AudioTrack + " ,mContentType:" + i16 + " ,mStreamType:" + i10 + " ,mSampleRate:" + i11 + " ,mChannelsLayout:" + i12 + " ,mAudioFormat:" + i13 + " ,mTrackBufferSize:" + i14);
                        return audioTrackBuffer.AudioTrack;
                    }
                    releaseAudioTrack(audioTrackBuffer.AudioTrack);
                }
                AVLogger.Debug(TAG, this, "AudioTrackPool log: find best-matched AudioTrack fail,mContentType:" + i16 + " ,mStreamType:" + i10 + " ,mSampleRate:" + i11 + " ,mChannelsLayout:" + i12 + " ,mAudioFormat:" + i13 + " ,mTrackBufferSize:" + i14);
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void pushAudioTrackBack(AudioTrack audioTrack, boolean z10, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        if (audioTrack == null) {
            AVLogger.Debug(TAG, this, "AudioTrackPool log: audioTrack is null!");
        } else if (z10) {
            AVLogger.Debug(TAG, this, "AudioTrackPool log: force release AudioTrack:" + audioTrack);
            releaseAudioTrack(audioTrack);
        } else {
            synchronized (this) {
                try {
                    if (audioTrack.getPlayState() != 1) {
                        audioTrack.stop();
                    }
                    AudioTrackBuffer audioTrackBuffer = new AudioTrackBuffer(audioTrack, i10, i11, i12, i13, i14, i15, i16);
                    if (this.trackPool.size() < this.trackPoolSizeLimit.get()) {
                        if (this.trackPool.offer(audioTrackBuffer)) {
                            AVLogger.Debug(TAG, this, "AudioTrackPool log: pushback AudioTrack success! AudioTrack: " + audioTrack + ", poolSize: " + this.trackPool.size() + ", mContentType:" + i16 + ", mStreamType:" + i10 + ", mSampleRate:" + i11 + ", mChannelsLayout:" + i12 + ", mAudioFormat:" + i13 + ", mTrackBufferSize:" + i14);
                        }
                    } else {
                        AudioTrack audioTrack2 = this.trackPool.poll().AudioTrack;
                        if (audioTrack2 != null) {
                            AVLogger.Debug(TAG, this, "AudioTrackPool log: start release AudioTrack! AudioTrack: " + audioTrack2);
                            releaseAudioTrack(audioTrack2);
                            if (this.trackPool.offer(audioTrackBuffer)) {
                                AVLogger.Debug(TAG, this, "AudioTrackPool log: pushback AudioTrack success! AudioTrack: " + audioTrack + ", poolSize: " + this.trackPool.size() + ", mContentType:" + i16 + ", mStreamType:" + i10 + ", mSampleRate:" + i11 + ", mChannelsLayout:" + i12 + ", mAudioFormat:" + i13 + ", mTrackBufferSize:" + i14);
                            }
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public void releaseAudioTrack(final AudioTrack audioTrack) {
        if (audioTrack != null) {
            try {
                AVThreadPool.addTask(new Runnable() { // from class: com.ss.ttm.player.AudioTrackPool.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AVLogger.Debug(AudioTrackPool.TAG, this, "AudioTrackPool log: release AudioTrack task");
                        audioTrack.flush();
                        audioTrack.release();
                    }
                });
            } catch (Throwable th2) {
                AVLogger.Error(TAG, this, "AudioTrackPool log: create close thread fail: " + th2);
                audioTrack.flush();
                audioTrack.release();
            }
        }
    }

    public void setAudioTrackPoolSize(int i10) {
        AVLogger.d(TAG, "AudioTrackPool log: set audioTrack pool size:" + i10);
        this.trackPoolSizeLimit.set(i10);
    }
}
