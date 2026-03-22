package com.inmobi.media;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class O5 extends Xe {

    /* renamed from: e  reason: collision with root package name */
    public final C3053lc f23934e;

    /* renamed from: f  reason: collision with root package name */
    public final S4 f23935f;

    /* renamed from: g  reason: collision with root package name */
    public final InterfaceC3269z5 f23936g;

    /* renamed from: h  reason: collision with root package name */
    public final String f23937h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public O5(C3053lc container, C3053lc renderView, S4 htmlAdTracker, InterfaceC3269z5 interfaceC3269z5) {
        super(container);
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        Intrinsics.checkNotNullParameter(htmlAdTracker, "htmlAdTracker");
        this.f23934e = renderView;
        this.f23935f = htmlAdTracker;
        this.f23936g = interfaceC3269z5;
        this.f23937h = O5.class.getSimpleName();
    }

    @Override // com.inmobi.media.Xe
    public final void a(byte b10) {
    }

    @Override // com.inmobi.media.Xe
    public final View d() {
        this.f24376c = new WeakReference(this.f23934e);
        return this.f23934e;
    }

    @Override // com.inmobi.media.Xe
    public final void e() {
        InterfaceC3269z5 interfaceC3269z5 = this.f23936g;
        if (interfaceC3269z5 != null) {
            String TAG = this.f23937h;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "stopTrackingForImpression");
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f23936g;
        if (interfaceC3269z52 != null) {
            String TAG2 = this.f23937h;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((A5) interfaceC3269z52).a(TAG2, "stopTrackingForVisibility");
        }
        S4 s42 = this.f23935f;
        View b10 = b();
        if (b10 != null) {
            s42.b(b10);
        }
    }

    @Override // com.inmobi.media.Xe
    public final View a(View view, ViewGroup parent, boolean z10) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return d();
    }

    @Override // com.inmobi.media.Xe
    public final void a(Map map) {
        View b10;
        InterfaceC3269z5 interfaceC3269z5 = this.f23936g;
        if (interfaceC3269z5 != null) {
            String str = this.f23937h;
            StringBuilder a10 = H6.a(str, "TAG", "startTrackingForImpression with ");
            a10.append(map != null ? Integer.valueOf(map.size()) : null);
            a10.append(" friendly views");
            ((A5) interfaceC3269z5).a(str, a10.toString());
        }
        this.f23934e.setFriendlyViews(map);
        InterfaceC3269z5 interfaceC3269z52 = this.f23936g;
        if (interfaceC3269z52 != null) {
            String TAG = this.f23937h;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z52).a(TAG, "startTrackingVisibility");
        }
        InterfaceC3231x interfaceC3231x = this.f24374a;
        C3053lc c3053lc = interfaceC3231x instanceof C3053lc ? (C3053lc) interfaceC3231x : null;
        if (c3053lc == null) {
            return;
        }
        S4 s42 = this.f23935f;
        View b11 = b();
        if (b11 == null || (b10 = b()) == null) {
            return;
        }
        s42.a(b11, b10, c3053lc.getVISIBILITY_CHANGE_LISTENER(), this.f24377d.getViewability(), true);
    }

    @Override // com.inmobi.media.Xe
    public final void a(View view, FriendlyObstructionPurpose obstructionCode) {
        Intrinsics.checkNotNullParameter(view, "childView");
        Intrinsics.checkNotNullParameter(obstructionCode, "obstructionCode");
        InterfaceC3269z5 interfaceC3269z5 = this.f23936g;
        if (interfaceC3269z5 != null) {
            String TAG = this.f23937h;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "addFriendlyView - childView: " + view + ", obstructionCode: " + obstructionCode);
        }
        Map<View, FriendlyObstructionPurpose> friendlyViews = this.f23934e.getFriendlyViews();
        if (friendlyViews != null) {
            friendlyViews.put(view, obstructionCode);
        }
        I exposureTracker = this.f23934e.getExposureTracker();
        if (exposureTracker != null) {
            Intrinsics.checkNotNullParameter(view, "view");
            InterfaceC3269z5 interfaceC3269z52 = exposureTracker.f23711e;
            if (interfaceC3269z52 != null) {
                ((A5) interfaceC3269z52).c("AdExposureTracker", "Adding friendly view: " + view);
            }
            Set set = exposureTracker.f23708b;
            if (set != null) {
                set.add(view);
            }
        }
    }

    @Override // com.inmobi.media.Xe
    public final void a(View view) {
        Intrinsics.checkNotNullParameter(view, "childView");
        Map<View, FriendlyObstructionPurpose> friendlyViews = this.f23934e.getFriendlyViews();
        if (friendlyViews != null) {
            friendlyViews.remove(view);
        }
        I exposureTracker = this.f23934e.getExposureTracker();
        if (exposureTracker != null) {
            Intrinsics.checkNotNullParameter(view, "view");
            InterfaceC3269z5 interfaceC3269z5 = exposureTracker.f23711e;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).c("AdExposureTracker", "Removing friendly view: " + view);
            }
            Set set = exposureTracker.f23708b;
            if (set != null) {
                set.remove(view);
            }
        }
    }

    @Override // com.inmobi.media.Xe
    public final void a(Context context, byte b10) {
        Intrinsics.checkNotNullParameter(context, "context");
        InterfaceC3269z5 interfaceC3269z5 = this.f23936g;
        if (interfaceC3269z5 != null) {
            String str = this.f23937h;
            ((A5) interfaceC3269z5).a(str, X8.a(str, "TAG", "onActivityStateChanged - state - ", b10));
        }
        try {
            if (b10 == 0) {
                S4 s42 = this.f23935f;
                InterfaceC3269z5 interfaceC3269z52 = s42.f24127f;
                if (interfaceC3269z52 != null) {
                    ((A5) interfaceC3269z52).c("HtmlAdTracker", "onActivityStarted");
                }
                C2966g5 c2966g5 = s42.f24128g;
                if (c2966g5 != null) {
                    String TAG = c2966g5.f24761d;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    for (Map.Entry entry : c2966g5.f24758a.entrySet()) {
                        C2934e5 c2934e5 = (C2934e5) entry.getValue();
                        c2966g5.f24760c.a((View) entry.getKey(), c2934e5.f24630a, c2934e5.f24631b);
                    }
                    if (!c2966g5.f24762e.hasMessages(0)) {
                        c2966g5.f24762e.postDelayed(c2966g5.f24763f, c2966g5.f24764g);
                    }
                    c2966g5.f24760c.f();
                }
                X4 x42 = s42.f24129h;
                if (x42 != null) {
                    x42.f();
                }
            } else if (b10 == 1) {
                S4 s43 = this.f23935f;
                InterfaceC3269z5 interfaceC3269z53 = s43.f24127f;
                if (interfaceC3269z53 != null) {
                    ((A5) interfaceC3269z53).c("HtmlAdTracker", "onActivityStopped");
                }
                C2966g5 c2966g52 = s43.f24128g;
                if (c2966g52 != null) {
                    String TAG2 = c2966g52.f24761d;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    c2966g52.f24760c.a();
                    c2966g52.f24762e.removeCallbacksAndMessages(null);
                    c2966g52.f24759b.clear();
                }
                X4 x43 = s43.f24129h;
                if (x43 != null) {
                    x43.e();
                }
            } else if (b10 == 2) {
                S4 s44 = this.f23935f;
                InterfaceC3269z5 interfaceC3269z54 = s44.f24127f;
                if (interfaceC3269z54 != null) {
                    ((A5) interfaceC3269z54).c("HtmlAdTracker", "onActivityDestroyed");
                }
                C2966g5 c2966g53 = s44.f24128g;
                if (c2966g53 != null) {
                    c2966g53.f24758a.clear();
                    c2966g53.f24759b.clear();
                    c2966g53.f24760c.a();
                    c2966g53.f24762e.removeMessages(0);
                    c2966g53.f24760c.b();
                }
                s44.f24128g = null;
                X4 x44 = s44.f24129h;
                if (x44 != null) {
                    x44.b();
                }
                s44.f24129h = null;
            } else {
                String TAG3 = this.f23937h;
                Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
            }
        } catch (Exception e10) {
            InterfaceC3269z5 interfaceC3269z55 = this.f23936g;
            if (interfaceC3269z55 != null) {
                String str2 = this.f23937h;
                ((A5) interfaceC3269z55).b(str2, rf.a(e10, H6.a(str2, "TAG", "Exception in onActivityStateChanged with message : ")));
            }
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
        } finally {
        }
    }

    @Override // com.inmobi.media.Xe
    public final void a() {
        InterfaceC3269z5 interfaceC3269z5 = this.f23936g;
        if (interfaceC3269z5 != null) {
            String TAG = this.f23937h;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).a(TAG, "destroy");
        }
        if (b() != null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f23936g;
            if (interfaceC3269z52 != null) {
                String TAG2 = this.f23937h;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((A5) interfaceC3269z52).a(TAG2, "stopTrackingForVisibility");
            }
            S4 s42 = this.f23935f;
            View b10 = b();
            if (b10 != null) {
                s42.b(b10);
            }
        }
        super.a();
    }
}
