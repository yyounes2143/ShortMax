package com.mbridge.msdk.tracker.network.toolbox;

import androidx.annotation.NonNull;
import com.mbridge.msdk.tracker.network.p;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;
/* compiled from: MBridgeLocalDNSService.java */
/* loaded from: classes6.dex */
public class j implements com.mbridge.msdk.thrid.okhttp.m {

    /* renamed from: b  reason: collision with root package name */
    private final String f30372b;

    /* renamed from: c  reason: collision with root package name */
    private final String f30373c;

    /* renamed from: d  reason: collision with root package name */
    private final p f30374d;

    public j(String str, String str2, p pVar) {
        this.f30372b = str;
        this.f30373c = str2;
        this.f30374d = pVar;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.m
    @NonNull
    public List<InetAddress> a(@NonNull String str) throws UnknownHostException {
        try {
            List<InetAddress> a10 = com.mbridge.msdk.thrid.okhttp.m.f29981a.a(str);
            return (a10.isEmpty() && i.b().c(this.f30372b, this.f30373c, str)) ? a(str, new UnknownHostException("DNS result is empty")) : a10;
        } catch (UnknownHostException e10) {
            if (i.b().c(this.f30372b, this.f30373c, str)) {
                return a(str, new UnknownHostException(e10.getMessage()));
            }
            throw e10;
        }
    }

    private List<InetAddress> a(String str, UnknownHostException unknownHostException) throws UnknownHostException {
        p pVar = this.f30374d;
        if (pVar != null) {
            pVar.c("local");
        }
        return i.b().a(str, unknownHostException);
    }
}
