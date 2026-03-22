package com.ss.ttvideoengine.configcenter;

import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.utils.TTVideoEngineInternalLog;
import java.util.Arrays;
import java.util.Map;
/* loaded from: classes6.dex */
public class PlayerConfigExecutor {
    public static final PlayerConfigExecutor EMPTY = new PlayerConfigExecutor();
    private static final String TAG = "PlayerConfigExecutor";
    private boolean mEnableOptionArray;
    private MediaPlayer mMediaPlayer;

    public PlayerConfigExecutor() {
    }

    private void executeUsingArray(Map<Integer, ConfigItem> map, int i10) {
        if (map != null && !map.isEmpty()) {
            int[] iArr = new int[map.size()];
            int[] iArr2 = new int[map.size()];
            int i11 = 0;
            for (ConfigItem configItem : map.values()) {
                if (configItem.moduleType == 1 && ((PlayerConfigItem) configItem).batchExecuteStage == i10) {
                    int i12 = configItem.valueType;
                    if (i12 != 1) {
                        if (i12 != 2) {
                            if (i12 != 3) {
                                if (i12 != 4) {
                                    TTVideoEngineInternalLog.e(TAG, "unknown value type");
                                } else {
                                    MediaPlayer mediaPlayer = this.mMediaPlayer;
                                    if (mediaPlayer != null) {
                                        mediaPlayer.setStringOption(configItem.configKey, (String) configItem.itemValue);
                                    }
                                }
                            } else {
                                MediaPlayer mediaPlayer2 = this.mMediaPlayer;
                                if (mediaPlayer2 != null) {
                                    mediaPlayer2.setFloatOption(configItem.configKey, ((Float) configItem.itemValue).floatValue());
                                }
                            }
                        } else {
                            MediaPlayer mediaPlayer3 = this.mMediaPlayer;
                            if (mediaPlayer3 != null) {
                                mediaPlayer3.setLongOption(configItem.configKey, ((Long) configItem.itemValue).longValue());
                            }
                        }
                    } else {
                        iArr[i11] = configItem.configKey;
                        iArr2[i11] = ((Integer) configItem.itemValue).intValue();
                        i11++;
                    }
                }
            }
            if (i11 > 0) {
                this.mMediaPlayer.setIntOptionArray(Arrays.copyOf(iArr, i11), Arrays.copyOf(iArr2, i11));
            }
        }
    }

    public void execute(Map<Integer, ConfigItem> map, int i10) {
        if (this.mEnableOptionArray) {
            executeUsingArray(map, i10);
        } else if (map != null && !map.isEmpty()) {
            for (ConfigItem configItem : map.values()) {
                if (configItem.moduleType == 1 && ((PlayerConfigItem) configItem).batchExecuteStage == i10) {
                    execute(configItem.valueType, configItem.configKey, configItem.itemValue);
                }
            }
        }
    }

    public void setMediaPlayer(MediaPlayer mediaPlayer) {
        this.mMediaPlayer = mediaPlayer;
    }

    public PlayerConfigExecutor(boolean z10) {
        this.mEnableOptionArray = z10;
    }

    public void execute(ConfigItem configItem) {
        if (configItem == null || configItem.moduleType != 1) {
            return;
        }
        execute(configItem.valueType, configItem.configKey, configItem.itemValue);
    }

    public void execute(int i10, int i11, Object obj) {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer == null) {
            return;
        }
        if (i10 == 1) {
            mediaPlayer.setIntOption(i11, ((Integer) obj).intValue());
        } else if (i10 == 2) {
            mediaPlayer.setLongOption(i11, ((Long) obj).longValue());
        } else if (i10 == 3) {
            mediaPlayer.setFloatOption(i11, ((Float) obj).floatValue());
        } else if (i10 != 4) {
            TTVideoEngineInternalLog.e(TAG, "unknown value type");
        } else {
            mediaPlayer.setStringOption(i11, (String) obj);
        }
    }
}
