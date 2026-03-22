package com.google.android.gms.auth.api.identity;

import com.google.android.gms.auth.api.identity.Claim;
/* compiled from: com.google.android.gms:play-services-auth@@21.4.0 */
/* loaded from: classes4.dex */
final class zbd extends Claim.Builder {
    private String zba;
    private boolean zbb;
    private byte zbc;

    @Override // com.google.android.gms.auth.api.identity.Claim.Builder
    public final Claim build() {
        if (this.zbc == 1 && this.zba != null) {
            return new Claim(this.zba, this.zbb);
        }
        StringBuilder sb2 = new StringBuilder();
        if (this.zba == null) {
            sb2.append(" name");
        }
        if (this.zbc == 0) {
            sb2.append(" essential");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb2.toString()));
    }

    @Override // com.google.android.gms.auth.api.identity.Claim.Builder
    public final Claim.Builder setEssential(boolean z10) {
        this.zbb = z10;
        this.zbc = (byte) 1;
        return this;
    }

    @Override // com.google.android.gms.auth.api.identity.Claim.Builder
    public final Claim.Builder setName(String str) {
        if (str != null) {
            this.zba = str;
            return this;
        }
        throw new NullPointerException("Null name");
    }
}
