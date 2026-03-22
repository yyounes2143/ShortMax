package com.moloco.sdk.acm.eventprocessing;

import com.moloco.sdk.MetricsRequest$PostMetricsRequest;
import java.util.ArrayList;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
@SourceDebugExtension({"SMAP\nDBEventToRequestTransformer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DBEventToRequestTransformer.kt\ncom/moloco/sdk/acm/eventprocessing/DBEventToRequestTransformerImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,62:1\n1#2:63\n*E\n"})
/* loaded from: classes6.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final e f31881a;

    /* renamed from: com.moloco.sdk.acm.eventprocessing.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public /* synthetic */ class C0462a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f31882a;

        static {
            int[] iArr = new int[com.moloco.sdk.acm.db.c.values().length];
            try {
                iArr[com.moloco.sdk.acm.db.c.f31846b.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[com.moloco.sdk.acm.db.c.f31845a.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f31882a = iArr;
        }
    }

    public a(@NotNull e dataAgeChecker) {
        Intrinsics.checkNotNullParameter(dataAgeChecker, "dataAgeChecker");
        this.f31881a = dataAgeChecker;
    }

    @NotNull
    public com.moloco.sdk.acm.http.i a(@NotNull List<com.moloco.sdk.acm.db.b> events) {
        Intrinsics.checkNotNullParameter(events, "events");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (com.moloco.sdk.acm.db.b bVar : events) {
            if (!this.f31881a.a(bVar)) {
                int i10 = C0462a.f31882a[bVar.b().ordinal()];
                if (i10 != 1) {
                    if (i10 == 2) {
                        MetricsRequest$PostMetricsRequest.TimerEvent.a a10 = MetricsRequest$PostMetricsRequest.TimerEvent.newBuilder().c(bVar.d()).a(bVar.e());
                        Long a11 = bVar.a();
                        if (a11 != null) {
                            a10.b(a11.longValue());
                        }
                        MetricsRequest$PostMetricsRequest.TimerEvent build = a10.build();
                        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
                        arrayList.add(build);
                    } else {
                        throw new NoWhenBranchMatchedException();
                    }
                } else {
                    MetricsRequest$PostMetricsRequest.CountEvent.a a12 = MetricsRequest$PostMetricsRequest.CountEvent.newBuilder().c(bVar.d()).a(bVar.e());
                    Long a13 = bVar.a();
                    if (a13 != null) {
                        a12.b((int) a13.longValue());
                    }
                    MetricsRequest$PostMetricsRequest.CountEvent build2 = a12.build();
                    Intrinsics.checkNotNullExpressionValue(build2, "build(...)");
                    arrayList2.add(build2);
                }
            }
        }
        return new com.moloco.sdk.acm.http.i(arrayList2, arrayList);
    }
}
