package com.startshorts.androidplayer.manager.configure.ad;

import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.configure.ad.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdActionCounter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class b {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f42335d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final List<b> f42336e;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f42337a;

    /* renamed from: b  reason: collision with root package name */
    private int f42338b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Function0<Integer> f42339c;

    /* compiled from: AdActionCounter.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nAdActionCounter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdActionCounter.kt\ncom/startshorts/androidplayer/manager/configure/ad/AdActionCounter$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,112:1\n1#2:113\n1863#3,2:114\n1863#3,2:116\n*S KotlinDebug\n*F\n+ 1 AdActionCounter.kt\ncom/startshorts/androidplayer/manager/configure/ad/AdActionCounter$Companion\n*L\n46#1:114,2\n59#1:116,2\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean d(String str, Function0<Integer> function0) {
            return b.f42336e.add(new b(str, 0, function0));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final int f() {
            return 1;
        }

        public final void c() {
            ud.b.f68412a.v2(false);
            for (b bVar : b.f42336e) {
                bVar.f42338b = 0;
            }
            Logger.f41511a.h("AdActionCounter", "onPaid,PersistentCacheManager.adConsumerIsReady=false");
        }

        @Nullable
        public final b e() {
            Object obj;
            if (ud.b.f68412a.l()) {
                return new b("consumer_is_ready", 1, new Function0() { // from class: oe.d
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        int f10;
                        f10 = b.a.f();
                        return Integer.valueOf(f10);
                    }
                });
            }
            Iterator it = b.f42336e.iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    if (((b) obj).k()) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            b bVar = (b) obj;
            Logger.f41511a.h("AdActionCounter", "getConsumer " + bVar);
            String str = "";
            for (b bVar2 : b.f42336e) {
                str = str + '[' + bVar2.m() + ",current=" + bVar2.f42338b + ",threshold=" + ((Number) bVar2.f42339c.invoke()).intValue() + ']';
            }
            Logger.f41511a.h("AdActionCounter", "getConsumable : " + str);
            if (bVar != null) {
                ud.b.f68412a.v2(true);
            }
            return bVar;
        }

        public final synchronized void g(@NotNull String key) {
            Object obj;
            Intrinsics.checkNotNullParameter(key, "key");
            if (ud.b.f68412a.l()) {
                Logger.f41511a.h("AdActionCounter", "increment ignore. adConsumerIsReady = true");
            } else if (e() != null) {
                Logger.f41511a.h("AdActionCounter", "increment ignore. 如果已有可消费的,就不要计数.");
            } else {
                Iterator it = b.f42336e.iterator();
                while (true) {
                    if (it.hasNext()) {
                        obj = it.next();
                        if (Intrinsics.areEqual(((b) obj).m(), key)) {
                            break;
                        }
                    } else {
                        obj = null;
                        break;
                    }
                }
                b bVar = (b) obj;
                if (bVar != null) {
                    bVar.n();
                    Logger logger = Logger.f41511a;
                    logger.h("AdActionCounter", "increment succeed. key=" + key + ",count=" + bVar.f42338b + ",threshold=" + ((Number) bVar.f42339c.invoke()).intValue() + '.');
                } else {
                    Logger logger2 = Logger.f41511a;
                    logger2.e("AdActionCounter", "increment fail. key=" + key);
                }
            }
        }

        private a() {
        }
    }

    static {
        a aVar = new a(null);
        f42335d = aVar;
        f42336e = new ArrayList();
        aVar.d("exit_from_immerse_unpaid", new Function0() { // from class: oe.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int d10;
                d10 = com.startshorts.androidplayer.manager.configure.ad.b.d();
                return Integer.valueOf(d10);
            }
        });
        aVar.d("enter_paid_point_unpaid", new Function0() { // from class: oe.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int e10;
                e10 = com.startshorts.androidplayer.manager.configure.ad.b.e();
                return Integer.valueOf(e10);
            }
        });
        aVar.d("unpaid_on_watch_ad_earn_bonus", new Function0() { // from class: oe.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int f10;
                f10 = com.startshorts.androidplayer.manager.configure.ad.b.f();
                return Integer.valueOf(f10);
            }
        });
    }

    public b(@NotNull String key, int i10, @NotNull Function0<Integer> threshold) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(threshold, "threshold");
        this.f42337a = key;
        this.f42338b = i10;
        this.f42339c = threshold;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int d() {
        return com.startshorts.androidplayer.manager.configure.ad.a.f42306a.f().g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int e() {
        return com.startshorts.androidplayer.manager.configure.ad.a.f42306a.f().m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int f() {
        return com.startshorts.androidplayer.manager.configure.ad.a.f42306a.f().l();
    }

    public final boolean k() {
        if (this.f42338b >= this.f42339c.invoke().intValue()) {
            return true;
        }
        return false;
    }

    public final synchronized void l() {
        if (k()) {
            this.f42338b = 0;
        }
    }

    @NotNull
    public final String m() {
        return this.f42337a;
    }

    public final synchronized void n() {
        this.f42338b++;
        f42335d.e();
    }

    @NotNull
    public String toString() {
        return this.f42337a + " : count=" + this.f42338b + ",threshold=" + this.f42339c.invoke().intValue() + '.';
    }
}
