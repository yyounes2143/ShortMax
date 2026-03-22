package f7;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.core.review.internal.zzu;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: com.google.android.play:review@@2.0.2 */
/* loaded from: classes5.dex */
public final class t {

    /* renamed from: n */
    private static final Map f51649n = new HashMap();

    /* renamed from: a */
    private final Context f51650a;

    /* renamed from: b */
    private final i f51651b;

    /* renamed from: g */
    private boolean f51656g;

    /* renamed from: h */
    private final Intent f51657h;
    @Nullable

    /* renamed from: l */
    private ServiceConnection f51661l;
    @Nullable

    /* renamed from: m */
    private IInterface f51662m;

    /* renamed from: d */
    private final List f51653d = new ArrayList();
    @GuardedBy("attachedRemoteTasksLock")

    /* renamed from: e */
    private final Set f51654e = new HashSet();

    /* renamed from: f */
    private final Object f51655f = new Object();

    /* renamed from: j */
    private final IBinder.DeathRecipient f51659j = new IBinder.DeathRecipient() { // from class: f7.k
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            t.j(t.this);
        }
    };
    @GuardedBy("attachedRemoteTasksLock")

    /* renamed from: k */
    private final AtomicInteger f51660k = new AtomicInteger(0);

    /* renamed from: c */
    private final String f51652c = "com.google.android.finsky.inappreviewservice.InAppReviewService";

    /* renamed from: i */
    private final WeakReference f51658i = new WeakReference(null);

    public t(Context context, i iVar, String str, Intent intent, com.google.android.play.core.review.e eVar, @Nullable o oVar) {
        this.f51650a = context;
        this.f51651b = iVar;
        this.f51657h = intent;
    }

    public static /* synthetic */ void j(t tVar) {
        tVar.f51651b.c("reportBinderDeath", new Object[0]);
        o oVar = (o) tVar.f51658i.get();
        if (oVar != null) {
            tVar.f51651b.c("calling onBinderDied", new Object[0]);
            oVar.zza();
        } else {
            tVar.f51651b.c("%s : Binder has died.", tVar.f51652c);
            for (j jVar : tVar.f51653d) {
                jVar.d(tVar.v());
            }
            tVar.f51653d.clear();
        }
        synchronized (tVar.f51655f) {
            tVar.w();
        }
    }

    public static /* bridge */ /* synthetic */ void n(t tVar, final TaskCompletionSource taskCompletionSource) {
        tVar.f51654e.add(taskCompletionSource);
        taskCompletionSource.getTask().addOnCompleteListener(new OnCompleteListener() { // from class: f7.l
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                t.this.t(taskCompletionSource, task);
            }
        });
    }

    public static /* bridge */ /* synthetic */ void p(t tVar, j jVar) {
        if (tVar.f51662m == null && !tVar.f51656g) {
            tVar.f51651b.c("Initiate binding to the service.", new Object[0]);
            tVar.f51653d.add(jVar);
            r rVar = new r(tVar, null);
            tVar.f51661l = rVar;
            tVar.f51656g = true;
            if (!tVar.f51650a.bindService(tVar.f51657h, rVar, 1)) {
                tVar.f51651b.c("Failed to bind to the service.", new Object[0]);
                tVar.f51656g = false;
                for (j jVar2 : tVar.f51653d) {
                    jVar2.d(new zzu());
                }
                tVar.f51653d.clear();
            }
        } else if (tVar.f51656g) {
            tVar.f51651b.c("Waiting to bind to the service.", new Object[0]);
            tVar.f51653d.add(jVar);
        } else {
            jVar.run();
        }
    }

    public static /* bridge */ /* synthetic */ void q(t tVar) {
        tVar.f51651b.c("linkToDeath", new Object[0]);
        try {
            tVar.f51662m.asBinder().linkToDeath(tVar.f51659j, 0);
        } catch (RemoteException e10) {
            tVar.f51651b.b(e10, "linkToDeath failed", new Object[0]);
        }
    }

    public static /* bridge */ /* synthetic */ void r(t tVar) {
        tVar.f51651b.c("unlinkToDeath", new Object[0]);
        tVar.f51662m.asBinder().unlinkToDeath(tVar.f51659j, 0);
    }

    private final RemoteException v() {
        return new RemoteException(String.valueOf(this.f51652c).concat(" : Binder has died."));
    }

    @GuardedBy("attachedRemoteTasksLock")
    public final void w() {
        for (TaskCompletionSource taskCompletionSource : this.f51654e) {
            taskCompletionSource.trySetException(v());
        }
        this.f51654e.clear();
    }

    public final Handler c() {
        Handler handler;
        Map map = f51649n;
        synchronized (map) {
            try {
                if (!map.containsKey(this.f51652c)) {
                    HandlerThread handlerThread = new HandlerThread(this.f51652c, 10);
                    handlerThread.start();
                    map.put(this.f51652c, new Handler(handlerThread.getLooper()));
                }
                handler = (Handler) map.get(this.f51652c);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return handler;
    }

    @Nullable
    public final IInterface e() {
        return this.f51662m;
    }

    public final void s(j jVar, @Nullable TaskCompletionSource taskCompletionSource) {
        c().post(new m(this, jVar.c(), taskCompletionSource, jVar));
    }

    public final /* synthetic */ void t(TaskCompletionSource taskCompletionSource, Task task) {
        synchronized (this.f51655f) {
            this.f51654e.remove(taskCompletionSource);
        }
    }

    public final void u(TaskCompletionSource taskCompletionSource) {
        synchronized (this.f51655f) {
            this.f51654e.remove(taskCompletionSource);
        }
        c().post(new n(this));
    }
}
