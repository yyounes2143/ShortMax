package m4;

import android.app.ActivityManager;
import android.os.Looper;
import android.os.Process;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import com.facebook.internal.instrument.InstrumentData;
import com.facebook.v;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import l4.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ANRDetector.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
@SourceDebugExtension({"SMAP\nANRDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ANRDetector.kt\ncom/facebook/internal/instrument/anrreport/ANRDetector\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,68:1\n1855#2,2:69\n*S KotlinDebug\n*F\n+ 1 ANRDetector.kt\ncom/facebook/internal/instrument/anrreport/ANRDetector\n*L\n46#1:69,2\n*E\n"})
/* loaded from: classes3.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f62463a = new b();

    /* renamed from: b  reason: collision with root package name */
    private static final int f62464b = Process.myUid();

    /* renamed from: c  reason: collision with root package name */
    private static final ScheduledExecutorService f62465c = Executors.newSingleThreadScheduledExecutor();
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static String f62466d = "";
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final Runnable f62467e = new Runnable() { // from class: m4.a
        @Override // java.lang.Runnable
        public final void run() {
            b.b();
        }
    };

    private b() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b() {
        if (o4.a.d(b.class)) {
            return;
        }
        try {
            Object systemService = v.l().getSystemService("activity");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
            c((ActivityManager) systemService);
        } catch (Exception unused) {
        } catch (Throwable th2) {
            o4.a.b(th2, b.class);
        }
    }

    @VisibleForTesting
    public static final void c(@Nullable ActivityManager activityManager) {
        if (!o4.a.d(b.class) && activityManager != null) {
            try {
                List<ActivityManager.ProcessErrorStateInfo> processesInErrorState = activityManager.getProcessesInErrorState();
                if (processesInErrorState != null) {
                    for (ActivityManager.ProcessErrorStateInfo processErrorStateInfo : processesInErrorState) {
                        if (processErrorStateInfo.condition == 2 && processErrorStateInfo.uid == f62464b) {
                            Thread thread = Looper.getMainLooper().getThread();
                            Intrinsics.checkNotNullExpressionValue(thread, "getMainLooper().thread");
                            String g10 = i.g(thread);
                            if (!Intrinsics.areEqual(g10, f62466d) && i.k(thread)) {
                                f62466d = g10;
                                InstrumentData.a.a(processErrorStateInfo.shortMsg, g10).g();
                            }
                        }
                    }
                }
            } catch (Throwable th2) {
                o4.a.b(th2, b.class);
            }
        }
    }

    @VisibleForTesting
    public static final void d() {
        if (o4.a.d(b.class)) {
            return;
        }
        try {
            f62465c.scheduleWithFixedDelay(f62467e, 0L, 500L, TimeUnit.MILLISECONDS);
        } catch (Throwable th2) {
            o4.a.b(th2, b.class);
        }
    }
}
