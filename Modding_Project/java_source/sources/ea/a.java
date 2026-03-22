package ea;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes5.dex */
public final class a extends ca.a {

    /* renamed from: f  reason: collision with root package name */
    public Function1 f51274f;

    /* renamed from: g  reason: collision with root package name */
    public String f51275g;

    /* renamed from: h  reason: collision with root package name */
    public String f51276h;

    /* renamed from: i  reason: collision with root package name */
    public int f51277i = 15000;

    /* renamed from: j  reason: collision with root package name */
    public Function0 f51278j;

    @Nullable
    public final String k() {
        return this.f51275g;
    }

    public final int l() {
        return this.f51277i;
    }

    @Nullable
    public final String m() {
        return this.f51276h;
    }

    @Nullable
    public final Function0<String> n() {
        return this.f51278j;
    }

    @Nullable
    public final Function1<String, Boolean> o() {
        return this.f51274f;
    }

    public final void p(@Nullable String str) {
        this.f51275g = str;
    }

    public final void q(@Nullable Function1<? super String, Boolean> function1) {
        this.f51274f = function1;
    }

    public final void r(@Nullable Function0<String> function0) {
        this.f51278j = function0;
    }

    @NotNull
    public String toString() {
        return "AdmobConfig(debug=" + b() + " admobDeviceId=" + this.f51275g + ", metaDeviceId=" + this.f51276h + ",appOpenAdRequestTimeout=" + this.f51277i + ", adLoadedListener=" + a() + ')';
    }
}
