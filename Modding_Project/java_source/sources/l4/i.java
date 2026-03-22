package l4;

import androidx.annotation.RestrictTo;
import com.facebook.GraphRequest;
import com.facebook.internal.u0;
import com.facebook.v;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: InstrumentUtility.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
@SourceDebugExtension({"SMAP\nInstrumentUtility.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InstrumentUtility.kt\ncom/facebook/internal/instrument/InstrumentUtility\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,341:1\n13579#2,2:342\n*S KotlinDebug\n*F\n+ 1 InstrumentUtility.kt\ncom/facebook/internal/instrument/InstrumentUtility\n*L\n134#1:342,2\n*E\n"})
/* loaded from: classes3.dex */
public final class i {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final i f62089a = new i();

    private i() {
    }

    public static final boolean d(@Nullable String str) {
        File f10 = f();
        if (f10 != null && str != null) {
            return new File(f10, str).delete();
        }
        return false;
    }

    @Nullable
    public static final String e(@Nullable Throwable th2) {
        if (th2 == null) {
            return null;
        }
        if (th2.getCause() == null) {
            return th2.toString();
        }
        return String.valueOf(th2.getCause());
    }

    @Nullable
    public static final File f() {
        File file = new File(v.l().getCacheDir(), "instrument");
        if (!file.exists() && !file.mkdirs()) {
            return null;
        }
        return file;
    }

    @Nullable
    public static final String g(@NotNull Thread thread) {
        Intrinsics.checkNotNullParameter(thread, "thread");
        StackTraceElement[] stackTrace = thread.getStackTrace();
        JSONArray jSONArray = new JSONArray();
        Intrinsics.checkNotNullExpressionValue(stackTrace, "stackTrace");
        for (StackTraceElement stackTraceElement : stackTrace) {
            jSONArray.put(stackTraceElement.toString());
        }
        return jSONArray.toString();
    }

    @Nullable
    public static final String h(@Nullable Throwable th2) {
        Throwable th3 = null;
        if (th2 == null) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        while (th2 != null && th2 != th3) {
            StackTraceElement[] stackTrace = th2.getStackTrace();
            Intrinsics.checkNotNullExpressionValue(stackTrace, "t.stackTrace");
            for (StackTraceElement stackTraceElement : stackTrace) {
                jSONArray.put(stackTraceElement.toString());
            }
            th3 = th2;
            th2 = th2.getCause();
        }
        return jSONArray.toString();
    }

    public static final boolean i(@NotNull StackTraceElement element) {
        Intrinsics.checkNotNullParameter(element, "element");
        String className = element.getClassName();
        Intrinsics.checkNotNullExpressionValue(className, "element.className");
        if (!StringsKt.V(className, "com.facebook", false, 2, null)) {
            String className2 = element.getClassName();
            Intrinsics.checkNotNullExpressionValue(className2, "element.className");
            if (!StringsKt.V(className2, "com.meta", false, 2, null)) {
                return false;
            }
        }
        return true;
    }

    public static final boolean j(@Nullable Throwable th2) {
        if (th2 == null) {
            return false;
        }
        Throwable th3 = null;
        while (th2 != null && th2 != th3) {
            StackTraceElement[] stackTrace = th2.getStackTrace();
            Intrinsics.checkNotNullExpressionValue(stackTrace, "t.stackTrace");
            for (StackTraceElement element : stackTrace) {
                Intrinsics.checkNotNullExpressionValue(element, "element");
                if (i(element)) {
                    return true;
                }
            }
            th3 = th2;
            th2 = th2.getCause();
        }
        return false;
    }

    public static final boolean k(@Nullable Thread thread) {
        StackTraceElement[] stackTrace;
        if (thread != null && (stackTrace = thread.getStackTrace()) != null) {
            for (StackTraceElement element : stackTrace) {
                Intrinsics.checkNotNullExpressionValue(element, "element");
                if (i(element)) {
                    String className = element.getClassName();
                    Intrinsics.checkNotNullExpressionValue(className, "element.className");
                    if (!StringsKt.V(className, "com.facebook.appevents.codeless", false, 2, null)) {
                        String className2 = element.getClassName();
                        Intrinsics.checkNotNullExpressionValue(className2, "element.className");
                        if (!StringsKt.V(className2, "com.facebook.appevents.suggestedevents", false, 2, null)) {
                            return true;
                        }
                    }
                    String methodName = element.getMethodName();
                    Intrinsics.checkNotNullExpressionValue(methodName, "element.methodName");
                    if (StringsKt.V(methodName, "onClick", false, 2, null)) {
                        continue;
                    } else {
                        String methodName2 = element.getMethodName();
                        Intrinsics.checkNotNullExpressionValue(methodName2, "element.methodName");
                        if (StringsKt.V(methodName2, "onItemClick", false, 2, null)) {
                            continue;
                        } else {
                            String methodName3 = element.getMethodName();
                            Intrinsics.checkNotNullExpressionValue(methodName3, "element.methodName");
                            if (!StringsKt.V(methodName3, "onTouch", false, 2, null)) {
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    @NotNull
    public static final File[] l() {
        File f10 = f();
        if (f10 == null) {
            return new File[0];
        }
        File[] listFiles = f10.listFiles(new FilenameFilter() { // from class: l4.g
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                boolean m10;
                m10 = i.m(file, str);
                return m10;
            }
        });
        if (listFiles == null) {
            return new File[0];
        }
        return listFiles;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean m(File file, String name) {
        Intrinsics.checkNotNullExpressionValue(name, "name");
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("^%s[0-9]+.json$", Arrays.copyOf(new Object[]{"anr_log_"}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        return new Regex(format).k(name);
    }

    @NotNull
    public static final File[] n() {
        File f10 = f();
        if (f10 == null) {
            return new File[0];
        }
        File[] listFiles = f10.listFiles(new FilenameFilter() { // from class: l4.h
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                boolean o10;
                o10 = i.o(file, str);
                return o10;
            }
        });
        if (listFiles == null) {
            return new File[0];
        }
        return listFiles;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean o(File file, String name) {
        Intrinsics.checkNotNullExpressionValue(name, "name");
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("^%s[0-9]+.json$", Arrays.copyOf(new Object[]{"analysis_log_"}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        return new Regex(format).k(name);
    }

    @NotNull
    public static final File[] p() {
        File f10 = f();
        if (f10 == null) {
            return new File[0];
        }
        File[] listFiles = f10.listFiles(new FilenameFilter() { // from class: l4.f
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                boolean q10;
                q10 = i.q(file, str);
                return q10;
            }
        });
        if (listFiles == null) {
            return new File[0];
        }
        return listFiles;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean q(File file, String name) {
        Intrinsics.checkNotNullExpressionValue(name, "name");
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("^(%s|%s|%s)[0-9]+.json$", Arrays.copyOf(new Object[]{"crash_log_", "shield_log_", "thread_check_log_"}, 3));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        return new Regex(format).k(name);
    }

    @Nullable
    public static final JSONObject r(@Nullable String str, boolean z10) {
        File f10 = f();
        if (f10 != null && str != null) {
            try {
                return new JSONObject(u0.t0(new FileInputStream(new File(f10, str))));
            } catch (Exception unused) {
                if (z10) {
                    d(str);
                }
            }
        }
        return null;
    }

    public static final void s(@Nullable String str, @NotNull JSONArray reports, @Nullable GraphRequest.b bVar) {
        Intrinsics.checkNotNullParameter(reports, "reports");
        if (reports.length() == 0) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(str, reports.toString());
            JSONObject D = u0.D();
            if (D != null) {
                Iterator<String> keys = D.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    jSONObject.put(next, D.get(next));
                }
            }
            GraphRequest.c cVar = GraphRequest.f14841n;
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format("%s/instruments", Arrays.copyOf(new Object[]{v.m()}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
            cVar.A(null, format, jSONObject, bVar).l();
        } catch (JSONException unused) {
        }
    }

    public static final void t(@Nullable String str, @Nullable String str2) {
        File f10 = f();
        if (f10 != null && str != null && str2 != null) {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(new File(f10, str));
                byte[] bytes = str2.getBytes(Charsets.UTF_8);
                Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
                fileOutputStream.write(bytes);
                fileOutputStream.close();
            } catch (Exception unused) {
            }
        }
    }
}
