package com.inmobi.media;

import androidx.browser.trusted.sharing.ShareTarget;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.inmobi.media.AbstractC3204v4;
import com.inmobi.media.N9;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.v4  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC3204v4 {

    /* renamed from: a  reason: collision with root package name */
    public static final ms.i f25356a = kotlin.c.b(C3188u4.f25318a);

    public static final void a(N9 mRequest, C3172t4 listener, C3156s4 eventPayload, int i10, String str, int i11, long j10, C3198ue c3198ue, boolean z10) {
        Intrinsics.checkNotNullParameter(mRequest, "$request");
        Intrinsics.checkNotNullParameter(listener, "$listener");
        Intrinsics.checkNotNullParameter(eventPayload, "$eventPayload");
        Intrinsics.checkNotNullParameter(mRequest, "mRequest");
        P9 b10 = mRequest.b();
        if (b10.b()) {
            boolean z11 = T9.f24217a;
            I9 i92 = b10.f23982d;
            EnumC3093o4 enumC3093o4 = i92 != null ? i92.f23737a : null;
            if (T9.f24217a && (enumC3093o4 == EnumC3093o4.f25103q || enumC3093o4 == EnumC3093o4.f25102p || enumC3093o4 == EnumC3093o4.f25101o || enumC3093o4 == EnumC3093o4.f25100n || enumC3093o4 == EnumC3093o4.f25104r)) {
                listener.a(eventPayload, false);
                return;
            } else if (i10 > 1) {
                Intrinsics.checkNotNullExpressionValue("v4", "TAG");
                b10.a();
                a(eventPayload, str, i11, i10 - 1, j10, c3198ue, listener, z10);
                return;
            } else {
                listener.a(eventPayload, true);
                return;
            }
        }
        listener.getClass();
        Intrinsics.checkNotNullParameter(eventPayload, "eventPayload");
        String TAG = listener.f25297d;
        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        listener.f25294a.a(eventPayload.f25264a);
        listener.f25294a.a(System.currentTimeMillis());
        if (listener.f25296c != null) {
            ArrayList eventIds = eventPayload.f25264a;
            Intrinsics.checkNotNullParameter(eventIds, "eventIds");
            Integer num = Ud.f24278c;
            if (num != null && eventIds.contains(Integer.valueOf(num.intValue()))) {
                Ud.f24277b = 0;
                C6 c62 = Ud.f24276a;
                if (c62 != null) {
                    C6.a(c62, MetricsSQLiteCacheKt.METRICS_COUNT, 0, false, 4, (Object) null);
                }
                Ud.f24278c = null;
            }
        }
        listener.f25298e.set(false);
    }

    public static void a(final C3156s4 c3156s4, final String str, final int i10, final int i11, final long j10, final C3198ue c3198ue, final C3172t4 c3172t4, final boolean z10) {
        long j11;
        long j12;
        HashMap k10;
        HashMap hashMap;
        Intrinsics.checkNotNullExpressionValue("v4", "TAG");
        if (T9.a(false) == null && Uc.m()) {
            final N9 n92 = new N9(ShareTarget.METHOD_POST, str, c3198ue, false, (InterfaceC3269z5) null, (String) null, 104);
            HashMap k11 = kotlin.collections.p0.k(ms.k.a("payload", c3156s4.f25265b));
            if (k11 != null && (hashMap = n92.f23895k) != null) {
                hashMap.putAll(k11);
            }
            int i12 = i10 - i11;
            if (i12 > 0 && (k10 = kotlin.collections.p0.k(ms.k.a("X-im-retry-count", String.valueOf(i12)))) != null) {
                n92.f23893i.putAll(k10);
            }
            n92.f23908x = false;
            n92.f23904t = false;
            n92.f23905u = false;
            if (z10) {
                if (i11 != i10) {
                    j12 = ((long) Math.pow(2.0d, i12)) * j10;
                    j11 = j12;
                    Object value = f25356a.getValue();
                    Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
                    ((ScheduledExecutorService) value).schedule(new Runnable() { // from class: ub.y6
                        @Override // java.lang.Runnable
                        public final void run() {
                            AbstractC3204v4.a(N9.this, c3172t4, c3156s4, i11, str, i10, j10, c3198ue, z10);
                        }
                    }, j11, TimeUnit.SECONDS);
                    return;
                }
            } else if (i11 != i10) {
                j11 = j10;
                Object value2 = f25356a.getValue();
                Intrinsics.checkNotNullExpressionValue(value2, "getValue(...)");
                ((ScheduledExecutorService) value2).schedule(new Runnable() { // from class: ub.y6
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC3204v4.a(N9.this, c3172t4, c3156s4, i11, str, i10, j10, c3198ue, z10);
                    }
                }, j11, TimeUnit.SECONDS);
                return;
            }
            j12 = 0;
            j11 = j12;
            Object value22 = f25356a.getValue();
            Intrinsics.checkNotNullExpressionValue(value22, "getValue(...)");
            ((ScheduledExecutorService) value22).schedule(new Runnable() { // from class: ub.y6
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC3204v4.a(N9.this, c3172t4, c3156s4, i11, str, i10, j10, c3198ue, z10);
                }
            }, j11, TimeUnit.SECONDS);
            return;
        }
        Intrinsics.checkNotNullExpressionValue("v4", "TAG");
        c3172t4.a(c3156s4, false);
    }
}
