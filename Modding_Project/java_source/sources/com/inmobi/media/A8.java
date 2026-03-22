package com.inmobi.media;

import androidx.core.app.NotificationCompat;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class A8 implements InterfaceC2970g9 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ D8 f23468a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C2904c9 f23469b;

    public A8(D8 d82, C2904c9 c2904c9) {
        this.f23468a = d82;
        this.f23469b = c2904c9;
    }

    public final void a(byte b10) {
        T7 t72 = this.f23468a.f23571b;
        if (!t72.f24195t && (t72 instanceof C2870a9) && b10 != 4) {
            try {
                if (b10 == 0) {
                    We we2 = ((C2870a9) t72).f24191p;
                    if (we2 != null) {
                        we2.a((byte) 5);
                    }
                } else if (b10 == 1) {
                    ((C2870a9) t72).g(this.f23469b);
                } else if (b10 == 2) {
                    ((C2870a9) t72).f(this.f23469b);
                } else if (b10 == 3) {
                    ((C2870a9) t72).h(this.f23469b);
                } else if (b10 == 5) {
                    ((C2870a9) t72).d(this.f23469b);
                }
            } catch (Exception e10) {
                D8 d82 = this.f23468a;
                InterfaceC3269z5 interfaceC3269z5 = d82.f23575f;
                if (interfaceC3269z5 != null) {
                    String str = d82.f23576g;
                    Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
                    StringBuilder sb2 = new StringBuilder("SDK encountered unexpected error in handling (");
                    sb2.append((int) b10);
                    sb2.append(") event; ");
                    ((A5) interfaceC3269z5).b(str, rf.a(e10, sb2));
                }
                S5 s52 = S5.f24132a;
                S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
            }
        }
    }
}
