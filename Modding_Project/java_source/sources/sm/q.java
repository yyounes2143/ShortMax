package sm;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.Insets;
import android.graphics.Point;
import android.graphics.Rect;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.browser.trusted.sharing.ShareTarget;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.mbridge.msdk.foundation.download.Command;
import java.io.Closeable;
import java.io.Flushable;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* loaded from: classes7.dex */
public class q {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private static final Handler f66458a = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class a implements View.OnApplyWindowInsetsListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f66459a;

        a(int i10) {
            this.f66459a = i10;
        }

        @Override // android.view.View.OnApplyWindowInsetsListener
        @NonNull
        public WindowInsets onApplyWindowInsets(@NonNull View view, @NonNull WindowInsets windowInsets) {
            Insets insets;
            int i10;
            int i11;
            int i12;
            int i13;
            insets = windowInsets.getInsets(this.f66459a);
            i10 = insets.left;
            i11 = insets.top;
            i12 = insets.right;
            i13 = insets.bottom;
            view.setPadding(i10, i11, i12, i13);
            return windowInsets;
        }
    }

    @Nullable
    public static Float A(@Nullable Float f10, @Nullable Float f11) {
        if (f10 == null) {
            return f11;
        }
        if (f11 == null) {
            return f10;
        }
        return Float.valueOf(Math.max(f10.floatValue(), f11.floatValue()));
    }

    @Nullable
    public static Float B(@Nullable Float f10, @Nullable Float f11) {
        if (f10 == null) {
            return f11;
        }
        if (f11 == null) {
            return f10;
        }
        return Float.valueOf(Math.min(f10.floatValue(), f11.floatValue()));
    }

    @NonNull
    public static MotionEvent C(int i10, int i11, int i12) {
        return MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), i10, i11, i12, 0);
    }

    public static void D(@NonNull Runnable runnable) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            runnable.run();
        } else {
            f66458a.post(runnable);
        }
    }

    public static void E(@NonNull Runnable runnable, long j10) {
        f66458a.postDelayed(runnable, j10);
    }

    public static int F(int i10, int i11) {
        if (i10 > i11) {
            return 2;
        }
        return 1;
    }

    public static String G(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    return GrsBaseInfo.CountryCodeSource.UNKNOWN;
                }
                return "LANDSCAPE";
            }
            return "PORTRAIT";
        }
        return "UNDEFINED";
    }

    public static int H(float f10, float f11) {
        return (int) (c(f10, f11) + 0.5f);
    }

    public static void I(@NonNull Runnable runnable) {
        f66458a.post(runnable);
    }

    public static void J(@Nullable View view) {
        if (view != null && view.getParent() != null && (view.getParent() instanceof ViewGroup)) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
    }

    public static void K(@Nullable String str) {
        L(str, Executors.newSingleThreadExecutor());
    }

    public static void L(@Nullable final String str, @NonNull Executor executor) {
        if (TextUtils.isEmpty(str)) {
            io.bidmachine.iab.utils.a.a("Utils", "url is null or empty", new Object[0]);
            return;
        }
        try {
            executor.execute(new Runnable() { // from class: sm.p
                @Override // java.lang.Runnable
                public final void run() {
                    q.g(str);
                }
            });
        } catch (Exception e10) {
            io.bidmachine.iab.utils.a.c("Utils", e10);
        }
    }

    @NonNull
    public static String M(@NonNull Rect rect) {
        return rect.left + "," + rect.top + "," + rect.width() + "," + rect.height();
    }

    @NonNull
    public static String N(@NonNull Rect rect) {
        return rect.width() + "," + rect.height();
    }

    private static double b(@NonNull Random random, float f10, float f11) {
        double d10;
        double sqrt = Math.sqrt(Math.log(Math.abs(((random.nextLong() % 100000) + 1) / 100000.0d)) * (-2.0d)) * Math.sin(Math.abs(((random.nextLong() % 100000) + 1) / 100000.0d) * 6.283185307179586d);
        double d11 = f11;
        if (d11 >= 0.4d && d11 <= 0.6d) {
            d10 = (sqrt * f10) + d11;
        } else if (d11 < 0.4d) {
            d10 = d11 + (f10 / (sqrt * sqrt));
        } else {
            d10 = d11 - (f10 / (sqrt * sqrt));
        }
        return Math.min(1.0d, Math.max(0.0d, d10));
    }

    private static float c(float f10, float f11) {
        return f10 / f11;
    }

    private static float d(int i10) {
        if (i10 != 1) {
            if (i10 != 3) {
                if (i10 != 17) {
                    return 1.0f;
                }
                return 0.5f;
            }
            return 0.0f;
        }
        return 0.5f;
    }

    private static void e(@NonNull Activity activity) {
        InputMethodManager inputMethodManager = (InputMethodManager) activity.getSystemService("input_method");
        View currentFocus = activity.getCurrentFocus();
        if (currentFocus == null) {
            currentFocus = new View(activity);
        }
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
        }
    }

    private static void f(@NonNull Window window, boolean z10) {
        int i10;
        WindowInsetsController windowInsetsController;
        int statusBars;
        if (Build.VERSION.SDK_INT >= 30) {
            windowInsetsController = window.getDecorView().getWindowInsetsController();
            if (windowInsetsController != null) {
                windowInsetsController.setSystemBarsBehavior(2);
                if (z10) {
                    statusBars = WindowInsets.Type.statusBars();
                    windowInsetsController.hide(statusBars);
                    return;
                }
                return;
            }
            return;
        }
        if (z10) {
            window.setFlags(1024, 1024);
            i10 = 4;
        } else {
            i10 = 0;
        }
        if (i10 > 0) {
            window.getDecorView().setSystemUiVisibility(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void g(String str) {
        HttpURLConnection httpURLConnection;
        Exception e10;
        HttpURLConnection httpURLConnection2 = null;
        try {
            io.bidmachine.iab.utils.a.a("Utils", "Connection to URL: %s", str);
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                try {
                    httpURLConnection.setInstanceFollowRedirects(true);
                    httpURLConnection.setConnectTimeout(5000);
                    httpURLConnection.setRequestProperty("Connection", "close");
                    httpURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
                    String a10 = pp.f.a();
                    if (!TextUtils.isEmpty(a10)) {
                        httpURLConnection.setRequestProperty(Command.HTTP_HEADER_USER_AGENT, a10);
                    }
                    io.bidmachine.iab.utils.a.a("Utils", "Response code: %d, for URL: %s", Integer.valueOf(httpURLConnection.getResponseCode()), str);
                } catch (Exception e11) {
                    e10 = e11;
                    io.bidmachine.iab.utils.a.b("Utils", "%s: %s: %s", str, e10.getMessage(), e10.toString());
                    br.a.a(httpURLConnection);
                }
            } catch (Throwable th2) {
                th = th2;
                httpURLConnection2 = httpURLConnection;
                br.a.a(httpURLConnection2);
                throw th;
            }
        } catch (Exception e12) {
            httpURLConnection = null;
            e10 = e12;
        } catch (Throwable th3) {
            th = th3;
            br.a.a(httpURLConnection2);
            throw th;
        }
        br.a.a(httpURLConnection);
    }

    public static void h(@NonNull Activity activity) {
        i(activity, true);
    }

    public static void i(@NonNull Activity activity, boolean z10) {
        activity.requestWindowFeature(1);
        Window window = activity.getWindow();
        if (window != null) {
            window.addFlags(128);
            f(window, z10);
        }
        e(activity);
    }

    public static void j(@NonNull Activity activity) {
        if (Build.VERSION.SDK_INT >= 34) {
            Window window = activity.getWindow();
            if (window != null) {
                k(window.getDecorView());
            } else {
                k(activity.findViewById(16908290));
            }
        }
    }

    @RequiresApi(api = 30)
    public static void k(@NonNull View view) {
        int systemBars;
        int displayCutout;
        systemBars = WindowInsets.Type.systemBars();
        displayCutout = WindowInsets.Type.displayCutout();
        l(view, systemBars | displayCutout);
    }

    @RequiresApi(api = 30)
    public static void l(@NonNull View view, int i10) {
        view.setOnApplyWindowInsetsListener(new a(i10));
        view.requestApplyInsets();
    }

    private static float m(int i10) {
        if (i10 != 16 && i10 != 17) {
            if (i10 != 80) {
                return 0.0f;
            }
            return 1.0f;
        }
        return 0.5f;
    }

    public static void n(@NonNull Runnable runnable) {
        f66458a.removeCallbacks(runnable);
    }

    public static void o(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th2) {
                io.bidmachine.iab.utils.a.c("Utils", th2);
            }
        }
    }

    public static Float p(@NonNull String str) {
        return Float.valueOf(str.replace("px", ""));
    }

    public static int q(@NonNull Context context, float f10) {
        return (int) TypedValue.applyDimension(1, f10, context.getResources().getDisplayMetrics());
    }

    public static void r(@Nullable Flushable flushable) {
        if (flushable != null) {
            try {
                flushable.flush();
            } catch (Throwable th2) {
                io.bidmachine.iab.utils.a.c("Utils", th2);
            }
        }
    }

    @SuppressLint({"NewApi"})
    public static int s() {
        return View.generateViewId();
    }

    @NonNull
    public static Point t(int i10, int i11, int i12, int i13) {
        Random random = new Random();
        return new Point((int) (i10 * b(random, 0.1f, d(i12))), (int) (i11 * b(random, 0.1f, m(i13))));
    }

    @NonNull
    public static Point u(int i10, int i11) {
        return new Point(Math.round(i10 * 0.5f), Math.round(i11 * 0.7f));
    }

    public static int v(@NonNull Context context) {
        int rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
        int i10 = context.getResources().getConfiguration().orientation;
        if (i10 == 1) {
            if (rotation == 2 || rotation == 3) {
                return 9;
            }
            return 1;
        } else if (i10 != 2) {
            return 9;
        } else {
            if (rotation != 2 && rotation != 3) {
                return 0;
            }
            return 8;
        }
    }

    public static boolean w(@NonNull Context context) {
        int v10 = v(context);
        if (v10 != 0 && v10 != 8 && v10 != 6 && v10 != 11) {
            return false;
        }
        return true;
    }

    @SuppressLint({"MissingPermission"})
    public static boolean x(@NonNull Context context) {
        NetworkInfo activeNetworkInfo;
        io.bidmachine.iab.utils.a.a("Utils", "Testing connectivity:", new Object[0]);
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.isConnected()) {
            io.bidmachine.iab.utils.a.a("Utils", "Connected to Internet", new Object[0]);
            return true;
        }
        io.bidmachine.iab.utils.a.a("Utils", "No Internet connection", new Object[0]);
        return false;
    }

    public static boolean y(@NonNull Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        double d10 = displayMetrics.widthPixels / displayMetrics.xdpi;
        double d11 = displayMetrics.heightPixels / displayMetrics.ydpi;
        if (Math.sqrt((d10 * d10) + (d11 * d11)) >= 6.6d) {
            return true;
        }
        return false;
    }

    public static boolean z(View view) {
        if (view.getAlpha() == 0.0f) {
            return true;
        }
        return false;
    }
}
