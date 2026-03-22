package com.ss.ttvideoengine.configcenter;

import java.util.Map;
/* loaded from: classes6.dex */
public interface IEngineConfig {
    public static final IEngineConfig EMPTY = new IEngineConfig() { // from class: com.ss.ttvideoengine.configcenter.IEngineConfig.1
        @Override // com.ss.ttvideoengine.configcenter.IEngineConfig
        public float getFloatOption(int i10) {
            return 0.0f;
        }

        @Override // com.ss.ttvideoengine.configcenter.IEngineConfig
        public int getIntOption(int i10) {
            return 0;
        }

        @Override // com.ss.ttvideoengine.configcenter.IEngineConfig
        public Map<Integer, ConfigItem> getItemMap() {
            return null;
        }

        @Override // com.ss.ttvideoengine.configcenter.IEngineConfig
        public long getLongOption(int i10) {
            return 0L;
        }

        @Override // com.ss.ttvideoengine.configcenter.IEngineConfig
        public ConfigItem getOption(int i10) {
            return null;
        }

        @Override // com.ss.ttvideoengine.configcenter.IEngineConfig
        public String getStringOption(int i10) {
            return null;
        }

        @Override // com.ss.ttvideoengine.configcenter.IEngineConfig
        public boolean isKeySet(int i10) {
            return false;
        }

        @Override // com.ss.ttvideoengine.configcenter.IEngineConfig
        public ConfigItem setFloatOption(int i10, float f10) {
            return ConfigItem.EMPTY;
        }

        @Override // com.ss.ttvideoengine.configcenter.IEngineConfig
        public ConfigItem setIntOption(int i10, int i11) {
            return ConfigItem.EMPTY;
        }

        @Override // com.ss.ttvideoengine.configcenter.IEngineConfig
        public ConfigItem setLongOption(int i10, long j10) {
            return ConfigItem.EMPTY;
        }

        @Override // com.ss.ttvideoengine.configcenter.IEngineConfig
        public ConfigItem setStringOption(int i10, String str) {
            return ConfigItem.EMPTY;
        }

        @Override // com.ss.ttvideoengine.configcenter.IEngineConfig
        public void reset() {
        }

        @Override // com.ss.ttvideoengine.configcenter.IEngineConfig
        public void remove(int i10) {
        }
    };

    float getFloatOption(int i10);

    int getIntOption(int i10);

    Map<Integer, ConfigItem> getItemMap();

    long getLongOption(int i10);

    ConfigItem getOption(int i10);

    String getStringOption(int i10);

    boolean isKeySet(int i10);

    void remove(int i10);

    void reset();

    ConfigItem setFloatOption(int i10, float f10);

    ConfigItem setIntOption(int i10, int i11);

    ConfigItem setLongOption(int i10, long j10);

    ConfigItem setStringOption(int i10, String str);
}
