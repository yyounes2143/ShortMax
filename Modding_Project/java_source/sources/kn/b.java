package kn;

import androidx.annotation.Nullable;
import java.util.Objects;
/* compiled from: BaseUrl.java */
/* loaded from: classes8.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final String f60801a;

    /* renamed from: b  reason: collision with root package name */
    public final String f60802b;

    /* renamed from: c  reason: collision with root package name */
    public final int f60803c;

    /* renamed from: d  reason: collision with root package name */
    public final int f60804d;

    public b(String str, String str2, int i10, int i11) {
        this.f60801a = str;
        this.f60802b = str2;
        this.f60803c = i10;
        this.f60804d = i11;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f60803c == bVar.f60803c && this.f60804d == bVar.f60804d && Objects.equals(this.f60801a, bVar.f60801a) && Objects.equals(this.f60802b, bVar.f60802b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.f60801a, this.f60802b, Integer.valueOf(this.f60803c), Integer.valueOf(this.f60804d));
    }
}
