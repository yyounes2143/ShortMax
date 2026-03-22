package com.ss.ttvideoengine;

import com.ss.ttvideoengine.utils.Error;
/* loaded from: classes6.dex */
public interface SubInfoCallBack {
    void onSubInfoCallback(int i10, String str);

    void onSubLoadFinished(int i10);

    void onSubLoadFinished2(int i10, String str);

    void onSubPathInfo(String str, Error error);

    void onSubSwitchCompleted(int i10, int i11);
}
