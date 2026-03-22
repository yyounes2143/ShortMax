package z7;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Process;
import e8.f0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: ProcessDetailsProvider.kt */
@Metadata
@SourceDebugExtension({"SMAP\nProcessDetailsProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProcessDetailsProvider.kt\ncom/google/firebase/crashlytics/internal/ProcessDetailsProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,94:1\n774#2:95\n865#2,2:96\n1557#2:98\n1628#2,3:99\n1#3:102\n*S KotlinDebug\n*F\n+ 1 ProcessDetailsProvider.kt\ncom/google/firebase/crashlytics/internal/ProcessDetailsProvider\n*L\n43#1:95\n43#1:96,2\n47#1:98\n47#1:99,3\n*E\n"})
/* loaded from: classes5.dex */
public final class j {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final j f71520a = new j();

    private j() {
    }

    public static /* synthetic */ f0.e.d.a.c c(j jVar, String str, int i10, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = 0;
        }
        if ((i12 & 8) != 0) {
            z10 = false;
        }
        return jVar.b(str, i10, i11, z10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0014, code lost:
        r0 = android.app.Application.getProcessName();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String f() {
        /*
            r3 = this;
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 33
            if (r0 <= r1) goto Le
            java.lang.String r0 = z7.i.a()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            goto L1b
        Le:
            r1 = 28
            java.lang.String r2 = ""
            if (r0 < r1) goto L1a
            java.lang.String r0 = com.apm.insight.l.o.a()
            if (r0 != 0) goto L1b
        L1a:
            r0 = r2
        L1b:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: z7.j.f():java.lang.String");
    }

    @NotNull
    public final f0.e.d.a.c a(@NotNull String processName, int i10, int i11) {
        Intrinsics.checkNotNullParameter(processName, "processName");
        return c(this, processName, i10, i11, false, 8, null);
    }

    @NotNull
    public final f0.e.d.a.c b(@NotNull String processName, int i10, int i11, boolean z10) {
        Intrinsics.checkNotNullParameter(processName, "processName");
        f0.e.d.a.c a10 = f0.e.d.a.c.a().e(processName).d(i10).c(i11).b(z10).a();
        Intrinsics.checkNotNullExpressionValue(a10, "build(...)");
        return a10;
    }

    @NotNull
    public final List<f0.e.d.a.c> d(@NotNull Context context) {
        ActivityManager activityManager;
        List<ActivityManager.RunningAppProcessInfo> n10;
        Intrinsics.checkNotNullParameter(context, "context");
        int i10 = context.getApplicationInfo().uid;
        String str = context.getApplicationInfo().processName;
        Object systemService = context.getSystemService("activity");
        if (systemService instanceof ActivityManager) {
            activityManager = (ActivityManager) systemService;
        } else {
            activityManager = null;
        }
        if (activityManager == null || (n10 = activityManager.getRunningAppProcesses()) == null) {
            n10 = CollectionsKt.n();
        }
        ArrayList<ActivityManager.RunningAppProcessInfo> arrayList = new ArrayList();
        for (Object obj : CollectionsKt.o0(n10)) {
            if (((ActivityManager.RunningAppProcessInfo) obj).uid == i10) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.z(arrayList, 10));
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : arrayList) {
            arrayList2.add(f0.e.d.a.c.a().e(runningAppProcessInfo.processName).d(runningAppProcessInfo.pid).c(runningAppProcessInfo.importance).b(Intrinsics.areEqual(runningAppProcessInfo.processName, str)).a());
        }
        return arrayList2;
    }

    @NotNull
    public final f0.e.d.a.c e(@NotNull Context context) {
        Object obj;
        Intrinsics.checkNotNullParameter(context, "context");
        int myPid = Process.myPid();
        Iterator<T> it = d(context).iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (((f0.e.d.a.c) obj).c() == myPid) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        f0.e.d.a.c cVar = (f0.e.d.a.c) obj;
        if (cVar == null) {
            return c(this, f(), myPid, 0, false, 12, null);
        }
        return cVar;
    }
}
