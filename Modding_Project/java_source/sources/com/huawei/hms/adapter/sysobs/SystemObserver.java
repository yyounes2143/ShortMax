package com.huawei.hms.adapter.sysobs;

import android.content.Intent;
/* loaded from: classes5.dex */
public interface SystemObserver {
    boolean onNoticeResult(int i10);

    boolean onSolutionResult(Intent intent, String str);

    boolean onUpdateResult(int i10);
}
