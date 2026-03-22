package io.bidmachine;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.bidmachine.protobuf.AdCachePlacementControl;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdResponseManager.java */
/* loaded from: classes7.dex */
public class w0 {

    /* renamed from: c  reason: collision with root package name */
    private static volatile w0 f58706c;

    /* renamed from: d  reason: collision with root package name */
    private static final Map<String, AdCachePlacementControl> f58707d = new ConcurrentHashMap();

    /* renamed from: a  reason: collision with root package name */
    private final Object f58708a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final List<u> f58709b = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdResponseManager.java */
    /* loaded from: classes7.dex */
    public class a implements Comparator<u> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(u uVar, u uVar2) {
            return -Double.compare(uVar.F(), uVar2.F());
        }
    }

    w0() {
    }

    @NonNull
    public static w0 e() {
        w0 w0Var = f58706c;
        if (w0Var == null) {
            synchronized (w0.class) {
                try {
                    w0Var = f58706c;
                    if (w0Var == null) {
                        w0Var = new w0();
                        f58706c = w0Var;
                    }
                } finally {
                }
            }
        }
        return w0Var;
    }

    private AdCachePlacementControl f(@NonNull AdRequestParameters adRequestParameters) {
        return f58707d.get(adRequestParameters.getAdsType().getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String i(u uVar) {
        return String.format("receive - %s", uVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String j(u uVar) {
        return String.format("remove - %s", uVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String k(u uVar) {
        return String.format("store - %s", uVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void o(@Nullable Map<String, AdCachePlacementControl> map) {
        Map<String, AdCachePlacementControl> map2 = f58707d;
        map2.clear();
        if (map != null) {
            map2.putAll(map);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d(@NonNull u uVar) {
        boolean contains;
        synchronized (this.f58708a) {
            contains = this.f58709b.contains(uVar);
        }
        return contains;
    }

    @VisibleForTesting
    int g(@NonNull AdRequestParameters adRequestParameters) {
        int i10;
        AdCachePlacementControl f10 = f(adRequestParameters);
        if (f10 != null) {
            i10 = f10.getMaxRetainCount();
        } else {
            i10 = 0;
        }
        if (i10 <= 0) {
            return 2;
        }
        return i10;
    }

    @VisibleForTesting
    int h(@NonNull AdRequestParameters adRequestParameters) {
        int i10;
        AdCachePlacementControl f10 = f(adRequestParameters);
        if (f10 != null) {
            i10 = f10.getMaxCacheSize();
        } else {
            i10 = 0;
        }
        if (i10 <= 0) {
            return 8;
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public List<u> l(@NonNull AdRequestParameters adRequestParameters) {
        synchronized (this.f58708a) {
            try {
                ArrayList arrayList = new ArrayList();
                for (u uVar : this.f58709b) {
                    if (uVar.G() == AdResponseStatus.Idle && adRequestParameters.isParametersMatched(uVar.B())) {
                        arrayList.add(uVar);
                    }
                }
                if (arrayList.isEmpty()) {
                    return arrayList;
                }
                Collections.sort(arrayList, new a());
                return arrayList.subList(0, Math.min(g(adRequestParameters), arrayList.size()));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public u m(@NonNull AdRequestParameters adRequestParameters) {
        synchronized (this.f58708a) {
            try {
                int g10 = g(adRequestParameters);
                int i10 = 0;
                final u uVar = null;
                u uVar2 = null;
                for (u uVar3 : this.f58709b) {
                    if (!uVar3.d0() && adRequestParameters.isParametersMatched(uVar3.B())) {
                        AdResponseStatus G = uVar3.G();
                        AdResponseStatus adResponseStatus = AdResponseStatus.Idle;
                        if (G == adResponseStatus) {
                            if (uVar != null && uVar3.F() <= uVar.F()) {
                            }
                            uVar = uVar3;
                        } else if (uVar3.G() == AdResponseStatus.Busy) {
                            i10++;
                            if (uVar2 == null) {
                                uVar2 = uVar3;
                            }
                            if (i10 >= g10) {
                                uVar2.w(null);
                                uVar2.n();
                                uVar2.Z(adResponseStatus);
                                if (uVar == null || uVar2.F() >= uVar.F()) {
                                    uVar = uVar2;
                                }
                            }
                        }
                    }
                }
                if (uVar == null || !adRequestParameters.isPricePassedByPriceFloor(uVar.F())) {
                    return null;
                }
                uVar.Z(AdResponseStatus.Busy);
                io.bidmachine.core.a.b("AdResponseManager", new hr.b() { // from class: io.bidmachine.t0
                    @Override // hr.b
                    public final Object get() {
                        String i11;
                        i11 = w0.i(u.this);
                        return i11;
                    }
                });
                this.f58709b.remove(uVar);
                this.f58709b.add(uVar);
                return uVar;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n(@NonNull final u uVar) {
        io.bidmachine.core.a.b("AdResponseManager", new hr.b() { // from class: io.bidmachine.v0
            @Override // hr.b
            public final Object get() {
                String j10;
                j10 = w0.j(u.this);
                return j10;
            }
        });
        synchronized (this.f58708a) {
            this.f58709b.remove(uVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:43:0x009e A[Catch: all -> 0x0053, TryCatch #0 {all -> 0x0053, blocks: (B:7:0x0014, B:8:0x0023, B:10:0x0029, B:13:0x003a, B:16:0x0046, B:22:0x0057, B:24:0x005f, B:27:0x0065, B:30:0x006f, B:32:0x0075, B:34:0x007c, B:38:0x008a, B:41:0x0092, B:43:0x009e, B:44:0x00a8, B:46:0x00aa, B:47:0x00af), top: B:51:0x0014 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a8 A[Catch: all -> 0x0053, DONT_GENERATE, TryCatch #0 {all -> 0x0053, blocks: (B:7:0x0014, B:8:0x0023, B:10:0x0029, B:13:0x003a, B:16:0x0046, B:22:0x0057, B:24:0x005f, B:27:0x0065, B:30:0x006f, B:32:0x0075, B:34:0x007c, B:38:0x008a, B:41:0x0092, B:43:0x009e, B:44:0x00a8, B:46:0x00aa, B:47:0x00af), top: B:51:0x0014 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void p(@androidx.annotation.NonNull final io.bidmachine.u r13) {
        /*
            r12 = this;
            boolean r0 = r13.m()
            if (r0 != 0) goto L7
            return
        L7:
            java.lang.String r0 = "AdResponseManager"
            io.bidmachine.u0 r1 = new io.bidmachine.u0
            r1.<init>()
            io.bidmachine.core.a.b(r0, r1)
            java.lang.Object r0 = r12.f58708a
            monitor-enter(r0)
            io.bidmachine.AdRequestParameters r1 = r13.B()     // Catch: java.lang.Throwable -> L53
            java.util.List<io.bidmachine.u> r2 = r12.f58709b     // Catch: java.lang.Throwable -> L53
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> L53
            r3 = 0
            r4 = 0
            r5 = r4
            r6 = r5
            r4 = r3
        L23:
            boolean r7 = r2.hasNext()     // Catch: java.lang.Throwable -> L53
            if (r7 == 0) goto L65
            java.lang.Object r7 = r2.next()     // Catch: java.lang.Throwable -> L53
            io.bidmachine.u r7 = (io.bidmachine.u) r7     // Catch: java.lang.Throwable -> L53
            io.bidmachine.AdRequestParameters r8 = r7.B()     // Catch: java.lang.Throwable -> L53
            boolean r8 = r1.isParametersMatched(r8)     // Catch: java.lang.Throwable -> L53
            if (r8 != 0) goto L3a
            goto L23
        L3a:
            int r6 = r6 + 1
            io.bidmachine.AdResponseStatus r8 = r7.G()     // Catch: java.lang.Throwable -> L53
            io.bidmachine.AdResponseStatus r9 = io.bidmachine.AdResponseStatus.Idle     // Catch: java.lang.Throwable -> L53
            if (r8 != r9) goto L57
            if (r4 == 0) goto L55
            double r8 = r4.F()     // Catch: java.lang.Throwable -> L53
            double r10 = r7.F()     // Catch: java.lang.Throwable -> L53
            int r8 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1))
            if (r8 <= 0) goto L23
            goto L55
        L53:
            r13 = move-exception
            goto Lb1
        L55:
            r4 = r7
            goto L23
        L57:
            io.bidmachine.AdResponseStatus r8 = r7.G()     // Catch: java.lang.Throwable -> L53
            io.bidmachine.AdResponseStatus r9 = io.bidmachine.AdResponseStatus.Busy     // Catch: java.lang.Throwable -> L53
            if (r8 != r9) goto L23
            int r5 = r5 + 1
            if (r3 != 0) goto L23
            r3 = r7
            goto L23
        L65:
            io.bidmachine.AdResponseStatus r2 = r13.G()     // Catch: java.lang.Throwable -> L53
            io.bidmachine.AdResponseStatus r7 = io.bidmachine.AdResponseStatus.Busy     // Catch: java.lang.Throwable -> L53
            if (r2 != r7) goto L89
            if (r3 == 0) goto L89
            int r2 = r12.g(r1)     // Catch: java.lang.Throwable -> L53
            if (r5 < r2) goto L89
            io.bidmachine.AdResponseStatus r2 = io.bidmachine.AdResponseStatus.Idle     // Catch: java.lang.Throwable -> L53
            r3.Z(r2)     // Catch: java.lang.Throwable -> L53
            if (r4 == 0) goto L8a
            double r7 = r4.F()     // Catch: java.lang.Throwable -> L53
            double r9 = r3.F()     // Catch: java.lang.Throwable -> L53
            int r2 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r2 <= 0) goto L89
            goto L8a
        L89:
            r3 = r4
        L8a:
            int r1 = r12.h(r1)     // Catch: java.lang.Throwable -> L53
            if (r6 < r1) goto Laa
            if (r3 == 0) goto Laa
            double r1 = r13.F()     // Catch: java.lang.Throwable -> L53
            double r4 = r3.F()     // Catch: java.lang.Throwable -> L53
            int r1 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
            if (r1 < 0) goto La8
            r1 = 1
            r3.U(r1)     // Catch: java.lang.Throwable -> L53
            java.util.List<io.bidmachine.u> r1 = r12.f58709b     // Catch: java.lang.Throwable -> L53
            r1.remove(r3)     // Catch: java.lang.Throwable -> L53
            goto Laa
        La8:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L53
            return
        Laa:
            java.util.List<io.bidmachine.u> r1 = r12.f58709b     // Catch: java.lang.Throwable -> L53
            r1.add(r13)     // Catch: java.lang.Throwable -> L53
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L53
            return
        Lb1:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L53
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.w0.p(io.bidmachine.u):void");
    }
}
