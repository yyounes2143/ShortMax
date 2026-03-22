package com.inmobi.media;

import android.app.Activity;
import android.view.View;
import android.view.WindowInsets;
import com.inmobi.media.zf;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class zf {

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList f25518a;

    /* renamed from: b  reason: collision with root package name */
    public final WeakReference f25519b;

    public zf(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.f25518a = new ArrayList();
        this.f25519b = new WeakReference(view);
        if (L3.f23796a.F()) {
            view.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: ub.r8
                @Override // android.view.View.OnApplyWindowInsetsListener
                public final WindowInsets onApplyWindowInsets(View view2, WindowInsets windowInsets) {
                    return zf.a(zf.this, view2, windowInsets);
                }
            });
        }
    }

    public static final WindowInsets a(zf this$0, View view, WindowInsets windowInsets) {
        Bf a10;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(windowInsets, "windowInsets");
        if (this$0.f25518a.isEmpty()) {
            return windowInsets;
        }
        Iterator it = this$0.f25518a.iterator();
        while (it.hasNext()) {
            Df df2 = (Df) ((yf) it.next());
            df2.getClass();
            Intrinsics.checkNotNullParameter(windowInsets, "windowInsets");
            df2.f23604a.a(windowInsets);
            try {
                Activity activity = (Activity) df2.f23608e.get();
                if (!df2.f23604a.a()) {
                    InterfaceC3269z5 interfaceC3269z5 = df2.f23605b;
                    if (interfaceC3269z5 != null) {
                        ((A5) interfaceC3269z5).a("WindowInsetsHandler", "listener is not interested in computing insets, skipping");
                    }
                } else if (activity == null) {
                    InterfaceC3269z5 interfaceC3269z52 = df2.f23605b;
                    if (interfaceC3269z52 != null) {
                        ((A5) interfaceC3269z52).b("WindowInsetsHandler", "Activity is null, skipping safeArea computation");
                    }
                } else {
                    if (B2.a(activity)) {
                        a10 = AbstractC3117pc.b(windowInsets);
                    } else {
                        a10 = AbstractC3117pc.a(windowInsets);
                    }
                    Integer f10 = U3.f();
                    int intValue = f10 != null ? f10.intValue() : U3.a(windowInsets);
                    U3.a(Integer.valueOf(intValue));
                    df2.a(a10, intValue);
                }
            } catch (Error e10) {
                InterfaceC3269z5 interfaceC3269z53 = df2.f23605b;
                if (interfaceC3269z53 != null) {
                    ((A5) interfaceC3269z53).b("WindowInsetsHandler", "Error in getting safeArea " + e10.getMessage());
                }
            } catch (Exception e11) {
                InterfaceC3269z5 interfaceC3269z54 = df2.f23605b;
                if (interfaceC3269z54 != null) {
                    ((A5) interfaceC3269z54).a("WindowInsetsHandler", "Exception in getting safeArea", e11);
                }
            }
        }
        return windowInsets;
    }

    public final void a() {
        View view;
        this.f25518a.clear();
        if (!L3.f23796a.F() || (view = (View) this.f25519b.get()) == null) {
            return;
        }
        view.setOnApplyWindowInsetsListener(null);
    }
}
