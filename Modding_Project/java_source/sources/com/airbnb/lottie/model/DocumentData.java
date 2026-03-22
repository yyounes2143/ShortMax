package com.airbnb.lottie.model;

import android.graphics.PointF;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes2.dex */
public class DocumentData {

    /* renamed from: a  reason: collision with root package name */
    public String f4538a;

    /* renamed from: b  reason: collision with root package name */
    public String f4539b;

    /* renamed from: c  reason: collision with root package name */
    public float f4540c;

    /* renamed from: d  reason: collision with root package name */
    public Justification f4541d;

    /* renamed from: e  reason: collision with root package name */
    public int f4542e;

    /* renamed from: f  reason: collision with root package name */
    public float f4543f;

    /* renamed from: g  reason: collision with root package name */
    public float f4544g;
    @ColorInt

    /* renamed from: h  reason: collision with root package name */
    public int f4545h;
    @ColorInt

    /* renamed from: i  reason: collision with root package name */
    public int f4546i;

    /* renamed from: j  reason: collision with root package name */
    public float f4547j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f4548k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    public PointF f4549l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    public PointF f4550m;

    /* loaded from: classes2.dex */
    public enum Justification {
        LEFT_ALIGN,
        RIGHT_ALIGN,
        CENTER
    }

    public DocumentData(String str, String str2, float f10, Justification justification, int i10, float f11, float f12, @ColorInt int i11, @ColorInt int i12, float f13, boolean z10, PointF pointF, PointF pointF2) {
        a(str, str2, f10, justification, i10, f11, f12, i11, i12, f13, z10, pointF, pointF2);
    }

    public void a(String str, String str2, float f10, Justification justification, int i10, float f11, float f12, @ColorInt int i11, @ColorInt int i12, float f13, boolean z10, PointF pointF, PointF pointF2) {
        this.f4538a = str;
        this.f4539b = str2;
        this.f4540c = f10;
        this.f4541d = justification;
        this.f4542e = i10;
        this.f4543f = f11;
        this.f4544g = f12;
        this.f4545h = i11;
        this.f4546i = i12;
        this.f4547j = f13;
        this.f4548k = z10;
        this.f4549l = pointF;
        this.f4550m = pointF2;
    }

    public int hashCode() {
        int hashCode = (((((int) ((((this.f4538a.hashCode() * 31) + this.f4539b.hashCode()) * 31) + this.f4540c)) * 31) + this.f4541d.ordinal()) * 31) + this.f4542e;
        long floatToRawIntBits = Float.floatToRawIntBits(this.f4543f);
        return (((hashCode * 31) + ((int) (floatToRawIntBits ^ (floatToRawIntBits >>> 32)))) * 31) + this.f4545h;
    }

    public DocumentData() {
    }
}
