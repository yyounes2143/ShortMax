package com.inmobi.media;

import android.os.Bundle;
import androidx.browser.customtabs.CustomTabsCallback;
import com.ss.mediakit.medialoader.AVMDLDataLoader;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.u3  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3187u3 extends CustomTabsCallback {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C3203v3 f25317a;

    public C3187u3(C3203v3 c3203v3) {
        this.f25317a = c3203v3;
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final void onActivityLayout(int i10, int i11, int i12, int i13, int i14, Bundle extras) {
        InterfaceC2931e2 interfaceC2931e2;
        Intrinsics.checkNotNullParameter(extras, "extras");
        super.onActivityLayout(i10, i11, i12, i13, i14, extras);
        Intrinsics.checkNotNullExpressionValue("v3", "access$getLOG_TAG$cp(...)");
        C3027k2 c3027k2 = this.f25317a.f25354c;
        if (c3027k2 != null && (interfaceC2931e2 = (InterfaceC2931e2) c3027k2.f24927i.get()) != null) {
            interfaceC2931e2.a(i10, i11, i12, i13, i14);
        }
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final void onNavigationEvent(int i10, Bundle bundle) {
        super.onNavigationEvent(i10, bundle);
        Intrinsics.checkNotNullExpressionValue("v3", "access$getLOG_TAG$cp(...)");
        C3027k2 c3027k2 = this.f25317a.f25354c;
        if (c3027k2 != null) {
            C3219w3 c3219w3 = c3027k2.f24925g;
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 6 && c3219w3.f25384c == null) {
                            if (c3219w3.f25385d == 4) {
                                c3219w3.f25384c = Boolean.TRUE;
                            } else {
                                c3219w3.f25384c = Boolean.FALSE;
                            }
                            if (Intrinsics.areEqual(c3219w3.f25384c, Boolean.TRUE)) {
                                InterfaceC2931e2 interfaceC2931e2 = (InterfaceC2931e2) c3219w3.f25386e.get();
                                if (interfaceC2931e2 != null) {
                                    interfaceC2931e2.a(F6.f23639i, c3219w3.f25382a, Integer.valueOf((int) AVMDLDataLoader.KeyIsLiveGetPlayCacheSec));
                                }
                                InterfaceC2931e2 interfaceC2931e22 = (InterfaceC2931e2) c3219w3.f25386e.get();
                                if (interfaceC2931e22 != null) {
                                    interfaceC2931e22.c();
                                }
                            } else {
                                InterfaceC2931e2 interfaceC2931e23 = (InterfaceC2931e2) c3219w3.f25386e.get();
                                if (interfaceC2931e23 != null) {
                                    interfaceC2931e23.a(F6.f23640j, c3219w3.f25382a, Integer.valueOf((int) AVMDLDataLoader.KeyIsLiveWatchDurationThreshold));
                                }
                            }
                        }
                    } else if (c3219w3.f25384c == null) {
                        c3219w3.f25384c = Boolean.FALSE;
                        InterfaceC2931e2 interfaceC2931e24 = (InterfaceC2931e2) c3219w3.f25386e.get();
                        if (interfaceC2931e24 != null) {
                            interfaceC2931e24.a(F6.f23640j, c3219w3.f25382a, Integer.valueOf((int) AVMDLDataLoader.KeyIsLiveGetCurrentBitRate));
                        }
                    }
                } else if (c3219w3.f25384c == null) {
                    c3219w3.f25384c = Boolean.TRUE;
                    InterfaceC2931e2 interfaceC2931e25 = (InterfaceC2931e2) c3219w3.f25386e.get();
                    if (interfaceC2931e25 != null) {
                        interfaceC2931e25.a(F6.f23639i, c3219w3.f25382a, (Integer) null);
                    }
                    InterfaceC2931e2 interfaceC2931e26 = (InterfaceC2931e2) c3219w3.f25386e.get();
                    if (interfaceC2931e26 != null) {
                        interfaceC2931e26.c();
                    }
                }
            } else if (!c3219w3.f25383b) {
                c3219w3.f25383b = true;
                InterfaceC2931e2 interfaceC2931e27 = (InterfaceC2931e2) c3219w3.f25386e.get();
                if (interfaceC2931e27 != null) {
                    interfaceC2931e27.a(F6.f23638h, c3219w3.f25382a, (Integer) null);
                }
            }
            c3219w3.f25385d = i10;
            if (i10 != 1) {
                if (i10 != 4) {
                    if (i10 != 5) {
                        if (i10 == 6) {
                            InterfaceC2931e2 interfaceC2931e28 = (InterfaceC2931e2) c3027k2.f24927i.get();
                            if (interfaceC2931e28 != null) {
                                GestureDetector$OnGestureListenerC2941ec.Y0.getClass();
                                interfaceC2931e28.a(Gb.a("IN_NATIVE_BROWSER", "onHidden"));
                            }
                            InterfaceC2931e2 interfaceC2931e29 = (InterfaceC2931e2) c3027k2.f24927i.get();
                            if (interfaceC2931e29 != null) {
                                interfaceC2931e29.a();
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    InterfaceC2931e2 interfaceC2931e210 = (InterfaceC2931e2) c3027k2.f24927i.get();
                    if (interfaceC2931e210 != null) {
                        GestureDetector$OnGestureListenerC2941ec.Y0.getClass();
                        interfaceC2931e210.a(Gb.a("IN_NATIVE_BROWSER", "onVisible"));
                    }
                    InterfaceC2931e2 interfaceC2931e211 = (InterfaceC2931e2) c3027k2.f24927i.get();
                    if (interfaceC2931e211 != null) {
                        interfaceC2931e211.b();
                        return;
                    }
                    return;
                }
                InterfaceC2931e2 interfaceC2931e212 = (InterfaceC2931e2) c3027k2.f24927i.get();
                if (interfaceC2931e212 != null) {
                    GestureDetector$OnGestureListenerC2941ec.Y0.getClass();
                    interfaceC2931e212.a(Gb.a("IN_NATIVE_BROWSER", "onNavigatingAway"));
                    return;
                }
                return;
            }
            InterfaceC2931e2 interfaceC2931e213 = (InterfaceC2931e2) c3027k2.f24927i.get();
            if (interfaceC2931e213 != null) {
                GestureDetector$OnGestureListenerC2941ec.Y0.getClass();
                interfaceC2931e213.a(Gb.a("IN_NATIVE_BROWSER", "onPageStart"));
            }
        }
    }
}
