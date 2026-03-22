package j9;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Process;
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
@SourceDebugExtension({"SMAP\nProcessDetailsProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProcessDetailsProvider.kt\ncom/google/firebase/sessions/ProcessDetailsProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,84:1\n774#2:85\n865#2,2:86\n1557#2:88\n1628#2,3:89\n1#3:92\n*S KotlinDebug\n*F\n+ 1 ProcessDetailsProvider.kt\ncom/google/firebase/sessions/ProcessDetailsProvider\n*L\n37#1:85\n37#1:86,2\n41#1:88\n41#1:89,3\n*E\n"})
/* loaded from: classes5.dex */
public final class z {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final z f60351a = new z();

    private z() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0014, code lost:
        r0 = android.app.Application.getProcessName();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String c() {
        /*
            r2 = this;
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 33
            if (r0 <= r1) goto L10
            java.lang.String r0 = z7.i.a()
            java.lang.String r1 = "myProcessName(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            return r0
        L10:
            r1 = 28
            if (r0 < r1) goto L1b
            java.lang.String r0 = com.apm.insight.l.o.a()
            if (r0 == 0) goto L1b
            return r0
        L1b:
            java.lang.String r0 = com.google.android.gms.common.util.ProcessUtils.getMyProcessName()
            if (r0 == 0) goto L22
            return r0
        L22:
            java.lang.String r0 = ""
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: j9.z.c():java.lang.String");
    }

    @NotNull
    public final List<y> a(@NotNull Context context) {
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
            String processName = runningAppProcessInfo.processName;
            Intrinsics.checkNotNullExpressionValue(processName, "processName");
            arrayList2.add(new y(processName, runningAppProcessInfo.pid, runningAppProcessInfo.importance, Intrinsics.areEqual(runningAppProcessInfo.processName, str)));
        }
        return arrayList2;
    }

    @NotNull
    public final y b(@NotNull Context context) {
        Object obj;
        Intrinsics.checkNotNullParameter(context, "context");
        int myPid = Process.myPid();
        Iterator<T> it = a(context).iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (((y) obj).b() == myPid) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        y yVar = (y) obj;
        if (yVar == null) {
            return new y(c(), myPid, 0, false);
        }
        return yVar;
    }
}
