package fa;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes5.dex */
public final class a extends ca.a {

    /* renamed from: f  reason: collision with root package name */
    public String f51679f;

    /* renamed from: g  reason: collision with root package name */
    public String f51680g;

    /* renamed from: h  reason: collision with root package name */
    public String f51681h;

    /* renamed from: i  reason: collision with root package name */
    public String f51682i;

    /* renamed from: m  reason: collision with root package name */
    public Boolean f51686m;

    /* renamed from: j  reason: collision with root package name */
    public int f51683j = 15000;

    /* renamed from: k  reason: collision with root package name */
    public String f51684k = "";

    /* renamed from: l  reason: collision with root package name */
    public String f51685l = "";

    /* renamed from: n  reason: collision with root package name */
    public Function2 f51687n = new p000admanager.e.a(null);

    @Nullable
    public final Boolean k() {
        return this.f51686m;
    }

    @Nullable
    public final String l() {
        return this.f51681h;
    }

    @Nullable
    public final String m() {
        return this.f51682i;
    }

    public final void n(@Nullable String str) {
        this.f51680g = str;
    }

    public final void o(@NotNull Function2<? super Context, ? super rs.c<? super String>, ? extends Object> function2) {
        Intrinsics.checkNotNullParameter(function2, "<set-?>");
        this.f51687n = function2;
    }

    public final void p(@Nullable String str) {
        this.f51681h = str;
    }

    public final void q(@Nullable String str) {
        this.f51682i = str;
    }

    @NotNull
    public String toString() {
        return "ApplovinMaxConfig(debug=" + b() + ", tradPlusAppId=" + this.f51679f + ", appOpenAdRequestTimeout=" + this.f51683j + ", adLoadedListener=" + a() + ')';
    }
}
