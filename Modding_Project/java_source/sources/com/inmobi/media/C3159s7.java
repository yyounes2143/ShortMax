package com.inmobi.media;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.s7  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3159s7 implements InterfaceC3143r7 {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC3143r7 f25267a;

    /* renamed from: b  reason: collision with root package name */
    public final AtomicBoolean f25268b;

    public C3159s7(InterfaceC3143r7 mediaChangeReceiver) {
        Intrinsics.checkNotNullParameter(mediaChangeReceiver, "mediaChangeReceiver");
        this.f25267a = mediaChangeReceiver;
        this.f25268b = new AtomicBoolean(false);
    }

    @Override // com.inmobi.media.InterfaceC3143r7
    public final void a() {
        if (this.f25268b.getAndSet(false)) {
            this.f25267a.a();
        }
    }

    @Override // com.inmobi.media.InterfaceC3143r7
    public final void b() {
        if (!this.f25268b.getAndSet(true)) {
            this.f25267a.b();
        }
    }
}
