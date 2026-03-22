package cn;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyCallback;
import android.telephony.TelephonyDisplayInfo;
import android.telephony.TelephonyManager;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.autofill.HintConstants;
import cn.w;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
/* compiled from: NetworkTypeObserver.java */
/* loaded from: classes8.dex */
public final class w {
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private static w f3662f;

    /* renamed from: a  reason: collision with root package name */
    private final Executor f3663a;

    /* renamed from: b  reason: collision with root package name */
    private final CopyOnWriteArrayList<d> f3664b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f3665c;
    @GuardedBy("lock")

    /* renamed from: d  reason: collision with root package name */
    private int f3666d;
    @GuardedBy("lock")

    /* renamed from: e  reason: collision with root package name */
    private boolean f3667e;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NetworkTypeObserver.java */
    @RequiresApi(31)
    /* loaded from: classes8.dex */
    public static final class b {

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: NetworkTypeObserver.java */
        /* loaded from: classes8.dex */
        public static final class a extends TelephonyCallback implements TelephonyCallback.DisplayInfoListener {

            /* renamed from: a  reason: collision with root package name */
            private final w f3668a;

            public a(w wVar) {
                this.f3668a = wVar;
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
                w wVar = this.f3668a;
                if (z10) {
                    i10 = 10;
                }
                wVar.n(i10);
            }
        }

        public static void a(Context context, w wVar) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) cn.a.e((TelephonyManager) context.getSystemService(HintConstants.AUTOFILL_HINT_PHONE));
                a aVar = new a(wVar);
                telephonyManager.registerTelephonyCallback(wVar.f3663a, aVar);
                telephonyManager.unregisterTelephonyCallback(aVar);
            } catch (RuntimeException unused) {
                wVar.n(5);
            }
        }
    }

    /* compiled from: NetworkTypeObserver.java */
    /* loaded from: classes8.dex */
    public interface c {
        void a(int i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NetworkTypeObserver.java */
    /* loaded from: classes8.dex */
    public final class d {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<c> f3669a;

        /* renamed from: b  reason: collision with root package name */
        private final Executor f3670b;

        public d(c cVar, Executor executor) {
            this.f3669a = new WeakReference<>(cVar);
            this.f3670b = executor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d() {
            c cVar = this.f3669a.get();
            if (cVar != null) {
                cVar.a(w.this.g());
            }
        }

        public void b() {
            this.f3670b.execute(new Runnable() { // from class: cn.x
                @Override // java.lang.Runnable
                public final void run() {
                    w.d.this.d();
                }
            });
        }

        public boolean c() {
            if (this.f3669a.get() == null) {
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NetworkTypeObserver.java */
    /* loaded from: classes8.dex */
    public final class e extends BroadcastReceiver {
        private e() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(Context context) {
            w.this.i(context);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(final Context context, Intent intent) {
            w.this.f3663a.execute(new Runnable() { // from class: cn.y
                @Override // java.lang.Runnable
                public final void run() {
                    w.e.this.b(context);
                }
            });
        }
    }

    private w(final Context context) {
        Executor a10 = cn.b.a();
        this.f3663a = a10;
        this.f3664b = new CopyOnWriteArrayList<>();
        this.f3665c = new Object();
        this.f3666d = 0;
        a10.execute(new Runnable() { // from class: cn.v
            @Override // java.lang.Runnable
            public final void run() {
                w.this.k(context);
            }
        });
    }

    public static synchronized w e(Context context) {
        w wVar;
        synchronized (w.class) {
            try {
                if (f3662f == null) {
                    f3662f = new w(context);
                }
                wVar = f3662f;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return wVar;
    }

    private static int f(NetworkInfo networkInfo) {
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
                if (m0.f3614a >= 29) {
                    return 9;
                }
                return 0;
        }
    }

    private static int h(Context context) {
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
                return f(activeNetworkInfo);
            }
        } catch (SecurityException unused) {
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(Context context) {
        int h10 = h(context);
        if (m0.f3614a >= 31 && h10 == 5) {
            b.a(context, this);
        } else {
            n(h10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"UnprotectedReceiver"})
    /* renamed from: j */
    public void k(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        context.registerReceiver(new e(), intentFilter);
    }

    private void m() {
        Iterator<d> it = this.f3664b.iterator();
        while (it.hasNext()) {
            d next = it.next();
            if (next.c()) {
                this.f3664b.remove(next);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(int i10) {
        m();
        synchronized (this.f3665c) {
            try {
                if (this.f3667e && this.f3666d == i10) {
                    return;
                }
                this.f3667e = true;
                this.f3666d = i10;
                Iterator<d> it = this.f3664b.iterator();
                while (it.hasNext()) {
                    it.next().b();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public int g() {
        int i10;
        synchronized (this.f3665c) {
            i10 = this.f3666d;
        }
        return i10;
    }

    public void l(c cVar, Executor executor) {
        boolean z10;
        m();
        d dVar = new d(cVar, executor);
        synchronized (this.f3665c) {
            this.f3664b.add(dVar);
            z10 = this.f3667e;
        }
        if (z10) {
            dVar.b();
        }
    }
}
