package com.inmobi.media;

import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioManager;
import com.inmobi.media.InterfaceC3269z5;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes5.dex */
public final class r extends Lambda implements Function0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ InterfaceC3269z5 f25218a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Context f25219b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ long f25220c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(InterfaceC3269z5 interfaceC3269z5, Context context, long j10) {
        super(0);
        this.f25218a = interfaceC3269z5;
        this.f25219b = context;
        this.f25220c = j10;
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: a */
    public final Unit invoke() {
        if (C3151s.f25257d.compareAndSet(false, true)) {
            final InterfaceC3269z5 interfaceC3269z5 = this.f25218a;
            final Context context = this.f25219b;
            final long j10 = this.f25220c;
            ((ScheduledThreadPoolExecutor) AbstractC3268z4.f25481c.getValue()).execute(new Runnable() { // from class: ub.d6
                @Override // java.lang.Runnable
                public final void run() {
                    com.inmobi.media.r.a(InterfaceC3269z5.this, context, j10);
                }
            });
            return Unit.f60915a;
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f25218a;
        if (interfaceC3269z52 != null) {
            ((A5) interfaceC3269z52).c("AdAudioTracker", "Audio volume tracking is already started");
            return Unit.f60915a;
        }
        return null;
    }

    public static final void a(InterfaceC3269z5 interfaceC3269z5, Context context, long j10) {
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("AdAudioTracker", "Starting audio volume tracking");
        }
        if (C3151s.f25255b == null) {
            Object systemService = context.getSystemService("audio");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.media.AudioManager");
            C3151s.f25255b = (AudioManager) systemService;
        }
        C3151s c3151s = C3151s.f25254a;
        C3151s.a(j10);
        C3120q c3120q = new C3120q(j10);
        C3151s.f25261h = c3120q;
        Uc.f().a(new int[]{102, 101}, c3120q);
        C3151s.f25256c = new C3072n();
        context.registerReceiver(C3151s.f25256c, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
        C3151s.a(Float.valueOf(c3151s.a()));
    }
}
