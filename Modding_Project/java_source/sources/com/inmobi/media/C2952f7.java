package com.inmobi.media;

import android.content.Context;
import com.inmobi.media.C2952f7;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.f7  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2952f7 {

    /* renamed from: a  reason: collision with root package name */
    public final String f24729a;

    /* renamed from: b  reason: collision with root package name */
    public final long f24730b;

    /* renamed from: c  reason: collision with root package name */
    public final long f24731c;

    /* renamed from: d  reason: collision with root package name */
    public final int f24732d;

    /* renamed from: e  reason: collision with root package name */
    public final int f24733e;

    /* renamed from: f  reason: collision with root package name */
    public final WeakReference f24734f;

    /* renamed from: g  reason: collision with root package name */
    public final AtomicBoolean f24735g;

    public C2952f7(Context context, String url, long j10, long j11, int i10, int i11) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(url, "url");
        this.f24729a = url;
        this.f24730b = j10;
        this.f24731c = j11;
        this.f24732d = i10;
        this.f24733e = i11;
        this.f24734f = new WeakReference(context);
        this.f24735g = new AtomicBoolean(false);
        a();
    }

    public final void a() {
        final Context context = (Context) this.f24734f.get();
        if (context != null) {
            ScheduledExecutorService scheduledExecutorService = AbstractC3048l7.f24958a;
            Runnable runnable = new Runnable() { // from class: ub.h4
                @Override // java.lang.Runnable
                public final void run() {
                    C2952f7.a(C2952f7.this, context);
                }
            };
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            AbstractC3048l7.f24958a.submit(runnable);
        }
    }

    public static final void a(C2952f7 this$0, Context context) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(context, "$context");
        if (this$0.f24735g.get()) {
            return;
        }
        Intrinsics.checkNotNullParameter(context, "context");
        if (!this$0.f24735g.get()) {
            int a10 = T1.a(Nc.d(), null, null, 63);
            Z6 d10 = Nc.d();
            d10.getClass();
            ArrayList a11 = T1.a(d10, "hasLoggerFinished=1", null, null, null, null, Integer.valueOf(a10), 30);
            C2936e7 action = new C2936e7(this$0, context);
            Intrinsics.checkNotNullParameter(a11, "<this>");
            Intrinsics.checkNotNullParameter(action, "action");
            for (Object obj : CollectionsKt.o0(a11)) {
                action.invoke(obj);
            }
        }
        ScheduledExecutorService scheduledExecutorService = AbstractC3048l7.f24958a;
        AbstractC3032k7.a(Nc.d(), Calendar.getInstance().getTimeInMillis() - this$0.f24731c, this$0.f24733e);
    }

    public final void a(final Context context, final String str, Y6 y62) {
        List<String> n10;
        int i10;
        if (this.f24735g.get()) {
            return;
        }
        if (y62.f24399d == 0 || System.currentTimeMillis() - y62.f24399d >= this.f24730b) {
            P9 b10 = new C2968g7(str, y62).b();
            if (b10.b() && (i10 = y62.f24398c + 1) < this.f24732d) {
                I9 i92 = b10.f23982d;
                if ((i92 != null ? i92.f23737a : null) != EnumC3093o4.f25105s) {
                    final Y6 y63 = new Y6(y62.f24396a, y62.f24397b, i10, System.currentTimeMillis(), false, 0, 48);
                    Nc.d().b(y63);
                    ScheduledExecutorService scheduledExecutorService = AbstractC3048l7.f24958a;
                    long j10 = this.f24730b;
                    Runnable runnable = new Runnable() { // from class: ub.i4
                        @Override // java.lang.Runnable
                        public final void run() {
                            C2952f7.a(C2952f7.this, context, str, y63);
                        }
                    };
                    Intrinsics.checkNotNullParameter(runnable, "runnable");
                    AbstractC3048l7.f24958a.schedule(runnable, j10, TimeUnit.MILLISECONDS);
                    return;
                }
            }
            AbstractC3064m7.a(y62.f24396a);
            Nc.d().a(y62);
            Context context2 = (Context) this.f24734f.get();
            if (context2 != null) {
                ScheduledExecutorService scheduledExecutorService2 = AbstractC3048l7.f24958a;
                Intrinsics.checkNotNullParameter(context2, "context");
                String directoryPath = context2.getFilesDir() + "/logging";
                Intrinsics.checkNotNullParameter(directoryPath, "directoryPath");
                File file = new File(directoryPath);
                if (file.exists() && file.isDirectory()) {
                    String[] list = file.list();
                    if (list == null || (n10 = kotlin.collections.n.x1(list)) == null) {
                        n10 = CollectionsKt.n();
                    }
                } else {
                    n10 = CollectionsKt.n();
                }
                for (String fileName : n10) {
                    Z6 d10 = Nc.d();
                    d10.getClass();
                    Intrinsics.checkNotNullParameter(fileName, "fileName");
                    if (T1.a(d10, "filename=\"" + fileName + '\"', null, null, null, null, null, 62).isEmpty()) {
                        AbstractC3064m7.a(fileName);
                    }
                }
            }
        }
    }

    public static final void a(C2952f7 this$0, Context context, String url, Y6 updatedData) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(context, "$context");
        Intrinsics.checkNotNullParameter(url, "$url");
        Intrinsics.checkNotNullParameter(updatedData, "$updatedData");
        this$0.a(context, url, updatedData);
    }
}
