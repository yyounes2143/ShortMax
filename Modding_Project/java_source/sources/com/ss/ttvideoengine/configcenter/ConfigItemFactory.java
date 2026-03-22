package com.ss.ttvideoengine.configcenter;

import androidx.annotation.Nullable;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
/* loaded from: classes6.dex */
public class ConfigItemFactory {
    private static final String TAG = "ConfigItemFactory";

    public static boolean isCommonPlayerOption(int i10) {
        if (i10 >= 40000 && i10 < 50000) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Nullable
    public ConfigItem createFloatOption(int i10, float f10) {
        if (isCommonPlayerOption(i10)) {
            return new PlayerConfigItem(i10, Float.valueOf(f10), 3);
        }
        switch (i10) {
            case 325:
                return new PlayerConfigItem(303, Float.valueOf(f10), 3, -1);
            case 326:
                return new PlayerConfigItem(304, Float.valueOf(f10), 3, -1);
            case 327:
                return new PlayerConfigItem(305, Float.valueOf(f10), 3, -1);
            case 328:
                return new PlayerConfigItem(306, Float.valueOf(f10), 3, -1);
            default:
                switch (i10) {
                    case 344:
                        return new PlayerConfigItem(MediaPlayer.MEDIA_PLAYER_OPTION_AE_TAR_LUFS, Float.valueOf(f10), 3, -1);
                    case 345:
                        return new PlayerConfigItem(MediaPlayer.MEDIA_PLAYER_OPTION_AE_SRC_LUFS, Float.valueOf(f10), 3, -1);
                    case 346:
                        return new PlayerConfigItem(MediaPlayer.MEDIA_PLAYER_OPTION_AE_SRC_PEAK, Float.valueOf(f10), 3, -1);
                    case 347:
                        break;
                    case 348:
                        return new PlayerConfigItem(1151, Float.valueOf(f10), 3, -1);
                    case 349:
                        return new PlayerConfigItem(1152, Float.valueOf(f10), 3, -1);
                    case TTVideoEngineInterface.PLAYER_OPTION_AE_LU_RANG /* 350 */:
                        return new PlayerConfigItem(1153, Float.valueOf(f10), 3, -1);
                    case 351:
                        return new PlayerConfigItem(1154, Float.valueOf(f10), 3, -1);
                    case 352:
                        return new PlayerConfigItem(1155, Float.valueOf(f10), 3, -1);
                    case 353:
                        return new PlayerConfigItem(1156, Float.valueOf(f10), 3, -1);
                    case 354:
                        return new PlayerConfigItem(1157, Float.valueOf(f10), 3, -1);
                    default:
                        switch (i10) {
                            case TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER /* 527 */:
                            case TTVideoEngineInterface.PLAYER_OPTION_ABR_SWITCH_PENALTY_PARAMETER /* 528 */:
                            case TTVideoEngineInterface.PLAYER_OPTION_ABR_BANDWIDTH_PARAMETER /* 529 */:
                                break;
                            default:
                                TTVideoEngineLog.w(TAG, "unknown option key: " + i10 + ", value: " + f10);
                                return null;
                        }
                }
                return new EngineConfigItem(i10, Float.valueOf(f10), 3);
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:817)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:856)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:856)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:856)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:856)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:730)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:730)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:730)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:730)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:730)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:730)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:730)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:730)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @androidx.annotation.Nullable
    public com.ss.ttvideoengine.configcenter.ConfigItem createIntOption(int r11, int r12) {
        /*
            Method dump skipped, instructions count: 5036
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.configcenter.ConfigItemFactory.createIntOption(int, int):com.ss.ttvideoengine.configcenter.ConfigItem");
    }

    @Nullable
    public ConfigItem createLongOption(int i10, long j10) {
        if (isCommonPlayerOption(i10)) {
            return new PlayerConfigItem(i10, Long.valueOf(j10), 2);
        }
        if (i10 != 709) {
            TTVideoEngineLog.w(TAG, "unknown option key: " + i10 + ", value: " + j10);
            return null;
        }
        return new PlayerConfigItem(668, Long.valueOf(j10), 2);
    }

    @Nullable
    public ConfigItem createStringOption(int i10, String str) {
        if (isCommonPlayerOption(i10)) {
            return new PlayerConfigItem(i10, str, 4);
        }
        if (i10 != 355) {
            if (i10 != 531) {
                if (i10 != 662) {
                    if (i10 != 1000) {
                        if (i10 != 360) {
                            if (i10 != 361) {
                                switch (i10) {
                                    case 538:
                                    case 539:
                                    case 540:
                                        break;
                                    default:
                                        switch (i10) {
                                            case 545:
                                            case 546:
                                            case 547:
                                                break;
                                            default:
                                                switch (i10) {
                                                    case TTVideoEngineInterface.PLAYER_STRATEGY_STRING_PLAY_LOAD_CONFIG /* 1410 */:
                                                    case TTVideoEngineInterface.PLAYER_STRATEGY_STRING_PLAY_RANGE_CONFIG /* 1411 */:
                                                    case TTVideoEngineInterface.PLAYER_STRATEGY_STRING_PLAY_BUFFER_CONFIG /* 1412 */:
                                                        break;
                                                    default:
                                                        TTVideoEngineLog.w(TAG, "unknown option key: " + i10 + ", value: " + str);
                                                        return null;
                                                }
                                        }
                                }
                            } else {
                                return new PlayerConfigItem(1162, str, 4, -1);
                            }
                        } else {
                            return new PlayerConfigItem(1161, str, 4, -1);
                        }
                    }
                } else {
                    return new PlayerConfigItem(202, str, 4, -1);
                }
            }
            return new EngineConfigItem(i10, str, 4);
        }
        return new PlayerConfigItem(1158, str, 4, -1);
    }
}
