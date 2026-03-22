package ca;

import android.content.Context;
import c.l;
import gt.d0;
import gt.p;
import gt.q0;
import gt.r;
import gt.r1;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import p000admanager.b.o;
import p000admanager.b.s;
@Metadata
@SourceDebugExtension({"SMAP\nCCPAManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CCPAManager.kt\ncom/hades/aar/admanager/core/CCPAManager\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,61:1\n47#2,4:62\n47#2,4:66\n*S KotlinDebug\n*F\n+ 1 CCPAManager.kt\ncom/hades/aar/admanager/core/CCPAManager\n*L\n15#1:62,4\n41#1:66,4\n*E\n"})
/* loaded from: classes5.dex */
public final class g {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final g f3403a = new g();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final p<Unit> f3404b = r.b(null, 1, null);

    private g() {
    }

    public final void b(@NotNull Context context, @NotNull da.a configure) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configure, "configure");
        if (!f3404b.isCompleted()) {
            gt.g.d(kotlinx.coroutines.i.a(r1.b(null, 1, null).plus(q0.b()).plus(new c.k(d0.D8))), null, null, new o(null), 3, null);
        }
    }

    public final void c(long j10, @NotNull Function0<Unit> runAfterCCPA) {
        Intrinsics.checkNotNullParameter(runAfterCCPA, "runAfterCCPA");
        ga.a aVar = ga.a.f52235a;
        aVar.d("CCPAManager", "runAfterCCPAConfigured start -> timeOut=" + j10 + "ms");
        gt.g.d(kotlinx.coroutines.i.a(r1.b(null, 1, null).plus(q0.b()).plus(new l(d0.D8))), null, null, new s(j10, System.currentTimeMillis(), runAfterCCPA, null), 3, null);
    }
}
