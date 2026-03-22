package p1;

import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StatusInfo.kt */
@Metadata
/* loaded from: classes3.dex */
public final class e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private View f64494a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private Object f64495b;

    public e(@NotNull View view, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.f64494a = view;
        this.f64495b = obj;
    }

    @Nullable
    public final Object a() {
        return this.f64495b;
    }

    @NotNull
    public final View b() {
        return this.f64494a;
    }

    public final void c(@Nullable Object obj) {
        this.f64495b = obj;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        if (Intrinsics.areEqual(this.f64494a, eVar.f64494a) && Intrinsics.areEqual(this.f64495b, eVar.f64495b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = this.f64494a.hashCode() * 31;
        Object obj = this.f64495b;
        if (obj == null) {
            hashCode = 0;
        } else {
            hashCode = obj.hashCode();
        }
        return hashCode2 + hashCode;
    }

    @NotNull
    public String toString() {
        return "StatusInfo(view=" + this.f64494a + ", tag=" + this.f64495b + ')';
    }
}
