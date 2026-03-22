package com.google.firebase.remoteconfig.internal;

import android.content.Context;
import androidx.annotation.GuardedBy;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
/* compiled from: ConfigRealtimeHandler.java */
/* loaded from: classes5.dex */
public class o {
    @GuardedBy("this")

    /* renamed from: a  reason: collision with root package name */
    private final Set<f9.c> f21435a;
    @GuardedBy("this")

    /* renamed from: b  reason: collision with root package name */
    private final r f21436b;

    /* renamed from: c  reason: collision with root package name */
    private final ConfigFetchHandler f21437c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.firebase.f f21438d;

    /* renamed from: e  reason: collision with root package name */
    private final x8.e f21439e;

    /* renamed from: f  reason: collision with root package name */
    private final f f21440f;

    /* renamed from: g  reason: collision with root package name */
    private final Context f21441g;

    /* renamed from: h  reason: collision with root package name */
    private final String f21442h;

    /* renamed from: i  reason: collision with root package name */
    private final s f21443i;

    /* renamed from: j  reason: collision with root package name */
    private final ScheduledExecutorService f21444j;

    public o(com.google.firebase.f fVar, x8.e eVar, ConfigFetchHandler configFetchHandler, f fVar2, Context context, String str, s sVar, ScheduledExecutorService scheduledExecutorService) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        this.f21435a = linkedHashSet;
        this.f21436b = new r(fVar, eVar, configFetchHandler, fVar2, context, str, linkedHashSet, sVar, scheduledExecutorService);
        this.f21438d = fVar;
        this.f21437c = configFetchHandler;
        this.f21439e = eVar;
        this.f21440f = fVar2;
        this.f21441g = context;
        this.f21442h = str;
        this.f21443i = sVar;
        this.f21444j = scheduledExecutorService;
    }

    private synchronized void a() {
        if (!this.f21435a.isEmpty()) {
            this.f21436b.E();
        }
    }

    public synchronized void b(boolean z10) {
        this.f21436b.B(z10);
        if (!z10) {
            a();
        }
    }
}
