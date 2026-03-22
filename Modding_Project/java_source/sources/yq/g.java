package yq;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: IntentUtils.kt */
@Metadata
/* loaded from: classes8.dex */
public final class g {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final g f71125a = new g();

    private g() {
    }

    public static final boolean a(@NotNull Context context, @NotNull Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        return j.d(context, intent);
    }

    public static final boolean b(@NotNull Context context, @Nullable String str, @Nullable d<Boolean> dVar) {
        Intrinsics.checkNotNullParameter(context, "context");
        return j.f(context, str, dVar);
    }

    @Nullable
    public static final ComponentName c(@NotNull List<? extends ResolveInfo> resolveInfoList) {
        Object obj;
        Intrinsics.checkNotNullParameter(resolveInfoList, "resolveInfoList");
        Iterator<T> it = resolveInfoList.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (Intrinsics.areEqual(((ResolveInfo) obj).activityInfo.packageName, "com.android.vending")) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        ResolveInfo resolveInfo = (ResolveInfo) obj;
        if (resolveInfo == null) {
            return null;
        }
        ActivityInfo activityInfo = resolveInfo.activityInfo;
        return new ComponentName(activityInfo.packageName, activityInfo.name);
    }

    public static final boolean d(@NotNull Context context, @Nullable String str) {
        Intrinsics.checkNotNullParameter(context, "context");
        return j.i(context, str);
    }

    @NotNull
    public static final Intent e(@NotNull Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return j.m(uri);
    }

    @NotNull
    public static final Intent f(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        Uri parse = Uri.parse(url);
        Intrinsics.checkNotNullExpressionValue(parse, "parse(url)");
        return e(parse);
    }
}
