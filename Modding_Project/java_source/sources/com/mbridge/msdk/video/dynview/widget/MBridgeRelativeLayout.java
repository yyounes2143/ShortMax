package com.mbridge.msdk.video.dynview.widget;

import android.animation.AnimatorSet;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import com.mbridge.msdk.video.dynview.moffer.b;
import com.mbridge.msdk.video.dynview.moffer.d;
/* loaded from: classes6.dex */
public class MBridgeRelativeLayout extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private d f30843a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f30844b;

    /* renamed from: c  reason: collision with root package name */
    private AnimatorSet f30845c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f30846d;

    /* renamed from: e  reason: collision with root package name */
    private b f30847e;

    public MBridgeRelativeLayout(Context context) {
        super(context);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        AnimatorSet animatorSet = this.f30845c;
        if (animatorSet != null) {
            try {
                animatorSet.start();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        d dVar;
        super.onDetachedFromWindow();
        if (!this.f30844b && (dVar = this.f30843a) != null) {
            this.f30844b = true;
            dVar.a();
        }
        AnimatorSet animatorSet = this.f30845c;
        if (animatorSet != null) {
            try {
                animatorSet.cancel();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override // android.view.View
    protected void onVisibilityChanged(@NonNull View view, int i10) {
        b bVar;
        super.onVisibilityChanged(view, i10);
        if ((view instanceof MBridgeRelativeLayout) && i10 == 0 && (bVar = this.f30847e) != null && !this.f30846d) {
            this.f30846d = true;
            bVar.a();
        }
    }

    public void setAnimatorSet(AnimatorSet animatorSet) {
        this.f30845c = animatorSet;
    }

    public void setMoreOfferCacheReportCallBack(b bVar) {
        this.f30847e = bVar;
    }

    public void setMoreOfferShowFailedCallBack(d dVar) {
        this.f30843a = dVar;
    }

    public MBridgeRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MBridgeRelativeLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}
