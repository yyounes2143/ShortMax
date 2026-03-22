package io.bidmachine.media3.ui;

import android.content.Context;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import io.bidmachine.media3.ui.SubtitleView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes8.dex */
final class WebViewSubtitleOutput extends FrameLayout implements SubtitleView.a {

    /* renamed from: a  reason: collision with root package name */
    private final CanvasSubtitleOutput f57667a;

    /* renamed from: b  reason: collision with root package name */
    private final WebView f57668b;

    /* renamed from: c  reason: collision with root package name */
    private List<bn.a> f57669c;

    /* renamed from: d  reason: collision with root package name */
    private io.bidmachine.media3.ui.a f57670d;

    /* renamed from: e  reason: collision with root package name */
    private float f57671e;

    /* renamed from: f  reason: collision with root package name */
    private int f57672f;

    /* renamed from: g  reason: collision with root package name */
    private float f57673g;

    /* loaded from: classes8.dex */
    class a extends WebView {
        a(Context context, AttributeSet attributeSet) {
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
    /* loaded from: classes8.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f57675a;

        static {
            int[] iArr = new int[Layout.Alignment.values().length];
            f57675a = iArr;
            try {
                iArr[Layout.Alignment.ALIGN_NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f57675a[Layout.Alignment.ALIGN_OPPOSITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f57675a[Layout.Alignment.ALIGN_CENTER.ordinal()] = 3;
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
        int i10 = b.f57675a[alignment.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                return TtmlNode.CENTER;
            }
            return "end";
        }
        return "start";
    }

    private static String d(io.bidmachine.media3.ui.a aVar) {
        int i10 = aVar.f57680d;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        return "unset";
                    }
                    return cn.m0.G("-0.05em -0.05em 0.15em %s", f.b(aVar.f57681e));
                }
                return cn.m0.G("0.06em 0.08em 0.15em %s", f.b(aVar.f57681e));
            }
            return cn.m0.G("0.1em 0.12em 0.15em %s", f.b(aVar.f57681e));
        }
        return cn.m0.G("1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s", f.b(aVar.f57681e));
    }

    private String e(int i10, float f10) {
        float h10 = i1.h(i10, f10, getHeight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        if (h10 == -3.4028235E38f) {
            return "unset";
        }
        return cn.m0.G("%.2fpx", Float.valueOf(h10 / getContext().getResources().getDisplayMetrics().density));
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

    private static String h(bn.a aVar) {
        String str;
        float f10 = aVar.f2716q;
        if (f10 != 0.0f) {
            int i10 = aVar.f2715p;
            if (i10 != 2 && i10 != 1) {
                str = "skewX";
            } else {
                str = "skewY";
            }
            return cn.m0.G("%s(%.2fdeg)", str, Float.valueOf(f10));
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
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.ui.WebViewSubtitleOutput.i():void");
    }

    @Override // io.bidmachine.media3.ui.SubtitleView.a
    public void a(List<bn.a> list, io.bidmachine.media3.ui.a aVar, float f10, int i10, float f11) {
        this.f57670d = aVar;
        this.f57671e = f10;
        this.f57672f = i10;
        this.f57673g = f11;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i11 = 0; i11 < list.size(); i11++) {
            bn.a aVar2 = list.get(i11);
            if (aVar2.f2703d != null) {
                arrayList.add(aVar2);
            } else {
                arrayList2.add(aVar2);
            }
        }
        if (!this.f57669c.isEmpty() || !arrayList2.isEmpty()) {
            this.f57669c = arrayList2;
            i();
        }
        this.f57667a.a(arrayList, aVar, f10, i10, f11);
        invalidate();
    }

    public void g() {
        this.f57668b.destroy();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (z10 && !this.f57669c.isEmpty()) {
            i();
        }
    }

    public WebViewSubtitleOutput(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f57669c = Collections.emptyList();
        this.f57670d = io.bidmachine.media3.ui.a.f57676g;
        this.f57671e = 0.0533f;
        this.f57672f = 0;
        this.f57673g = 0.08f;
        CanvasSubtitleOutput canvasSubtitleOutput = new CanvasSubtitleOutput(context, attributeSet);
        this.f57667a = canvasSubtitleOutput;
        a aVar = new a(context, attributeSet);
        this.f57668b = aVar;
        aVar.setBackgroundColor(0);
        addView(canvasSubtitleOutput);
        addView(aVar);
    }
}
