package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.viewpager.widget.PagerAdapter;
import com.inmobi.media.C3129q8;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.q8  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3129q8 extends PagerAdapter implements L8 {

    /* renamed from: a  reason: collision with root package name */
    public final C3113p8 f25194a;

    /* renamed from: b  reason: collision with root package name */
    public final D8 f25195b;

    /* renamed from: c  reason: collision with root package name */
    public final String f25196c;

    /* renamed from: d  reason: collision with root package name */
    public final int f25197d;

    /* renamed from: e  reason: collision with root package name */
    public final Handler f25198e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f25199f;

    /* renamed from: g  reason: collision with root package name */
    public final SparseArray f25200g;

    public C3129q8(C3113p8 mNativeDataModel, D8 mNativeLayoutInflater) {
        Intrinsics.checkNotNullParameter(mNativeDataModel, "mNativeDataModel");
        Intrinsics.checkNotNullParameter(mNativeLayoutInflater, "mNativeLayoutInflater");
        this.f25194a = mNativeDataModel;
        this.f25195b = mNativeLayoutInflater;
        this.f25196c = C3129q8.class.getSimpleName();
        this.f25197d = 50;
        this.f25198e = new Handler(Looper.getMainLooper());
        this.f25200g = new SparseArray();
    }

    public static final void a(Object item, C3129q8 this$0) {
        Intrinsics.checkNotNullParameter(item, "$item");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (item instanceof View) {
            D8 d82 = this$0.f25195b;
            View view = (View) item;
            d82.getClass();
            Intrinsics.checkNotNullParameter(view, "view");
            d82.f23582m.a(view);
        }
    }

    @Override // com.inmobi.media.L8
    public final void destroy() {
        this.f25199f = true;
        int size = this.f25200g.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f25198e.removeCallbacks((Runnable) this.f25200g.get(this.f25200g.keyAt(i10)));
        }
        this.f25200g.clear();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final void destroyItem(ViewGroup container, int i10, final Object item) {
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(item, "item");
        if (item instanceof View) {
            container.removeView((View) item);
        }
        Runnable runnable = (Runnable) this.f25200g.get(i10);
        if (runnable != null) {
            this.f25198e.removeCallbacks(runnable);
            String TAG = this.f25196c;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        }
        this.f25198e.post(new Runnable() { // from class: ub.b6
            @Override // java.lang.Runnable
            public final void run() {
                C3129q8.a(item, this);
            }
        });
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final int getCount() {
        return this.f25194a.d();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final int getItemPosition(Object item) {
        View view;
        Intrinsics.checkNotNullParameter(item, "item");
        Object obj = null;
        if (item instanceof View) {
            view = (View) item;
        } else {
            view = null;
        }
        if (view != null) {
            obj = view.getTag();
        }
        if (obj instanceof Integer) {
            return ((Number) obj).intValue();
        }
        return -2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final Object instantiateItem(ViewGroup container, int i10) {
        View relativeLayout;
        Intrinsics.checkNotNullParameter(container, "container");
        String TAG = this.f25196c;
        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        C2985h8 b10 = this.f25194a.b(i10);
        if (b10 == null || (relativeLayout = a(i10, container, b10)) == null) {
            relativeLayout = new RelativeLayout(container.getContext());
        }
        relativeLayout.setTag(Integer.valueOf(i10));
        container.addView(relativeLayout);
        return relativeLayout;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final boolean isViewFromObject(View view, Object obj) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(obj, "obj");
        return Intrinsics.areEqual(view, obj);
    }

    public final ViewGroup a(final int i10, final ViewGroup parent, final C2985h8 pageContainerAsset) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(pageContainerAsset, "pageContainerAsset");
        final ViewGroup a10 = this.f25195b.a(parent, pageContainerAsset);
        if (a10 != null) {
            int abs = Math.abs(this.f25195b.f23580k - i10);
            Runnable runnable = new Runnable() { // from class: ub.c6
                @Override // java.lang.Runnable
                public final void run() {
                    C3129q8.a(C3129q8.this, i10, a10, parent, pageContainerAsset);
                }
            };
            this.f25200g.put(i10, runnable);
            this.f25198e.postDelayed(runnable, abs * this.f25197d);
        }
        return a10;
    }

    public static final void a(C3129q8 this$0, int i10, ViewGroup container, ViewGroup parent, C2985h8 root) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(container, "$it");
        Intrinsics.checkNotNullParameter(parent, "$parent");
        Intrinsics.checkNotNullParameter(root, "$pageContainerAsset");
        if (this$0.f25199f) {
            return;
        }
        this$0.f25200g.remove(i10);
        D8 d82 = this$0.f25195b;
        d82.getClass();
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(root, "root");
        d82.b(container, root);
    }
}
