package cn;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import cn.n;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SystemHandlerWrapper.java */
/* loaded from: classes8.dex */
public final class f0 implements n {
    @GuardedBy("messagePool")

    /* renamed from: b  reason: collision with root package name */
    private static final List<b> f3586b = new ArrayList(50);

    /* renamed from: a  reason: collision with root package name */
    private final Handler f3587a;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SystemHandlerWrapper.java */
    /* loaded from: classes8.dex */
    public static final class b implements n.a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private Message f3588a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private f0 f3589b;

        private b() {
        }

        private void b() {
            this.f3588a = null;
            this.f3589b = null;
            f0.e(this);
        }

        @Override // cn.n.a
        public void a() {
            ((Message) cn.a.e(this.f3588a)).sendToTarget();
            b();
        }

        public boolean c(Handler handler) {
            boolean sendMessageAtFrontOfQueue = handler.sendMessageAtFrontOfQueue((Message) cn.a.e(this.f3588a));
            b();
            return sendMessageAtFrontOfQueue;
        }

        public b d(Message message, f0 f0Var) {
            this.f3588a = message;
            this.f3589b = f0Var;
            return this;
        }
    }

    public f0(Handler handler) {
        this.f3587a = handler;
    }

    private static b d() {
        b remove;
        List<b> list = f3586b;
        synchronized (list) {
            try {
                if (list.isEmpty()) {
                    remove = new b();
                } else {
                    remove = list.remove(list.size() - 1);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return remove;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(b bVar) {
        List<b> list = f3586b;
        synchronized (list) {
            try {
                if (list.size() < 50) {
                    list.add(bVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // cn.n
    public boolean a(int i10) {
        boolean z10;
        if (i10 != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.a(z10);
        return this.f3587a.hasMessages(i10);
    }

    @Override // cn.n
    public boolean b(n.a aVar) {
        return ((b) aVar).c(this.f3587a);
    }

    @Override // cn.n
    public Looper getLooper() {
        return this.f3587a.getLooper();
    }

    @Override // cn.n
    public n.a obtainMessage(int i10) {
        return d().d(this.f3587a.obtainMessage(i10), this);
    }

    @Override // cn.n
    public boolean post(Runnable runnable) {
        return this.f3587a.post(runnable);
    }

    @Override // cn.n
    public void removeCallbacksAndMessages(@Nullable Object obj) {
        this.f3587a.removeCallbacksAndMessages(obj);
    }

    @Override // cn.n
    public void removeMessages(int i10) {
        boolean z10;
        if (i10 != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.a(z10);
        this.f3587a.removeMessages(i10);
    }

    @Override // cn.n
    public boolean sendEmptyMessage(int i10) {
        return this.f3587a.sendEmptyMessage(i10);
    }

    @Override // cn.n
    public boolean sendEmptyMessageAtTime(int i10, long j10) {
        return this.f3587a.sendEmptyMessageAtTime(i10, j10);
    }

    @Override // cn.n
    public n.a obtainMessage(int i10, @Nullable Object obj) {
        return d().d(this.f3587a.obtainMessage(i10, obj), this);
    }

    @Override // cn.n
    public n.a obtainMessage(int i10, int i11, int i12) {
        return d().d(this.f3587a.obtainMessage(i10, i11, i12), this);
    }

    @Override // cn.n
    public n.a obtainMessage(int i10, int i11, int i12, @Nullable Object obj) {
        return d().d(this.f3587a.obtainMessage(i10, i11, i12, obj), this);
    }
}
