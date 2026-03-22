package com.mbridge.msdk.foundation.same.net.handler;

import com.mbridge.msdk.foundation.same.net.c;
import com.mbridge.msdk.foundation.same.net.e;
import com.mbridge.msdk.foundation.tools.p0;
/* compiled from: CommonStringResponseHandler.java */
/* loaded from: classes5.dex */
public abstract class a extends c<String> {

    /* renamed from: a  reason: collision with root package name */
    private static final String f27137a = "a";

    public abstract void a(String str);

    public abstract void b(String str);

    @Override // com.mbridge.msdk.foundation.same.net.c, com.mbridge.msdk.foundation.same.net.b
    public void onError(com.mbridge.msdk.foundation.same.net.exception.a aVar) {
        String str = f27137a;
        p0.b(str, "errorCode = " + aVar.f27119a);
        a(com.mbridge.msdk.foundation.same.net.utils.a.a(aVar));
    }

    @Override // com.mbridge.msdk.foundation.same.net.c, com.mbridge.msdk.foundation.same.net.b
    public void onSuccess(e<String> eVar) {
        if (eVar != null) {
            b(eVar.f27118c);
        }
    }
}
