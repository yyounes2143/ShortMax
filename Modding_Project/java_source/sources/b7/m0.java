package b7;

import android.os.Handler;
import android.os.Message;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import b7.m;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SystemHandlerWrapper.java */
/* loaded from: classes4.dex */
public final class m0 implements m {
    @GuardedBy("messagePool")

    /* renamed from: b  reason: collision with root package name */
    private static final List<b> f2471b = new ArrayList(50);

    /* renamed from: a  reason: collision with root package name */
    private final Handler f2472a;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SystemHandlerWrapper.java */
    /* loaded from: classes4.dex */
    public static final class b implements m.a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private Message f2473a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private m0 f2474b;

        private b() {
        }

        private void b() {
            this.f2473a = null;
            this.f2474b = null;
            m0.e(this);
        }

        @Override // b7.m.a
        public void a() {
            ((Message) b7.a.e(this.f2473a)).sendToTarget();
            b();
        }

        public boolean c(Handler handler) {
            boolean sendMessageAtFrontOfQueue = handler.sendMessageAtFrontOfQueue((Message) b7.a.e(this.f2473a));
            b();
            return sendMessageAtFrontOfQueue;
        }

        public b d(Message message, m0 m0Var) {
            this.f2473a = message;
            this.f2474b = m0Var;
            return this;
        }
    }

    public m0(Handler handler) {
        this.f2472a = handler;
    }

    private static b d() {
        b remove;
        List<b> list = f2471b;
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
        List<b> list = f2471b;
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

    @Override // b7.m
    public boolean a(int i10) {
        return this.f2472a.hasMessages(i10);
    }

    @Override // b7.m
    public boolean b(m.a aVar) {
        return ((b) aVar).c(this.f2472a);
    }

    @Override // b7.m
    public m.a obtainMessage(int i10) {
        return d().d(this.f2472a.obtainMessage(i10), this);
    }

    @Override // b7.m
    public boolean post(Runnable runnable) {
        return this.f2472a.post(runnable);
    }

    @Override // b7.m
    public void removeCallbacksAndMessages(@Nullable Object obj) {
        this.f2472a.removeCallbacksAndMessages(obj);
    }

    @Override // b7.m
    public void removeMessages(int i10) {
        this.f2472a.removeMessages(i10);
    }

    @Override // b7.m
    public boolean sendEmptyMessage(int i10) {
        return this.f2472a.sendEmptyMessage(i10);
    }

    @Override // b7.m
    public boolean sendEmptyMessageAtTime(int i10, long j10) {
        return this.f2472a.sendEmptyMessageAtTime(i10, j10);
    }

    @Override // b7.m
    public m.a obtainMessage(int i10, @Nullable Object obj) {
        return d().d(this.f2472a.obtainMessage(i10, obj), this);
    }

    @Override // b7.m
    public m.a obtainMessage(int i10, int i11, int i12) {
        return d().d(this.f2472a.obtainMessage(i10, i11, i12), this);
    }

    @Override // b7.m
    public m.a obtainMessage(int i10, int i11, int i12, @Nullable Object obj) {
        return d().d(this.f2472a.obtainMessage(i10, i11, i12, obj), this);
    }
}
