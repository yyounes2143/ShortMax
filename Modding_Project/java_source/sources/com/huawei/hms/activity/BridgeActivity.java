package com.huawei.hms.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.ui.SafeIntent;
import com.huawei.hms.utils.ResolutionFlagUtil;
import com.huawei.hms.utils.ResourceLoaderUtil;
import com.huawei.hms.utils.UIUtil;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes5.dex */
public class BridgeActivity extends Activity {
    public static final String EXTRA_DELEGATE_CLASS_NAME = "intent.extra.DELEGATE_CLASS_OBJECT";
    public static final String EXTRA_DELEGATE_UPDATE_INFO = "intent.extra.update.info";
    public static final String EXTRA_INTENT = "intent.extra.intent";
    public static final String EXTRA_IS_FULLSCREEN = "intent.extra.isfullscreen";
    public static final String EXTRA_RESULT = "intent.extra.RESULT";

    /* renamed from: b  reason: collision with root package name */
    private static final int f21768b = a("ro.build.hw_emui_api_level", 0);

    /* renamed from: a  reason: collision with root package name */
    private IBridgeActivityDelegate f21769a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements View.OnApplyWindowInsetsListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ViewGroup f21770a;

        a(ViewGroup viewGroup) {
            this.f21770a = viewGroup;
        }

        @Override // android.view.View.OnApplyWindowInsetsListener
        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            try {
                Object invoke = Class.forName("com.huawei.android.view.WindowManagerEx$LayoutParamsEx").getMethod("getDisplaySideRegion", WindowInsets.class).invoke(null, windowInsets);
                if (invoke == null) {
                    HMSLog.i("BridgeActivity", "sideRegion is null");
                } else {
                    Rect rect = (Rect) Class.forName("com.huawei.android.view.DisplaySideRegionEx").getMethod("getSafeInsets", new Class[0]).invoke(invoke, new Object[0]);
                    ViewGroup viewGroup = this.f21770a;
                    if (viewGroup != null) {
                        viewGroup.setPadding(rect.left, 0, rect.right, 0);
                    }
                }
            } catch (ClassNotFoundException e10) {
                e = e10;
                HMSLog.e("BridgeActivity", "An exception occurred while reading: onApplyWindowInsets" + e.getMessage());
                return view.onApplyWindowInsets(windowInsets);
            } catch (IllegalAccessException e11) {
                e = e11;
                HMSLog.e("BridgeActivity", "An exception occurred while reading: onApplyWindowInsets" + e.getMessage());
                return view.onApplyWindowInsets(windowInsets);
            } catch (NoSuchMethodException e12) {
                e = e12;
                HMSLog.e("BridgeActivity", "An exception occurred while reading: onApplyWindowInsets" + e.getMessage());
                return view.onApplyWindowInsets(windowInsets);
            } catch (InvocationTargetException e13) {
                e = e13;
                HMSLog.e("BridgeActivity", "An exception occurred while reading: onApplyWindowInsets" + e.getMessage());
                return view.onApplyWindowInsets(windowInsets);
            }
            return view.onApplyWindowInsets(windowInsets);
        }
    }

    private static int a(String str, int i10) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return ((Integer) cls.getDeclaredMethod("getInt", String.class, Integer.TYPE).invoke(cls, str, Integer.valueOf(i10))).intValue();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | IllegalArgumentException | NoSuchMethodException | InvocationTargetException unused) {
            HMSLog.e("BridgeActivity", "An exception occurred while reading: EMUI_SDK_INT");
            return i10;
        }
    }

    private void b() {
        try {
            if (!isFinishing() && !isDestroyed()) {
                setResult(1, null);
                finish();
            }
        } catch (Throwable th2) {
            HMSLog.e("BridgeActivity", "finishBridgeActivity has an exception", th2);
            throw new IllegalArgumentException("finishBridgeActivity has an exception ", th2);
        }
    }

    private static void c(Window window, boolean z10) {
        try {
            window.getClass().getMethod("setHwFloating", Boolean.TYPE).invoke(window, Boolean.valueOf(z10));
        } catch (IllegalAccessException | IllegalArgumentException | NoSuchMethodException | InvocationTargetException e10) {
            HMSLog.e("BridgeActivity", "In setHwFloating, Failed to call Window.setHwFloating()." + e10.getMessage());
        }
    }

    private void d() {
        View findViewById = getWindow().findViewById(16908290);
        if (findViewById != null && (findViewById instanceof ViewGroup)) {
            ViewGroup viewGroup = (ViewGroup) findViewById;
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            try {
                Class<?> cls = Class.forName("com.huawei.android.view.WindowManagerEx$LayoutParamsEx");
                cls.getMethod("setDisplaySideMode", Integer.TYPE).invoke(cls.getDeclaredConstructor(WindowManager.LayoutParams.class).newInstance(attributes), 1);
            } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e10) {
                HMSLog.e("BridgeActivity", "An exception occurred while reading: setDisplaySideMode" + e10.getMessage());
            }
            getWindow().getDecorView().setOnApplyWindowInsetsListener(new a(viewGroup));
            return;
        }
        HMSLog.e("BridgeActivity", "rootView is null or not ViewGroup");
    }

    private boolean e() {
        Intent intent = getIntent();
        if (intent == null) {
            HMSLog.e("BridgeActivity", "In initialize, Must not pass in a null intent.");
            return false;
        }
        if (intent.getBooleanExtra("intent.extra.isfullscreen", false)) {
            getWindow().setFlags(1024, 1024);
        }
        try {
            String stringExtra = intent.getStringExtra(EXTRA_DELEGATE_CLASS_NAME);
            if (stringExtra != null) {
                IBridgeActivityDelegate iBridgeActivityDelegate = (IBridgeActivityDelegate) Class.forName(stringExtra).asSubclass(IBridgeActivityDelegate.class).newInstance();
                this.f21769a = iBridgeActivityDelegate;
                try {
                    iBridgeActivityDelegate.onBridgeActivityCreate(this);
                    return true;
                } catch (Throwable th2) {
                    HMSLog.e("BridgeActivity", "onBridgeActivityCreate Exception." + th2.getMessage());
                    return false;
                }
            }
            HMSLog.e("BridgeActivity", "In initialize, Must not pass in a null or non class object.");
            return false;
        } catch (ClassCastException e10) {
            e = e10;
            HMSLog.e("BridgeActivity", "In initialize, Failed to create 'IUpdateWizard' instance." + e.getMessage());
            return false;
        } catch (ClassNotFoundException e11) {
            e = e11;
            HMSLog.e("BridgeActivity", "In initialize, Failed to create 'IUpdateWizard' instance." + e.getMessage());
            return false;
        } catch (IllegalAccessException e12) {
            e = e12;
            HMSLog.e("BridgeActivity", "In initialize, Failed to create 'IUpdateWizard' instance." + e.getMessage());
            return false;
        } catch (IllegalStateException e13) {
            e = e13;
            HMSLog.e("BridgeActivity", "In initialize, Failed to create 'IUpdateWizard' instance." + e.getMessage());
            return false;
        } catch (InstantiationException e14) {
            e = e14;
            HMSLog.e("BridgeActivity", "In initialize, Failed to create 'IUpdateWizard' instance." + e.getMessage());
            return false;
        } catch (Throwable unused) {
            HMSLog.e("BridgeActivity", "In initialize, Failed to create 'IUpdateWizard' instance, throwable occur.");
            return false;
        }
    }

    private void f() {
        try {
            requestWindowFeature(1);
        } catch (Exception e10) {
            HMSLog.w("BridgeActivity", "requestWindowFeature " + e10.getMessage());
        }
        Window window = getWindow();
        if (f21768b >= 9) {
            window.addFlags(67108864);
            c(window, true);
        }
        window.getDecorView().setSystemUiVisibility(0);
    }

    public static Intent getIntentStartBridgeActivity(Activity activity, String str) {
        Intent intent = new Intent(activity, BridgeActivity.class);
        intent.putExtra(EXTRA_DELEGATE_CLASS_NAME, str);
        intent.putExtra("intent.extra.isfullscreen", UIUtil.isActivityFullscreen(activity));
        return intent;
    }

    public static void setFullScreenWindowLayoutInDisplayCutout(Window window) {
        if (window == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            window.setAttributes(attributes);
            window.getDecorView().setSystemUiVisibility(TTVideoEngineInterface.PLAYER_OPTION_ENABLE_BOX_DEMUXER);
            return;
        }
        WindowManager.LayoutParams attributes2 = window.getAttributes();
        try {
            Class<?> cls = Class.forName("com.huawei.android.view.LayoutParamsEx");
            cls.getMethod("addHwFlags", Integer.TYPE).invoke(cls.getConstructor(WindowManager.LayoutParams.class).newInstance(attributes2), 65536);
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | IllegalArgumentException | InstantiationException | NoSuchMethodException | InvocationTargetException unused) {
            HMSLog.e("BridgeActivity", "com.huawei.android.view.LayoutParamsEx fail");
        }
    }

    @Override // android.app.Activity
    public void finish() {
        HMSLog.i("BridgeActivity", "Enter finish.");
        super.finish();
    }

    @Override // android.app.Activity
    public Intent getIntent() {
        Intent modifyIntentBehaviorsSafe = UIUtil.modifyIntentBehaviorsSafe(super.getIntent());
        if (modifyIntentBehaviorsSafe != null) {
            return new SafeIntent(modifyIntentBehaviorsSafe);
        }
        return null;
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i10, int i11, Intent intent) {
        boolean z10;
        SafeIntent safeIntent = new SafeIntent(intent);
        super.onActivityResult(i10, i11, safeIntent);
        IBridgeActivityDelegate iBridgeActivityDelegate = this.f21769a;
        if (iBridgeActivityDelegate != null) {
            try {
                z10 = iBridgeActivityDelegate.onBridgeActivityResult(i10, i11, safeIntent);
            } catch (Throwable unused) {
                HMSLog.w("BridgeActivity", "onBridgeActivityResult failed, throwable occur.");
                z10 = false;
            }
            if (!z10 && !isFinishing()) {
                setResult(i11, UIUtil.modifyIntentBehaviorsSafe(safeIntent));
                finish();
            }
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        IBridgeActivityDelegate iBridgeActivityDelegate = this.f21769a;
        if (iBridgeActivityDelegate != null) {
            iBridgeActivityDelegate.onBridgeConfigurationChanged();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        HMSLog.i("BridgeActivity", "BridgeActivity onCreate");
        if (getIntent() == null) {
            setResult(1, null);
            finish();
            return;
        }
        getWindow().addFlags(Integer.MIN_VALUE);
        getWindow().setStatusBarColor(0);
        f();
        d();
        if (ResourceLoaderUtil.getmContext() == null) {
            ResourceLoaderUtil.setmContext(getApplicationContext());
        }
        setFullScreenWindowLayoutInDisplayCutout(getWindow());
        if (!e()) {
            setResult(1, null);
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        try {
            ResolutionFlagUtil.getInstance().removeResolutionFlag(new SafeIntent(getIntent()).getStringExtra("transaction_id"));
        } catch (Throwable th2) {
            HMSLog.w("BridgeActivity", "get transaction_id from intent fail: " + th2.getClass().getSimpleName());
        }
        IBridgeActivityDelegate iBridgeActivityDelegate = this.f21769a;
        if (iBridgeActivityDelegate != null) {
            iBridgeActivityDelegate.onBridgeActivityDestroy();
        }
        HMSLog.i("BridgeActivity", "BridgeActivity onDestroy");
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i10, KeyEvent keyEvent) {
        IBridgeActivityDelegate iBridgeActivityDelegate = this.f21769a;
        if (iBridgeActivityDelegate != null) {
            iBridgeActivityDelegate.onKeyUp(i10, keyEvent);
        }
        return super.onKeyUp(i10, keyEvent);
    }

    @Override // android.app.Activity
    protected void onResume() {
        try {
            super.onResume();
        } catch (Throwable th2) {
            HMSLog.e("BridgeActivity", "super.onResume has an exception", th2);
            b();
        }
    }

    public static Intent getIntentStartBridgeActivity(Context context, String str) {
        Intent intent = new Intent(context, BridgeActivity.class);
        intent.putExtra(EXTRA_DELEGATE_CLASS_NAME, str);
        intent.putExtra("intent.extra.isfullscreen", false);
        return intent;
    }
}
