package com.google.android.play.integrity.internal;

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
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public final class f {

    /* renamed from: o  reason: collision with root package name */
    private static final Map f19992o = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    private final Context f19993a;

    /* renamed from: b  reason: collision with root package name */
    private final o0 f19994b;

    /* renamed from: c  reason: collision with root package name */
    private final String f19995c;

    /* renamed from: g  reason: collision with root package name */
    private boolean f19999g;

    /* renamed from: h  reason: collision with root package name */
    private final Intent f20000h;

    /* renamed from: i  reason: collision with root package name */
    private final v0 f20001i;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private ServiceConnection f20005m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private IInterface f20006n;

    /* renamed from: d  reason: collision with root package name */
    private final List f19996d = new ArrayList();
    @GuardedBy("attachedRemoteTasksLock")

    /* renamed from: e  reason: collision with root package name */
    private final Set f19997e = new HashSet();

    /* renamed from: f  reason: collision with root package name */
    private final Object f19998f = new Object();

    /* renamed from: k  reason: collision with root package name */
    private final IBinder.DeathRecipient f20003k = new IBinder.DeathRecipient() { // from class: com.google.android.play.integrity.internal.q0
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            f.k(f.this);
        }
    };
    @GuardedBy("attachedRemoteTasksLock")

    /* renamed from: l  reason: collision with root package name */
    private final AtomicInteger f20004l = new AtomicInteger(0);

    /* renamed from: j  reason: collision with root package name */
    private final WeakReference f20002j = new WeakReference(null);

    public f(Context context, o0 o0Var, String str, Intent intent, v0 v0Var, @Nullable u0 u0Var) {
        this.f19993a = context;
        this.f19994b = o0Var;
        this.f19995c = str;
        this.f20000h = intent;
        this.f20001i = v0Var;
    }

    public static /* synthetic */ void k(f fVar) {
        fVar.f19994b.d("reportBinderDeath", new Object[0]);
        u0 u0Var = (u0) fVar.f20002j.get();
        if (u0Var != null) {
            fVar.f19994b.d("calling onBinderDied", new Object[0]);
            u0Var.a();
        } else {
            fVar.f19994b.d("%s : Binder has died.", fVar.f19995c);
            for (p0 p0Var : fVar.f19996d) {
                p0Var.a(fVar.w());
            }
            fVar.f19996d.clear();
        }
        synchronized (fVar.f19998f) {
            fVar.x();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void o(final f fVar, final TaskCompletionSource taskCompletionSource) {
        fVar.f19997e.add(taskCompletionSource);
        taskCompletionSource.getTask().addOnCompleteListener(new OnCompleteListener() { // from class: com.google.android.play.integrity.internal.r0
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                f.this.u(taskCompletionSource, task);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void q(f fVar, p0 p0Var) {
        if (fVar.f20006n == null && !fVar.f19999g) {
            fVar.f19994b.d("Initiate binding to the service.", new Object[0]);
            fVar.f19996d.add(p0Var);
            e eVar = new e(fVar, null);
            fVar.f20005m = eVar;
            fVar.f19999g = true;
            if (!fVar.f19993a.bindService(fVar.f20000h, eVar, 1)) {
                fVar.f19994b.d("Failed to bind to the service.", new Object[0]);
                fVar.f19999g = false;
                for (p0 p0Var2 : fVar.f19996d) {
                    p0Var2.a(new af());
                }
                fVar.f19996d.clear();
            }
        } else if (fVar.f19999g) {
            fVar.f19994b.d("Waiting to bind to the service.", new Object[0]);
            fVar.f19996d.add(p0Var);
        } else {
            p0Var.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void r(f fVar) {
        fVar.f19994b.d("linkToDeath", new Object[0]);
        try {
            fVar.f20006n.asBinder().linkToDeath(fVar.f20003k, 0);
        } catch (RemoteException e10) {
            fVar.f19994b.c(e10, "linkToDeath failed", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void s(f fVar) {
        fVar.f19994b.d("unlinkToDeath", new Object[0]);
        fVar.f20006n.asBinder().unlinkToDeath(fVar.f20003k, 0);
    }

    private final RemoteException w() {
        return new RemoteException(String.valueOf(this.f19995c).concat(" : Binder has died."));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy("attachedRemoteTasksLock")
    public final void x() {
        for (TaskCompletionSource taskCompletionSource : this.f19997e) {
            taskCompletionSource.trySetException(w());
        }
        this.f19997e.clear();
    }

    public final Handler c() {
        Handler handler;
        Map map = f19992o;
        synchronized (map) {
            try {
                if (!map.containsKey(this.f19995c)) {
                    HandlerThread handlerThread = new HandlerThread(this.f19995c, 10);
                    handlerThread.start();
                    map.put(this.f19995c, new Handler(handlerThread.getLooper()));
                }
                handler = (Handler) map.get(this.f19995c);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return handler;
    }

    @Nullable
    public final IInterface e() {
        return this.f20006n;
    }

    public final void t(p0 p0Var, @Nullable TaskCompletionSource taskCompletionSource) {
        c().post(new s0(this, p0Var.c(), taskCompletionSource, p0Var));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void u(TaskCompletionSource taskCompletionSource, Task task) {
        synchronized (this.f19998f) {
            this.f19997e.remove(taskCompletionSource);
        }
    }

    public final void v(TaskCompletionSource taskCompletionSource) {
        synchronized (this.f19998f) {
            this.f19997e.remove(taskCompletionSource);
        }
        c().post(new t0(this));
    }
}
