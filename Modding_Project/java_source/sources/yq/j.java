package yq;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executors;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.y0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: IntentUtils.kt */
@Metadata
/* loaded from: classes8.dex */
public final class j {
    @NotNull
    public static final Set<String> c(@NotNull String urlString) {
        Intrinsics.checkNotNullParameter(urlString, "urlString");
        Uri a10 = q.a(urlString);
        if (a10 == null) {
            return y0.f();
        }
        String queryParameter = a10.getQueryParameter("bmcp");
        if (queryParameter == null) {
            queryParameter = "";
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : StringsKt.split$default(queryParameter, new String[]{"_"}, false, 0, 6, null)) {
            if (!StringsKt.t0((String) obj)) {
                arrayList.add(obj);
            }
        }
        return CollectionsKt.i1(arrayList);
    }

    public static final boolean d(@NotNull Context context, @NotNull Intent intent) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(intent, "intent");
        ComponentName e10 = e(context, intent);
        if (e10 != null) {
            intent.setComponent(e10);
            return true;
        }
        return false;
    }

    @Nullable
    public static final ComponentName e(@NotNull Context context, @NotNull Intent intent) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(intent, "intent");
        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
        Intrinsics.checkNotNullExpressionValue(queryIntentActivities, "packageManager.queryIntentActivities(intent, 0)");
        if (!queryIntentActivities.isEmpty()) {
            ComponentName c10 = g.c(queryIntentActivities);
            if (c10 == null) {
                return new ComponentName(queryIntentActivities.get(0).activityInfo.packageName, queryIntentActivities.get(0).activityInfo.name);
            }
            return c10;
        }
        return null;
    }

    public static final boolean f(@NotNull Context context, @Nullable String str, @Nullable final d<Boolean> dVar) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        if (str != null && str.length() != 0) {
            final Context applicationContext = context.getApplicationContext();
            final String k10 = r.k(str);
            if (k10 != null && k10.length() != 0) {
                Set<String> c10 = c(k10);
                if (c10.contains("lraw")) {
                    if (c10.contains("rcp")) {
                        str = l(str);
                    }
                    return h(context, str, dVar);
                } else if (r.p(k10)) {
                    Executors.newSingleThreadExecutor().execute(new Runnable() { // from class: yq.h
                        @Override // java.lang.Runnable
                        public final void run() {
                            j.g(applicationContext, k10, dVar);
                        }
                    });
                    return true;
                } else {
                    Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
                    return j(applicationContext, k10, dVar);
                }
            }
            if (dVar != null) {
                dVar.execute(Boolean.FALSE);
            }
            return false;
        }
        if (dVar != null) {
            dVar.execute(Boolean.FALSE);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(Context applicationContext, String str, d dVar) {
        Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
        j(applicationContext, br.a.c(str, 0, 2, null), dVar);
    }

    public static final boolean h(@NotNull Context context, @NotNull String urlString, @Nullable d<Boolean> dVar) {
        Object d10;
        Unit unit;
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(urlString, "urlString");
        Uri a10 = q.a(urlString);
        if (a10 == null) {
            if (dVar != null) {
                dVar.execute(Boolean.FALSE);
                return false;
            }
            return false;
        }
        try {
            Result.a aVar = Result.f60901b;
            context.startActivity(m(a10));
            if (dVar != null) {
                dVar.execute(Boolean.TRUE);
                unit = Unit.f60915a;
            } else {
                unit = null;
            }
            d10 = Result.d(unit);
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            d10 = Result.d(kotlin.f.a(th2));
        }
        if (Result.g(d10) != null && dVar != null) {
            dVar.execute(Boolean.FALSE);
        }
        return Result.j(d10);
    }

    public static final boolean i(@NotNull Context context, @Nullable String str) {
        Boolean bool;
        Intrinsics.checkNotNullParameter(context, "<this>");
        if (str != null && str.length() != 0) {
            try {
                Intent f10 = g.f(str);
                if (!g.a(context, f10)) {
                    String decodedUrl = URLDecoder.decode(str, Charsets.UTF_8.name());
                    Intrinsics.checkNotNullExpressionValue(decodedUrl, "decodedUrl");
                    f10 = g.f(decodedUrl);
                    g.a(context, f10);
                }
                context.startActivity(f10);
                bool = Boolean.TRUE;
            } catch (Throwable unused) {
                bool = null;
            }
            return Intrinsics.areEqual(bool, Boolean.TRUE);
        }
        return false;
    }

    public static final boolean j(@NotNull Context context, @Nullable String str, @Nullable final d<Boolean> dVar) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        final boolean i10 = i(context, str);
        n.b(new Runnable() { // from class: yq.i
            @Override // java.lang.Runnable
            public final void run() {
                j.k(d.this, i10);
            }
        });
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(d dVar, boolean z10) {
        if (dVar != null) {
            dVar.execute(Boolean.valueOf(z10));
        }
    }

    @NotNull
    public static final String l(@NotNull String urlString) {
        Intrinsics.checkNotNullParameter(urlString, "urlString");
        Uri a10 = q.a(urlString);
        if (a10 == null) {
            return urlString;
        }
        String uri = q.b(a10, "bmcp").toString();
        Intrinsics.checkNotNullExpressionValue(uri, "uri.removeQueryParameter…CUSTOM_PARAMS).toString()");
        return uri;
    }

    @NotNull
    public static final Intent m(@NotNull Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "<this>");
        Intent intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, uri);
        intent.setFlags(268435456);
        return intent;
    }
}
