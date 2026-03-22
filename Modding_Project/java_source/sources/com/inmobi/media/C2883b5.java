package com.inmobi.media;

import java.lang.ref.WeakReference;
import java.util.Objects;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.b5  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2883b5 extends Ma {

    /* renamed from: e  reason: collision with root package name */
    public final O4 f24517e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2883b5(Pa dao) {
        super(dao);
        Intrinsics.checkNotNullParameter(dao, "dao");
        this.f24517e = new O4(dao, new C2866a5(this), this.f23858d);
    }

    @Override // com.inmobi.media.Ma
    public final void a(C3274za ping) {
        La la2;
        Intrinsics.checkNotNullParameter(ping, "ping");
        La la3 = null;
        try {
            String str = ping.f25505b;
            WeakReference weakReference = (WeakReference) this.f23856b.get(ping.f25511h);
            if (weakReference != null) {
                la2 = (La) weakReference.get();
            } else {
                la2 = null;
            }
            if (!a(ping.f25508e)) {
                Ma.a(0, "Database capacity exceeded for pings", (short) 2248, ping, System.currentTimeMillis(), la2);
                return;
            }
            Pa pa2 = this.f23855a;
            Intrinsics.checkNotNullParameter(ping, "ping");
            pa2.a(ping);
            O4 o42 = this.f24517e;
            Objects.toString(o42.f23657d);
            if (o42.f23657d == Ca.f23537b) {
                o42.f23657d = Ca.f23538c;
                o42.a();
                o42.d();
            }
            Da a10 = this.f23858d.a(ping);
            if (Ga.a(a10)) {
                String str2 = a10.f23593a.f25505b;
                b(a10, la2);
                return;
            }
            String str3 = a10.f23593a.f25505b;
            a(a10, la2);
        } catch (Error e10) {
            WeakReference weakReference2 = (WeakReference) this.f23856b.get(ping.f25511h);
            if (weakReference2 != null) {
                la3 = (La) weakReference2.get();
            }
            Ma.a(0, e10.getMessage(), (short) 2251, ping, System.currentTimeMillis(), la3);
        } catch (Exception e11) {
            WeakReference weakReference3 = (WeakReference) this.f23856b.get(ping.f25511h);
            if (weakReference3 != null) {
                la3 = (La) weakReference3.get();
            }
            Ma.a(0, e11.getMessage(), (short) 2250, ping, System.currentTimeMillis(), la3);
        }
    }
}
