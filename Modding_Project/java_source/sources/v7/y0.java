package v7;

import androidx.annotation.Nullable;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
final class y0 extends u0 {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f68834a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f68835b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final String f68836c;

    @Override // v7.u0
    @Nullable
    public final String b() {
        return this.f68835b;
    }

    @Override // v7.u0
    @Nullable
    public final String c() {
        return this.f68836c;
    }

    @Override // v7.u0
    @Nullable
    public final String d() {
        return this.f68834a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof u0) {
            u0 u0Var = (u0) obj;
            String str = this.f68834a;
            if (str != null ? str.equals(u0Var.d()) : u0Var.d() == null) {
                String str2 = this.f68835b;
                if (str2 != null ? str2.equals(u0Var.b()) : u0Var.b() == null) {
                    String str3 = this.f68836c;
                    if (str3 != null ? str3.equals(u0Var.c()) : u0Var.c() == null) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        String str = this.f68834a;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = (hashCode ^ 1000003) * 1000003;
        String str2 = this.f68835b;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i12 = (i11 ^ hashCode2) * 1000003;
        String str3 = this.f68836c;
        if (str3 != null) {
            i10 = str3.hashCode();
        }
        return i12 ^ i10;
    }

    public final String toString() {
        String str = this.f68834a;
        String str2 = this.f68835b;
        String str3 = this.f68836c;
        return "AttestationResult{recaptchaV2Token=" + str + ", playIntegrityToken=" + str2 + ", recaptchaEnterpriseToken=" + str3 + "}";
    }

    private y0(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        this.f68834a = str;
        this.f68835b = str2;
        this.f68836c = str3;
    }
}
