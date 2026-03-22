package z1;

import android.os.Bundle;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.p;
import com.facebook.internal.u0;
import com.facebook.v;
import java.util.HashSet;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
/* compiled from: BannedParamManager.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBannedParamManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BannedParamManager.kt\ncom/facebook/appevents/integrity/BannedParamManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,67:1\n1855#2,2:68\n*S KotlinDebug\n*F\n+ 1 BannedParamManager.kt\ncom/facebook/appevents/integrity/BannedParamManager\n*L\n61#1:68,2\n*E\n"})
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    private static boolean f71218b;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f71217a = new a();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static HashSet<String> f71219c = new HashSet<>();

    private a() {
    }

    public static final void a() {
        if (o4.a.d(a.class)) {
            return;
        }
        try {
            if (f71218b) {
                return;
            }
            f71217a.b();
            f71218b = !f71219c.isEmpty();
        } catch (Throwable th2) {
            o4.a.b(th2, a.class);
        }
    }

    private final void b() {
        if (o4.a.d(this)) {
            return;
        }
        try {
            p u10 = FetchedAppSettingsManager.u(v.m(), false);
            if (u10 == null) {
                return;
            }
            f71219c = c(u10.b());
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    private final HashSet<String> c(JSONArray jSONArray) {
        try {
            if (o4.a.d(this)) {
                return null;
            }
            try {
                HashSet<String> m10 = u0.m(jSONArray);
                if (m10 == null) {
                    return new HashSet<>();
                }
                return m10;
            } catch (Exception unused) {
                return new HashSet<>();
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    public static final void d(@Nullable Bundle bundle) {
        if (o4.a.d(a.class)) {
            return;
        }
        try {
            if (f71218b && bundle != null) {
                for (String str : f71219c) {
                    bundle.remove(str);
                }
            }
        } catch (Throwable th2) {
            o4.a.b(th2, a.class);
        }
    }
}
