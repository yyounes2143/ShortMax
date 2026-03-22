package com.inmobi.media;

import android.graphics.Rect;
import android.view.View;
/* loaded from: classes5.dex */
public final class P4 implements W4 {

    /* renamed from: a  reason: collision with root package name */
    public long f23974a;

    @Override // com.inmobi.media.ff
    public final boolean a(View view, View view2, int i10, Object obj) {
        if (view2 == null || view2.getVisibility() != 0) {
            return false;
        }
        if ((view != null ? view.getParent() : null) == null || !view2.isShown()) {
            return false;
        }
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = view2 instanceof GestureDetector$OnGestureListenerC2941ec ? (GestureDetector$OnGestureListenerC2941ec) view2 : null;
        if (gestureDetector$OnGestureListenerC2941ec == null) {
            return false;
        }
        if (gestureDetector$OnGestureListenerC2941ec.getPlacementType() == 1 || (gestureDetector$OnGestureListenerC2941ec.getHeight() > 0 && gestureDetector$OnGestureListenerC2941ec.getWidth() > 0)) {
            Rect rect = new Rect();
            if (gestureDetector$OnGestureListenerC2941ec.getGlobalVisibleRect(rect)) {
                this.f23974a = rect.height() * rect.width();
                if (gestureDetector$OnGestureListenerC2941ec.getPlacementType() == 1) {
                    gestureDetector$OnGestureListenerC2941ec.setConfiguredArea(gestureDetector$OnGestureListenerC2941ec.getHeight() * gestureDetector$OnGestureListenerC2941ec.getWidth());
                }
                if (gestureDetector$OnGestureListenerC2941ec.getArea() > 0) {
                    return ((long) 100) * this.f23974a >= gestureDetector$OnGestureListenerC2941ec.getConfiguredArea() * ((long) i10);
                }
                return false;
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00e8, code lost:
        if (((android.graphics.drawable.ColorDrawable) r4).getColor() == 0) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00ef, code lost:
        if (r9.getBackground() == null) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00f1, code lost:
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00f3, code lost:
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0109, code lost:
        if (((android.graphics.drawable.ColorDrawable) r9).getColor() == 0) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0110, code lost:
        if (r9.getForeground() == null) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0112, code lost:
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0114, code lost:
        r9 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0117, code lost:
        if (r9 != false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x011c, code lost:
        if (r4 != false) goto L56;
     */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0123 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0124 A[SYNTHETIC] */
    @Override // com.inmobi.media.ff
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(android.view.View r17, android.view.View r18, int r19) {
        /*
            Method dump skipped, instructions count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.P4.a(android.view.View, android.view.View, int):boolean");
    }
}
