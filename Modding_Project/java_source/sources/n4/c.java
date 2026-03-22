package n4;

import android.util.Log;
import androidx.annotation.RestrictTo;
import com.facebook.GraphRequest;
import com.facebook.b0;
import com.facebook.internal.instrument.InstrumentData;
import com.facebook.internal.u0;
import com.facebook.v;
import java.io.File;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.m0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.e;
import l4.i;
import n4.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: CrashHandler.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class c implements Thread.UncaughtExceptionHandler {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f62759b = new a(null);

    /* renamed from: c  reason: collision with root package name */
    private static final String f62760c = c.class.getCanonicalName();
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static c f62761d;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Thread.UncaughtExceptionHandler f62762a;

    /* compiled from: CrashHandler.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nCrashHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CrashHandler.kt\ncom/facebook/internal/instrument/crashreport/CrashHandler$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,88:1\n11335#2:89\n11670#2,3:90\n766#3:93\n857#3,2:94\n1855#3,2:96\n1855#3,2:98\n*S KotlinDebug\n*F\n+ 1 CrashHandler.kt\ncom/facebook/internal/instrument/crashreport/CrashHandler$Companion\n*L\n66#1:89\n66#1:90,3\n67#1:93\n67#1:94,2\n72#1:96,2\n79#1:98,2\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final void d() {
            if (u0.a0()) {
                return;
            }
            File[] p10 = i.p();
            ArrayList arrayList = new ArrayList(p10.length);
            for (File file : p10) {
                arrayList.add(InstrumentData.a.d(file));
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : arrayList) {
                if (((InstrumentData) obj).f()) {
                    arrayList2.add(obj);
                }
            }
            final List U0 = CollectionsKt.U0(arrayList2, new Comparator() { // from class: n4.a
                @Override // java.util.Comparator
                public final int compare(Object obj2, Object obj3) {
                    int e10;
                    e10 = c.a.e((InstrumentData) obj2, (InstrumentData) obj3);
                    return e10;
                }
            });
            JSONArray jSONArray = new JSONArray();
            Iterator<Integer> it = e.v(0, Math.min(U0.size(), 5)).iterator();
            while (it.hasNext()) {
                jSONArray.put(U0.get(((m0) it).nextInt()));
            }
            i.s("crash_reports", jSONArray, new GraphRequest.b() { // from class: n4.b
                @Override // com.facebook.GraphRequest.b
                public final void a(b0 b0Var) {
                    c.a.f(U0, b0Var);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final int e(InstrumentData instrumentData, InstrumentData o22) {
            Intrinsics.checkNotNullExpressionValue(o22, "o2");
            return instrumentData.b(o22);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void f(List validReports, b0 response) {
            JSONObject d10;
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
        }

        public final synchronized void c() {
            try {
                if (v.p()) {
                    d();
                }
                if (c.f62761d == null) {
                    c.f62761d = new c(Thread.getDefaultUncaughtExceptionHandler(), null);
                    Thread.setDefaultUncaughtExceptionHandler(c.f62761d);
                    return;
                }
                Log.w(c.f62760c, "Already enabled!");
            } catch (Throwable th2) {
                throw th2;
            }
        }

        private a() {
        }
    }

    public /* synthetic */ c(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, DefaultConstructorMarker defaultConstructorMarker) {
        this(uncaughtExceptionHandler);
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(@NotNull Thread t10, @NotNull Throwable e10) {
        Intrinsics.checkNotNullParameter(t10, "t");
        Intrinsics.checkNotNullParameter(e10, "e");
        if (i.j(e10)) {
            com.facebook.internal.instrument.a.c(e10);
            InstrumentData.a.b(e10, InstrumentData.Type.CrashReport).g();
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f62762a;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(t10, e10);
        }
    }

    private c(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f62762a = uncaughtExceptionHandler;
    }
}
