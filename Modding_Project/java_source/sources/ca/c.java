package ca;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes5.dex */
public final class c {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private String f3351a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private String f3352b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private String f3353c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f3354d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private String f3355e = "";
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private String f3356f = "";
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private String f3357g = "";
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private String f3358h = "";

    @Nullable
    public final String a() {
        return this.f3353c;
    }

    public final boolean b() {
        return this.f3354d;
    }

    @NotNull
    public final String c() {
        return this.f3356f;
    }

    @NotNull
    public final String d() {
        return this.f3357g;
    }

    @NotNull
    public final String e() {
        return this.f3358h;
    }

    @NotNull
    public final String f() {
        return this.f3355e;
    }

    public final void g(@Nullable String str) {
        this.f3353c = str;
    }

    public final void h(boolean z10) {
        this.f3354d = z10;
    }

    public final void i(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f3356f = str;
    }

    public final void j(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f3357g = str;
    }

    public final void k(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f3358h = str;
    }

    public final void l(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f3355e = str;
    }

    @NotNull
    public String toString() {
        return "AdExtra(source=" + this.f3351a + ", currency=" + this.f3352b + ", pam=" + this.f3354d + ",mediationName=" + this.f3353c + ", pamMediationName=" + this.f3355e + ", pamGroupKey=" + this.f3356f + ", pamGroupValue=" + this.f3357g + ", pamLastAdValue=" + this.f3358h + ')';
    }
}
