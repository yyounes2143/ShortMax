package com.ss.ttvideoengine.selector.shift;
/* loaded from: classes6.dex */
public class BitrateNotMatchException extends Exception {
    public static final int BITRATE_LIST_IS_EMPTY = 0;
    public static final int CALC_BITRATE_IS_NULL = 3;
    public static final int DEFAULT_GEAR_NOT_MATCH = 4;
    public static final int FAIL_TO_SELECT_BY_ML = 9;
    public static final int GEAR_CONFIG_IS_NOT_INIT = 7;
    public static final int GEAR_CONFIG_IS_NULL = 6;
    public static final int INTERSECTION_SET_IS_EMPTY = 5;
    public static final int SHIFT_CHANGE = 8;
    public static final int SHIFT_NOT_MATCH = 2;
    public static final int SPEED_SHIFT_MONITOR_IS_NULL = 1;
    private final int code;

    public BitrateNotMatchException(int i10, String str) {
        super(str);
        this.code = i10;
    }

    public int getCode() {
        return this.code;
    }
}
