package com.bytedance.applog.event;
/* loaded from: classes3.dex */
public class AutoTrackEventType {
    public static final int ALL = Integer.MAX_VALUE;
    public static final int CLICK = 4;
    public static final int PAGE = 2;
    public static final int PAGE_LEAVE = 8;

    public static boolean a(int i10, int i11) {
        if ((i10 & i11) != 0) {
            return true;
        }
        return false;
    }
}
