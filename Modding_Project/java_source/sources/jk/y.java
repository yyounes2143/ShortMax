package jk;

import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.widget.TextView;
import com.startshorts.androidplayer.log.Logger;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextViewExt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTextViewExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextViewExt.kt\ncom/startshorts/androidplayer/utils/ext/TextViewExtKt\n+ 2 SpannableString.kt\nandroidx/core/text/SpannableStringKt\n+ 3 SpannedString.kt\nandroidx/core/text/SpannedStringKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,303:1\n32#2:304\n31#3,4:305\n13579#4,2:309\n65#5,4:311\n37#5:315\n53#5:316\n72#5:317\n*S KotlinDebug\n*F\n+ 1 TextViewExt.kt\ncom/startshorts/androidplayer/utils/ext/TextViewExtKt\n*L\n118#1:304\n118#1:305,4\n118#1:309,2\n271#1:311,4\n271#1:315\n271#1:316\n271#1:317\n*E\n"})
/* loaded from: classes7.dex */
public final class y {

    /* compiled from: View.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$doOnNextLayout$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 TextViewExt.kt\ncom/startshorts/androidplayer/utils/ext/TextViewExtKt\n*L\n1#1,414:1\n69#2:415\n70#2:446\n272#3,30:416\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class a implements View.OnLayoutChangeListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f60419a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f60420b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f60421c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f60422d;

        public a(String str, String str2, String str3, int i10) {
            this.f60419a = str;
            this.f60420b = str2;
            this.f60421c = str3;
            this.f60422d = i10;
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(@NotNull View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            view.removeOnLayoutChangeListener(this);
            Intrinsics.checkNotNull(view, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView = (TextView) view;
            TextPaint paint = textView.getPaint();
            float width = (textView.getWidth() - textView.getPaddingLeft()) - textView.getPaddingRight();
            if (width > 0.0f) {
                StaticLayout build = StaticLayout.Builder.obtain(this.f60419a + ' ' + this.f60420b + "  " + this.f60421c, 0, (this.f60419a + ' ' + this.f60420b + "  " + this.f60421c).length(), paint, (int) width).setAlignment(Layout.Alignment.ALIGN_NORMAL).setLineSpacing(textView.getLineSpacingExtra(), textView.getLineSpacingMultiplier()).build();
                Intrinsics.checkNotNullExpressionValue(build, "build(...)");
                if (build.getLineCount() <= this.f60422d) {
                    textView.setText(this.f60419a + ' ' + this.f60421c);
                    return;
                }
                String str = this.f60420b + "  " + this.f60421c;
                float measureText = paint.measureText(str) + g.a(20.0f);
                int lineStart = build.getLineStart(this.f60422d - 1);
                String substring = (this.f60419a + ' ' + this.f60420b + "  " + this.f60421c).substring(lineStart, build.getLineEnd(this.f60422d - 1));
                Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                int length = substring.length();
                while (length > 0) {
                    String substring2 = substring.substring(0, length);
                    Intrinsics.checkNotNullExpressionValue(substring2, "substring(...)");
                    if (paint.measureText(substring2) <= width - measureText) {
                        break;
                    }
                    length--;
                }
                String substring3 = this.f60419a.substring(0, lineStart + length);
                Intrinsics.checkNotNullExpressionValue(substring3, "substring(...)");
                textView.setText(substring3 + str);
            }
        }
    }

    public static final void b(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        CharSequence text = textView.getText();
        if (text instanceof Spannable) {
            Spannable spannable = (Spannable) text;
            for (Object obj : spannable.getSpans(0, spannable.length(), Object.class)) {
                spannable.removeSpan(obj);
            }
        }
        textView.setText("");
    }

    public static final void c(@NotNull final TextView textView, final float f10, final float f11, final int i10, @Nullable final Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        textView.post(new Runnable() { // from class: jk.x
            @Override // java.lang.Runnable
            public final void run() {
                y.d(textView, f10, f11, i10, function0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(TextView textView, float f10, float f11, int i10, Function0 function0) {
        TextPaint paint = textView.getPaint();
        Intrinsics.checkNotNullExpressionValue(paint, "getPaint(...)");
        String obj = textView.getText().toString();
        while (true) {
            if (f10 <= f11) {
                textView.setTextSize(f11);
                break;
            }
            paint.setTextSize(f10);
            if (g.a(paint.measureText(obj)) > i10) {
                f10 -= 1.0f;
            } else {
                textView.setTextSize(f10);
                break;
            }
        }
        if (function0 != null) {
            function0.invoke();
        }
    }

    public static final void e(@NotNull TextView textView, @NotNull String fullText, @NotNull String symbols, @NotNull String suffixText, int i10) {
        Intrinsics.checkNotNullParameter(textView, "textView");
        Intrinsics.checkNotNullParameter(fullText, "fullText");
        Intrinsics.checkNotNullParameter(symbols, "symbols");
        Intrinsics.checkNotNullParameter(suffixText, "suffixText");
        if (textView.isLaidOut() && !textView.isLayoutRequested()) {
            TextPaint paint = textView.getPaint();
            float width = (textView.getWidth() - textView.getPaddingLeft()) - textView.getPaddingRight();
            if (width > 0.0f) {
                StaticLayout build = StaticLayout.Builder.obtain(fullText + ' ' + symbols + "  " + suffixText, 0, (fullText + ' ' + symbols + "  " + suffixText).length(), paint, (int) width).setAlignment(Layout.Alignment.ALIGN_NORMAL).setLineSpacing(textView.getLineSpacingExtra(), textView.getLineSpacingMultiplier()).build();
                Intrinsics.checkNotNullExpressionValue(build, "build(...)");
                if (build.getLineCount() <= i10) {
                    textView.setText(fullText + ' ' + suffixText);
                    return;
                }
                String str = symbols + "  " + suffixText;
                float measureText = paint.measureText(str) + g.a(20.0f);
                int i11 = i10 - 1;
                int lineStart = build.getLineStart(i11);
                String substring = (fullText + ' ' + symbols + "  " + suffixText).substring(lineStart, build.getLineEnd(i11));
                Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                int length = substring.length();
                while (length > 0) {
                    String substring2 = substring.substring(0, length);
                    Intrinsics.checkNotNullExpressionValue(substring2, "substring(...)");
                    if (paint.measureText(substring2) <= width - measureText) {
                        break;
                    }
                    length--;
                }
                String substring3 = fullText.substring(0, lineStart + length);
                Intrinsics.checkNotNullExpressionValue(substring3, "substring(...)");
                textView.setText(substring3 + str);
                return;
            }
            return;
        }
        textView.addOnLayoutChangeListener(new a(fullText, symbols, suffixText, i10));
    }

    public static /* synthetic */ void f(TextView textView, String str, String str2, String str3, int i10, int i11, Object obj) {
        if ((i11 & 16) != 0) {
            i10 = 2;
        }
        e(textView, str, str2, str3, i10);
    }

    public static final void g(@NotNull TextView textView, @NotNull String text, @NotNull int[] colorList, @Nullable float[] fArr, @Nullable Float f10) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(colorList, "colorList");
        LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, textView.getPaint().measureText(text), 0.0f, colorList, fArr, Shader.TileMode.CLAMP);
        if (f10 != null && f10.floatValue() > 0.0f) {
            textView.getPaint().setStyle(Paint.Style.FILL_AND_STROKE);
            textView.getPaint().setStrokeWidth(g.b(f10.floatValue()));
        }
        textView.getPaint().setShader(linearGradient);
        textView.setText(text);
        textView.invalidate();
    }

    public static /* synthetic */ void h(TextView textView, String str, int[] iArr, float[] fArr, Float f10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            fArr = null;
        }
        if ((i10 & 8) != 0) {
            f10 = null;
        }
        g(textView, str, iArr, fArr, f10);
    }

    public static final void i(@NotNull TextView textView, boolean z10) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        if (z10) {
            textView.getPaint().setFlags(16);
        }
    }

    public static final void j(@NotNull TextView textView, boolean z10) {
        int paintFlags;
        Intrinsics.checkNotNullParameter(textView, "<this>");
        if (z10) {
            paintFlags = textView.getPaintFlags() | 16;
        } else {
            paintFlags = textView.getPaintFlags() & (-17);
        }
        textView.setPaintFlags(paintFlags);
    }

    public static final void k(@NotNull TextView textView, @NotNull String content, @Nullable String[] strArr, int i10, @Nullable Typeface typeface, float f10, boolean z10, @Nullable List<? extends View.OnClickListener> list) {
        int q02;
        View.OnClickListener onClickListener;
        Intrinsics.checkNotNullParameter(textView, "<this>");
        Intrinsics.checkNotNullParameter(content, "content");
        SpannableString spannableString = new SpannableString(content);
        if (strArr != null) {
            try {
                int length = strArr.length;
                for (int i11 = 0; i11 < length; i11++) {
                    String str = strArr[i11];
                    if (!StringsKt.t0(str)) {
                        int i12 = 0;
                        while (i12 < content.length() && (q02 = StringsKt.q0(content, str, i12, false, 4, null)) != -1) {
                            i12 = q02 + str.length();
                            if (list != null) {
                                onClickListener = (View.OnClickListener) CollectionsKt.t0(list, i11);
                            } else {
                                onClickListener = null;
                            }
                            spannableString.setSpan(new ok.a(i10, z10, typeface, f10, onClickListener), q02, i12, 33);
                        }
                    }
                }
            } catch (Exception e10) {
                Logger.f41511a.e("TextView", "setTextHighLight exception -> " + e10.getMessage());
            }
        }
        textView.setClickable(true);
        textView.setHighlightColor(0);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        textView.setText(spannableString);
    }

    public static /* synthetic */ void l(TextView textView, String str, String[] strArr, int i10, Typeface typeface, float f10, boolean z10, List list, int i11, Object obj) {
        String[] strArr2;
        int i12;
        Typeface typeface2;
        float f11;
        List list2 = null;
        if ((i11 & 2) != 0) {
            strArr2 = null;
        } else {
            strArr2 = strArr;
        }
        boolean z11 = false;
        if ((i11 & 4) != 0) {
            i12 = 0;
        } else {
            i12 = i10;
        }
        if ((i11 & 8) != 0) {
            typeface2 = null;
        } else {
            typeface2 = typeface;
        }
        if ((i11 & 16) != 0) {
            f11 = -1.0f;
        } else {
            f11 = f10;
        }
        if ((i11 & 32) == 0) {
            z11 = z10;
        }
        if ((i11 & 64) == 0) {
            list2 = list;
        }
        k(textView, str, strArr2, i12, typeface2, f11, z11, list2);
    }

    public static final void m(@NotNull TextView textView, @NotNull String text, int i10, float f10, int i11) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        Intrinsics.checkNotNullParameter(text, "text");
        SpannableString spannableString = new SpannableString(text);
        spannableString.setSpan(new ok.b(i10, f10, i11), 0, text.length(), 33);
        textView.setText(spannableString);
    }

    public static final void n(@NotNull TextView textView, @NotNull String typeface) {
        Typeface l10;
        Intrinsics.checkNotNullParameter(textView, "<this>");
        Intrinsics.checkNotNullParameter(typeface, "typeface");
        yf.a aVar = yf.a.f70794a;
        if (Intrinsics.areEqual(typeface, aVar.a())) {
            Typeface g10 = aVar.g();
            if (g10 != null) {
                textView.setTypeface(g10);
            }
        } else if (Intrinsics.areEqual(typeface, aVar.e())) {
            Typeface k10 = aVar.k();
            if (k10 != null) {
                textView.setTypeface(k10);
            }
        } else if (Intrinsics.areEqual(typeface, aVar.c())) {
            Typeface i10 = aVar.i();
            if (i10 != null) {
                textView.setTypeface(i10);
            }
        } else if (Intrinsics.areEqual(typeface, aVar.d())) {
            Typeface j10 = aVar.j();
            if (j10 != null) {
                textView.setTypeface(j10);
            }
        } else if (Intrinsics.areEqual(typeface, aVar.b())) {
            Typeface h10 = aVar.h();
            if (h10 != null) {
                textView.setTypeface(h10);
            }
        } else if (Intrinsics.areEqual(typeface, aVar.f()) && (l10 = aVar.l()) != null) {
            textView.setTypeface(l10);
        }
    }
}
