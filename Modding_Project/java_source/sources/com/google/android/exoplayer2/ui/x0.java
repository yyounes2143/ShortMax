package com.google.android.exoplayer2.ui;

import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.RelativeSizeSpan;
import p6.b;
/* compiled from: SubtitleViewUtils.java */
/* loaded from: classes4.dex */
final class x0 {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean c(Object obj) {
        return !(obj instanceof t6.b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean d(Object obj) {
        if (!(obj instanceof AbsoluteSizeSpan) && !(obj instanceof RelativeSizeSpan)) {
            return false;
        }
        return true;
    }

    public static void e(b.C0897b c0897b) {
        c0897b.b();
        if (c0897b.e() instanceof Spanned) {
            if (!(c0897b.e() instanceof Spannable)) {
                c0897b.o(SpannableString.valueOf(c0897b.e()));
            }
            g((Spannable) b7.a.e(c0897b.e()), new h7.l() { // from class: com.google.android.exoplayer2.ui.v0
                @Override // h7.l
                public final boolean apply(Object obj) {
                    boolean c10;
                    c10 = x0.c(obj);
                    return c10;
                }
            });
        }
        f(c0897b);
    }

    public static void f(b.C0897b c0897b) {
        c0897b.q(-3.4028235E38f, Integer.MIN_VALUE);
        if (c0897b.e() instanceof Spanned) {
            if (!(c0897b.e() instanceof Spannable)) {
                c0897b.o(SpannableString.valueOf(c0897b.e()));
            }
            g((Spannable) b7.a.e(c0897b.e()), new h7.l() { // from class: com.google.android.exoplayer2.ui.w0
                @Override // h7.l
                public final boolean apply(Object obj) {
                    boolean d10;
                    d10 = x0.d(obj);
                    return d10;
                }
            });
        }
    }

    private static void g(Spannable spannable, h7.l<Object> lVar) {
        Object[] spans;
        for (Object obj : spannable.getSpans(0, spannable.length(), Object.class)) {
            if (lVar.apply(obj)) {
                spannable.removeSpan(obj);
            }
        }
    }

    public static float h(int i10, float f10, int i11, int i12) {
        float f11;
        if (f10 == -3.4028235E38f) {
            return -3.4028235E38f;
        }
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    return -3.4028235E38f;
                }
                return f10;
            }
            f11 = i11;
        } else {
            f11 = i12;
        }
        return f10 * f11;
    }
}
