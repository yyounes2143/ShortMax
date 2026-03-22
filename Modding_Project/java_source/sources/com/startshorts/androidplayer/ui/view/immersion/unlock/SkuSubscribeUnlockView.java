package com.startshorts.androidplayer.ui.view.immersion.unlock;

import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import com.hades.aar.activity.IDActivity;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.unlock.UnlockEpisodeAdMethod;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.purchase.Ad2PayPresent;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.immersion.unlock.SkuSubscribeUnlockView;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ve.h;
/* compiled from: SkuSubscribeUnlockView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class SkuSubscribeUnlockView extends BaseConstraintLayout implements pj.a {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final BaseActivity f47428b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final String f47429c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final Boolean f47430d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private View f47431e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private View f47432f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private ImageView f47433g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private BaseTextView f47434h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private BaseTextView f47435i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private View f47436j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private String f47437k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private BaseEpisode f47438l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private a f47439m;

    /* compiled from: SkuSubscribeUnlockView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface a {
        void a();

        void b();

        void c();
    }

    /* compiled from: SkuSubscribeUnlockView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends yd.d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            SkuSubscribeUnlockView.this.A();
            SkuSubscribeUnlockView.this.B();
        }
    }

    /* compiled from: SkuSubscribeUnlockView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(1500L);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            a mListener = SkuSubscribeUnlockView.this.getMListener();
            if (mListener != null) {
                mListener.a();
            }
        }
    }

    /* compiled from: SkuSubscribeUnlockView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(1500L);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            a mListener = SkuSubscribeUnlockView.this.getMListener();
            if (mListener != null) {
                mListener.c();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SkuSubscribeUnlockView(@NotNull BaseActivity context, @Nullable String str, @Nullable Boolean bool) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47428b = context;
        this.f47429c = str;
        this.f47430d = bool;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A() {
        EventManager.s0(EventManager.f42463a, "watch_ads_to_unlock_click", y(), 0L, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B() {
        IDActivity iDActivity;
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(this.f47438l);
        C.putString("ad_active", "unlock_select");
        C.putString("type", "1");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "watch_ad_click", C, 0L, 4, null);
        AdManager adManager = AdManager.f41600a;
        String str = this.f47437k;
        WeakReference<IDActivity> d10 = aa.a.f321a.d();
        if (d10 != null) {
            iDActivity = d10.get();
        } else {
            iDActivity = null;
        }
        adManager.p0(str, iDActivity, "unlock_select", this.f47438l, new Function1() { // from class: pj.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit C2;
                C2 = SkuSubscribeUnlockView.C(SkuSubscribeUnlockView.this, ((Boolean) obj).booleanValue());
                return C2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit C(SkuSubscribeUnlockView skuSubscribeUnlockView, boolean z10) {
        if (z10) {
            Ad2PayPresent.f42733a.x();
            a aVar = skuSubscribeUnlockView.f47439m;
            if (aVar != null) {
                aVar.b();
            }
        }
        return Unit.f60915a;
    }

    private final Bundle y() {
        Bundle bundle = new Bundle();
        String str = this.f47429c;
        if (str != null && str.length() != 0) {
            bundle.putString(TtmlNode.TAG_STYLE, this.f47429c);
        }
        if (Intrinsics.areEqual(this.f47430d, Boolean.TRUE)) {
            bundle.putString("task", "task_center");
        } else {
            bundle.putString("style_id", h.f68906a.m());
        }
        return bundle;
    }

    @Override // android.view.View
    @NotNull
    public final BaseActivity getContext() {
        return this.f47428b;
    }

    @Nullable
    public final String getDbTemplateStyle() {
        return this.f47429c;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_immersion_sku_subscribe_unlock;
    }

    @Nullable
    public final a getMListener() {
        return this.f47439m;
    }

    public final void setMListener(@Nullable a aVar) {
        this.f47439m = aVar;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        ImageView imageView;
        BaseTextView baseTextView;
        Intrinsics.checkNotNullParameter(context, "context");
        setBackgroundColor(ContextCompat.getColor(context, R$color.color_immersion_activity_bg_unlock_view));
        View findViewById = findViewById(R$id.normal_unlock_layout);
        this.f47431e = findViewById;
        if (findViewById != null) {
            findViewById.setOnClickListener(new c());
        }
        View findViewById2 = findViewById(R$id.ad_unlock_layout);
        this.f47432f = findViewById2;
        BaseTextView baseTextView2 = null;
        if (findViewById2 != null) {
            imageView = (ImageView) findViewById2.findViewById(R$id.watch_ad_iv);
        } else {
            imageView = null;
        }
        this.f47433g = imageView;
        View view = this.f47432f;
        if (view != null) {
            baseTextView = (BaseTextView) view.findViewById(R$id.title_tv);
        } else {
            baseTextView = null;
        }
        this.f47434h = baseTextView;
        View view2 = this.f47432f;
        if (view2 != null) {
            baseTextView2 = (BaseTextView) view2.findViewById(R$id.content_tv);
        }
        this.f47435i = baseTextView2;
        View findViewById3 = findViewById(R$id.subscribe_unlock_layout);
        this.f47436j = findViewById3;
        if (findViewById3 != null) {
            findViewById3.setOnClickListener(new d());
        }
    }

    public final void z(@Nullable String str, @NotNull UnlockEpisodeAdMethod method, @Nullable BaseEpisode baseEpisode) {
        Intrinsics.checkNotNullParameter(method, "method");
        this.f47437k = str;
        this.f47438l = baseEpisode;
        View view = this.f47432f;
        if (view != null) {
            if (method.enable()) {
                BaseTextView baseTextView = this.f47435i;
                if (baseTextView != null) {
                    baseTextView.setText(view.getContext().getString(R$string.pure_paying_user_ad_retention_dialog_fragment_unlocked_today, String.valueOf(method.getTotalWatchAdNum() - method.getCanWatchAdNum()), String.valueOf(method.getTotalWatchAdNum())));
                }
                view.setOnClickListener(new b());
                view.setVisibility(0);
                return;
            }
            view.setVisibility(8);
        }
    }

    @Override // pj.a
    public void release() {
    }
}
