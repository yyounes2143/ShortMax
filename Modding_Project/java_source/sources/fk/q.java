package fk;

import android.os.Bundle;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EventFromUtil.kt */
@Metadata
/* loaded from: classes7.dex */
public final class q {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final q f51745a = new q();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final String f51746b = "Immersion";
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final Map<String, Bundle> f51747c = new LinkedHashMap();

    private q() {
    }

    public static /* synthetic */ void f(q qVar, String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = f51746b;
        }
        qVar.e(str, str2, str3);
    }

    public final void a() {
        f51747c.clear();
    }

    @NotNull
    public final String b() {
        return f51746b;
    }

    @NotNull
    public final Bundle c(@NotNull String scene) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        Bundle bundle = f51747c.get(scene);
        if (bundle == null) {
            return new Bundle();
        }
        return bundle;
    }

    public final void d(@NotNull String scene, @NotNull String from, @Nullable String str) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        Intrinsics.checkNotNullParameter(from, "from");
        Map<String, Bundle> map = f51747c;
        Bundle bundle = new Bundle();
        bundle.putString("from", from);
        if (str == null) {
            str = "";
        }
        bundle.putString("upack", str);
        map.put(scene, bundle);
    }

    public final void e(@NotNull String scene, @NotNull String from, @Nullable String str) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        Intrinsics.checkNotNullParameter(from, "from");
        d(scene, from, str);
    }
}
