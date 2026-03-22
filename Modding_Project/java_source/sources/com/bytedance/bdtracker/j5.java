package com.bytedance.bdtracker;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.AnyThread;
import androidx.annotation.Nullable;
import com.bytedance.applog.IOaidObserver;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.bdtracker.e0;
import com.bytedance.dr.OaidApi;
import com.bytedance.dr.OaidFactory;
import com.bytedance.dr.impl.b;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class j5 {

    /* renamed from: h  reason: collision with root package name */
    public static final String f12103h;

    /* renamed from: i  reason: collision with root package name */
    public static final String f12104i;

    /* renamed from: j  reason: collision with root package name */
    public static final List<IOaidObserver> f12105j = new ArrayList();

    /* renamed from: k  reason: collision with root package name */
    public static g f12106k;

    /* renamed from: l  reason: collision with root package name */
    public static String f12107l;

    /* renamed from: m  reason: collision with root package name */
    public static Map<String, String> f12108m;

    /* renamed from: b  reason: collision with root package name */
    public final OaidApi f12110b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f12111c;

    /* renamed from: d  reason: collision with root package name */
    public final l5 f12112d;

    /* renamed from: e  reason: collision with root package name */
    public final Context f12113e;

    /* renamed from: g  reason: collision with root package name */
    public Long f12115g;

    /* renamed from: a  reason: collision with root package name */
    public final ReentrantLock f12109a = new ReentrantLock();

    /* renamed from: f  reason: collision with root package name */
    public final AtomicBoolean f12114f = new AtomicBoolean(false);

    /* loaded from: classes3.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j5.this.b();
        }
    }

    static {
        String str = j5.class.getSimpleName() + "#";
        f12103h = str;
        f12104i = str;
    }

    public j5(Context context) {
        this.f12113e = context.getApplicationContext();
        OaidApi createOaidImpl = OaidFactory.createOaidImpl(context);
        this.f12110b = createOaidImpl;
        if (createOaidImpl != null) {
            this.f12111c = createOaidImpl.support(context);
        } else {
            this.f12111c = false;
        }
        this.f12112d = new l5(context);
    }

    public static void a(@Nullable IOaidObserver.Oaid oaid, Object[] objArr) {
        if (oaid == null || objArr == null) {
            return;
        }
        for (Object obj : objArr) {
            ((IOaidObserver) obj).onOaidLoaded(oaid);
        }
    }

    public static Object[] c() {
        Object[] objArr;
        List<IOaidObserver> list = f12105j;
        synchronized (list) {
            try {
                if (list.size() > 0) {
                    objArr = list.toArray();
                } else {
                    objArr = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return objArr;
    }

    public final void b() {
        String str;
        Boolean bool;
        int i10;
        OaidApi.a oaid;
        LoggerImpl.global().debug(1, "Oaid#initOaid", new Object[0]);
        try {
            this.f12109a.lock();
            LoggerImpl.global().debug(1, "Oaid#initOaid exec", new Object[0]);
            k5 a10 = this.f12112d.a();
            LoggerImpl.global().debug(1, "Oaid#initOaid fetch={}", a10);
            if (a10 != null) {
                f12107l = a10.f12164a;
                f12108m = a10.a();
            }
            long elapsedRealtime = SystemClock.elapsedRealtime();
            Context context = this.f12113e;
            OaidApi oaidApi = this.f12110b;
            k5 k5Var = null;
            String str2 = null;
            if (oaidApi == null || (oaid = oaidApi.getOaid(context)) == null) {
                str = null;
                bool = null;
            } else {
                str = oaid.f12547a;
                bool = Boolean.valueOf(oaid.f12548b);
                if (oaid instanceof b.a) {
                    this.f12115g = Long.valueOf(((b.a) oaid).f12551c);
                }
            }
            Pair pair = new Pair(str, bool);
            long elapsedRealtime2 = SystemClock.elapsedRealtime() - elapsedRealtime;
            if (pair.first != null) {
                if (a10 != null) {
                    str2 = a10.f12165b;
                    i10 = a10.f12169f.intValue() + 1;
                } else {
                    i10 = -1;
                }
                if (TextUtils.isEmpty(str2)) {
                    str2 = UUID.randomUUID().toString();
                }
                String str3 = str2;
                if (i10 <= 0) {
                    i10 = 1;
                }
                k5 k5Var2 = new k5((String) pair.first, str3, (Boolean) pair.second, Long.valueOf(elapsedRealtime2), Long.valueOf(System.currentTimeMillis()), Integer.valueOf(i10), this.f12115g);
                this.f12112d.a(k5Var2);
                k5Var = k5Var2;
            }
            if (k5Var != null) {
                f12107l = k5Var.f12164a;
                f12108m = k5Var.a();
            }
            LoggerImpl.global().debug(1, "Oaid#initOaid oaidModel={}", k5Var);
            this.f12109a.unlock();
            a(new IOaidObserver.Oaid(f12107l), c());
            g gVar = f12106k;
            if (gVar != null) {
                ((e0.b) gVar).a(f12108m);
            }
        } catch (Throwable th2) {
            this.f12109a.unlock();
            a(new IOaidObserver.Oaid(f12107l), c());
            g gVar2 = f12106k;
            if (gVar2 != null) {
                ((e0.b) gVar2).a(f12108m);
            }
            throw th2;
        }
    }

    @AnyThread
    public static void a(@Nullable IOaidObserver iOaidObserver) {
        g gVar;
        List<IOaidObserver> list = f12105j;
        synchronized (list) {
            list.add(iOaidObserver);
        }
        String str = f12107l;
        if (str != null) {
            a(new IOaidObserver.Oaid(str), new Object[]{iOaidObserver});
        }
        Map<String, String> map = f12108m;
        if (map == null || (gVar = f12106k) == null) {
            return;
        }
        ((e0.b) gVar).a(map);
    }

    public static <K, V> void a(Map<K, V> map, K k10, V v10) {
        if (k10 == null || v10 == null) {
            return;
        }
        map.put(k10, v10);
    }

    public static void b(IOaidObserver iOaidObserver) {
        List<IOaidObserver> list = f12105j;
        synchronized (list) {
            list.remove(iOaidObserver);
        }
    }

    public static void a(JSONObject jSONObject, String str, Object obj) {
        if (TextUtils.isEmpty(str) || obj == null) {
            return;
        }
        try {
            jSONObject.put(str, obj);
        } catch (Throwable th2) {
            LoggerImpl.global().error(1, "JSON put failed", th2, new Object[0]);
        }
    }

    public void a() {
        if (this.f12114f.compareAndSet(false, true)) {
            a aVar = new a();
            String str = f12104i + "-query";
            if (TextUtils.isEmpty(str)) {
                str = "TrackerDr";
            }
            new Thread(new i5(aVar, str), str).start();
        }
    }
}
