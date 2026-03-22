package com.bytedance.applog.event;
/* loaded from: classes3.dex */
public class EventType {
    public static final int EVENT_ALL = Integer.MAX_VALUE;
    public static final int EVENT_CLICK = 8;
    public static final int EVENT_PAGE = 4;
    public static final int EVENT_PROFILE = 2;
    public static final int USER_EVENT = 1;

    public static boolean a(int i10, int i11) {
        if ((i10 & i11) != 0) {
            return true;
        }
        return false;
    }
}
