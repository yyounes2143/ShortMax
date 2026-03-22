package io.bidmachine.media3.ui;

import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.RelativeSizeSpan;
import bn.a;
/* compiled from: SubtitleViewUtils.java */
/* loaded from: classes8.dex */
final class i1 {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean c(Object obj) {
        return !(obj instanceof bn.e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean d(Object obj) {
        if (!(obj instanceof AbsoluteSizeSpan) && !(obj instanceof RelativeSizeSpan)) {
            return false;
        }
        return true;
    }

    public static void e(a.b bVar) {
        bVar.b();
        if (bVar.e() instanceof Spanned) {
            if (!(bVar.e() instanceof Spannable)) {
                bVar.o(SpannableString.valueOf(bVar.e()));
            }
            g((Spannable) cn.a.e(bVar.e()), new h7.l() { // from class: io.bidmachine.media3.ui.h1
                @Override // h7.l
                public final boolean apply(Object obj) {
                    boolean c10;
                    c10 = i1.c(obj);
                    return c10;
                }
            });
        }
        f(bVar);
    }

    public static void f(a.b bVar) {
        bVar.q(-3.4028235E38f, Integer.MIN_VALUE);
        if (bVar.e() instanceof Spanned) {
            if (!(bVar.e() instanceof Spannable)) {
                bVar.o(SpannableString.valueOf(bVar.e()));
            }
            g((Spannable) cn.a.e(bVar.e()), new h7.l() { // from class: io.bidmachine.media3.ui.g1
                @Override // h7.l
                public final boolean apply(Object obj) {
                    boolean d10;
                    d10 = i1.d(obj);
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
