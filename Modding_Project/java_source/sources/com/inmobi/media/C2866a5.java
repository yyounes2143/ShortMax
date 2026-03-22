package com.inmobi.media;

import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.a5  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2866a5 implements Ba {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C2883b5 f24478a;

    public C2866a5(C2883b5 c2883b5) {
        this.f24478a = c2883b5;
    }

    @Override // com.inmobi.media.Ba
    public final void a(Da result) {
        La la2;
        Intrinsics.checkNotNullParameter(result, "result");
        WeakReference weakReference = (WeakReference) this.f24478a.f23856b.get(result.f23593a.f25511h);
        if (weakReference != null) {
            la2 = (La) weakReference.get();
        } else {
            la2 = null;
        }
        if (Ga.a(result)) {
            this.f24478a.b(result, la2);
        } else {
            this.f24478a.a(result, la2);
        }
    }
}
