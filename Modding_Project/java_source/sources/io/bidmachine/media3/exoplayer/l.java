package io.bidmachine.media3.exoplayer;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.AudioDeviceCallback;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.media.MediaRoute2Info;
import android.media.MediaRouter2;
import android.media.MediaRouter2$ControllerCallback;
import android.media.MediaRouter2$RouteCallback;
import android.media.RouteDiscoveryPreference;
import android.media.RoutingSessionInfo;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import cn.f;
import com.google.common.collect.ImmutableList;
import io.bidmachine.media3.exoplayer.l;
import io.bidmachine.media3.exoplayer.q2;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DefaultSuitableOutputChecker.java */
/* loaded from: classes8.dex */
public final class l implements q2 {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final q2 f56418a;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultSuitableOutputChecker.java */
    @RequiresApi(23)
    /* loaded from: classes8.dex */
    public static final class b implements q2 {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private AudioManager f56419a;

        /* renamed from: b  reason: collision with root package name */
        private AudioDeviceCallback f56420b;

        /* renamed from: c  reason: collision with root package name */
        private cn.f<Boolean> f56421c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: DefaultSuitableOutputChecker.java */
        /* loaded from: classes8.dex */
        public class a extends AudioDeviceCallback {
            a() {
            }

            @Override // android.media.AudioDeviceCallback
            public void onAudioDevicesAdded(AudioDeviceInfo[] audioDeviceInfoArr) {
                b.this.f56421c.i(Boolean.valueOf(b.this.h()));
            }

            @Override // android.media.AudioDeviceCallback
            public void onAudioDevicesRemoved(AudioDeviceInfo[] audioDeviceInfoArr) {
                b.this.f56421c.i(Boolean.valueOf(b.this.h()));
            }
        }

        private b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean h() {
            AudioDeviceInfo[] devices;
            for (AudioDeviceInfo audioDeviceInfo : ((AudioManager) cn.a.i(this.f56419a)).getDevices(2)) {
                if (audioDeviceInfo.getType() == 8 || audioDeviceInfo.getType() == 5 || audioDeviceInfo.getType() == 6 || audioDeviceInfo.getType() == 11 || audioDeviceInfo.getType() == 4 || audioDeviceInfo.getType() == 3) {
                    return true;
                }
                int i10 = cn.m0.f3614a;
                if (i10 >= 26 && audioDeviceInfo.getType() == 22) {
                    return true;
                }
                if (i10 >= 28 && audioDeviceInfo.getType() == 23) {
                    return true;
                }
                if (i10 >= 31 && (audioDeviceInfo.getType() == 26 || audioDeviceInfo.getType() == 27)) {
                    return true;
                }
                if (i10 >= 33 && audioDeviceInfo.getType() == 30) {
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void i() {
            AudioManager audioManager = this.f56419a;
            if (audioManager != null) {
                audioManager.unregisterAudioDeviceCallback((AudioDeviceCallback) cn.a.e(this.f56420b));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void j(q2.a aVar, Boolean bool, Boolean bool2) {
            aVar.a(bool2.booleanValue());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void k(Context context) {
            AudioManager audioManager;
            cn.a.e(this.f56421c);
            if (!cn.m0.L0(context) || (audioManager = (AudioManager) context.getSystemService("audio")) == null) {
                return;
            }
            this.f56419a = audioManager;
            a aVar = new a();
            this.f56420b = aVar;
            audioManager.registerAudioDeviceCallback(aVar, new Handler((Looper) cn.a.e(Looper.myLooper())));
            this.f56421c.i(Boolean.valueOf(h()));
        }

        @Override // io.bidmachine.media3.exoplayer.q2
        public void a(final q2.a aVar, final Context context, Looper looper, Looper looper2, cn.h hVar) {
            cn.f<Boolean> fVar = new cn.f<>(Boolean.TRUE, looper2, looper, hVar, new f.a() { // from class: io.bidmachine.media3.exoplayer.m
                @Override // cn.f.a
                public final void a(Object obj, Object obj2) {
                    l.b.j(q2.a.this, (Boolean) obj, (Boolean) obj2);
                }
            });
            this.f56421c = fVar;
            fVar.h(new Runnable() { // from class: io.bidmachine.media3.exoplayer.n
                @Override // java.lang.Runnable
                public final void run() {
                    l.b.this.k(context);
                }
            });
        }

        @Override // io.bidmachine.media3.exoplayer.q2
        public boolean b() {
            cn.f<Boolean> fVar = this.f56421c;
            if (fVar == null) {
                return true;
            }
            return fVar.d().booleanValue();
        }

        @Override // io.bidmachine.media3.exoplayer.q2
        public void disable() {
            ((cn.f) cn.a.e(this.f56421c)).h(new Runnable() { // from class: io.bidmachine.media3.exoplayer.o
                @Override // java.lang.Runnable
                public final void run() {
                    l.b.this.i();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultSuitableOutputChecker.java */
    @RequiresApi(35)
    /* loaded from: classes8.dex */
    public static final class c implements q2 {

        /* renamed from: e  reason: collision with root package name */
        private static final RouteDiscoveryPreference f56423e;

        /* renamed from: a  reason: collision with root package name */
        private MediaRouter2 f56424a;

        /* renamed from: b  reason: collision with root package name */
        private MediaRouter2$RouteCallback f56425b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private MediaRouter2$ControllerCallback f56426c;

        /* renamed from: d  reason: collision with root package name */
        private cn.f<Boolean> f56427d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: DefaultSuitableOutputChecker.java */
        /* loaded from: classes8.dex */
        public class a extends MediaRouter2$RouteCallback {
            a() {
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: DefaultSuitableOutputChecker.java */
        /* loaded from: classes8.dex */
        public class b extends MediaRouter2$ControllerCallback {
            b() {
            }

            public void onControllerUpdated(MediaRouter2.RoutingController routingController) {
                c.this.f56427d.i(Boolean.valueOf(c.j(c.this.f56424a)));
            }
        }

        static {
            RouteDiscoveryPreference build;
            com.google.android.gms.internal.ads.s.a();
            build = com.google.android.gms.internal.ads.r.a(ImmutableList.A(), false).build();
            f56423e = build;
        }

        private c() {
        }

        private static boolean i(MediaRoute2Info mediaRoute2Info, int i10, boolean z10) {
            int suitabilityStatus;
            suitabilityStatus = mediaRoute2Info.getSuitabilityStatus();
            if (suitabilityStatus == 1) {
                if ((i10 != 1 && i10 != 2) || !z10) {
                    return false;
                }
                return true;
            } else if (suitabilityStatus != 0) {
                return false;
            } else {
                return true;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean j(MediaRouter2 mediaRouter2) {
            MediaRouter2.RoutingController systemController;
            RoutingSessionInfo routingSessionInfo;
            int transferReason;
            MediaRouter2.RoutingController systemController2;
            boolean wasTransferInitiatedBySelf;
            MediaRouter2.RoutingController systemController3;
            List<Object> selectedRoutes;
            systemController = gn.m.a(cn.a.e(mediaRouter2)).getSystemController();
            routingSessionInfo = systemController.getRoutingSessionInfo();
            transferReason = routingSessionInfo.getTransferReason();
            systemController2 = mediaRouter2.getSystemController();
            wasTransferInitiatedBySelf = systemController2.wasTransferInitiatedBySelf();
            systemController3 = mediaRouter2.getSystemController();
            selectedRoutes = systemController3.getSelectedRoutes();
            for (Object obj : selectedRoutes) {
                if (i(gn.s.a(obj), transferReason, wasTransferInitiatedBySelf)) {
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void k() {
            gn.m.a(cn.a.e(this.f56424a)).unregisterControllerCallback(gn.f.a(cn.a.e(this.f56426c)));
            this.f56426c = null;
            this.f56424a.unregisterRouteCallback(gn.h.a(cn.a.e(this.f56425b)));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void l(q2.a aVar, Boolean bool, Boolean bool2) {
            aVar.a(bool2.booleanValue());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void m(Context context) {
            MediaRouter2 mediaRouter2;
            cn.a.e(this.f56427d);
            mediaRouter2 = MediaRouter2.getInstance(context);
            this.f56424a = mediaRouter2;
            this.f56425b = new a();
            final cn.f<Boolean> fVar = this.f56427d;
            Objects.requireNonNull(fVar);
            Executor executor = new Executor() { // from class: gn.t
                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    cn.f.this.h(runnable);
                }
            };
            this.f56424a.registerRouteCallback(executor, this.f56425b, f56423e);
            b bVar = new b();
            this.f56426c = bVar;
            this.f56424a.registerControllerCallback(executor, bVar);
            this.f56427d.i(Boolean.valueOf(j(this.f56424a)));
        }

        @Override // io.bidmachine.media3.exoplayer.q2
        @SuppressLint({"ThreadSafe"})
        public void a(final q2.a aVar, final Context context, Looper looper, Looper looper2, cn.h hVar) {
            cn.f<Boolean> fVar = new cn.f<>(Boolean.TRUE, looper2, looper, hVar, new f.a() { // from class: io.bidmachine.media3.exoplayer.p
                @Override // cn.f.a
                public final void a(Object obj, Object obj2) {
                    l.c.l(q2.a.this, (Boolean) obj, (Boolean) obj2);
                }
            });
            this.f56427d = fVar;
            fVar.h(new Runnable() { // from class: io.bidmachine.media3.exoplayer.q
                @Override // java.lang.Runnable
                public final void run() {
                    l.c.this.m(context);
                }
            });
        }

        @Override // io.bidmachine.media3.exoplayer.q2
        public boolean b() {
            cn.f<Boolean> fVar = this.f56427d;
            if (fVar == null) {
                return true;
            }
            return fVar.d().booleanValue();
        }

        @Override // io.bidmachine.media3.exoplayer.q2
        public void disable() {
            ((cn.f) cn.a.i(this.f56427d)).h(new Runnable() { // from class: io.bidmachine.media3.exoplayer.r
                @Override // java.lang.Runnable
                public final void run() {
                    l.c.this.k();
                }
            });
        }
    }

    public l() {
        int i10 = cn.m0.f3614a;
        if (i10 >= 35) {
            this.f56418a = new c();
        } else if (i10 >= 23) {
            this.f56418a = new b();
        } else {
            this.f56418a = null;
        }
    }

    @Override // io.bidmachine.media3.exoplayer.q2
    public void a(q2.a aVar, Context context, Looper looper, Looper looper2, cn.h hVar) {
        q2 q2Var = this.f56418a;
        if (q2Var != null) {
            q2Var.a(aVar, context, looper, looper2, hVar);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.q2
    public boolean b() {
        q2 q2Var = this.f56418a;
        if (q2Var != null && !q2Var.b()) {
            return false;
        }
        return true;
    }

    @Override // io.bidmachine.media3.exoplayer.q2
    public void disable() {
        q2 q2Var = this.f56418a;
        if (q2Var != null) {
            q2Var.disable();
        }
    }
}
