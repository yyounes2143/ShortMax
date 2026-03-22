package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.accessibility.CaptioningManager;
import android.widget.FrameLayout;
import androidx.annotation.Dimension;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p6.b;
/* loaded from: classes4.dex */
public final class SubtitleView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private List<p6.b> f18767a;

    /* renamed from: b  reason: collision with root package name */
    private b f18768b;

    /* renamed from: c  reason: collision with root package name */
    private int f18769c;

    /* renamed from: d  reason: collision with root package name */
    private float f18770d;

    /* renamed from: e  reason: collision with root package name */
    private float f18771e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f18772f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f18773g;

    /* renamed from: h  reason: collision with root package name */
    private int f18774h;

    /* renamed from: i  reason: collision with root package name */
    private a f18775i;

    /* renamed from: j  reason: collision with root package name */
    private View f18776j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public interface a {
        void a(List<p6.b> list, b bVar, float f10, int i10, float f11);
    }

    public SubtitleView(Context context) {
        this(context, null);
    }

    private p6.b a(p6.b bVar) {
        b.C0897b b10 = bVar.b();
        if (!this.f18772f) {
            x0.e(b10);
        } else if (!this.f18773g) {
            x0.f(b10);
        }
        return b10.a();
    }

    private void b(int i10, float f10) {
        this.f18769c = i10;
        this.f18770d = f10;
        c();
    }

    private void c() {
        this.f18775i.a(getCuesWithStylingPreferencesApplied(), this.f18768b, this.f18770d, this.f18769c, this.f18771e);
    }

    private List<p6.b> getCuesWithStylingPreferencesApplied() {
        if (this.f18772f && this.f18773g) {
            return this.f18767a;
        }
        ArrayList arrayList = new ArrayList(this.f18767a.size());
        for (int i10 = 0; i10 < this.f18767a.size(); i10++) {
            arrayList.add(a(this.f18767a.get(i10)));
        }
        return arrayList;
    }

    private float getUserCaptionFontScale() {
        CaptioningManager captioningManager;
        if (b7.s0.f2506a < 19 || isInEditMode() || (captioningManager = (CaptioningManager) getContext().getSystemService("captioning")) == null || !captioningManager.isEnabled()) {
            return 1.0f;
        }
        return captioningManager.getFontScale();
    }

    private b getUserCaptionStyle() {
        if (b7.s0.f2506a >= 19 && !isInEditMode()) {
            CaptioningManager captioningManager = (CaptioningManager) getContext().getSystemService("captioning");
            if (captioningManager != null && captioningManager.isEnabled()) {
                return b.a(captioningManager.getUserStyle());
            }
            return b.f18805g;
        }
        return b.f18805g;
    }

    private <T extends View & a> void setView(T t10) {
        removeView(this.f18776j);
        View view = this.f18776j;
        if (view instanceof WebViewSubtitleOutput) {
            ((WebViewSubtitleOutput) view).g();
        }
        this.f18776j = t10;
        this.f18775i = t10;
        addView(t10);
    }

    public void setApplyEmbeddedFontSizes(boolean z10) {
        this.f18773g = z10;
        c();
    }

    public void setApplyEmbeddedStyles(boolean z10) {
        this.f18772f = z10;
        c();
    }

    public void setBottomPaddingFraction(float f10) {
        this.f18771e = f10;
        c();
    }

    public void setCues(@Nullable List<p6.b> list) {
        if (list == null) {
            list = Collections.emptyList();
        }
        this.f18767a = list;
        c();
    }

    public void setFixedTextSize(@Dimension int i10, float f10) {
        Resources resources;
        Context context = getContext();
        if (context == null) {
            resources = Resources.getSystem();
        } else {
            resources = context.getResources();
        }
        b(2, TypedValue.applyDimension(i10, f10, resources.getDisplayMetrics()));
    }

    public void setFractionalTextSize(float f10) {
        setFractionalTextSize(f10, false);
    }

    public void setStyle(b bVar) {
        this.f18768b = bVar;
        c();
    }

    public void setUserDefaultStyle() {
        setStyle(getUserCaptionStyle());
    }

    public void setUserDefaultTextSize() {
        setFractionalTextSize(getUserCaptionFontScale() * 0.0533f);
    }

    public void setViewType(int i10) {
        if (this.f18774h == i10) {
            return;
        }
        if (i10 != 1) {
            if (i10 == 2) {
                setView(new WebViewSubtitleOutput(getContext()));
            } else {
                throw new IllegalArgumentException();
            }
        } else {
            setView(new CanvasSubtitleOutput(getContext()));
        }
        this.f18774h = i10;
    }

    public SubtitleView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f18767a = Collections.emptyList();
        this.f18768b = b.f18805g;
        this.f18769c = 0;
        this.f18770d = 0.0533f;
        this.f18771e = 0.08f;
        this.f18772f = true;
        this.f18773g = true;
        CanvasSubtitleOutput canvasSubtitleOutput = new CanvasSubtitleOutput(context);
        this.f18775i = canvasSubtitleOutput;
        this.f18776j = canvasSubtitleOutput;
        addView(canvasSubtitleOutput);
        this.f18774h = 1;
    }

    public void setFractionalTextSize(float f10, boolean z10) {
        b(z10 ? 1 : 0, f10);
    }
}
