package com.inmobi.media;

import java.lang.ref.WeakReference;
import java.util.Objects;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class F3 extends Ma {

    /* renamed from: e  reason: collision with root package name */
    public final W9 f23630e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public F3(Pa dao) {
        super(dao);
        Intrinsics.checkNotNullParameter(dao, "dao");
        this.f23630e = new W9(dao, new E3(this), this.f23858d);
    }

    @Override // com.inmobi.media.Ma
    public final void a(C3274za ping) {
        La la2;
        Intrinsics.checkNotNullParameter(ping, "ping");
        Intrinsics.checkNotNullExpressionValue("F3", "TAG");
        String str = ping.f25505b;
        if (!a(ping.f25508e)) {
            WeakReference weakReference = (WeakReference) this.f23856b.get(ping.f25511h);
            if (weakReference != null) {
                la2 = (La) weakReference.get();
            } else {
                la2 = null;
            }
            Ma.a(0, "Database capacity exceeded for pings", (short) 2248, ping, System.currentTimeMillis(), la2);
            return;
        }
        Pa pa2 = this.f23855a;
        Intrinsics.checkNotNullParameter(ping, "ping");
        pa2.a(ping);
        W9 w92 = this.f23630e;
        Objects.toString(w92.f23657d);
        if (w92.f23657d == Ca.f23537b) {
            w92.f23657d = Ca.f23538c;
            w92.a();
        }
    }
}
