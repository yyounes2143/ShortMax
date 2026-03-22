package com.inmobi.media;

import android.graphics.Rect;
import android.view.View;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class X7 implements ff {

    /* renamed from: a  reason: collision with root package name */
    public final Rect f24368a = new Rect();

    @Override // com.inmobi.media.ff
    public final boolean a(View rootView, View adView, int i10) {
        Intrinsics.checkNotNullParameter(rootView, "rootView");
        Intrinsics.checkNotNullParameter(adView, "adView");
        return true;
    }

    @Override // com.inmobi.media.ff
    public final boolean a(View view, View view2, int i10, Object obj) {
        G8 mediaPlayer;
        if ((obj instanceof T7) && !((T7) obj).f24195t) {
            if ((!(view2 instanceof C3050l9) || (mediaPlayer = ((C3050l9) view2).getMediaPlayer()) == null || 3 == mediaPlayer.f23682a) && view2 != null && view2.isShown()) {
                if ((view != null ? view.getParent() : null) != null && view2.getGlobalVisibleRect(this.f24368a)) {
                    long height = this.f24368a.height() * this.f24368a.width();
                    long width = view.getWidth() * view.getHeight();
                    return width > 0 && ((long) 100) * height >= ((long) i10) * width;
                }
                return false;
            }
            return false;
        }
        return false;
    }
}
