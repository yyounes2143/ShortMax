package com.mbridge.msdk.video.module.listener.impl;
/* compiled from: ProxyOnNotifyListener.java */
/* loaded from: classes6.dex */
public class i extends f {

    /* renamed from: a  reason: collision with root package name */
    protected com.mbridge.msdk.video.module.listener.a f31159a;

    public i(com.mbridge.msdk.video.module.listener.a aVar) {
        this.f31159a = aVar;
    }

    @Override // com.mbridge.msdk.video.module.listener.impl.f, com.mbridge.msdk.video.module.listener.a
    public void a(int i10, Object obj) {
        super.a(i10, obj);
        com.mbridge.msdk.video.module.listener.a aVar = this.f31159a;
        if (aVar != null) {
            aVar.a(i10, obj);
        }
    }
}
