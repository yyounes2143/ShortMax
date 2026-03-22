package p4;

import androidx.annotation.RestrictTo;
import com.facebook.GraphRequest;
import com.facebook.b0;
import com.facebook.internal.u0;
import com.facebook.v;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Regex;
import l4.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: ErrorReportHandler.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
@SourceDebugExtension({"SMAP\nErrorReportHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ErrorReportHandler.kt\ncom/facebook/internal/instrument/errorreport/ErrorReportHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,84:1\n1855#2,2:85\n*S KotlinDebug\n*F\n+ 1 ErrorReportHandler.kt\ncom/facebook/internal/instrument/errorreport/ErrorReportHandler\n*L\n68#1:85,2\n*E\n"})
/* loaded from: classes3.dex */
public final class e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final e f64512a = new e();

    private e() {
    }

    public static final void d() {
        if (v.p()) {
            h();
        }
    }

    @NotNull
    public static final File[] e() {
        File f10 = i.f();
        if (f10 == null) {
            return new File[0];
        }
        File[] listFiles = f10.listFiles(new FilenameFilter() { // from class: p4.d
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                boolean f11;
                f11 = e.f(file, str);
                return f11;
            }
        });
        Intrinsics.checkNotNullExpressionValue(listFiles, "reportDir.listFiles { di…OR_REPORT_PREFIX)))\n    }");
        return listFiles;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean f(File file, String name) {
        Intrinsics.checkNotNullExpressionValue(name, "name");
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("^%s[0-9]+.json$", Arrays.copyOf(new Object[]{"error_log_"}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        return new Regex(format).k(name);
    }

    public static final void g(@Nullable String str) {
        try {
            new a(str).e();
        } catch (Exception unused) {
        }
    }

    public static final void h() {
        if (u0.a0()) {
            return;
        }
        File[] e10 = e();
        final ArrayList arrayList = new ArrayList();
        for (File file : e10) {
            a aVar = new a(file);
            if (aVar.d()) {
                arrayList.add(aVar);
            }
        }
        CollectionsKt.D(arrayList, new Comparator() { // from class: p4.b
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int i10;
                i10 = e.i((a) obj, (a) obj2);
                return i10;
            }
        });
        JSONArray jSONArray = new JSONArray();
        for (int i10 = 0; i10 < arrayList.size() && i10 < 1000; i10++) {
            jSONArray.put(arrayList.get(i10));
        }
        i.s("error_reports", jSONArray, new GraphRequest.b() { // from class: p4.c
            @Override // com.facebook.GraphRequest.b
            public final void a(b0 b0Var) {
                e.j(arrayList, b0Var);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int i(a aVar, a o22) {
        Intrinsics.checkNotNullExpressionValue(o22, "o2");
        return aVar.b(o22);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(ArrayList validReports, b0 response) {
        JSONObject d10;
        Intrinsics.checkNotNullParameter(validReports, "$validReports");
        Intrinsics.checkNotNullParameter(response, "response");
        try {
            if (response.b() == null && (d10 = response.d()) != null && d10.getBoolean("success")) {
                Iterator it = validReports.iterator();
                while (it.hasNext()) {
                    ((a) it.next()).a();
                }
            }
        } catch (JSONException unused) {
        }
    }
}
