package ue;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: IDResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class c {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private String f68418a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private String f68419b;

    public c() {
        this(null, null, 3, null);
    }

    @Nullable
    public final String a() {
        return this.f68419b;
    }

    @Nullable
    public final String b() {
        return this.f68418a;
    }

    public final void c(@Nullable String str) {
        this.f68419b = str;
    }

    public final void d(@Nullable String str) {
        this.f68418a = str;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (Intrinsics.areEqual(this.f68418a, cVar.f68418a) && Intrinsics.areEqual(this.f68419b, cVar.f68419b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        String str = this.f68418a;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = hashCode * 31;
        String str2 = this.f68419b;
        if (str2 != null) {
            i10 = str2.hashCode();
        }
        return i11 + i10;
    }

    @NotNull
    public String toString() {
        return "IDResult(id=" + this.f68418a + ", error=" + this.f68419b + ')';
    }

    public c(@Nullable String str, @Nullable String str2) {
        this.f68418a = str;
        this.f68419b = str2;
    }

    public /* synthetic */ c(String str, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : str2);
    }
}
