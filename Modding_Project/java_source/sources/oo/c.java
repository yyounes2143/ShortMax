package oo;

import androidx.annotation.Nullable;
import java.util.Arrays;
import zm.s;
import zm.t;
/* compiled from: IcyInfo.java */
/* loaded from: classes8.dex */
public final class c implements t.a {

    /* renamed from: a  reason: collision with root package name */
    public final byte[] f64336a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final String f64337b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final String f64338c;

    public c(byte[] bArr, @Nullable String str, @Nullable String str2) {
        this.f64336a = bArr;
        this.f64337b = str;
        this.f64338c = str2;
    }

    @Override // zm.t.a
    public void a(s.b bVar) {
        String str = this.f64337b;
        if (str != null) {
            bVar.p0(str);
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && c.class == obj.getClass()) {
            return Arrays.equals(this.f64336a, ((c) obj).f64336a);
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f64336a);
    }

    public String toString() {
        return String.format("ICY: title=\"%s\", url=\"%s\", rawMetadata.length=\"%s\"", this.f64337b, this.f64338c, Integer.valueOf(this.f64336a.length));
    }
}
