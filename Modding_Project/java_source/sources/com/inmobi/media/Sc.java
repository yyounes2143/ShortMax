package com.inmobi.media;

import android.content.Context;
import android.graphics.Point;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.view.GravityCompat;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Sc extends K8 implements ViewPager.OnPageChangeListener {

    /* renamed from: b  reason: collision with root package name */
    public final String f24148b;

    /* renamed from: c  reason: collision with root package name */
    public final ViewPager f24149c;

    /* renamed from: d  reason: collision with root package name */
    public final Point f24150d;

    /* renamed from: e  reason: collision with root package name */
    public final Point f24151e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f24152f;

    /* renamed from: g  reason: collision with root package name */
    public D8 f24153g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Sc(Context context) {
        super(context, (byte) 0);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f24148b = Sc.class.getSimpleName();
        this.f24150d = new Point();
        this.f24151e = new Point();
        setClipChildren(false);
        setLayerType(1, null);
        ViewPager viewPager = new ViewPager(getContext());
        this.f24149c = viewPager;
        viewPager.addOnPageChangeListener(this);
        addView(viewPager);
    }

    @Override // com.inmobi.media.K8
    public final void a(C2985h8 scrollableContainerAsset, L8 dataSource, int i10, int i11, D8 d82) {
        C2920d8 c2920d8;
        FrameLayout.LayoutParams layoutParams;
        Intrinsics.checkNotNullParameter(scrollableContainerAsset, "scrollableContainerAsset");
        Intrinsics.checkNotNullParameter(dataSource, "dataSource");
        C3129q8 c3129q8 = null;
        if (scrollableContainerAsset.B > 0) {
            c2920d8 = (C2920d8) scrollableContainerAsset.A.get(0);
        } else {
            c2920d8 = null;
        }
        if (c2920d8 != null) {
            HashMap hashMap = D9.f23586c;
            ViewGroup.LayoutParams a10 = C3082n9.a(c2920d8, this);
            Intrinsics.checkNotNull(a10, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
            layoutParams = (FrameLayout.LayoutParams) a10;
            layoutParams.setMarginStart(20);
            layoutParams.setMarginEnd(20);
            layoutParams.gravity = i11;
        } else {
            layoutParams = null;
        }
        ViewPager viewPager = this.f24149c;
        if (viewPager != null) {
            viewPager.setLayoutParams(layoutParams);
            if (dataSource instanceof C3129q8) {
                c3129q8 = (C3129q8) dataSource;
            }
            viewPager.setAdapter(c3129q8);
            viewPager.setOffscreenPageLimit(2);
            viewPager.setPageMargin(16);
            viewPager.setCurrentItem(i10);
        }
        this.f24153g = d82;
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public final void onPageScrollStateChanged(int i10) {
        boolean z10;
        if (i10 != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f24152f = z10;
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public final void onPageScrolled(int i10, float f10, int i11) {
        if (this.f24152f) {
            invalidate();
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public final void onPageSelected(int i10) {
        ViewGroup.LayoutParams layoutParams;
        FrameLayout.LayoutParams layoutParams2;
        int i11;
        Intrinsics.checkNotNullExpressionValue(this.f24148b, "TAG");
        ViewPager viewPager = this.f24149c;
        if (viewPager != null) {
            layoutParams = viewPager.getLayoutParams();
        } else {
            layoutParams = null;
        }
        if (layoutParams instanceof FrameLayout.LayoutParams) {
            layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
        } else {
            layoutParams2 = null;
        }
        D8 d82 = this.f24153g;
        if (d82 != null) {
            if (layoutParams2 != null) {
                d82.f23580k = i10;
                C2985h8 asset = d82.f23572c.b(i10);
                if (asset != null) {
                    C3224w8 c3224w8 = d82.f23573d;
                    Intrinsics.checkNotNullParameter(asset, "asset");
                    C3240x8 c3240x8 = c3224w8.f25389a;
                    if (!c3240x8.f25428a) {
                        T7 t72 = c3240x8.f25429b;
                        t72.getClass();
                        Intrinsics.checkNotNullParameter(asset, "asset");
                        if (!t72.f24189n.contains(Integer.valueOf(i10)) && !t72.f24195t) {
                            t72.m();
                            if (!t72.f24195t) {
                                t72.f24189n.add(Integer.valueOf(i10));
                                asset.f24811y = System.currentTimeMillis();
                                if (t72.f24193r) {
                                    HashMap a10 = t72.a(asset);
                                    InterfaceC3269z5 interfaceC3269z5 = t72.f24185j;
                                    if (interfaceC3269z5 != null) {
                                        String TAG = t72.f24188m;
                                        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                                        ((A5) interfaceC3269z5).a(TAG, "Page-view impression record request");
                                    }
                                    asset.a("page_view", a10, (L7) null, t72.f24185j);
                                } else {
                                    t72.f24190o.add(asset);
                                }
                            }
                        }
                    }
                }
                int i12 = d82.f23580k;
                if (i12 == 0) {
                    i11 = GravityCompat.START;
                } else if (i12 == d82.f23572c.d() - 1) {
                    i11 = GravityCompat.END;
                } else {
                    i11 = 1;
                }
                layoutParams2.gravity = i11;
            }
            ViewPager viewPager2 = this.f24149c;
            if (viewPager2 != null) {
                viewPager2.requestLayout();
            }
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i10, int i11, int i12, int i13) {
        Point point = this.f24150d;
        point.x = i10 / 2;
        point.y = i11 / 2;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent ev) {
        Point point;
        double ceil;
        double ceil2;
        int i10;
        Point point2;
        Point point3;
        Intrinsics.checkNotNullParameter(ev, "ev");
        int action = ev.getAction();
        if (action != 0) {
            if (action != 1) {
                int i11 = this.f24150d.x;
                Point point4 = this.f24151e;
                ev.offsetLocation(i11 - point4.x, point3.y - point4.y);
            } else {
                float f10 = this.f24151e.x;
                float x10 = ev.getX();
                ViewPager viewPager = this.f24149c;
                Intrinsics.checkNotNull(viewPager);
                int currentItem = viewPager.getCurrentItem();
                PagerAdapter adapter = this.f24149c.getAdapter();
                Intrinsics.checkNotNull(adapter);
                int count = adapter.getCount();
                int width = this.f24149c.getWidth();
                int width2 = getWidth();
                if (currentItem != 0 && count - 1 != currentItem) {
                    float f11 = (width2 - width) / 2;
                    if (f10 < f11 && x10 < f11) {
                        ceil = Math.ceil((f11 - x10) / width);
                        ceil2 = -ceil;
                        i10 = (int) ceil2;
                    } else {
                        float f12 = (width2 + width) / 2;
                        if (f10 > f12 && x10 > f12) {
                            ceil2 = Math.ceil((x10 - f12) / width);
                            i10 = (int) ceil2;
                        }
                        i10 = 0;
                    }
                } else {
                    int i12 = width2 - width;
                    if (currentItem == 0) {
                        float f13 = i12;
                        if (f10 > f13 && x10 > f13) {
                            ceil2 = Math.ceil((x10 - f13) / width);
                            i10 = (int) ceil2;
                        }
                    } else {
                        float f14 = i12;
                        if (f10 < f14 && x10 < f14) {
                            ceil = Math.ceil((f14 - x10) / width);
                            ceil2 = -ceil;
                            i10 = (int) ceil2;
                        }
                    }
                    i10 = 0;
                }
                if (i10 != 0) {
                    ev.setAction(3);
                    ViewPager viewPager2 = this.f24149c;
                    if (viewPager2 != null) {
                        viewPager2.setCurrentItem(viewPager2.getCurrentItem() + i10);
                    }
                }
                int i13 = this.f24150d.x;
                Point point5 = this.f24151e;
                ev.offsetLocation(i13 - point5.x, point2.y - point5.y);
            }
        } else {
            this.f24151e.x = (int) ev.getX();
            this.f24151e.y = (int) ev.getY();
            int i14 = this.f24150d.x;
            Point point6 = this.f24151e;
            ev.offsetLocation(i14 - point6.x, point.y - point6.y);
        }
        ViewPager viewPager3 = this.f24149c;
        if (viewPager3 == null) {
            return false;
        }
        return viewPager3.dispatchTouchEvent(ev);
    }
}
