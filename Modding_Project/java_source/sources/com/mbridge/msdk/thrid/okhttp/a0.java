package com.mbridge.msdk.thrid.okhttp;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.net.InetSocketAddress;
import java.net.Proxy;
/* compiled from: Route.java */
/* loaded from: classes6.dex */
public final class a0 {

    /* renamed from: a  reason: collision with root package name */
    final a f29464a;

    /* renamed from: b  reason: collision with root package name */
    final Proxy f29465b;

    /* renamed from: c  reason: collision with root package name */
    final InetSocketAddress f29466c;

    public a0(a aVar, Proxy proxy, InetSocketAddress inetSocketAddress) {
        if (aVar != null) {
            if (proxy != null) {
                if (inetSocketAddress != null) {
                    this.f29464a = aVar;
                    this.f29465b = proxy;
                    this.f29466c = inetSocketAddress;
                    return;
                }
                throw new NullPointerException("inetSocketAddress == null");
            }
            throw new NullPointerException("proxy == null");
        }
        throw new NullPointerException("address == null");
    }

    public a a() {
        return this.f29464a;
    }

    public Proxy b() {
        return this.f29465b;
    }

    public boolean c() {
        if (this.f29464a.f29461i != null && this.f29465b.type() == Proxy.Type.HTTP) {
            return true;
        }
        return false;
    }

    public InetSocketAddress d() {
        return this.f29466c;
    }

    public boolean equals(Object obj) {
        if (obj instanceof a0) {
            a0 a0Var = (a0) obj;
            if (a0Var.f29464a.equals(this.f29464a) && a0Var.f29465b.equals(this.f29465b) && a0Var.f29466c.equals(this.f29466c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((this.f29464a.hashCode() + TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER) * 31) + this.f29465b.hashCode()) * 31) + this.f29466c.hashCode();
    }

    public String toString() {
        return "Route{" + this.f29466c + "}";
    }
}
