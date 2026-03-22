package com.huawei.hms.common.internal;
/* loaded from: classes5.dex */
public class ResolveClientBean {

    /* renamed from: a  reason: collision with root package name */
    private final int f22076a;

    /* renamed from: b  reason: collision with root package name */
    private final AnyClient f22077b;

    /* renamed from: c  reason: collision with root package name */
    private int f22078c;

    public ResolveClientBean(AnyClient anyClient, int i10) {
        this.f22077b = anyClient;
        this.f22076a = Objects.hashCode(anyClient);
        this.f22078c = i10;
    }

    public void clientReconnect() {
        this.f22077b.connect(this.f22078c, true);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof ResolveClientBean)) {
            return this.f22077b.equals(((ResolveClientBean) obj).f22077b);
        }
        return false;
    }

    public AnyClient getClient() {
        return this.f22077b;
    }

    public int hashCode() {
        return this.f22076a;
    }
}
