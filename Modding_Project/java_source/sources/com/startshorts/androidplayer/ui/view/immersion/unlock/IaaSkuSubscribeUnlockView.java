package com.startshorts.androidplayer.ui.view.immersion.unlock;

import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.hades.aar.activity.IDActivity;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.immersion.unlock.IaaSkuSubscribeUnlockView;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ve.h;
import yd.d;
/* compiled from: IaaSkuSubscribeUnlockView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class IaaSkuSubscribeUnlockView extends BaseConstraintLayout implements pj.a {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final BaseActivity f47400b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final String f47401c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final Boolean f47402d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private View f47403e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private View f47404f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private BaseTextView f47405g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private String f47406h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private BaseEpisode f47407i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private a f47408j;

    /* compiled from: IaaSkuSubscribeUnlockView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface a {
        void a();

        void b();
    }

    /* compiled from: IaaSkuSubscribeUnlockView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            IaaSkuSubscribeUnlockView.this.A();
            IaaSkuSubscribeUnlockView.this.B();
        }
    }

    /* compiled from: IaaSkuSubscribeUnlockView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends d {
        c() {
            super(1500L);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            a mListener = IaaSkuSubscribeUnlockView.this.getMListener();
            if (mListener != null) {
                mListener.a();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IaaSkuSubscribeUnlockView(@NotNull BaseActivity context, @Nullable String str, @Nullable Boolean bool) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47400b = context;
        this.f47401c = str;
        this.f47402d = bool;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A() {
        EventManager.s0(EventManager.f42463a, "watch_ads_to_unlock_click", y(), 0L, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B() {
        IDActivity iDActivity;
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(this.f47407i);
        C.putString("ad_active", "unlock_select_iaa");
        C.putString("type", "1");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "watch_ad_click", C, 0L, 4, null);
        AdManager adManager = AdManager.f41600a;
        String str = this.f47406h;
        WeakReference<IDActivity> d10 = aa.a.f321a.d();
        if (d10 != null) {
            iDActivity = d10.get();
        } else {
            iDActivity = null;
        }
        adManager.p0(str, iDActivity, "unlock_select_iaa", this.f47407i, new Function1() { // from class: pj.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit C2;
                C2 = IaaSkuSubscribeUnlockView.C(IaaSkuSubscribeUnlockView.this, ((Boolean) obj).booleanValue());
                return C2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit C(IaaSkuSubscribeUnlockView iaaSkuSubscribeUnlockView, boolean z10) {
        a aVar;
        if (z10 && (aVar = iaaSkuSubscribeUnlockView.f47408j) != null) {
            aVar.b();
        }
        return Unit.f60915a;
    }

    private final Bundle y() {
        Bundle bundle = new Bundle();
        String str = this.f47401c;
        if (str != null && str.length() != 0) {
            bundle.putString(TtmlNode.TAG_STYLE, this.f47401c);
        }
        if (Intrinsics.areEqual(this.f47402d, Boolean.TRUE)) {
            bundle.putString("task", "task_center");
        } else {
            bundle.putString("style_id", h.f68906a.m());
        }
        return bundle;
    }

    @Override // android.view.View
    @NotNull
    public final BaseActivity getContext() {
        return this.f47400b;
    }

    @Nullable
    public final String getDbTemplateStyle() {
        return this.f47401c;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_immersion_sku_subscribe_unlock_iaa;
    }

    @Nullable
    public final a getMListener() {
        return this.f47408j;
    }

    public final void setMListener(@Nullable a aVar) {
        this.f47408j = aVar;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        BaseTextView baseTextView;
        Intrinsics.checkNotNullParameter(context, "context");
        setBackgroundColor(ContextCompat.getColor(context, R$color.color_immersion_activity_bg_unlock_view));
        View findViewById = findViewById(R$id.normal_unlock_layout);
        this.f47403e = findViewById;
        if (findViewById != null) {
            findViewById.setOnClickListener(new c());
        }
        View findViewById2 = findViewById(R$id.ad_unlock_layout);
        this.f47404f = findViewById2;
        if (findViewById2 != null) {
            baseTextView = (BaseTextView) findViewById2.findViewById(R$id.content_tv);
        } else {
            baseTextView = null;
        }
        this.f47405g = baseTextView;
    }

    public final void z(@Nullable String str, @Nullable BaseEpisode baseEpisode) {
        this.f47406h = str;
        this.f47407i = baseEpisode;
        BaseTextView baseTextView = this.f47405g;
        if (baseTextView != null) {
            baseTextView.setText(this.f47400b.getString(R$string.iaa_watch_ad_unlock_dialog_btn_subtitle));
        }
        View view = this.f47404f;
        if (view != null) {
            view.setOnClickListener(new b());
        }
    }

    @Override // pj.a
    public void release() {
    }
}
