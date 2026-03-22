package com.inmobi.media;

import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class E3 implements Ba {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ F3 f23615a;

    public E3(F3 f32) {
        this.f23615a = f32;
    }

    @Override // com.inmobi.media.Ba
    public final void a(Da result) {
        La la2;
        Intrinsics.checkNotNullParameter(result, "result");
        WeakReference weakReference = (WeakReference) this.f23615a.f23856b.get(result.f23593a.f25511h);
        if (weakReference != null) {
            la2 = (La) weakReference.get();
        } else {
            la2 = null;
        }
        if (Ga.a(result)) {
            this.f23615a.b(result, la2);
        } else {
            this.f23615a.a(result, la2);
        }
    }
}
