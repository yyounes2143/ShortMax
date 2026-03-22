package com.bytedance.sdk.component.utils;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.view.View;
import java.util.concurrent.ExecutorService;
/* loaded from: classes3.dex */
public class ZYk {
    private static oJ oJ;

    /* renamed from: com.bytedance.sdk.component.utils.ZYk$ZYk  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0180ZYk {
        void oJ();

        void oJ(Throwable th2);
    }

    /* loaded from: classes3.dex */
    public interface oJ {
        ExecutorService getAsyncStartActivityThreadPool();

        boolean isEnableAsyncStartActivity();

        boolean isStartActivityBySubThread();
    }

    public static void oJ(oJ oJVar) {
        oJ = oJVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean tB(Context context, Intent intent, InterfaceC0180ZYk interfaceC0180ZYk) {
        if (context != null && intent != null) {
            try {
                if (!(context instanceof Activity)) {
                    intent.addFlags(268435456);
                }
                context.startActivity(intent);
                if (interfaceC0180ZYk != null) {
                    interfaceC0180ZYk.oJ();
                    return true;
                }
                return true;
            } catch (Throwable th2) {
                if (interfaceC0180ZYk != null) {
                    interfaceC0180ZYk.oJ(th2);
                }
            }
        }
        return false;
    }

    public static void oJ(final Context context, final Intent intent, final InterfaceC0180ZYk interfaceC0180ZYk) {
        ExecutorService asyncStartActivityThreadPool;
        oJ oJVar = oJ;
        if (oJVar != null && oJVar.isStartActivityBySubThread() && (asyncStartActivityThreadPool = oJ.getAsyncStartActivityThreadPool()) != null) {
            asyncStartActivityThreadPool.execute(new com.bytedance.sdk.component.so.so("startAct") { // from class: com.bytedance.sdk.component.utils.ZYk.1
                @Override // java.lang.Runnable
                public void run() {
                    ZYk.tB(context, intent, interfaceC0180ZYk);
                }
            });
        } else {
            tB(context, intent, interfaceC0180ZYk);
        }
    }

    public static boolean oJ(final Context context, final Intent intent, final InterfaceC0180ZYk interfaceC0180ZYk, boolean z10) {
        oJ oJVar;
        ExecutorService asyncStartActivityThreadPool;
        if (z10 && (oJVar = oJ) != null && oJVar.isEnableAsyncStartActivity() && (asyncStartActivityThreadPool = oJ.getAsyncStartActivityThreadPool()) != null) {
            asyncStartActivityThreadPool.execute(new com.bytedance.sdk.component.so.so("startAct") { // from class: com.bytedance.sdk.component.utils.ZYk.2
                @Override // java.lang.Runnable
                public void run() {
                    ZYk.tB(context, intent, interfaceC0180ZYk);
                }
            });
            return true;
        }
        return tB(context, intent, interfaceC0180ZYk);
    }

    public static Activity oJ(View view) {
        View findViewById;
        Context context;
        if (view == null) {
            return null;
        }
        Context context2 = view.getContext();
        if (context2 instanceof Activity) {
            return (Activity) context2;
        }
        View rootView = view.getRootView();
        if (rootView == null || (findViewById = rootView.findViewById(16908290)) == null || (context = findViewById.getContext()) == null) {
            return null;
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            Context baseContext = ((ContextWrapper) context).getBaseContext();
            if (baseContext instanceof Activity) {
                return (Activity) baseContext;
            }
        }
        return null;
    }

    public static boolean oJ(Activity activity) {
        return activity == null || activity.isFinishing() || activity.isDestroyed();
    }
}
