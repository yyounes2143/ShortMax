package com.mbridge.msdk.video.signal.impl;

import android.app.Activity;
import com.mbridge.msdk.video.bt.module.MBridgeBTContainer;
/* compiled from: JSBTModule.java */
/* loaded from: classes6.dex */
public class j extends c {

    /* renamed from: b  reason: collision with root package name */
    private Activity f31536b;

    /* renamed from: c  reason: collision with root package name */
    private MBridgeBTContainer f31537c;

    public j(Activity activity, MBridgeBTContainer mBridgeBTContainer) {
        this.f31536b = activity;
        this.f31537c = mBridgeBTContainer;
    }

    @Override // com.mbridge.msdk.video.signal.impl.c, com.mbridge.msdk.video.signal.c
    public void reactDeveloper(Object obj, String str) {
        super.reactDeveloper(obj, str);
        MBridgeBTContainer mBridgeBTContainer = this.f31537c;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.reactDeveloper(obj, str);
        }
    }

    @Override // com.mbridge.msdk.video.signal.impl.c, com.mbridge.msdk.video.signal.c
    public void reportUrls(Object obj, String str) {
        super.reportUrls(obj, str);
        MBridgeBTContainer mBridgeBTContainer = this.f31537c;
        if (mBridgeBTContainer != null) {
            mBridgeBTContainer.reportUrls(obj, str);
        } else {
            com.mbridge.msdk.video.bt.component.d.c().c(obj, str);
        }
    }
}
