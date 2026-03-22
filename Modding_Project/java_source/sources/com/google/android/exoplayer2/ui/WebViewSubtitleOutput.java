package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ui.SubtitleView;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes4.dex */
final class WebViewSubtitleOutput extends FrameLayout implements SubtitleView.a {

    /* renamed from: a  reason: collision with root package name */
    private final CanvasSubtitleOutput f18793a;

    /* renamed from: b  reason: collision with root package name */
    private final WebView f18794b;

    /* renamed from: c  reason: collision with root package name */
    private List<p6.b> f18795c;

    /* renamed from: d  reason: collision with root package name */
    private com.google.android.exoplayer2.ui.b f18796d;

    /* renamed from: e  reason: collision with root package name */
    private float f18797e;

    /* renamed from: f  reason: collision with root package name */
    private int f18798f;

    /* renamed from: g  reason: collision with root package name */
    private float f18799g;

    /* loaded from: classes4.dex */
    class a extends WebView {
        a(WebViewSubtitleOutput webViewSubtitleOutput, Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // android.webkit.WebView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            super.onTouchEvent(motionEvent);
            return false;
        }

        @Override // android.view.View
        public boolean performClick() {
            super.performClick();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18800a;

        static {
            int[] iArr = new int[Layout.Alignment.values().length];
            f18800a = iArr;
            try {
                iArr[Layout.Alignment.ALIGN_NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18800a[Layout.Alignment.ALIGN_OPPOSITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18800a[Layout.Alignment.ALIGN_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public WebViewSubtitleOutput(Context context) {
        this(context, null);
    }

    private static int b(int i10) {
        if (i10 != 1) {
            if (i10 != 2) {
                return 0;
            }
            return -100;
        }
        return -50;
    }

    private static String c(@Nullable Layout.Alignment alignment) {
        if (alignment == null) {
            return TtmlNode.CENTER;
        }
        int i10 = b.f18800a[alignment.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                return TtmlNode.CENTER;
            }
            return "end";
        }
        return "start";
    }

    private static String d(com.google.android.exoplayer2.ui.b bVar) {
        int i10 = bVar.f18809d;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        return "unset";
                    }
                    return b7.s0.z("-0.05em -0.05em 0.15em %s", g.b(bVar.f18810e));
                }
                return b7.s0.z("0.06em 0.08em 0.15em %s", g.b(bVar.f18810e));
            }
            return b7.s0.z("0.1em 0.12em 0.15em %s", g.b(bVar.f18810e));
        }
        return b7.s0.z("1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s", g.b(bVar.f18810e));
    }

    private String e(int i10, float f10) {
        float h10 = x0.h(i10, f10, getHeight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        if (h10 == -3.4028235E38f) {
            return "unset";
        }
        return b7.s0.z("%.2fpx", Float.valueOf(h10 / getContext().getResources().getDisplayMetrics().density));
    }

    private static String f(int i10) {
        if (i10 != 1) {
            if (i10 != 2) {
                return "horizontal-tb";
            }
            return "vertical-lr";
        }
        return "vertical-rl";
    }

    private static String h(p6.b bVar) {
        String str;
        float f10 = bVar.f64751q;
        if (f10 != 0.0f) {
            int i10 = bVar.f64750p;
            if (i10 != 2 && i10 != 1) {
                str = "skewX";
            } else {
                str = "skewY";
            }
            return b7.s0.z("%s(%.2fdeg)", str, Float.valueOf(f10));
        }
        return "";
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x013b, code lost:
        if (r8 != false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x013e, code lost:
        r10 = com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode.LEFT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x013f, code lost:
        r19 = r10;
        r17 = "top";
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0144, code lost:
        if (r8 != false) goto L54;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01f1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void i() {
        /*
            Method dump skipped, instructions count: 613
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.WebViewSubtitleOutput.i():void");
    }

    @Override // com.google.android.exoplayer2.ui.SubtitleView.a
    public void a(List<p6.b> list, com.google.android.exoplayer2.ui.b bVar, float f10, int i10, float f11) {
        this.f18796d = bVar;
        this.f18797e = f10;
        this.f18798f = i10;
        this.f18799g = f11;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i11 = 0; i11 < list.size(); i11++) {
            p6.b bVar2 = list.get(i11);
            if (bVar2.f64738d != null) {
                arrayList.add(bVar2);
            } else {
                arrayList2.add(bVar2);
            }
        }
        if (!this.f18795c.isEmpty() || !arrayList2.isEmpty()) {
            this.f18795c = arrayList2;
            i();
        }
        this.f18793a.a(arrayList, bVar, f10, i10, f11);
        invalidate();
    }

    public void g() {
        this.f18794b.destroy();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (z10 && !this.f18795c.isEmpty()) {
            i();
        }
    }

    public WebViewSubtitleOutput(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f18795c = Collections.emptyList();
        this.f18796d = com.google.android.exoplayer2.ui.b.f18805g;
        this.f18797e = 0.0533f;
        this.f18798f = 0;
        this.f18799g = 0.08f;
        CanvasSubtitleOutput canvasSubtitleOutput = new CanvasSubtitleOutput(context, attributeSet);
        this.f18793a = canvasSubtitleOutput;
        a aVar = new a(this, context, attributeSet);
        this.f18794b = aVar;
        aVar.setBackgroundColor(0);
        addView(canvasSubtitleOutput);
        addView(aVar);
    }
}
