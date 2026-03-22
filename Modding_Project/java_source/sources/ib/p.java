package ib;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowManager;
import com.huawei.hms.common.internal.ResponseErrorCode;
import com.huawei.hms.support.api.client.Status;
import java.lang.reflect.InvocationTargetException;
import java.util.Calendar;
/* compiled from: AccountSdkUtil.java */
/* loaded from: classes5.dex */
public class p {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AccountSdkUtil.java */
    /* loaded from: classes5.dex */
    public class a implements View.OnApplyWindowInsetsListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ViewGroup f53378a;

        a(ViewGroup viewGroup) {
            this.f53378a = viewGroup;
        }

        @Override // android.view.View.OnApplyWindowInsetsListener
        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            try {
                Object invoke = Class.forName("com.huawei.android.view.WindowManagerEx$LayoutParamsEx").getMethod("getDisplaySideRegion", WindowInsets.class).invoke(null, windowInsets);
                if (invoke == null) {
                    t.b("AccountSdkUtil", "sideRegion is null", true);
                } else {
                    Rect rect = (Rect) Class.forName("com.huawei.android.view.DisplaySideRegionEx").getMethod("getSafeInsets", new Class[0]).invoke(invoke, new Object[0]);
                    t.b("AccountSdkUtil", "safeInsets LR: " + rect.left + ":" + rect.right, true);
                    t.b("AccountSdkUtil", "safeInsets TB: " + rect.top + ":" + rect.bottom, true);
                    ViewGroup viewGroup = this.f53378a;
                    if (viewGroup != null) {
                        viewGroup.setPadding(rect.left, 0, rect.right, 0);
                    }
                }
            } catch (ClassNotFoundException unused) {
                t.d("AccountSdkUtil", "ClassNotFoundException onApplyWindowInsets", true);
            } catch (IllegalAccessException unused2) {
                t.d("AccountSdkUtil", "IllegalAccessException onApplyWindowInsets", true);
            } catch (NoSuchMethodException unused3) {
                t.d("AccountSdkUtil", "NoSuchMethodException onApplyWindowInsets", true);
            } catch (InvocationTargetException unused4) {
                t.d("AccountSdkUtil", "InvocationTargetException onApplyWindowInsets", true);
            } catch (Throwable th2) {
                t.d("AccountSdkUtil", "onApplyWindowInsets--" + th2.getClass().getSimpleName(), true);
            }
            return view.onApplyWindowInsets(windowInsets);
        }
    }

    public static long a() {
        return Calendar.getInstance().getTimeInMillis();
    }

    public static void b(Activity activity) {
        if (r.a()) {
            d(activity);
        }
    }

    public static void c(ResponseErrorCode responseErrorCode, Status status) {
        if (responseErrorCode != null && status != null) {
            if (responseErrorCode.getParcelable() == null) {
                t.b("AccountSdkUtil", "parcelable is null", true);
                return;
            }
            try {
                if (responseErrorCode.getParcelable() instanceof PendingIntent) {
                    t.b("AccountSdkUtil", "doExecute is PendingIntent", true);
                    status.setPendingIntent((PendingIntent) responseErrorCode.getParcelable());
                }
                if (responseErrorCode.getParcelable() instanceof Intent) {
                    t.b("AccountSdkUtil", "doExecute is Intent", true);
                    status.setIntent((Intent) responseErrorCode.getParcelable());
                    return;
                }
                return;
            } catch (ClassCastException unused) {
                t.d("AccountSdkUtil", "doExecuteIntent ClassCastException", true);
                return;
            } catch (Throwable th2) {
                t.d("AccountSdkUtil", "doExecuteIntent--" + th2.getClass().getSimpleName(), true);
                return;
            }
        }
        t.b("AccountSdkUtil", "response or status is null", true);
    }

    protected static void d(Activity activity) {
        t.b("AccountSdkUtil", "enter initOnApplyWindowInsets", true);
        ViewGroup viewGroup = (ViewGroup) activity.getWindow().findViewById(16908290);
        if (viewGroup == null) {
            t.b("AccountSdkUtil", "rootView is null", true);
            return;
        }
        e(activity);
        activity.getWindow().getDecorView().setOnApplyWindowInsetsListener(new a(viewGroup));
    }

    protected static void e(Activity activity) {
        WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
        try {
            Class<?> cls = Class.forName("com.huawei.android.view.WindowManagerEx$LayoutParamsEx");
            cls.getMethod("setDisplaySideMode", Integer.TYPE).invoke(cls.getDeclaredConstructor(WindowManager.LayoutParams.class).newInstance(attributes), 1);
        } catch (ClassNotFoundException unused) {
            t.d("AccountSdkUtil", "ClassNotFoundException setDisplaySideMode", true);
        } catch (IllegalAccessException unused2) {
            t.d("AccountSdkUtil", "IllegalAccessException setDisplaySideMode", true);
        } catch (InstantiationException unused3) {
            t.d("AccountSdkUtil", "InstantiationException setDisplaySideMode", true);
        } catch (NoSuchMethodException unused4) {
            t.d("AccountSdkUtil", "NoSuchMethodException setDisplaySideMode", true);
        } catch (InvocationTargetException unused5) {
            t.d("AccountSdkUtil", "InvocationTargetException setDisplaySideMode", true);
        } catch (Throwable th2) {
            t.d("AccountSdkUtil", "setDisplaySideMode--" + th2.getClass().getSimpleName(), true);
        }
    }
}
