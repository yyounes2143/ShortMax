package com.inmobi.media;

import com.inmobi.media.RunnableC3244xc;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.xc  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class RunnableC3244xc implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final C3196uc f25435a;

    /* renamed from: b  reason: collision with root package name */
    public final C3212vc f25436b;

    public RunnableC3244xc(C3196uc request, C3212vc c3212vc) {
        Intrinsics.checkNotNullParameter(request, "request");
        this.f25435a = request;
        this.f25436b = c3212vc;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [kotlin.jvm.functions.Function1, kotlin.jvm.internal.Lambda] */
    public static final void a(RunnableC3244xc this$0, C3260yc response) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(response, "$response");
        C3196uc request = this$0.f25435a;
        request.getClass();
        Intrinsics.checkNotNullParameter(response, "response");
        M9 m92 = request.f25344l;
        if (m92 != null) {
            Intrinsics.checkNotNullParameter(response, "response");
            P9 response2 = D4.a(response);
            N9 request2 = m92.f23853a;
            Intrinsics.checkNotNullParameter(response2, "response");
            Intrinsics.checkNotNullParameter(request2, "request");
            m92.f23854b.invoke(response2);
        }
        request.f25344l = null;
        Set set = AbstractC3228wc.f25391a;
        Intrinsics.checkNotNullParameter(request, "request");
        try {
            AbstractC3228wc.f25391a.remove(request);
        } catch (Exception unused) {
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        EnumC3093o4 enumC3093o4;
        this.f25435a.getClass();
        int i10 = H9.f23704a;
        final C3260yc a10 = H9.a(this.f25435a, this.f25436b);
        I9 i92 = a10.f25468a;
        if (i92 != null) {
            enumC3093o4 = i92.f23737a;
        } else {
            enumC3093o4 = null;
        }
        if (enumC3093o4 != EnumC3093o4.f25099m) {
            ExecutorC3096o7 executorC3096o7 = (ExecutorC3096o7) AbstractC3268z4.f25482d.getValue();
            Runnable runnable = new Runnable() { // from class: ub.l8
                @Override // java.lang.Runnable
                public final void run() {
                    RunnableC3244xc.a(RunnableC3244xc.this, a10);
                }
            };
            executorC3096o7.getClass();
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            executorC3096o7.f25116a.post(runnable);
            this.f25435a.getClass();
        }
    }
}
