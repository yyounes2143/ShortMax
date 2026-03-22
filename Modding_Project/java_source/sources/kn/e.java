package kn;

import androidx.annotation.Nullable;
import java.util.Objects;
/* compiled from: Descriptor.java */
/* loaded from: classes8.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public final String f60833a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final String f60834b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final String f60835c;

    public e(String str, @Nullable String str2, @Nullable String str3) {
        this.f60833a = str;
        this.f60834b = str2;
        this.f60835c = str3;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        if (Objects.equals(this.f60833a, eVar.f60833a) && Objects.equals(this.f60834b, eVar.f60834b) && Objects.equals(this.f60835c, eVar.f60835c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int hashCode = this.f60833a.hashCode() * 31;
        String str = this.f60834b;
        int i11 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = (hashCode + i10) * 31;
        String str2 = this.f60835c;
        if (str2 != null) {
            i11 = str2.hashCode();
        }
        return i12 + i11;
    }
}
