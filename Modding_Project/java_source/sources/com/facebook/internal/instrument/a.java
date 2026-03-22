package com.facebook.internal.instrument;

import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import com.facebook.GraphRequest;
import com.facebook.a0;
import com.facebook.b0;
import com.facebook.internal.FeatureManager;
import com.facebook.internal.instrument.InstrumentData;
import com.facebook.internal.u0;
import com.facebook.v;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import l4.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: ExceptionAnalyzer.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
@SourceDebugExtension({"SMAP\nExceptionAnalyzer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExceptionAnalyzer.kt\ncom/facebook/internal/instrument/ExceptionAnalyzer\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,99:1\n13579#2,2:100\n*S KotlinDebug\n*F\n+ 1 ExceptionAnalyzer.kt\ncom/facebook/internal/instrument/ExceptionAnalyzer\n*L\n47#1:100,2\n*E\n"})
/* loaded from: classes3.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f16224a = new a();

    /* renamed from: b  reason: collision with root package name */
    private static boolean f16225b;

    private a() {
    }

    public static final void b() {
        f16225b = true;
        if (v.p()) {
            f16224a.e();
        }
    }

    public static final void c(@Nullable Throwable th2) {
        if (f16225b && !d() && th2 != null) {
            HashSet hashSet = new HashSet();
            StackTraceElement[] stackTrace = th2.getStackTrace();
            Intrinsics.checkNotNullExpressionValue(stackTrace, "e.stackTrace");
            for (StackTraceElement stackTraceElement : stackTrace) {
                String className = stackTraceElement.getClassName();
                Intrinsics.checkNotNullExpressionValue(className, "it.className");
                FeatureManager.Feature d10 = FeatureManager.d(className);
                if (d10 != FeatureManager.Feature.Unknown) {
                    FeatureManager.c(d10);
                    hashSet.add(d10.toString());
                }
            }
            if (v.p() && !hashSet.isEmpty()) {
                InstrumentData.a.c(new JSONArray((Collection) hashSet)).g();
            }
        }
    }

    @VisibleForTesting(otherwise = 2)
    public static final boolean d() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(InstrumentData instrumentData, b0 response) {
        JSONObject d10;
        Intrinsics.checkNotNullParameter(instrumentData, "$instrumentData");
        Intrinsics.checkNotNullParameter(response, "response");
        try {
            if (response.b() == null && (d10 = response.d()) != null && d10.getBoolean("success")) {
                instrumentData.a();
            }
        } catch (JSONException unused) {
        }
    }

    @VisibleForTesting(otherwise = 2)
    public final void e() {
        if (u0.a0()) {
            return;
        }
        File[] n10 = i.n();
        ArrayList arrayList = new ArrayList();
        for (File file : n10) {
            final InstrumentData d10 = InstrumentData.a.d(file);
            if (d10.f()) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("crash_shield", d10.toString());
                    GraphRequest.c cVar = GraphRequest.f14841n;
                    StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                    String format = String.format("%s/instruments", Arrays.copyOf(new Object[]{v.m()}, 1));
                    Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
                    arrayList.add(cVar.A(null, format, jSONObject, new GraphRequest.b() { // from class: l4.a
                        @Override // com.facebook.GraphRequest.b
                        public final void a(b0 b0Var) {
                            com.facebook.internal.instrument.a.f(InstrumentData.this, b0Var);
                        }
                    }));
                } catch (JSONException unused) {
                }
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        new a0(arrayList).h();
    }
}
