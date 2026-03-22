package com.inmobi.media;

import com.inmobi.media.F;
import com.inmobi.media.I;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes5.dex */
public final class F extends Lambda implements Function0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ I f23627a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public F(I i10) {
        super(0);
        this.f23627a = i10;
    }

    public final void a() {
        I i10 = this.f23627a;
        i10.getClass();
        L3 l32 = L3.f23796a;
        if (!l32.A()) {
            InterfaceC3269z5 interfaceC3269z5 = i10.f23711e;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).c("AdExposureTracker", "Cannot calculate curved areas for this Android OS");
            }
        } else {
            GestureDetector$OnGestureListenerC2941ec view = i10.f23707a;
            H windowInsetListener = i10.f23719m;
            InterfaceC3269z5 interfaceC3269z52 = i10.f23711e;
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(windowInsetListener, "windowInsetListener");
            Df listener = new Df(null, windowInsetListener, interfaceC3269z52);
            if (l32.F()) {
                listener.f23606c = view;
                if (interfaceC3269z52 != null) {
                    ((A5) interfaceC3269z52).a("WindowInsetsHandler", "startListeningToInsets");
                }
                WeakHashMap weakHashMap = Df.f23603g;
                Object obj = weakHashMap.get(view);
                if (obj == null) {
                    obj = new zf(view);
                    weakHashMap.put(view, obj);
                }
                Intrinsics.checkNotNullParameter(listener, "listener");
                ((zf) obj).f25518a.add(listener);
                if (interfaceC3269z52 != null) {
                    ((A5) interfaceC3269z52).a("WindowInsetsHandler_INSTANCE", listener + " created - " + weakHashMap.size());
                }
            } else if (interfaceC3269z52 != null) {
                ((A5) interfaceC3269z52).a("WindowInsetsHandler", "WindowInsetsHandler is not supported for this version");
            }
            i10.f23718l = listener;
        }
        final I i11 = this.f23627a;
        i11.f23717k = i11.f23715i.scheduleWithFixedDelay(new Runnable() { // from class: ub.d0
            @Override // java.lang.Runnable
            public final void run() {
                F.a(I.this);
            }
        }, 0L, this.f23627a.f23709c, TimeUnit.MILLISECONDS);
    }

    @Override // kotlin.jvm.functions.Function0
    public final /* bridge */ /* synthetic */ Object invoke() {
        a();
        return Unit.f60915a;
    }

    public static final void a(I this$0) {
        InterfaceC3269z5 interfaceC3269z5;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Throwable g10 = Result.g(C2.a(new E(this$0)));
        if (g10 == null || (interfaceC3269z5 = this$0.f23711e) == null) {
            return;
        }
        ((A5) interfaceC3269z5).b("AdExposureTracker", "Error calculating exposure metrics - " + g10.getMessage());
    }
}
