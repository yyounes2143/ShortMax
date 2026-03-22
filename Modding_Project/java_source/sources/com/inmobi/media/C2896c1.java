package com.inmobi.media;

import android.app.ActivityManager;
import android.app.ApplicationExitInfo;
import android.content.Context;
import android.util.Log;
import com.inmobi.media.C2896c1;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
/* renamed from: com.inmobi.media.c1  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2896c1 extends G3 {

    /* renamed from: b  reason: collision with root package name */
    public final Context f24535b;

    /* renamed from: c  reason: collision with root package name */
    public final long f24536c;

    /* renamed from: d  reason: collision with root package name */
    public final int f24537d;

    /* renamed from: e  reason: collision with root package name */
    public final ActivityManager f24538e;

    /* renamed from: f  reason: collision with root package name */
    public final C6 f24539f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2896c1(Context context, H3 listener, long j10, int i10) {
        super(listener);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f24535b = context;
        this.f24536c = j10;
        this.f24537d = i10;
        Object systemService = context.getSystemService("activity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
        this.f24538e = (ActivityManager) systemService;
        ConcurrentHashMap concurrentHashMap = C6.f23529b;
        this.f24539f = B6.a(context, "appClose");
    }

    public static final void a(C2896c1 this$0, ApplicationExitInfo applicationExitInfo) {
        int reason;
        String description;
        InputStream traceInputStream;
        String sb2;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        H3 h32 = this$0.f23671a;
        reason = applicationExitInfo.getReason();
        description = applicationExitInfo.getDescription();
        traceInputStream = applicationExitInfo.getTraceInputStream();
        int i10 = this$0.f24537d;
        Intrinsics.checkNotNullParameter("\"main\"", "startMarker");
        Intrinsics.checkNotNullParameter("ZygoteInit.java", "endMarker");
        StringBuilder sb3 = new StringBuilder();
        StringBuilder sb4 = new StringBuilder();
        if (traceInputStream != null) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(traceInputStream));
                int i11 = i10;
                boolean z10 = false;
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        if (i10 > 0 && !z10) {
                            sb4.append(readLine);
                            sb4.append("\n");
                            i10--;
                        }
                        int i12 = i10;
                        boolean z11 = z10;
                        if (StringsKt.V(readLine, "\"main\"", false, 2, null)) {
                            StringsKt.q(sb4);
                            z10 = true;
                        } else {
                            z10 = z11;
                        }
                        if (z10) {
                            i11--;
                            sb3.append(readLine);
                            sb3.append("\n");
                        }
                        if (StringsKt.b0(readLine, "ZygoteInit.java", false, 2, null) || i11 <= 0) {
                            break;
                        }
                        i10 = i12;
                    } else {
                        break;
                    }
                }
                bufferedReader.close();
            } catch (IOException e10) {
                Log.e("CommonExt", "Error reading from input stream", e10);
            }
        }
        if (sb3.length() == 0) {
            sb2 = sb4.toString();
            Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        } else {
            sb2 = sb3.toString();
            Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        }
        h32.a(new C2913d1(description, reason, sb2));
    }

    @Override // com.inmobi.media.G3
    public final void b() {
    }

    @Override // com.inmobi.media.G3
    public final void a() {
        Runnable runnable = new Runnable() { // from class: ub.u3
            @Override // java.lang.Runnable
            public final void run() {
                C2896c1.a(C2896c1.this);
            }
        };
        ScheduledExecutorService scheduledExecutorService = Ie.f23745a;
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        Ie.f23745a.execute(runnable);
    }

    public static final void a(final C2896c1 this$0) {
        List<Object> historicalProcessExitReasons;
        long timestamp;
        long timestamp2;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        historicalProcessExitReasons = this$0.f24538e.getHistoricalProcessExitReasons(this$0.f24535b.getPackageName(), 0, 10);
        Intrinsics.checkNotNullExpressionValue(historicalProcessExitReasons, "getHistoricalProcessExitReasons(...)");
        C6 c62 = this$0.f24539f;
        c62.getClass();
        Intrinsics.checkNotNullParameter("exitReasonTimestamp", "key");
        long j10 = c62.f23530a.getLong("exitReasonTimestamp", 0L);
        long j11 = j10;
        for (Object obj : historicalProcessExitReasons) {
            final ApplicationExitInfo a10 = androidx.work.impl.utils.b.a(obj);
            timestamp = a10.getTimestamp();
            if (timestamp > j10) {
                long j12 = this$0.f24536c;
                Runnable runnable = new Runnable() { // from class: ub.t3
                    @Override // java.lang.Runnable
                    public final void run() {
                        C2896c1.a(C2896c1.this, a10);
                    }
                };
                ScheduledExecutorService scheduledExecutorService = Ie.f23745a;
                Intrinsics.checkNotNullParameter(runnable, "runnable");
                Ie.f23745a.schedule(runnable, j12, TimeUnit.MILLISECONDS);
                timestamp2 = a10.getTimestamp();
                if (timestamp2 > j11) {
                    j11 = a10.getTimestamp();
                }
            }
        }
        C6.a(this$0.f24539f, "exitReasonTimestamp", j11, false, 4, (Object) null);
    }
}
