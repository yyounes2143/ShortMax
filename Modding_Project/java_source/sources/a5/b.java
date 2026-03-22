package a5;

import androidx.annotation.Nullable;
/* compiled from: AutoValue_ProductData.java */
/* loaded from: classes4.dex */
final class b extends f {

    /* renamed from: a  reason: collision with root package name */
    private final Integer f133a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(@Nullable Integer num) {
        this.f133a = num;
    }

    @Override // a5.f
    @Nullable
    public Integer a() {
        return this.f133a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        Integer num = this.f133a;
        Integer a10 = ((f) obj).a();
        if (num == null) {
            if (a10 == null) {
                return true;
            }
            return false;
        }
        return num.equals(a10);
    }

    public int hashCode() {
        int hashCode;
        Integer num = this.f133a;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        return hashCode ^ 1000003;
    }

    public String toString() {
        return "ProductData{productId=" + this.f133a + "}";
    }
}
