package com.startshorts.androidplayer.ui.view.discover;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.manager.discount.DiscountSubscribeManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import java.util.List;
import jk.b0;
import jk.u;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qf.h;
import yd.d;
/* compiled from: DiscoverVipBoxView.kt */
@Metadata
/* loaded from: classes7.dex */
public class DiscoverVipBoxView extends BaseConstraintLayout {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private View f47230b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private TextView f47231c;

    /* renamed from: d  reason: collision with root package name */
    private int f47232d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private String f47233e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private a f47234f;

    /* compiled from: DiscoverVipBoxView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface a {
        void a();
    }

    /* compiled from: DiscoverVipBoxView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            DiscoverVipBoxView.this.B();
            a mListener = DiscoverVipBoxView.this.getMListener();
            if (mListener != null) {
                mListener.a();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverVipBoxView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B() {
        EventManager.e0(EventManager.f42463a, "discover", "sub_portal", null, null, this.f47233e, 12, null);
    }

    private final void C() {
        EventManager.k0(EventManager.f42463a, "discover", "sub_portal", null, this.f47233e, 4, null);
    }

    @SuppressLint({"SetTextI18n"})
    private final void E() {
        CoroutineUtil.l(CoroutineUtil.f48072a, "showDiscountTip", false, new DiscoverVipBoxView$showDiscountTip$1(this, null), 2, null);
    }

    private final void z(List<? extends SubsSku> list) {
        int i10;
        String str;
        SubsSku f10 = h.f65328a.f(list);
        if (f10 != null) {
            i10 = u.a(f10);
        } else {
            i10 = 0;
        }
        this.f47232d = i10;
        if (f10 != null) {
            str = f10.getSkuId();
        } else {
            str = null;
        }
        this.f47233e = str;
        E();
        C();
    }

    public final void A() {
        b0.d(this.f47230b);
    }

    public final void D() {
        SubsSku p10 = DiscountSubscribeManager.f42447a.p();
        if (p10 != null) {
            z(CollectionsKt.e(p10));
            return;
        }
        List<SubsSku> B = ud.a.f68411a.B();
        if (B == null) {
            b0.d(this.f47230b);
        } else {
            z(B);
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_discover_vip_box;
    }

    @Nullable
    public final a getMListener() {
        return this.f47234f;
    }

    public final void setMListener(@Nullable a aVar) {
        this.f47234f = aVar;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47230b = findViewById(R$id.subscribe_discount);
        this.f47231c = (TextView) findViewById(R$id.subscribe_discount_tv);
        getRootView().setOnClickListener(new b());
    }
}
