package com.inmobi.media;

import android.content.Context;
import com.inmobi.media.C3172t4;
import com.ss.ttvideoengine.DataLoaderHelper;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.t4  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3172t4 {

    /* renamed from: a  reason: collision with root package name */
    public final AbstractC3140r4 f25294a;

    /* renamed from: b  reason: collision with root package name */
    public final InterfaceC3210va f25295b;

    /* renamed from: c  reason: collision with root package name */
    public final Db f25296c;

    /* renamed from: d  reason: collision with root package name */
    public final String f25297d;

    /* renamed from: e  reason: collision with root package name */
    public final AtomicBoolean f25298e;

    /* renamed from: f  reason: collision with root package name */
    public final AtomicBoolean f25299f;

    /* renamed from: g  reason: collision with root package name */
    public final LinkedList f25300g;

    /* renamed from: h  reason: collision with root package name */
    public ScheduledExecutorService f25301h;

    /* renamed from: i  reason: collision with root package name */
    public C3125q4 f25302i;

    public C3172t4(AbstractC3140r4 mEventDao, InterfaceC3210va mPayloadProvider, C3125q4 eventConfig, Db db2) {
        Intrinsics.checkNotNullParameter(mEventDao, "mEventDao");
        Intrinsics.checkNotNullParameter(mPayloadProvider, "mPayloadProvider");
        Intrinsics.checkNotNullParameter(eventConfig, "eventConfig");
        this.f25294a = mEventDao;
        this.f25295b = mPayloadProvider;
        this.f25296c = db2;
        this.f25297d = C3172t4.class.getSimpleName();
        this.f25298e = new AtomicBoolean(false);
        this.f25299f = new AtomicBoolean(false);
        this.f25300g = new LinkedList();
        this.f25302i = eventConfig;
    }

    public final void a(long j10, final boolean z10) {
        if (this.f25300g.contains(DataLoaderHelper.PRELOAD_DEFAULT_SCENE)) {
            return;
        }
        this.f25300g.add(DataLoaderHelper.PRELOAD_DEFAULT_SCENE);
        if (this.f25301h == null) {
            String TAG = this.f25297d;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            this.f25301h = Executors.newSingleThreadScheduledExecutor(new K5(TAG));
        }
        Intrinsics.checkNotNullExpressionValue(this.f25297d, "TAG");
        ScheduledExecutorService scheduledExecutorService = this.f25301h;
        if (scheduledExecutorService != null) {
            Runnable runnable = new Runnable() { // from class: ub.q6
                @Override // java.lang.Runnable
                public final void run() {
                    C3172t4.a(C3172t4.this, r2, z10);
                }
            };
            C3125q4 c3125q4 = this.f25302i;
            AbstractC3140r4 abstractC3140r4 = this.f25294a;
            abstractC3140r4.getClass();
            Context d10 = Uc.d();
            long j11 = -1;
            if (d10 != null) {
                ConcurrentHashMap concurrentHashMap = C6.f23529b;
                C6 a10 = B6.a(d10, "batch_processing_info");
                String key = abstractC3140r4.f24167a.concat("_last_batch_process");
                Intrinsics.checkNotNullParameter(key, "key");
                j11 = a10.f23530a.getLong(key, -1L);
            }
            if (((int) j11) == -1) {
                this.f25294a.a(System.currentTimeMillis());
            }
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            scheduledExecutorService.scheduleAtFixedRate(runnable, Math.max(0L, (timeUnit.toSeconds(j11) + (c3125q4 != null ? c3125q4.f25181c : 0L)) - timeUnit.toSeconds(System.currentTimeMillis())), j10, TimeUnit.SECONDS);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ea A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void a(com.inmobi.media.C3172t4 r17, com.inmobi.media.C3198ue r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3172t4.a(com.inmobi.media.t4, com.inmobi.media.ue, boolean):void");
    }

    public final void a(C3156s4 eventPayload, boolean z10) {
        Intrinsics.checkNotNullParameter(eventPayload, "eventPayload");
        String TAG = this.f25297d;
        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        eventPayload.getClass();
        this.f25294a.a(System.currentTimeMillis());
        if (this.f25296c != null) {
            ArrayList eventIds = eventPayload.f25264a;
            Intrinsics.checkNotNullParameter(eventIds, "eventIds");
            Integer num = Ud.f24278c;
            if (num != null && eventIds.contains(Integer.valueOf(num.intValue()))) {
                Ud.f24278c = null;
            }
        }
        this.f25298e.set(false);
    }
}
