package com.inmobi.media;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.af  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2876af extends Xe {

    /* renamed from: e  reason: collision with root package name */
    public final GestureDetector$OnGestureListenerC2941ec f24506e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2876af(GestureDetector$OnGestureListenerC2941ec mRenderView) {
        super(mRenderView);
        Intrinsics.checkNotNullParameter(mRenderView, "mRenderView");
        this.f24506e = mRenderView;
    }

    @Override // com.inmobi.media.Xe
    public final void a(byte b10) {
    }

    @Override // com.inmobi.media.Xe
    public final View d() {
        this.f24376c = new WeakReference(this.f24506e);
        return this.f24506e;
    }

    @Override // com.inmobi.media.Xe
    public final void a(Map map) {
    }

    @Override // com.inmobi.media.Xe
    public final void a(Context context, byte b10) {
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.inmobi.media.Xe
    public final View a(View view, ViewGroup parent, boolean z10) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return d();
    }

    @Override // com.inmobi.media.Xe
    public final void a(View view, FriendlyObstructionPurpose obstructionCode) {
        Intrinsics.checkNotNullParameter(view, "childView");
        Intrinsics.checkNotNullParameter(obstructionCode, "obstructionCode");
        Map<View, FriendlyObstructionPurpose> friendlyViews = this.f24506e.getFriendlyViews();
        if (friendlyViews != null) {
            friendlyViews.put(view, obstructionCode);
        }
        I exposureTracker = this.f24506e.getExposureTracker();
        if (exposureTracker != null) {
            Intrinsics.checkNotNullParameter(view, "view");
            InterfaceC3269z5 interfaceC3269z5 = exposureTracker.f23711e;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).c("AdExposureTracker", "Adding friendly view: " + view);
            }
            Set set = exposureTracker.f23708b;
            if (set != null) {
                set.add(view);
            }
        }
        this.f24506e.getWebViewFactory().b(new Ye(view));
    }

    @Override // com.inmobi.media.Xe
    public final void a(View view) {
        Intrinsics.checkNotNullParameter(view, "childView");
        Map<View, FriendlyObstructionPurpose> friendlyViews = this.f24506e.getFriendlyViews();
        if (friendlyViews != null) {
            friendlyViews.remove(view);
        }
        I exposureTracker = this.f24506e.getExposureTracker();
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
        this.f24506e.getWebViewFactory().b(new Ze(view));
    }

    @Override // com.inmobi.media.Xe
    public final void e() {
    }
}
