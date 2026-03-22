package com.ss.ttvideoengine.configcenter;
/* loaded from: classes6.dex */
public class PlayerConfigItem extends ConfigItem {
    public static final int STAGE_NONE = -1;
    public static final int STAGE_PLAYER_CREATE = 0;
    public static final int STAGE_PLAYER_REUSE = 1;
    protected int batchExecuteStage;

    public PlayerConfigItem(int i10, Object obj, int i11) {
        super(i10, obj, 0, i11, 1);
        this.batchExecuteStage = 0;
    }

    public PlayerConfigItem(int i10, Object obj, int i11, int i12) {
        super(i10, obj, 0, i11, 1);
        this.batchExecuteStage = i12;
    }
}
