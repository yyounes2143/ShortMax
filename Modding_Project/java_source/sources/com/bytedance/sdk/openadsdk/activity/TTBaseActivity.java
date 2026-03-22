package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.utils.cY;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
/* loaded from: classes3.dex */
public class TTBaseActivity extends Activity {
    private OnBackInvokedCallback oJ;

    /* renamed from: so  reason: collision with root package name */
    protected boolean f12868so = false;

    /* loaded from: classes3.dex */
    private static class oJ implements OnBackInvokedCallback {
        private final WeakReference<TTBaseActivity> oJ;

        oJ(TTBaseActivity tTBaseActivity) {
            this.oJ = new WeakReference<>(tTBaseActivity);
        }

        public void onBackInvoked() {
            TTBaseActivity tTBaseActivity = this.oJ.get();
            if (tTBaseActivity != null) {
                tTBaseActivity.ZYk();
            }
        }
    }

    protected void ZYk() {
        onBackPressed();
    }

    @Override // android.app.Activity
    public void finish() {
        try {
            super.finish();
        } catch (Exception unused) {
        }
    }

    protected boolean oJ() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        super.onCreate(bundle);
        if (oJ() && cY.oJ()) {
            this.oJ = new oJ(this);
            onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            onBackInvokedDispatcher.registerOnBackInvokedCallback(0, this.oJ);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onDestroy() {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        super.onDestroy();
        if (cY.oJ() && this.oJ != null) {
            onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            onBackInvokedDispatcher.unregisterOnBackInvokedCallback(this.oJ);
            this.oJ = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onPause() {
        if (Build.VERSION.SDK_INT >= 33) {
            try {
                try {
                    super.onPause();
                    return;
                } catch (Exception unused) {
                    return;
                }
            } catch (IllegalArgumentException unused2) {
                Field declaredField = Activity.class.getDeclaredField("mCalled");
                declaredField.setAccessible(true);
                declaredField.set(this, Boolean.TRUE);
                return;
            }
        }
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onResume() {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                super.onResume();
                return;
            } catch (IllegalArgumentException e10) {
                QSm.oJ("TTBaseActivity", "super.onResume() run fail", e10);
                try {
                    Field declaredField = Activity.class.getDeclaredField("mCalled");
                    declaredField.setAccessible(true);
                    declaredField.set(this, Boolean.TRUE);
                    return;
                } catch (Exception e11) {
                    QSm.oJ("TTBaseActivity", "onResume set mCalled fail", e11);
                    return;
                }
            }
        }
        super.onResume();
    }

    public void tB(boolean z10) {
        this.f12868so = z10;
    }
}
