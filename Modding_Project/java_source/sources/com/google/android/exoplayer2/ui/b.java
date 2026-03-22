package com.google.android.exoplayer2.ui;

import android.graphics.Typeface;
import android.view.accessibility.CaptioningManager;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.view.ViewCompat;
/* compiled from: CaptionStyleCompat.java */
/* loaded from: classes4.dex */
public final class b {

    /* renamed from: g  reason: collision with root package name */
    public static final b f18805g = new b(-1, ViewCompat.MEASURED_STATE_MASK, 0, 0, -1, null);

    /* renamed from: a  reason: collision with root package name */
    public final int f18806a;

    /* renamed from: b  reason: collision with root package name */
    public final int f18807b;

    /* renamed from: c  reason: collision with root package name */
    public final int f18808c;

    /* renamed from: d  reason: collision with root package name */
    public final int f18809d;

    /* renamed from: e  reason: collision with root package name */
    public final int f18810e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final Typeface f18811f;

    public b(int i10, int i11, int i12, int i13, int i14, @Nullable Typeface typeface) {
        this.f18806a = i10;
        this.f18807b = i11;
        this.f18808c = i12;
        this.f18809d = i13;
        this.f18810e = i14;
        this.f18811f = typeface;
    }

    @RequiresApi(19)
    public static b a(CaptioningManager.CaptionStyle captionStyle) {
        if (b7.s0.f2506a >= 21) {
            return c(captionStyle);
        }
        return b(captionStyle);
    }

    @RequiresApi(19)
    private static b b(CaptioningManager.CaptionStyle captionStyle) {
        return new b(captionStyle.foregroundColor, captionStyle.backgroundColor, 0, captionStyle.edgeType, captionStyle.edgeColor, captionStyle.getTypeface());
    }

    @RequiresApi(21)
    private static b c(CaptioningManager.CaptionStyle captionStyle) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        if (captionStyle.hasForegroundColor()) {
            i10 = captionStyle.foregroundColor;
        } else {
            i10 = f18805g.f18806a;
        }
        int i15 = i10;
        if (captionStyle.hasBackgroundColor()) {
            i11 = captionStyle.backgroundColor;
        } else {
            i11 = f18805g.f18807b;
        }
        int i16 = i11;
        if (captionStyle.hasWindowColor()) {
            i12 = captionStyle.windowColor;
        } else {
            i12 = f18805g.f18808c;
        }
        int i17 = i12;
        if (captionStyle.hasEdgeType()) {
            i13 = captionStyle.edgeType;
        } else {
            i13 = f18805g.f18809d;
        }
        int i18 = i13;
        if (captionStyle.hasEdgeColor()) {
            i14 = captionStyle.edgeColor;
        } else {
            i14 = f18805g.f18810e;
        }
        return new b(i15, i16, i17, i18, i14, captionStyle.getTypeface());
    }
}
