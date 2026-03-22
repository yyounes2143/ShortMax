package y2;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.AnyThread;
import androidx.annotation.MainThread;
import java.util.ArrayList;
import y2.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DeferredReleaserConcurrentImpl.java */
/* loaded from: classes3.dex */
public class b extends y2.a {

    /* renamed from: b  reason: collision with root package name */
    private final Object f70596b = new Object();

    /* renamed from: f  reason: collision with root package name */
    private final Runnable f70600f = new a();

    /* renamed from: d  reason: collision with root package name */
    private ArrayList<a.InterfaceC0973a> f70598d = new ArrayList<>();

    /* renamed from: e  reason: collision with root package name */
    private ArrayList<a.InterfaceC0973a> f70599e = new ArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    private final Handler f70597c = new Handler(Looper.getMainLooper());

    /* compiled from: DeferredReleaserConcurrentImpl.java */
    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        @MainThread
        public void run() {
            synchronized (b.this.f70596b) {
                ArrayList arrayList = b.this.f70599e;
                b bVar = b.this;
                bVar.f70599e = bVar.f70598d;
                b.this.f70598d = arrayList;
            }
            int size = b.this.f70599e.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((a.InterfaceC0973a) b.this.f70599e.get(i10)).release();
            }
            b.this.f70599e.clear();
        }
    }

    @Override // y2.a
    @AnyThread
    public void a(a.InterfaceC0973a interfaceC0973a) {
        synchronized (this.f70596b) {
            this.f70598d.remove(interfaceC0973a);
        }
    }

    @Override // y2.a
    @AnyThread
    public void d(a.InterfaceC0973a interfaceC0973a) {
        if (!y2.a.c()) {
            interfaceC0973a.release();
            return;
        }
        synchronized (this.f70596b) {
            try {
                if (this.f70598d.contains(interfaceC0973a)) {
                    return;
                }
                this.f70598d.add(interfaceC0973a);
                boolean z10 = true;
                if (this.f70598d.size() != 1) {
                    z10 = false;
                }
                if (z10) {
                    this.f70597c.post(this.f70600f);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
