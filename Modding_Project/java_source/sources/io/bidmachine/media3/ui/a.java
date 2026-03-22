package io.bidmachine.media3.ui;

import android.graphics.Typeface;
import android.view.accessibility.CaptioningManager;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
/* compiled from: CaptionStyleCompat.java */
/* loaded from: classes8.dex */
public final class a {

    /* renamed from: g  reason: collision with root package name */
    public static final a f57676g = new a(-1, ViewCompat.MEASURED_STATE_MASK, 0, 0, -1, null);

    /* renamed from: a  reason: collision with root package name */
    public final int f57677a;

    /* renamed from: b  reason: collision with root package name */
    public final int f57678b;

    /* renamed from: c  reason: collision with root package name */
    public final int f57679c;

    /* renamed from: d  reason: collision with root package name */
    public final int f57680d;

    /* renamed from: e  reason: collision with root package name */
    public final int f57681e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final Typeface f57682f;

    public a(int i10, int i11, int i12, int i13, int i14, @Nullable Typeface typeface) {
        this.f57677a = i10;
        this.f57678b = i11;
        this.f57679c = i12;
        this.f57680d = i13;
        this.f57681e = i14;
        this.f57682f = typeface;
    }

    public static a a(CaptioningManager.CaptionStyle captionStyle) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        if (captionStyle.hasForegroundColor()) {
            i10 = captionStyle.foregroundColor;
        } else {
            i10 = f57676g.f57677a;
        }
        int i15 = i10;
        if (captionStyle.hasBackgroundColor()) {
            i11 = captionStyle.backgroundColor;
        } else {
            i11 = f57676g.f57678b;
        }
        int i16 = i11;
        if (captionStyle.hasWindowColor()) {
            i12 = captionStyle.windowColor;
        } else {
            i12 = f57676g.f57679c;
        }
        int i17 = i12;
        if (captionStyle.hasEdgeType()) {
            i13 = captionStyle.edgeType;
        } else {
            i13 = f57676g.f57680d;
        }
        int i18 = i13;
        if (captionStyle.hasEdgeColor()) {
            i14 = captionStyle.edgeColor;
        } else {
            i14 = f57676g.f57681e;
        }
        return new a(i15, i16, i17, i18, i14, captionStyle.getTypeface());
    }
}
