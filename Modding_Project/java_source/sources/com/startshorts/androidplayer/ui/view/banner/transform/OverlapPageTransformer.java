package com.startshorts.androidplayer.ui.view.banner.transform;

import android.view.View;
import androidx.viewpager2.widget.ViewPager2;
import fj.a;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: OverlapPageTransformer.kt */
@Metadata
@SourceDebugExtension({"SMAP\nOverlapPageTransformer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OverlapPageTransformer.kt\ncom/startshorts/androidplayer/ui/view/banner/transform/OverlapPageTransformer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,110:1\n1#2:111\n*E\n"})
/* loaded from: classes7.dex */
public final class OverlapPageTransformer implements ViewPager2.PageTransformer {

    /* renamed from: a  reason: collision with root package name */
    private final int f47074a;

    /* renamed from: b  reason: collision with root package name */
    private final float f47075b;

    /* renamed from: c  reason: collision with root package name */
    private final float f47076c;

    /* renamed from: d  reason: collision with root package name */
    private final float f47077d;

    /* renamed from: e  reason: collision with root package name */
    private final float f47078e;

    /* renamed from: f  reason: collision with root package name */
    private float f47079f;

    public OverlapPageTransformer(int i10, float f10, float f11, float f12, float f13) {
        this.f47074a = i10;
        this.f47075b = f10;
        this.f47076c = f11;
        this.f47077d = f12;
        this.f47078e = f13;
        if (0.0f <= f10 && f10 <= 1.0f) {
            if (0.0f <= f12 && f12 <= 1.0f) {
                this.f47079f = 0.2f;
                return;
            }
            throw new IllegalArgumentException("unSelectedItemAlpha value should be between 1.0 to 0.0");
        }
        throw new IllegalArgumentException("minScale value should be between 1.0 to 0.0");
    }

    @Override // androidx.viewpager2.widget.ViewPager2.PageTransformer
    public void transformPage(@NotNull View page, float f10) {
        float f11;
        int width;
        float abs;
        int width2;
        Intrinsics.checkNotNullParameter(page, "page");
        float f12 = this.f47075b;
        if (f12 >= 0.8d) {
            f11 = 0.2f;
        } else if (f12 >= 0.6d) {
            f11 = 0.3f;
        } else {
            f11 = 0.4f;
        }
        this.f47079f = f11;
        page.setElevation(-Math.abs(f10));
        float max = Math.max(1.0f - Math.abs(f10 * 0.5f), 0.5f);
        float f13 = this.f47076c;
        if (f13 != 0.0f) {
            float f14 = 1 - max;
            if (f10 <= 0.0f) {
                f13 = -f13;
            }
            page.setRotationY(f14 * f13);
        }
        float max2 = Math.max(1.0f - Math.abs(this.f47079f * f10), this.f47075b);
        page.setScaleX(max2);
        page.setScaleY(max2);
        int a10 = a.a(((int) this.f47078e) / 2);
        int i10 = this.f47074a;
        if (i10 != 0) {
            if (i10 == 1) {
                float f15 = a10 * f10;
                if (f10 > 0.0f) {
                    width2 = -page.getWidth();
                } else {
                    width2 = page.getWidth();
                }
                page.setTranslationY(f15 + (width2 * (1.0f - max2)));
            } else {
                throw new IllegalArgumentException("Gives correct orientation value, ViewPager2.ORIENTATION_HORIZONTAL or ViewPager2.ORIENTATION_VERTICAL");
            }
        } else {
            float f16 = a10 * f10;
            if (f10 > 0.0f) {
                width = -page.getWidth();
            } else {
                width = page.getWidth();
            }
            page.setTranslationX(f16 + (width * (1.0f - max2)));
        }
        if (this.f47077d != 1.0f) {
            if (f10 >= -1.0f && f10 <= 1.0f) {
                abs = ((1 - Math.abs(f10)) * 0.5f) + 0.5f;
            } else {
                abs = 0.5f / Math.abs(f10 * f10);
            }
            page.setAlpha(abs);
        }
    }
}
