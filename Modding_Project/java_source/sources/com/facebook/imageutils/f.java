package com.facebook.imageutils;

import android.graphics.ColorSpace;
import kotlin.Metadata;
import kotlin.Pair;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImageMetaData.kt */
@Metadata
/* loaded from: classes3.dex */
public final class f {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final ColorSpace f16074a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final Pair<Integer, Integer> f16075b;

    public f(int i10, int i11, @Nullable ColorSpace colorSpace) {
        Pair<Integer, Integer> pair;
        this.f16074a = colorSpace;
        if (i10 != -1 && i11 != -1) {
            pair = new Pair<>(Integer.valueOf(i10), Integer.valueOf(i11));
        } else {
            pair = null;
        }
        this.f16075b = pair;
    }

    @Nullable
    public final ColorSpace a() {
        return this.f16074a;
    }

    @Nullable
    public final Pair<Integer, Integer> b() {
        return this.f16075b;
    }
}
