package com.startshorts.androidplayer.listener;

import android.util.SparseIntArray;
import android.view.View;
import androidx.viewpager2.widget.ViewPager2;
import com.startshorts.androidplayer.listener.OnPageChangeCallbackCompat;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import fk.i0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: OnPageChangeCallbackCompat.kt */
@Metadata
/* loaded from: classes6.dex */
public abstract class OnPageChangeCallbackCompat extends ViewPager2.OnPageChangeCallback {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f41506e = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final ViewPager2 f41507a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final SparseIntArray f41508b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private r f41509c;

    /* renamed from: d  reason: collision with root package name */
    private int f41510d;

    /* compiled from: OnPageChangeCallbackCompat.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public OnPageChangeCallbackCompat(@NotNull ViewPager2 viewPager) {
        Intrinsics.checkNotNullParameter(viewPager, "viewPager");
        this.f41507a = viewPager;
        this.f41508b = new SparseIntArray();
        this.f41510d = -1;
    }

    private final void b() {
        r rVar = this.f41509c;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        this.f41509c = null;
    }

    private final void d(final int i10) {
        b();
        this.f41509c = CoroutineUtil.g(CoroutineUtil.f48072a, 10L, null, new Function0() { // from class: yd.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit e10;
                e10 = OnPageChangeCallbackCompat.e(OnPageChangeCallbackCompat.this, i10);
                return e10;
            }
        }, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit e(OnPageChangeCallbackCompat onPageChangeCallbackCompat, int i10) {
        onPageChangeCallbackCompat.onPageSelected(i10);
        return Unit.f60915a;
    }

    public abstract void c(int i10);

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public final void onPageSelected(int i10) {
        if (i10 != this.f41510d) {
            Logger logger = Logger.f41511a;
            logger.h("OnPageChangeCallbackCompat", "onPageSelected -> position(" + i10 + ')');
            int i11 = this.f41510d;
            if (i11 != -1) {
                this.f41508b.put(i11, 0);
            }
            this.f41510d = i10;
            b();
        }
        View a10 = i0.f51738a.a(this.f41507a, i10);
        int i12 = this.f41508b.get(i10);
        if (a10 == null && i12 < 10) {
            this.f41508b.put(i10, i12 + 1);
            d(i10);
        } else if (this.f41510d == i10) {
            Logger logger2 = Logger.f41511a;
            logger2.h("OnPageChangeCallbackCompat", "onPageRealSelected -> position(" + i10 + ") retryCount(" + i12 + ')');
            this.f41508b.put(i10, 0);
            c(i10);
        } else {
            Logger logger3 = Logger.f41511a;
            logger3.e("OnPageChangeCallbackCompat", "invalid onPageSelected -> mCurrentPosition(" + this.f41510d + ") position(" + i10 + ')');
        }
    }
}
