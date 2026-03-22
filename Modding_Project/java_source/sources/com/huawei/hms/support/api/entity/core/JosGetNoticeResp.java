package com.huawei.hms.support.api.entity.core;

import android.content.Intent;
import wa.a;
/* loaded from: classes5.dex */
public class JosGetNoticeResp extends JosBaseResp {
    @a
    private Intent noticeIntent;

    public Intent getNoticeIntent() {
        return (Intent) get(this.noticeIntent);
    }

    public void setNoticeIntent(Intent intent) {
        this.noticeIntent = intent;
    }

    private static <T> T get(T t10) {
        return t10;
    }
}
