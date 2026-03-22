package b7;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import android.telephony.TelephonyCallback;
import android.telephony.TelephonyDisplayInfo;
import android.telephony.TelephonyManager;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.autofill.HintConstants;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
/* compiled from: NetworkTypeObserver.java */
/* loaded from: classes4.dex */
public final class x {
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static x f2561e;

    /* renamed from: a  reason: collision with root package name */
    private final Handler f2562a = new Handler(Looper.getMainLooper());

    /* renamed from: b  reason: collision with root package name */
    private final CopyOnWriteArrayList<WeakReference<c>> f2563b = new CopyOnWriteArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    private final Object f2564c = new Object();
    @GuardedBy("networkTypeLock")

    /* renamed from: d  reason: collision with root package name */
    private int f2565d = 0;

    /* compiled from: NetworkTypeObserver.java */
    @RequiresApi(31)
    /* loaded from: classes4.dex */
    private static final class b {

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: NetworkTypeObserver.java */
        /* loaded from: classes4.dex */
        public static final class a extends TelephonyCallback implements TelephonyCallback.DisplayInfoListener {

            /* renamed from: a  reason: collision with root package name */
            private final x f2566a;

            public a(x xVar) {
                this.f2566a = xVar;
            }

            public void onDisplayInfoChanged(TelephonyDisplayInfo telephonyDisplayInfo) {
                int overrideNetworkType;
                boolean z10;
                overrideNetworkType = telephonyDisplayInfo.getOverrideNetworkType();
                int i10 = 5;
                if (overrideNetworkType != 3 && overrideNetworkType != 4 && overrideNetworkType != 5) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                x xVar = this.f2566a;
                if (z10) {
                    i10 = 10;
                }
                xVar.k(i10);
            }
        }

        public static void a(Context context, x xVar) {
            Executor mainExecutor;
            try {
                TelephonyManager telephonyManager = (TelephonyManager) b7.a.e((TelephonyManager) context.getSystemService(HintConstants.AUTOFILL_HINT_PHONE));
                a aVar = new a(xVar);
                mainExecutor = context.getMainExecutor();
                telephonyManager.registerTelephonyCallback(mainExecutor, aVar);
                telephonyManager.unregisterTelephonyCallback(aVar);
            } catch (RuntimeException unused) {
                xVar.k(5);
            }
        }
    }

    /* compiled from: NetworkTypeObserver.java */
    /* loaded from: classes4.dex */
    public interface c {
        void a(int i10);
    }

    /* compiled from: NetworkTypeObserver.java */
    /* loaded from: classes4.dex */
    private final class d extends BroadcastReceiver {
        private d() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int g10 = x.g(context);
            if (s0.f2506a < 31 || g10 != 5) {
                x.this.k(g10);
            } else {
                b.a(context, x.this);
            }
        }
    }

    private x(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        s0.E0(context, new d(), intentFilter);
    }

    public static synchronized x d(Context context) {
        x xVar;
        synchronized (x.class) {
            try {
                if (f2561e == null) {
                    f2561e = new x(context);
                }
                xVar = f2561e;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return xVar;
    }

    private static int e(NetworkInfo networkInfo) {
        switch (networkInfo.getSubtype()) {
            case 1:
            case 2:
                return 3;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 14:
            case 15:
            case 17:
                return 4;
            case 13:
                return 5;
            case 16:
            case 19:
            default:
                return 6;
            case 18:
                return 2;
            case 20:
                if (s0.f2506a >= 29) {
                    return 9;
                }
                return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int g(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        int i10 = 0;
        if (connectivityManager == null) {
            return 0;
        }
        try {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            i10 = 1;
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                int type = activeNetworkInfo.getType();
                if (type != 0) {
                    if (type != 1) {
                        if (type != 4 && type != 5) {
                            if (type == 6) {
                                return 5;
                            }
                            if (type != 9) {
                                return 8;
                            }
                            return 7;
                        }
                    } else {
                        return 2;
                    }
                }
                return e(activeNetworkInfo);
            }
        } catch (SecurityException unused) {
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(c cVar) {
        cVar.a(f());
    }

    private void j() {
        Iterator<WeakReference<c>> it = this.f2563b.iterator();
        while (it.hasNext()) {
            WeakReference<c> next = it.next();
            if (next.get() == null) {
                this.f2563b.remove(next);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(int i10) {
        synchronized (this.f2564c) {
            try {
                if (this.f2565d == i10) {
                    return;
                }
                this.f2565d = i10;
                Iterator<WeakReference<c>> it = this.f2563b.iterator();
                while (it.hasNext()) {
                    WeakReference<c> next = it.next();
                    c cVar = next.get();
                    if (cVar != null) {
                        cVar.a(i10);
                    } else {
                        this.f2563b.remove(next);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public int f() {
        int i10;
        synchronized (this.f2564c) {
            i10 = this.f2565d;
        }
        return i10;
    }

    public void i(final c cVar) {
        j();
        this.f2563b.add(new WeakReference<>(cVar));
        this.f2562a.post(new Runnable() { // from class: b7.w
            @Override // java.lang.Runnable
            public final void run() {
                x.this.h(cVar);
            }
        });
    }
}
