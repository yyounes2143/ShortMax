package zm;

import androidx.annotation.Nullable;
import cn.m0;
import java.util.Objects;
/* compiled from: Label.java */
/* loaded from: classes8.dex */
public class p {

    /* renamed from: c  reason: collision with root package name */
    private static final String f71980c = m0.C0(0);

    /* renamed from: d  reason: collision with root package name */
    private static final String f71981d = m0.C0(1);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final String f71982a;

    /* renamed from: b  reason: collision with root package name */
    public final String f71983b;

    public p(@Nullable String str, String str2) {
        this.f71982a = m0.V0(str);
        this.f71983b = str2;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        p pVar = (p) obj;
        if (Objects.equals(this.f71982a, pVar.f71982a) && Objects.equals(this.f71983b, pVar.f71983b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int hashCode = this.f71983b.hashCode() * 31;
        String str = this.f71982a;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        return hashCode + i10;
    }
}
