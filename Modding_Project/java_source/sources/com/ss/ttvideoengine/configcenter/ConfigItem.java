package com.ss.ttvideoengine.configcenter;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes6.dex */
public class ConfigItem {
    public static final ConfigItem EMPTY = new ConfigItem(-1, null, 0, 1, 0);
    public static final int MODULE_TYPE_ENGINE = 0;
    public static final int MODULE_TYPE_MDL = 2;
    public static final int MODULE_TYPE_PLAYER = 1;
    public static final int MODULE_TYPE_STRATEGY_CENTER = 3;
    public static final int VALUE_TYPE_FLOAT = 3;
    public static final int VALUE_TYPE_INT = 1;
    public static final int VALUE_TYPE_LONG = 2;
    public static final int VALUE_TYPE_STRING = 4;
    protected final int configKey;
    protected final Object itemValue;
    protected final int moduleType;
    protected final int priority;
    protected final int valueType;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes6.dex */
    public @interface ModuleType {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes6.dex */
    public @interface ValueType {
    }

    public ConfigItem(int i10, Object obj, int i11, int i12, int i13) {
        this.configKey = i10;
        this.itemValue = obj;
        this.valueType = i12;
        this.moduleType = i13;
        this.priority = i11;
    }

    public int getPriority() {
        return this.priority;
    }

    public Object getValue() {
        return this.itemValue;
    }
}
