package com.huawei.hms.support.api.entity.core;

import wa.a;
/* loaded from: classes5.dex */
public class JosGetNoticeReq extends JosBaseReq {
    public static final int NOTICE_TYPE_CONN = 0;
    public static final int NOTICE_TYPE_SIGN = 1;
    @a
    private int noticeType;

    public int getNoticeType() {
        return ((Integer) get(Integer.valueOf(this.noticeType))).intValue();
    }

    public void setNoticeType(int i10) {
        this.noticeType = i10;
    }

    private static <T> T get(T t10) {
        return t10;
    }
}
