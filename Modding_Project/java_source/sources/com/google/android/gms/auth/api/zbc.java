package com.google.android.gms.auth.api;

import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ShowFirstParty;
/* compiled from: com.google.android.gms:play-services-auth@@21.4.0 */
@Deprecated
/* loaded from: classes4.dex */
public final class zbc {
    protected Boolean zba;
    @Nullable
    protected String zbb;

    public zbc() {
        this.zba = Boolean.FALSE;
    }

    @ShowFirstParty
    public final zbc zba(String str) {
        this.zbb = str;
        return this;
    }

    @ShowFirstParty
    public zbc(zbd zbdVar) {
        this.zba = Boolean.FALSE;
        this.zba = Boolean.valueOf(zbdVar.zbb());
        this.zbb = zbdVar.zbc();
    }
}
