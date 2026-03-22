package io.bidmachine.media3.ui;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.accessibility.CaptioningManager;
import android.widget.FrameLayout;
import androidx.annotation.Dimension;
import androidx.annotation.Nullable;
import bn.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes8.dex */
public final class SubtitleView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private List<bn.a> f57641a;

    /* renamed from: b  reason: collision with root package name */
    private io.bidmachine.media3.ui.a f57642b;

    /* renamed from: c  reason: collision with root package name */
    private int f57643c;

    /* renamed from: d  reason: collision with root package name */
    private float f57644d;

    /* renamed from: e  reason: collision with root package name */
    private float f57645e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f57646f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f57647g;

    /* renamed from: h  reason: collision with root package name */
    private int f57648h;

    /* renamed from: i  reason: collision with root package name */
    private a f57649i;

    /* renamed from: j  reason: collision with root package name */
    private View f57650j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes8.dex */
    public interface a {
        void a(List<bn.a> list, io.bidmachine.media3.ui.a aVar, float f10, int i10, float f11);
    }

    public SubtitleView(Context context) {
        this(context, null);
    }

    private bn.a a(bn.a aVar) {
        a.b a10 = aVar.a();
        if (!this.f57646f) {
            i1.e(a10);
        } else if (!this.f57647g) {
            i1.f(a10);
        }
        return a10.a();
    }

    private void b(int i10, float f10) {
        this.f57643c = i10;
        this.f57644d = f10;
        c();
    }

    private void c() {
        this.f57649i.a(getCuesWithStylingPreferencesApplied(), this.f57642b, this.f57644d, this.f57643c, this.f57645e);
    }

    private List<bn.a> getCuesWithStylingPreferencesApplied() {
        if (this.f57646f && this.f57647g) {
            return this.f57641a;
        }
        ArrayList arrayList = new ArrayList(this.f57641a.size());
        for (int i10 = 0; i10 < this.f57641a.size(); i10++) {
            arrayList.add(a(this.f57641a.get(i10)));
        }
        return arrayList;
    }

    private float getUserCaptionFontScale() {
        CaptioningManager captioningManager;
        if (isInEditMode() || (captioningManager = (CaptioningManager) getContext().getSystemService("captioning")) == null || !captioningManager.isEnabled()) {
            return 1.0f;
        }
        return captioningManager.getFontScale();
    }

    private io.bidmachine.media3.ui.a getUserCaptionStyle() {
        if (isInEditMode()) {
            return io.bidmachine.media3.ui.a.f57676g;
        }
        CaptioningManager captioningManager = (CaptioningManager) getContext().getSystemService("captioning");
        if (captioningManager != null && captioningManager.isEnabled()) {
            return io.bidmachine.media3.ui.a.a(captioningManager.getUserStyle());
        }
        return io.bidmachine.media3.ui.a.f57676g;
    }

    private <T extends View & a> void setView(T t10) {
        removeView(this.f57650j);
        View view = this.f57650j;
        if (view instanceof WebViewSubtitleOutput) {
            ((WebViewSubtitleOutput) view).g();
        }
        this.f57650j = t10;
        this.f57649i = t10;
        addView(t10);
    }

    public void setApplyEmbeddedFontSizes(boolean z10) {
        this.f57647g = z10;
        c();
    }

    public void setApplyEmbeddedStyles(boolean z10) {
        this.f57646f = z10;
        c();
    }

    public void setBottomPaddingFraction(float f10) {
        this.f57645e = f10;
        c();
    }

    public void setCues(@Nullable List<bn.a> list) {
        if (list == null) {
            list = Collections.emptyList();
        }
        this.f57641a = list;
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

    public void setStyle(io.bidmachine.media3.ui.a aVar) {
        this.f57642b = aVar;
        c();
    }

    public void setUserDefaultStyle() {
        setStyle(getUserCaptionStyle());
    }

    public void setUserDefaultTextSize() {
        setFractionalTextSize(getUserCaptionFontScale() * 0.0533f);
    }

    public void setViewType(int i10) {
        if (this.f57648h == i10) {
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
        this.f57648h = i10;
    }

    public SubtitleView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f57641a = Collections.emptyList();
        this.f57642b = io.bidmachine.media3.ui.a.f57676g;
        this.f57643c = 0;
        this.f57644d = 0.0533f;
        this.f57645e = 0.08f;
        this.f57646f = true;
        this.f57647g = true;
        CanvasSubtitleOutput canvasSubtitleOutput = new CanvasSubtitleOutput(context);
        this.f57649i = canvasSubtitleOutput;
        this.f57650j = canvasSubtitleOutput;
        addView(canvasSubtitleOutput);
        this.f57648h = 1;
    }

    public void setFractionalTextSize(float f10, boolean z10) {
        b(z10 ? 1 : 0, f10);
    }
}
