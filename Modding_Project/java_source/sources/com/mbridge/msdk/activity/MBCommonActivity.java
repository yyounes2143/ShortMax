package com.mbridge.msdk.activity;

import android.os.Build;
import android.os.Bundle;
import com.mbridge.msdk.foundation.webview.BrowserView;
import com.mbridge.msdk.foundation.webview.b;
/* loaded from: classes.dex */
public class MBCommonActivity extends DomainMBCommonActivity {

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ int f25724e = 0;

    /* renamed from: d  reason: collision with root package name */
    private boolean f25725d = false;

    @Override // android.app.Activity
    public void finish() {
        BrowserView browserView = this.browserView;
        if (browserView != null) {
            browserView.setListener(null);
            this.browserView.destroy();
        }
        BrowserView remove = b.f27593a.remove(this.f25713a);
        if (remove != null) {
            remove.setListener(null);
            remove.destroy();
        }
        this.f25725d = true;
        super.finish();
    }

    @Override // com.mbridge.msdk.activity.DomainMBCommonActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        if (Build.VERSION.SDK_INT != 26) {
            setRequestedOrientation(1);
        }
        super.onCreate(bundle);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (!this.f25725d) {
            BrowserView browserView = this.browserView;
            if (browserView != null) {
                browserView.setListener(null);
                this.browserView.destroy();
            }
            BrowserView remove = b.f27593a.remove(this.f25713a);
            if (remove != null) {
                remove.setListener(null);
                remove.destroy();
            }
        }
    }
}
