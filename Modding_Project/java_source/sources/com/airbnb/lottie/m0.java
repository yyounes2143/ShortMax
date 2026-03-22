package com.airbnb.lottie;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
/* compiled from: LottieImageAsset.java */
/* loaded from: classes2.dex */
public class m0 {

    /* renamed from: a  reason: collision with root package name */
    private final int f4532a;

    /* renamed from: b  reason: collision with root package name */
    private final int f4533b;

    /* renamed from: c  reason: collision with root package name */
    private final String f4534c;

    /* renamed from: d  reason: collision with root package name */
    private final String f4535d;

    /* renamed from: e  reason: collision with root package name */
    private final String f4536e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private Bitmap f4537f;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public m0(int i10, int i11, String str, String str2, String str3) {
        this.f4532a = i10;
        this.f4533b = i11;
        this.f4534c = str;
        this.f4535d = str2;
        this.f4536e = str3;
    }

    public m0 a(float f10) {
        m0 m0Var = new m0((int) (this.f4532a * f10), (int) (this.f4533b * f10), this.f4534c, this.f4535d, this.f4536e);
        Bitmap bitmap = this.f4537f;
        if (bitmap != null) {
            m0Var.g(Bitmap.createScaledBitmap(bitmap, m0Var.f4532a, m0Var.f4533b, true));
        }
        return m0Var;
    }

    @Nullable
    public Bitmap b() {
        return this.f4537f;
    }

    public String c() {
        return this.f4535d;
    }

    public int d() {
        return this.f4533b;
    }

    public String e() {
        return this.f4534c;
    }

    public int f() {
        return this.f4532a;
    }

    public void g(@Nullable Bitmap bitmap) {
        this.f4537f = bitmap;
    }
}
