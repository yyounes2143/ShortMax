package com.mbridge.msdk.thrid.okhttp.internal.connection;

import androidx.browser.trusted.sharing.ShareTarget;
import com.mbridge.msdk.thrid.okhttp.r;
import com.mbridge.msdk.thrid.okhttp.t;
import com.mbridge.msdk.thrid.okhttp.w;
import com.mbridge.msdk.thrid.okhttp.y;
import java.io.IOException;
/* compiled from: ConnectInterceptor.java */
/* loaded from: classes6.dex */
public final class a implements r {

    /* renamed from: a  reason: collision with root package name */
    public final t f29636a;

    public a(t tVar) {
        this.f29636a = tVar;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.r
    public y a(r.a aVar) throws IOException {
        com.mbridge.msdk.thrid.okhttp.internal.http.g gVar = (com.mbridge.msdk.thrid.okhttp.internal.http.g) aVar;
        w d10 = gVar.d();
        g i10 = gVar.i();
        return gVar.a(d10, i10, i10.a(this.f29636a, aVar, !d10.e().equals(ShareTarget.METHOD_GET)), i10.c());
    }
}
