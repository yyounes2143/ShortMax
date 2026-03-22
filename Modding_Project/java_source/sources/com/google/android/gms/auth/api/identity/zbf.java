package com.google.android.gms.auth.api.identity;

import android.accounts.Account;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.identity.RevokeAccessRequest;
import com.google.android.gms.common.api.Scope;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-auth@@21.4.0 */
/* loaded from: classes4.dex */
final class zbf extends RevokeAccessRequest.Builder {
    private List zba;
    private Account zbb;
    private String zbc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zbf() {
    }

    @Override // com.google.android.gms.auth.api.identity.RevokeAccessRequest.Builder
    public final RevokeAccessRequest build() {
        if (this.zba != null && this.zbb != null) {
            return new RevokeAccessRequest(this.zba, this.zbb, this.zbc);
        }
        StringBuilder sb2 = new StringBuilder();
        if (this.zba == null) {
            sb2.append(" scopes");
        }
        if (this.zbb == null) {
            sb2.append(" account");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb2.toString()));
    }

    @Override // com.google.android.gms.auth.api.identity.RevokeAccessRequest.Builder
    public final RevokeAccessRequest.Builder setAccount(Account account) {
        if (account != null) {
            this.zbb = account;
            return this;
        }
        throw new NullPointerException("Null account");
    }

    @Override // com.google.android.gms.auth.api.identity.RevokeAccessRequest.Builder
    public final RevokeAccessRequest.Builder setScopes(List<Scope> list) {
        if (list != null) {
            this.zba = list;
            return this;
        }
        throw new NullPointerException("Null scopes");
    }

    @Override // com.google.android.gms.auth.api.identity.RevokeAccessRequest.Builder
    public final RevokeAccessRequest.Builder zba(@Nullable String str) {
        this.zbc = str;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zbf(RevokeAccessRequest revokeAccessRequest) {
        this.zba = revokeAccessRequest.getScopes();
        this.zbb = revokeAccessRequest.getAccount();
        this.zbc = revokeAccessRequest.zba();
    }
}
