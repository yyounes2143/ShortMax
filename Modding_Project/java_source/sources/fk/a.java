package fk;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import androidx.activity.ComponentActivity;
import com.hades.aar.activity.IDActivity;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import com.startshorts.androidplayer.ui.activity.RoutingActivity;
import com.startshorts.androidplayer.ui.activity.notification.BaseNotificationActivity;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ActivityUtil.kt */
@Metadata
@SourceDebugExtension({"SMAP\nActivityUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityUtil.kt\ncom/startshorts/androidplayer/utils/ActivityUtil\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,139:1\n1863#2,2:140\n*S KotlinDebug\n*F\n+ 1 ActivityUtil.kt\ncom/startshorts/androidplayer/utils/ActivityUtil\n*L\n70#1:140,2\n*E\n"})
/* loaded from: classes7.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f51702a = new a();

    /* renamed from: b  reason: collision with root package name */
    private static long f51703b;

    private a() {
    }

    private final RoutingActivity e() {
        Object obj;
        ComponentActivity componentActivity;
        List<WeakReference<IDActivity>> c10 = aa.a.f321a.c();
        RoutingActivity routingActivity = null;
        if (c10 != null) {
            synchronized (c10) {
                try {
                    Iterator<T> it = c10.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            obj = it.next();
                            if (((WeakReference) obj).get() instanceof RoutingActivity) {
                                break;
                            }
                        } else {
                            obj = null;
                            break;
                        }
                    }
                    WeakReference weakReference = (WeakReference) obj;
                    if (weakReference != null) {
                        componentActivity = (IDActivity) weakReference.get();
                    } else {
                        componentActivity = null;
                    }
                    if (componentActivity instanceof RoutingActivity) {
                        routingActivity = (RoutingActivity) componentActivity;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return routingActivity;
    }

    public static /* synthetic */ void j(a aVar, boolean z10, boolean z11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z11 = false;
        }
        aVar.i(z10, z11);
    }

    public final boolean a() {
        if (d() != null) {
            return true;
        }
        return false;
    }

    public final boolean b() {
        Object obj;
        List<WeakReference<IDActivity>> c10 = aa.a.f321a.c();
        boolean z10 = false;
        if (c10 == null) {
            return false;
        }
        synchronized (c10) {
            Iterator<T> it = c10.iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    if (((WeakReference) obj).get() instanceof BaseNotificationActivity) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            if (obj != null) {
                z10 = true;
            }
        }
        return z10;
    }

    public final boolean c() {
        if (e() != null) {
            return true;
        }
        return false;
    }

    @Nullable
    public final MainActivity d() {
        Object obj;
        ComponentActivity componentActivity;
        List<WeakReference<IDActivity>> c10 = aa.a.f321a.c();
        MainActivity mainActivity = null;
        if (c10 != null) {
            synchronized (c10) {
                try {
                    Iterator<T> it = c10.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            obj = it.next();
                            if (((WeakReference) obj).get() instanceof MainActivity) {
                                break;
                            }
                        } else {
                            obj = null;
                            break;
                        }
                    }
                    WeakReference weakReference = (WeakReference) obj;
                    if (weakReference != null) {
                        componentActivity = (IDActivity) weakReference.get();
                    } else {
                        componentActivity = null;
                    }
                    if (componentActivity instanceof MainActivity) {
                        mainActivity = (MainActivity) componentActivity;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return mainActivity;
    }

    public final void f(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        MainActivity d10 = d();
        if (d10 != null) {
            DeviceUtil.f48146a.k0(context, d10.getTaskId());
        }
    }

    public final void g(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        RoutingActivity e10 = e();
        if (e10 != null) {
            DeviceUtil.f48146a.k0(context, e10.getTaskId());
        }
    }

    public final void h(@NotNull Activity activity) {
        WindowInsetsController insetsController;
        int statusBars;
        Intrinsics.checkNotNullParameter(activity, "activity");
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 30) {
            activity.getWindow().setDecorFitsSystemWindows(false);
            insetsController = activity.getWindow().getInsetsController();
            if (insetsController != null) {
                statusBars = WindowInsets.Type.statusBars();
                insetsController.hide(statusBars);
                insetsController.setSystemBarsBehavior(2);
            }
        } else {
            activity.getWindow().getDecorView().setSystemUiVisibility(1284);
        }
        activity.getWindow().setStatusBarColor(0);
        if (i10 >= 28) {
            activity.getWindow().getAttributes().layoutInDisplayCutoutMode = 1;
        }
    }

    public final void i(boolean z10, boolean z11) {
        long L = DeviceUtil.f48146a.L();
        if (L < f51703b) {
            f51703b = 0L;
        }
        if (L - f51703b < 500) {
            Logger.f41511a.e("ActivityUtil", "showRoutingActivity failed -> too frequently");
            return;
        }
        f51703b = L;
        Logger logger = Logger.f41511a;
        logger.h("ActivityUtil", "showRoutingActivity -> fromNotification(" + z10 + ')');
        Context b10 = u.f51776a.b();
        Intent intent = new Intent(b10, RoutingActivity.class);
        intent.setFlags(268435456);
        intent.putExtra("from_notification", z10);
        intent.putExtra("quickly_pass", z11);
        b10.startActivity(intent);
    }
}
