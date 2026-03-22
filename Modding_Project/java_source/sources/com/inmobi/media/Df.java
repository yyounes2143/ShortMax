package com.inmobi.media;

import android.app.Activity;
import android.view.View;
import android.view.Window;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Df implements yf {

    /* renamed from: g  reason: collision with root package name */
    public static final WeakHashMap f23603g = new WeakHashMap();

    /* renamed from: a  reason: collision with root package name */
    public final Af f23604a;

    /* renamed from: b  reason: collision with root package name */
    public final InterfaceC3269z5 f23605b;

    /* renamed from: c  reason: collision with root package name */
    public View f23606c;

    /* renamed from: d  reason: collision with root package name */
    public final ConcurrentHashMap f23607d;

    /* renamed from: e  reason: collision with root package name */
    public final WeakReference f23608e;

    /* renamed from: f  reason: collision with root package name */
    public EnumC3115pa f23609f;

    public Df(Activity activity, Af windowInsetListener, InterfaceC3269z5 interfaceC3269z5) {
        View view;
        Window window;
        Intrinsics.checkNotNullParameter(windowInsetListener, "windowInsetListener");
        this.f23604a = windowInsetListener;
        this.f23605b = interfaceC3269z5;
        this.f23607d = new ConcurrentHashMap();
        WeakReference weakReference = new WeakReference(activity);
        this.f23608e = weakReference;
        if (L3.f23796a.F()) {
            Activity activity2 = (Activity) weakReference.get();
            if (activity2 != null && (window = activity2.getWindow()) != null) {
                view = window.getDecorView();
            } else {
                view = null;
            }
            if (view != null) {
                this.f23606c = view;
                if (interfaceC3269z5 != null) {
                    ((A5) interfaceC3269z5).a("WindowInsetsHandler", "startListeningToInsets");
                }
                WeakHashMap weakHashMap = f23603g;
                Object obj = weakHashMap.get(view);
                if (obj == null) {
                    obj = new zf(view);
                    weakHashMap.put(view, obj);
                }
                Intrinsics.checkNotNullParameter(this, "listener");
                ((zf) obj).f25518a.add(this);
                if (interfaceC3269z5 != null) {
                    ((A5) interfaceC3269z5).a("WindowInsetsHandler_INSTANCE", this + " created - " + weakHashMap.size());
                }
            }
        } else if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).a("WindowInsetsHandler", "WindowInsetsHandler is not supported for this version");
        }
    }

    public final void a(Bf insets, int i10) {
        EnumC3115pa orientation = AbstractC3131qa.a(U3.g());
        Cf cf2 = (Cf) this.f23607d.get(Integer.valueOf(i10));
        if (cf2 == null) {
            cf2 = new Cf();
            this.f23607d.put(Integer.valueOf(i10), cf2);
        }
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        Bf bf2 = (Bf) cf2.f23553a.get(orientation);
        if (bf2 != null && Intrinsics.areEqual(insets, bf2)) {
            InterfaceC3269z5 interfaceC3269z5 = this.f23605b;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).a("WindowInsetsHandler", "SafeArea - Same value, no need to update");
            }
        } else {
            InterfaceC3269z5 interfaceC3269z52 = this.f23605b;
            if (interfaceC3269z52 != null) {
                ((A5) interfaceC3269z52).a("WindowInsetsHandler", "safeArea - New value, updating to KV store");
            }
            Intrinsics.checkNotNullParameter(orientation, "orientation");
            Intrinsics.checkNotNullParameter(insets, "insets");
            cf2.f23553a.put(orientation, insets);
            ConcurrentHashMap concurrentHashMap = this.f23607d;
            LinkedHashMap linkedHashMap = new LinkedHashMap(kotlin.collections.p0.e(concurrentHashMap.size()));
            for (Map.Entry entry : concurrentHashMap.entrySet()) {
                linkedHashMap.put(entry.getKey(), ((Cf) entry.getValue()).a());
            }
            U3.a(linkedHashMap);
        }
        if (this.f23609f != orientation) {
            this.f23609f = orientation;
            Af af2 = this.f23604a;
            Object obj = this.f23607d.get(Integer.valueOf(i10));
            Intrinsics.checkNotNull(obj);
            af2.a(orientation, (Cf) obj);
        }
    }

    public final void a() {
        View view = this.f23606c;
        if (view != null) {
            WeakHashMap weakHashMap = f23603g;
            zf zfVar = (zf) weakHashMap.get(view);
            if (zfVar != null) {
                Intrinsics.checkNotNullParameter(this, "listener");
                zfVar.f25518a.remove(this);
                if (zfVar.f25518a.isEmpty()) {
                    zfVar.a();
                    weakHashMap.remove(view);
                }
            }
            InterfaceC3269z5 interfaceC3269z5 = this.f23605b;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).a("WindowInsetsHandler_INSTANCE", this + " destroy - " + weakHashMap.size());
            }
        }
    }
}
