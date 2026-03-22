package com.google.firebase.appcheck.internal;

import android.app.Application;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.work.PeriodicWorkRequest;
import com.google.android.gms.common.api.internal.BackgroundDetector;
import com.google.android.gms.common.internal.Preconditions;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import r7.a;
/* compiled from: TokenRefreshManager.java */
/* loaded from: classes5.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private final c f20382a;

    /* renamed from: b  reason: collision with root package name */
    private final r7.a f20383b;

    /* renamed from: c  reason: collision with root package name */
    private volatile boolean f20384c;

    /* renamed from: d  reason: collision with root package name */
    private volatile int f20385d;

    /* renamed from: e  reason: collision with root package name */
    private volatile long f20386e;

    /* renamed from: f  reason: collision with root package name */
    private volatile boolean f20387f;

    /* compiled from: TokenRefreshManager.java */
    /* loaded from: classes5.dex */
    class a implements BackgroundDetector.BackgroundStateChangeListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f20388a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ r7.a f20389b;

        a(c cVar, r7.a aVar) {
            this.f20388a = cVar;
            this.f20389b = aVar;
        }

        @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
        public void onBackgroundStateChanged(boolean z10) {
            e.this.f20384c = z10;
            if (z10) {
                this.f20388a.c();
            } else if (e.this.f()) {
                this.f20388a.g(e.this.f20386e - this.f20389b.currentTimeMillis());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(@NonNull Context context, @NonNull b bVar, @o7.c Executor executor, @o7.b ScheduledExecutorService scheduledExecutorService) {
        this((Context) Preconditions.checkNotNull(context), new c((b) Preconditions.checkNotNull(bVar), executor, scheduledExecutorService), new a.C0914a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean f() {
        if (this.f20387f && !this.f20384c && this.f20385d > 0 && this.f20386e != -1) {
            return true;
        }
        return false;
    }

    public void d(@NonNull p7.c cVar) {
        com.google.firebase.appcheck.internal.a d10;
        if (cVar instanceof com.google.firebase.appcheck.internal.a) {
            d10 = (com.google.firebase.appcheck.internal.a) cVar;
        } else {
            d10 = com.google.firebase.appcheck.internal.a.d(cVar.b());
        }
        this.f20386e = d10.h() + ((long) (d10.f() * 0.5d)) + PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS;
        if (this.f20386e > d10.a()) {
            this.f20386e = d10.a() - ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS;
        }
        if (f()) {
            this.f20382a.g(this.f20386e - this.f20383b.currentTimeMillis());
        }
    }

    public void e(boolean z10) {
        this.f20387f = z10;
    }

    @VisibleForTesting
    e(Context context, c cVar, r7.a aVar) {
        this.f20382a = cVar;
        this.f20383b = aVar;
        this.f20386e = -1L;
        BackgroundDetector.initialize((Application) context.getApplicationContext());
        BackgroundDetector.getInstance().addListener(new a(cVar, aVar));
    }
}
