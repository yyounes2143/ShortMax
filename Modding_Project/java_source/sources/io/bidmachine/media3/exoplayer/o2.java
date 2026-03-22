package io.bidmachine.media3.exoplayer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Looper;
import androidx.annotation.Nullable;
import cn.f;
import io.bidmachine.media3.exoplayer.o2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StreamVolumeManager.java */
/* loaded from: classes8.dex */
public final class o2 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f56623a;

    /* renamed from: b  reason: collision with root package name */
    private final b f56624b;

    /* renamed from: c  reason: collision with root package name */
    private final cn.f<c> f56625c;

    /* renamed from: d  reason: collision with root package name */
    private AudioManager f56626d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private d f56627e;

    /* renamed from: f  reason: collision with root package name */
    private int f56628f;

    /* compiled from: StreamVolumeManager.java */
    /* loaded from: classes8.dex */
    public interface b {
        void q(int i10);

        void x(int i10, boolean z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: StreamVolumeManager.java */
    /* loaded from: classes8.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final int f56629a;

        /* renamed from: b  reason: collision with root package name */
        public final int f56630b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f56631c;

        /* renamed from: d  reason: collision with root package name */
        public final int f56632d;

        /* renamed from: e  reason: collision with root package name */
        public final int f56633e;

        public c(int i10, int i11, boolean z10, int i12, int i13) {
            this.f56629a = i10;
            this.f56630b = i11;
            this.f56631c = z10;
            this.f56632d = i12;
            this.f56633e = i13;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: StreamVolumeManager.java */
    /* loaded from: classes8.dex */
    public final class d extends BroadcastReceiver {
        private d() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            if (o2.this.f56627e == null) {
                return;
            }
            o2.this.f56625c.i(o2.this.h(((c) o2.this.f56625c.d()).f56629a));
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            o2.this.f56625c.h(new Runnable() { // from class: io.bidmachine.media3.exoplayer.p2
                @Override // java.lang.Runnable
                public final void run() {
                    o2.d.this.b();
                }
            });
        }
    }

    public o2(Context context, b bVar, final int i10, Looper looper, Looper looper2, cn.h hVar) {
        this.f56623a = context.getApplicationContext();
        this.f56624b = bVar;
        cn.f<c> fVar = new cn.f<>(new c(i10, 0, false, 0, 0), looper, looper2, hVar, new f.a() { // from class: io.bidmachine.media3.exoplayer.k2
            @Override // cn.f.a
            public final void a(Object obj, Object obj2) {
                o2.this.n((o2.c) obj, (o2.c) obj2);
            }
        });
        this.f56625c = fVar;
        fVar.h(new Runnable() { // from class: io.bidmachine.media3.exoplayer.l2
            @Override // java.lang.Runnable
            public final void run() {
                o2.this.k(i10);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public c h(int i10) {
        cn.a.e(this.f56626d);
        return new c(i10, an.d.f(this.f56626d, i10), an.d.g(this.f56626d, i10), an.d.e(this.f56626d, i10), an.d.d(this.f56626d, i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(int i10) {
        this.f56626d = (AudioManager) cn.a.i((AudioManager) this.f56623a.getSystemService("audio"));
        d dVar = new d();
        try {
            this.f56623a.registerReceiver(dVar, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
            this.f56627e = dVar;
        } catch (RuntimeException e10) {
            cn.r.i("StreamVolumeManager", "Error registering stream volume receiver", e10);
        }
        this.f56625c.i(h(i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ c m(c cVar) {
        d dVar = this.f56627e;
        if (dVar != null) {
            try {
                this.f56623a.unregisterReceiver(dVar);
            } catch (RuntimeException e10) {
                cn.r.i("StreamVolumeManager", "Error unregistering stream volume receiver", e10);
            }
            this.f56627e = null;
        }
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(c cVar, c cVar2) {
        boolean z10 = cVar.f56631c;
        if (!z10 && cVar2.f56631c) {
            this.f56628f = cVar.f56630b;
        }
        int i10 = cVar.f56630b;
        int i11 = cVar2.f56630b;
        if (i10 != i11 || z10 != cVar2.f56631c) {
            this.f56624b.x(i11, cVar2.f56631c);
        }
        int i12 = cVar.f56629a;
        int i13 = cVar2.f56629a;
        if (i12 != i13 || cVar.f56632d != cVar2.f56632d || cVar.f56633e != cVar2.f56633e) {
            this.f56624b.q(i13);
        }
    }

    public int i() {
        return this.f56625c.d().f56633e;
    }

    public int j() {
        return this.f56625c.d().f56632d;
    }

    public void o() {
        this.f56625c.j(new h7.e() { // from class: io.bidmachine.media3.exoplayer.m2
            @Override // h7.e
            public final Object apply(Object obj) {
                o2.c l10;
                l10 = o2.l((o2.c) obj);
                return l10;
            }
        }, new h7.e() { // from class: io.bidmachine.media3.exoplayer.n2
            @Override // h7.e
            public final Object apply(Object obj) {
                o2.c m10;
                m10 = o2.this.m((o2.c) obj);
                return m10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ c l(c cVar) {
        return cVar;
    }
}
