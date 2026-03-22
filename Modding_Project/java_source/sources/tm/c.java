package tm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.PowerManager;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.util.WeakHashMap;
/* loaded from: classes7.dex */
public class c {
    @NonNull
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    static final WeakHashMap<View, a> f67409a = new WeakHashMap<>();
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private static final BroadcastReceiver f67410b = new b();
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private static final IntentFilter f67411c;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f67412d;

    /* renamed from: e  reason: collision with root package name */
    private static boolean f67413e;

    /* loaded from: classes7.dex */
    public interface a {
        void a(boolean z10);
    }

    /* loaded from: classes7.dex */
    class b extends BroadcastReceiver {
        b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (c.class) {
                boolean unused = c.f67413e = "android.intent.action.SCREEN_ON".equals(intent.getAction());
            }
            WeakHashMap<View, a> weakHashMap = c.f67409a;
            synchronized (weakHashMap) {
                try {
                    for (a aVar : weakHashMap.values()) {
                        aVar.a(c.f67413e);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    static {
        IntentFilter intentFilter = new IntentFilter();
        f67411c = intentFilter;
        f67412d = false;
        f67413e = false;
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
    }

    private static synchronized void a(@NonNull Context context) {
        synchronized (c.class) {
            if (!f67412d) {
                synchronized (c.class) {
                    if (!f67412d) {
                        f67413e = ((PowerManager) context.getSystemService("power")).isScreenOn();
                        context.getApplicationContext().registerReceiver(f67410b, f67411c);
                        f67412d = true;
                    }
                }
            }
        }
    }

    public static void d(@NonNull View view, @NonNull a aVar) {
        a(view.getContext());
        WeakHashMap<View, a> weakHashMap = f67409a;
        synchronized (weakHashMap) {
            weakHashMap.put(view, aVar);
        }
    }

    public static boolean e(Context context) {
        a(context);
        return f67413e;
    }

    public static void f(@NonNull View view) {
        if (!f67412d) {
            return;
        }
        WeakHashMap<View, a> weakHashMap = f67409a;
        synchronized (weakHashMap) {
            weakHashMap.remove(view);
        }
    }
}
