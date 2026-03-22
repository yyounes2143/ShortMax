package m4;

import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import com.facebook.GraphRequest;
import com.facebook.b0;
import com.facebook.internal.instrument.InstrumentData;
import com.facebook.internal.u0;
import com.facebook.v;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.m0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import l4.i;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: ANRHandler.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
@SourceDebugExtension({"SMAP\nANRHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ANRHandler.kt\ncom/facebook/internal/instrument/anrreport/ANRHandler\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,77:1\n11335#2:78\n11670#2,3:79\n766#3:82\n857#3,2:83\n1855#3,2:85\n1855#3,2:87\n*S KotlinDebug\n*F\n+ 1 ANRHandler.kt\ncom/facebook/internal/instrument/anrreport/ANRHandler\n*L\n58#1:78\n58#1:79,3\n59#1:82\n59#1:83,2\n63#1:85,2\n69#1:87,2\n*E\n"})
/* loaded from: classes3.dex */
public final class e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final e f62469a = new e();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final AtomicBoolean f62470b = new AtomicBoolean(false);

    private e() {
    }

    public static final synchronized void c() {
        synchronized (e.class) {
            if (o4.a.d(e.class)) {
                return;
            }
            if (f62470b.getAndSet(true)) {
                return;
            }
            if (v.p()) {
                d();
            }
            b.d();
        }
    }

    @VisibleForTesting
    public static final void d() {
        if (o4.a.d(e.class)) {
            return;
        }
        try {
            if (u0.a0()) {
                return;
            }
            File[] l10 = i.l();
            ArrayList arrayList = new ArrayList(l10.length);
            for (File file : l10) {
                arrayList.add(InstrumentData.a.d(file));
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : arrayList) {
                if (((InstrumentData) obj).f()) {
                    arrayList2.add(obj);
                }
            }
            final List U0 = CollectionsKt.U0(arrayList2, new Comparator() { // from class: m4.c
                @Override // java.util.Comparator
                public final int compare(Object obj2, Object obj3) {
                    int e10;
                    e10 = e.e((InstrumentData) obj2, (InstrumentData) obj3);
                    return e10;
                }
            });
            JSONArray jSONArray = new JSONArray();
            Iterator<Integer> it = kotlin.ranges.e.v(0, Math.min(U0.size(), 5)).iterator();
            while (it.hasNext()) {
                jSONArray.put(U0.get(((m0) it).nextInt()));
            }
            i.s("anr_reports", jSONArray, new GraphRequest.b() { // from class: m4.d
                @Override // com.facebook.GraphRequest.b
                public final void a(b0 b0Var) {
                    e.f(U0, b0Var);
                }
            });
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int e(InstrumentData instrumentData, InstrumentData o22) {
        if (o4.a.d(e.class)) {
            return 0;
        }
        try {
            Intrinsics.checkNotNullExpressionValue(o22, "o2");
            return instrumentData.b(o22);
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(List validReports, b0 response) {
        JSONObject d10;
        if (o4.a.d(e.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(validReports, "$validReports");
            Intrinsics.checkNotNullParameter(response, "response");
            try {
                if (response.b() == null && (d10 = response.d()) != null && d10.getBoolean("success")) {
                    Iterator it = validReports.iterator();
                    while (it.hasNext()) {
                        ((InstrumentData) it.next()).a();
                    }
                }
            } catch (JSONException unused) {
            }
        } catch (Throwable th2) {
            o4.a.b(th2, e.class);
        }
    }
}
