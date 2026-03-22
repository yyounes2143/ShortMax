package n0;

import android.content.Context;
import android.util.DisplayMetrics;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import n0.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DisplaySizeResolver.kt */
@Metadata
/* loaded from: classes2.dex */
public final class d implements h {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Context f62718a;

    public d(@NotNull Context context) {
        this.f62718a = context;
    }

    @Override // n0.h
    @Nullable
    public Object b(@NotNull rs.c<? super g> cVar) {
        DisplayMetrics displayMetrics = this.f62718a.getResources().getDisplayMetrics();
        c.a a10 = a.a(Math.max(displayMetrics.widthPixels, displayMetrics.heightPixels));
        return new g(a10, a10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof d) && Intrinsics.areEqual(this.f62718a, ((d) obj).f62718a)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.f62718a.hashCode();
    }
}
