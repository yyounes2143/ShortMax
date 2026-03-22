package com.inmobi.media;

import androidx.core.app.NotificationCompat;
import com.inmobi.media.D5;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public abstract class D5 {

    /* renamed from: a  reason: collision with root package name */
    public static final CopyOnWriteArrayList f23562a = new CopyOnWriteArrayList();

    /* renamed from: b  reason: collision with root package name */
    public static final AtomicBoolean f23563b = new AtomicBoolean(false);

    /* renamed from: c  reason: collision with root package name */
    public static final C5 f23564c = new C5();

    public static void a(C2952f7 finishListener) {
        Intrinsics.checkNotNullParameter(finishListener, "finishListener");
        if (!f23563b.getAndSet(true)) {
            b();
        }
        CopyOnWriteArrayList copyOnWriteArrayList = f23562a;
        copyOnWriteArrayList.add(new WeakReference(finishListener));
        try {
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                if (weakReference.get() == null) {
                    f23562a.remove(weakReference);
                }
            }
        } catch (Exception e10) {
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
        }
    }

    public static void b() {
        Runnable runnable = new Runnable() { // from class: ub.n
            @Override // java.lang.Runnable
            public final void run() {
                D5.c();
            }
        };
        ScheduledExecutorService scheduledExecutorService = Ie.f23745a;
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        Ie.f23745a.execute(runnable);
    }

    public static final void c() {
        Z6 d10 = Nc.d();
        C5 listener = f23564c;
        d10.getClass();
        Intrinsics.checkNotNullParameter(listener, "listener");
        d10.f24438b = listener;
    }

    public static ArrayList a() {
        ArrayList arrayList = new ArrayList();
        CopyOnWriteArrayList copyOnWriteArrayList = AbstractC3016j7.f24898a;
        ArrayList arrayList2 = new ArrayList();
        try {
            Iterator it = AbstractC3016j7.f24898a.iterator();
            while (it.hasNext()) {
                Ab ab2 = (Ab) ((WeakReference) it.next()).get();
                if (ab2 != null) {
                    arrayList2.add(ab2);
                }
            }
        } catch (Exception e10) {
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
        }
        CopyOnWriteArrayList copyOnWriteArrayList2 = AbstractC3016j7.f24898a;
        arrayList2.toString();
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            arrayList.add(new Fc((Ab) it2.next()));
        }
        return arrayList;
    }
}
