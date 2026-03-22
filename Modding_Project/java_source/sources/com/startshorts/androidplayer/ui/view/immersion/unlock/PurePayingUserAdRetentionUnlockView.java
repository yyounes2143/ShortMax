package com.startshorts.androidplayer.ui.view.immersion.unlock;

import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import com.hades.aar.activity.IDActivity;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.ss.texturerender.TextureRenderKeys;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.unlock.UnlockEpisodeAdMethod;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.purchase.Ad2PayPresent;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.immersion.unlock.PurePayingUserAdRetentionUnlockView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.lang.ref.WeakReference;
import jk.b0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PurePayingUserAdRetentionUnlockView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class PurePayingUserAdRetentionUnlockView extends BaseConstraintLayout implements pj.a {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private View f47411b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private View f47412c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private ImageView f47413d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private BaseTextView f47414e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private BaseTextView f47415f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private View f47416g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private a f47417h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private String f47418i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private BaseEpisode f47419j;

    /* compiled from: PurePayingUserAdRetentionUnlockView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface a {
        void a();

        void b();

        void c();
    }

    /* compiled from: PurePayingUserAdRetentionUnlockView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends yd.d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            BaseEpisode baseEpisode = PurePayingUserAdRetentionUnlockView.this.f47419j;
            if (baseEpisode != null) {
                PurePayingUserAdRetentionUnlockView purePayingUserAdRetentionUnlockView = PurePayingUserAdRetentionUnlockView.this;
                EventManager eventManager = EventManager.f42463a;
                Bundle C = eventManager.C(baseEpisode);
                C.putString("from", purePayingUserAdRetentionUnlockView.f47418i);
                C.putString(TextureRenderKeys.KEY_IS_ACTION, "ad_impression");
                C.putString("button_click", "watch_ad");
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "unlocked_ep_button_click", C, 0L, 4, null);
            }
            PurePayingUserAdRetentionUnlockView.this.B();
        }
    }

    /* compiled from: PurePayingUserAdRetentionUnlockView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(1500L);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            a mListener = PurePayingUserAdRetentionUnlockView.this.getMListener();
            if (mListener != null) {
                mListener.a();
            }
        }
    }

    /* compiled from: PurePayingUserAdRetentionUnlockView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(1500L);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            a mListener = PurePayingUserAdRetentionUnlockView.this.getMListener();
            if (mListener != null) {
                mListener.c();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PurePayingUserAdRetentionUnlockView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void A() {
        View view = this.f47411b;
        if (view != null) {
            view.setOnClickListener(new c());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B() {
        IDActivity iDActivity;
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(this.f47419j);
        C.putString("ad_active", "unlock_select");
        C.putString("type", "1");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "watch_ad_click", C, 0L, 4, null);
        AdManager adManager = AdManager.f41600a;
        String str = this.f47418i;
        WeakReference<IDActivity> d10 = aa.a.f321a.d();
        if (d10 != null) {
            iDActivity = d10.get();
        } else {
            iDActivity = null;
        }
        adManager.p0(str, iDActivity, "unlock_select", this.f47419j, new Function1() { // from class: pj.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit C2;
                C2 = PurePayingUserAdRetentionUnlockView.C(PurePayingUserAdRetentionUnlockView.this, ((Boolean) obj).booleanValue());
                return C2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit C(PurePayingUserAdRetentionUnlockView purePayingUserAdRetentionUnlockView, boolean z10) {
        if (z10) {
            Ad2PayPresent.f42733a.x();
            a aVar = purePayingUserAdRetentionUnlockView.f47417h;
            if (aVar != null) {
                aVar.b();
            }
        }
        return Unit.f60915a;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_immersion_pure_paying_user_ad_retention_unlock;
    }

    @Nullable
    public final a getMListener() {
        return this.f47417h;
    }

    public final void setMListener(@Nullable a aVar) {
        this.f47417h = aVar;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        ImageView imageView;
        BaseTextView baseTextView;
        Intrinsics.checkNotNullParameter(context, "context");
        setBackgroundColor(ContextCompat.getColor(context, R$color.color_immersion_activity_bg_unlock_view));
        this.f47411b = findViewById(R$id.normal_unlock_layout);
        A();
        View findViewById = findViewById(R$id.ad_unlock_layout);
        this.f47412c = findViewById;
        BaseTextView baseTextView2 = null;
        if (findViewById != null) {
            imageView = (ImageView) findViewById.findViewById(R$id.watch_ad_iv);
        } else {
            imageView = null;
        }
        this.f47413d = imageView;
        View view = this.f47412c;
        if (view != null) {
            baseTextView = (BaseTextView) view.findViewById(R$id.title_tv);
        } else {
            baseTextView = null;
        }
        this.f47414e = baseTextView;
        View view2 = this.f47412c;
        if (view2 != null) {
            baseTextView2 = (BaseTextView) view2.findViewById(R$id.content_tv);
        }
        this.f47415f = baseTextView2;
        View findViewById2 = findViewById(R$id.subscribe_unlock_layout);
        this.f47416g = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setOnClickListener(new d());
        }
    }

    public final void z(@Nullable String str, @NotNull UnlockEpisodeAdMethod method, @Nullable BaseEpisode baseEpisode) {
        ImageView imageView;
        Intrinsics.checkNotNullParameter(method, "method");
        this.f47418i = str;
        this.f47419j = baseEpisode;
        if (method.enable()) {
            View view = this.f47412c;
            if (view != null) {
                b0.l(view);
            }
            BaseTextView baseTextView = this.f47415f;
            if (baseTextView != null) {
                baseTextView.setText(getContext().getString(R$string.pure_paying_user_ad_retention_dialog_fragment_unlocked_today, String.valueOf(method.getTotalWatchAdNum() - method.getCanWatchAdNum()), String.valueOf(method.getTotalWatchAdNum())));
            }
            View view2 = this.f47412c;
            if (view2 != null) {
                view2.setOnClickListener(new b());
            }
            if (CollectionsKt.t("es", DownloadCommon.DOWNLOAD_REPORT_DOWNLOAD_ERROR).contains(DeviceUtil.f48146a.e()) && (imageView = this.f47413d) != null) {
                imageView.setVisibility(8);
                return;
            }
            return;
        }
        View view3 = this.f47412c;
        if (view3 != null) {
            b0.d(view3);
        }
    }

    @Override // pj.a
    public void release() {
    }
}
