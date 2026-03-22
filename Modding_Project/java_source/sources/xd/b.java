package xd;

import android.graphics.Color;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextViewExt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTextViewExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextViewExt.kt\ncom/startshorts/androidplayer/ext/TextViewExtKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,99:1\n1872#2,3:100\n*S KotlinDebug\n*F\n+ 1 TextViewExt.kt\ncom/startshorts/androidplayer/ext/TextViewExtKt\n*L\n24#1:100,3\n*E\n"})
/* loaded from: classes6.dex */
public final class b {
    public static final void a(@NotNull TextView textView, @Nullable String str, @Nullable String str2, @ColorInt int i10, boolean z10) {
        int y02;
        int y03;
        int length;
        Intrinsics.checkNotNullParameter(textView, "<this>");
        if (str != null && str2 != null) {
            SpannableString spannableString = new SpannableString(str);
            ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(i10);
            if (z10) {
                y02 = StringsKt.q0(str, str2, 0, false, 6, null);
            } else {
                y02 = StringsKt.y0(str, str2, 0, false, 6, null);
            }
            if (z10) {
                y03 = StringsKt.q0(str, str2, 0, false, 6, null);
                length = str2.length();
            } else {
                y03 = StringsKt.y0(str, str2, 0, false, 6, null);
                length = str2.length();
            }
            spannableString.setSpan(foregroundColorSpan, y02, y03 + length, 33);
            textView.setText(spannableString);
        }
    }

    public static /* synthetic */ void b(TextView textView, String str, String str2, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            i10 = -1;
        }
        if ((i11 & 8) != 0) {
            z10 = true;
        }
        a(textView, str, str2, i10, z10);
    }

    public static final void c(@NotNull TextView textView, @Nullable String str, @Nullable String str2, @ColorInt int i10, float f10, boolean z10) {
        int y02;
        int y03;
        int length;
        int y04;
        int y05;
        int length2;
        Intrinsics.checkNotNullParameter(textView, "<this>");
        if (str != null && str2 != null) {
            SpannableString spannableString = new SpannableString(str);
            ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(i10);
            if (z10) {
                y02 = StringsKt.q0(str, str2, 0, false, 6, null);
            } else {
                y02 = StringsKt.y0(str, str2, 0, false, 6, null);
            }
            if (z10) {
                y03 = StringsKt.q0(str, str2, 0, false, 6, null);
                length = str2.length();
            } else {
                y03 = StringsKt.y0(str, str2, 0, false, 6, null);
                length = str2.length();
            }
            spannableString.setSpan(foregroundColorSpan, y02, y03 + length, 33);
            if (f10 > 0.0f && f10 != 1.0f) {
                RelativeSizeSpan relativeSizeSpan = new RelativeSizeSpan(f10);
                if (z10) {
                    y04 = StringsKt.q0(str, str2, 0, false, 6, null);
                } else {
                    y04 = StringsKt.y0(str, str2, 0, false, 6, null);
                }
                if (z10) {
                    y05 = StringsKt.q0(str, str2, 0, false, 6, null);
                    length2 = str2.length();
                } else {
                    y05 = StringsKt.y0(str, str2, 0, false, 6, null);
                    length2 = str2.length();
                }
                spannableString.setSpan(relativeSizeSpan, y04, y05 + length2, 33);
            }
            textView.setText(spannableString, TextView.BufferType.SPANNABLE);
        }
    }

    public static /* synthetic */ void d(TextView textView, String str, String str2, int i10, float f10, boolean z10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            i10 = Color.parseColor("#FFBD13");
        }
        int i12 = i10;
        if ((i11 & 8) != 0) {
            f10 = 1.0f;
        }
        float f11 = f10;
        if ((i11 & 16) != 0) {
            z10 = true;
        }
        c(textView, str, str2, i12, f11, z10);
    }
}
