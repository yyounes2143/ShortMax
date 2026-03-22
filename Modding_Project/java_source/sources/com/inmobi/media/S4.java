package com.inmobi.media;

import android.view.View;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class S4 {

    /* renamed from: k  reason: collision with root package name */
    public static final P4 f24121k = new P4();

    /* renamed from: a  reason: collision with root package name */
    public final byte f24122a;

    /* renamed from: b  reason: collision with root package name */
    public final String f24123b;

    /* renamed from: c  reason: collision with root package name */
    public final int f24124c;

    /* renamed from: d  reason: collision with root package name */
    public final int f24125d;

    /* renamed from: e  reason: collision with root package name */
    public final int f24126e;

    /* renamed from: f  reason: collision with root package name */
    public final InterfaceC3269z5 f24127f;

    /* renamed from: g  reason: collision with root package name */
    public C2966g5 f24128g;

    /* renamed from: h  reason: collision with root package name */
    public X4 f24129h;

    /* renamed from: i  reason: collision with root package name */
    public final LinkedHashMap f24130i = new LinkedHashMap();

    /* renamed from: j  reason: collision with root package name */
    public final Q4 f24131j = new Q4(this);

    public S4(byte b10, String str, int i10, int i11, int i12, InterfaceC3269z5 interfaceC3269z5) {
        this.f24122a = b10;
        this.f24123b = str;
        this.f24124c = i10;
        this.f24125d = i11;
        this.f24126e = i12;
        this.f24127f = interfaceC3269z5;
    }

    public final void a(View view) {
        C2966g5 c2966g5;
        Intrinsics.checkNotNullParameter(view, "view");
        InterfaceC3269z5 interfaceC3269z5 = this.f24127f;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("HtmlAdTracker", "stopTrackingForImpression");
        }
        if (Intrinsics.areEqual(this.f24123b, "video") || Intrinsics.areEqual(this.f24123b, "audio") || (c2966g5 = this.f24128g) == null) {
            return;
        }
        Intrinsics.checkNotNullParameter(view, "view");
        c2966g5.f24758a.remove(view);
        c2966g5.f24759b.remove(view);
        c2966g5.f24760c.a(view);
        if (c2966g5.f24758a.isEmpty()) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24127f;
            if (interfaceC3269z52 != null) {
                ((A5) interfaceC3269z52).a("HtmlAdTracker", "Impression tracker is free, removing it");
            }
            C2966g5 c2966g52 = this.f24128g;
            if (c2966g52 != null) {
                c2966g52.f24758a.clear();
                c2966g52.f24759b.clear();
                c2966g52.f24760c.a();
                c2966g52.f24762e.removeMessages(0);
                c2966g52.f24760c.b();
            }
            this.f24128g = null;
        }
    }

    public final void b(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        InterfaceC3269z5 interfaceC3269z5 = this.f24127f;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("HtmlAdTracker", "stopTrackingForVisibility");
        }
        X4 x42 = this.f24129h;
        if (x42 != null) {
            x42.a(view);
            if (x42.f25000a.isEmpty()) {
                InterfaceC3269z5 interfaceC3269z52 = this.f24127f;
                if (interfaceC3269z52 != null) {
                    ((A5) interfaceC3269z52).a("HtmlAdTracker", "Visibility tracker is free, removing it");
                }
                X4 x43 = this.f24129h;
                if (x43 != null) {
                    x43.b();
                }
                this.f24129h = null;
            }
        }
        this.f24130i.remove(view);
    }

    public final void a(View view, View token, ef listener, AdConfig.ViewabilityConfig config, boolean z10) {
        int i10;
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(config, "config");
        InterfaceC3269z5 interfaceC3269z5 = this.f24127f;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("HtmlAdTracker", "startTrackingForVisibility");
        }
        X4 x42 = this.f24129h;
        if (x42 == null) {
            if (z10) {
                x42 = new D2(config, this.f24127f);
            } else {
                x42 = new X4(config, (byte) 1, this.f24127f);
            }
            this.f24129h = x42;
        }
        R4 r42 = new R4(this);
        InterfaceC3269z5 interfaceC3269z52 = x42.f25004e;
        if (interfaceC3269z52 != null) {
            ((A5) interfaceC3269z52).c("VisibilityTracker", "setVisibilityTrackerListener logger");
        }
        x42.f25009j = r42;
        this.f24130i.put(view, listener);
        if (z10) {
            i10 = config.getCompanionVisibilityMinPercentageViewed();
        } else {
            i10 = this.f24126e;
        }
        x42.a(view, token, i10);
    }
}
