package com.ss.ttvideoengine.configcenter;

import androidx.annotation.Nullable;
import com.google.android.gms.common.util.GmsVersion;
import com.ss.ttvideoengine.EngineGlobalConfig;
import com.ss.ttvideoengine.Resolution;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class EngineConfig implements IEngineConfig {
    private static final String TAG = "EngineConfig";
    private static final Map<Integer, Object> defaultValueMap;
    private final ConfigItemFactory configItemFactory;
    private final boolean enableDiffCheck;
    private final Map<Integer, ConfigItem> itemMap;

    /* loaded from: classes6.dex */
    public final class Builder {
        private final Map<Integer, ConfigItem> builderMap = new HashMap();

        public Builder() {
        }

        public EngineConfig build() {
            return new EngineConfig(this.builderMap);
        }

        public Builder setFloatOption(int i10, float f10) {
            this.builderMap.put(Integer.valueOf(i10), EngineConfig.this.configItemFactory.createFloatOption(i10, f10));
            return this;
        }

        public Builder setIntOption(int i10, int i11) {
            this.builderMap.put(Integer.valueOf(i10), EngineConfig.this.configItemFactory.createIntOption(i10, i11));
            return this;
        }

        public Builder setLongOption(int i10, int i11) {
            this.builderMap.put(Integer.valueOf(i10), EngineConfig.this.configItemFactory.createIntOption(i10, i11));
            return this;
        }

        public Builder setStringOption(int i10, String str) {
            this.builderMap.put(Integer.valueOf(i10), EngineConfig.this.configItemFactory.createStringOption(i10, str));
            return this;
        }
    }

    static {
        HashMap hashMap = new HashMap();
        defaultValueMap = hashMap;
        hashMap.put(963, 1);
        hashMap.put(5, 3);
        hashMap.put(11, 30);
        Integer valueOf = Integer.valueOf((int) GmsVersion.VERSION_LONGHORN);
        hashMap.put(12, valueOf);
        hashMap.put(612, 1);
        hashMap.put(85, -1);
        hashMap.put(28, 30);
        hashMap.put(100, 1);
        hashMap.put(160, Integer.valueOf(EngineGlobalConfig.getInstance().isOnlyUseMediaLoader() ? 1 : 0));
        hashMap.put(110, -1);
        hashMap.put(310, -1);
        hashMap.put(675, -1);
        hashMap.put(956, -1);
        hashMap.put(Integer.valueOf((int) TTVideoEngineInterface.PLAYER_OPTION_EXTERN_VOICE_OUTPUT_FORMAT), -1);
        hashMap.put(183, 1);
        hashMap.put(184, 1);
        hashMap.put(201, 500);
        hashMap.put(202, 5000);
        hashMap.put(851, 10);
        hashMap.put(852, 300);
        hashMap.put(853, 3);
        hashMap.put(Integer.valueOf((int) TTVideoEngineInterface.PLAYER_OPTION_HW_DYNAMIC_FRAME_DROPPING_MULTIPLE), 10);
        hashMap.put(Integer.valueOf((int) TTVideoEngineInterface.PLAYER_OPTION_HW_DYNAMIC_FRAME_DROPPING_CHECK_PERIOD), 300);
        hashMap.put(Integer.valueOf((int) TTVideoEngineInterface.PLAYER_OPTION_HW_DYNAMIC_FRAME_DROPPING_CHECK_COUNT), 3);
        hashMap.put(950, 500);
        hashMap.put(207, 2);
        hashMap.put(208, 1);
        hashMap.put(215, 1);
        hashMap.put(414, 3);
        hashMap.put(37, 1);
        hashMap.put(417, 1);
        hashMap.put(Integer.valueOf((int) TTVideoEngineInterface.PLAYER_OPTION_LAZY_SEEK), 1);
        hashMap.put(422, 1048576);
        hashMap.put(423, Integer.valueOf((int) TTVideoEngineInterface.DEFAULT_AUDIO_RANGE_SIZE));
        hashMap.put(474, 5000);
        hashMap.put(475, 10000);
        hashMap.put(424, 2);
        hashMap.put(Integer.valueOf((int) TTVideoEngineInterface.PLAYER_OPTION_HIJACK_RETRY), 1);
        hashMap.put(Integer.valueOf((int) TTVideoEngineInterface.PLAYER_OPTION_SET_VOICE), -1);
        hashMap.put(476, 2);
        hashMap.put(500, 500);
        hashMap.put(504, 1);
        hashMap.put(574, 4);
        hashMap.put(506, 2);
        Resolution resolution = Resolution.Undefine;
        hashMap.put(502, Integer.valueOf(resolution.getIndex()));
        hashMap.put(544, Integer.valueOf(resolution.getIndex()));
        Resolution resolution2 = Resolution.SuperHigh;
        hashMap.put(536, Integer.valueOf(resolution2.getIndex()));
        hashMap.put(537, Integer.valueOf(resolution2.getIndex()));
        hashMap.put(334, -1);
        hashMap.put(335, -1);
        hashMap.put(341, -1);
        hashMap.put(342, -1);
        hashMap.put(Integer.valueOf((int) TTVideoEngineInterface.PLAYER_OPTION_SET_NETSPEED_LEVEL), -1);
        hashMap.put(Integer.valueOf((int) TTVideoEngineInterface.PLAYER_OPTION_SEGMENT_FORMAT_FLAG), 2);
        hashMap.put(Integer.valueOf((int) TTVideoEngineInterface.PLAYER_OPTION_PREPARE_CACHE_MS), 1000);
        hashMap.put(Integer.valueOf((int) TTVideoEngineInterface.PLAYER_OPTION_USE_FALLBACK_API), 1);
        hashMap.put(Integer.valueOf((int) TTVideoEngineInterface.PLAYER_OPTION_UPDATE_TIMESTAMP_MODE), 1);
        hashMap.put(Integer.valueOf((int) TTVideoEngineInterface.PLAYER_OPTION_ENABLE_OPEN_TIMEOUT), 1);
        hashMap.put(568, -1);
        hashMap.put(517, -3);
        hashMap.put(607, valueOf);
        hashMap.put(610, 1);
        hashMap.put(657, 300);
        hashMap.put(558, 1);
        hashMap.put(670, 1);
        hashMap.put(255, 3);
        hashMap.put(700, -1);
        hashMap.put(572, 1);
        hashMap.put(721, 1);
        hashMap.put(578, 1);
        hashMap.put(Integer.valueOf((int) TTVideoEngineInterface.PLAYER_OPTION_ENABLE_GET_PLAYER_REQ_OFFSET), 1);
        hashMap.put(801, -1);
        hashMap.put(Integer.valueOf((int) TTVideoEngineInterface.PLAYER_OPTION_SET_AUDIOTRACK_CONTENTTYPE), -1);
        hashMap.put(Integer.valueOf((int) TTVideoEngineInterface.PLAYER_OPTION_METRICS_INTERVAL), 60);
        hashMap.put(325, Float.valueOf(0.25f));
        hashMap.put(326, Float.valueOf(-18.0f));
        hashMap.put(327, Float.valueOf(8.0f));
        hashMap.put(328, Float.valueOf(0.007f));
        hashMap.put(348, Float.valueOf(200.0f));
        hashMap.put(349, Float.valueOf(3.0f));
        hashMap.put(359, Float.valueOf(50.0f));
        hashMap.put(526, Float.valueOf(0.9f));
        hashMap.put(Integer.valueOf((int) TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER), Float.valueOf(9.0f));
        hashMap.put(Integer.valueOf((int) TTVideoEngineInterface.PLAYER_OPTION_ABR_SWITCH_PENALTY_PARAMETER), Float.valueOf(2.0f));
        hashMap.put(Integer.valueOf((int) TTVideoEngineInterface.PLAYER_OPTION_ABR_BANDWIDTH_PARAMETER), Float.valueOf(1.0f));
        hashMap.put(531, "");
        hashMap.put(355, "");
        hashMap.put(532, "");
        hashMap.put(546, "");
        hashMap.put(547, "");
        hashMap.put(1000, "h264");
        hashMap.put(Integer.valueOf((int) TTVideoEngineInterface.PLAYER_OPTION_VC2_THREAD_NUM), 4);
        hashMap.put(571, 1);
    }

    public EngineConfig(boolean z10, Map<Integer, ConfigItem> map) {
        this.configItemFactory = new ConfigItemFactory();
        this.enableDiffCheck = z10;
        this.itemMap = map;
    }

    private Object getConfigItemValueOrDefault(int i10) {
        try {
            if (this.itemMap.containsKey(Integer.valueOf(i10))) {
                return this.itemMap.get(Integer.valueOf(i10)).getValue();
            }
            return defaultValueMap.get(Integer.valueOf(i10));
        } catch (Exception e10) {
            TTVideoEngineLog.e(TAG, e10.getMessage());
            return null;
        }
    }

    private boolean isSameString(String str, String str2) {
        return Objects.equals(str, str2);
    }

    @Override // com.ss.ttvideoengine.configcenter.IEngineConfig
    public float getFloatOption(int i10) {
        Object configItemValueOrDefault = getConfigItemValueOrDefault(i10);
        if (configItemValueOrDefault == null) {
            return 0.0f;
        }
        try {
            return ((Float) configItemValueOrDefault).floatValue();
        } catch (Exception e10) {
            TTVideoEngineLog.e(TAG, "key: " + i10 + ", " + e10.getMessage());
            return 0.0f;
        }
    }

    @Override // com.ss.ttvideoengine.configcenter.IEngineConfig
    public int getIntOption(int i10) {
        Object configItemValueOrDefault = getConfigItemValueOrDefault(i10);
        if (configItemValueOrDefault == null) {
            return 0;
        }
        try {
            return ((Integer) configItemValueOrDefault).intValue();
        } catch (Exception e10) {
            TTVideoEngineLog.e(TAG, "key: " + i10 + ", " + e10.getMessage());
            return 0;
        }
    }

    @Override // com.ss.ttvideoengine.configcenter.IEngineConfig
    public Map<Integer, ConfigItem> getItemMap() {
        return this.itemMap;
    }

    @Override // com.ss.ttvideoengine.configcenter.IEngineConfig
    public long getLongOption(int i10) {
        Object configItemValueOrDefault = getConfigItemValueOrDefault(i10);
        if (configItemValueOrDefault == null) {
            return 0L;
        }
        try {
            return ((Long) configItemValueOrDefault).longValue();
        } catch (Exception e10) {
            TTVideoEngineLog.e(TAG, "key: " + i10 + ", " + e10.getMessage());
            return 0L;
        }
    }

    @Override // com.ss.ttvideoengine.configcenter.IEngineConfig
    public ConfigItem getOption(int i10) {
        return this.itemMap.get(Integer.valueOf(i10));
    }

    @Override // com.ss.ttvideoengine.configcenter.IEngineConfig
    public String getStringOption(int i10) {
        Object configItemValueOrDefault = getConfigItemValueOrDefault(i10);
        if (configItemValueOrDefault == null) {
            return "";
        }
        try {
            return (String) configItemValueOrDefault;
        } catch (Exception e10) {
            TTVideoEngineLog.e(TAG, "key: " + i10 + ", " + e10.getMessage());
            return null;
        }
    }

    @Override // com.ss.ttvideoengine.configcenter.IEngineConfig
    public boolean isKeySet(int i10) {
        return this.itemMap.containsKey(Integer.valueOf(i10));
    }

    @Override // com.ss.ttvideoengine.configcenter.IEngineConfig
    public void remove(int i10) {
        this.itemMap.remove(Integer.valueOf(i10));
    }

    @Override // com.ss.ttvideoengine.configcenter.IEngineConfig
    public void reset() {
        this.itemMap.clear();
    }

    @Override // com.ss.ttvideoengine.configcenter.IEngineConfig
    @Nullable
    public ConfigItem setFloatOption(int i10, float f10) {
        if (this.enableDiffCheck && f10 == getFloatOption(i10)) {
            TTVideoEngineLog.i(TAG, "option value not changed");
            return null;
        }
        ConfigItem createFloatOption = this.configItemFactory.createFloatOption(i10, f10);
        if (createFloatOption != null) {
            this.itemMap.put(Integer.valueOf(i10), createFloatOption);
        }
        return createFloatOption;
    }

    @Override // com.ss.ttvideoengine.configcenter.IEngineConfig
    @Nullable
    public ConfigItem setIntOption(int i10, int i11) {
        if (this.enableDiffCheck && i11 == getIntOption(i10)) {
            TTVideoEngineLog.i(TAG, "option value not changed");
            return null;
        }
        ConfigItem createIntOption = this.configItemFactory.createIntOption(i10, i11);
        if (createIntOption != null) {
            this.itemMap.put(Integer.valueOf(i10), createIntOption);
        }
        return createIntOption;
    }

    @Override // com.ss.ttvideoengine.configcenter.IEngineConfig
    @Nullable
    public ConfigItem setLongOption(int i10, long j10) {
        if (this.enableDiffCheck && j10 == getLongOption(i10)) {
            TTVideoEngineLog.i(TAG, "option value not changed");
            return null;
        }
        ConfigItem createLongOption = this.configItemFactory.createLongOption(i10, j10);
        if (createLongOption != null) {
            this.itemMap.put(Integer.valueOf(i10), createLongOption);
        }
        return createLongOption;
    }

    @Override // com.ss.ttvideoengine.configcenter.IEngineConfig
    @Nullable
    public ConfigItem setStringOption(int i10, String str) {
        if (this.enableDiffCheck && isSameString(str, getStringOption(i10))) {
            TTVideoEngineLog.i(TAG, "option value not changed");
            return null;
        }
        ConfigItem createStringOption = this.configItemFactory.createStringOption(i10, str);
        if (createStringOption != null) {
            this.itemMap.put(Integer.valueOf(i10), createStringOption);
        }
        return createStringOption;
    }

    public EngineConfig(Map<Integer, ConfigItem> map) {
        this(false, map);
    }
}
