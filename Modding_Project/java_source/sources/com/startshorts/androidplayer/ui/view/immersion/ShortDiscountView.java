package com.startshorts.androidplayer.ui.view.immersion;

import android.content.Context;
import android.os.CountDownTimer;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import au.l;
import com.google.android.material.timepicker.TimeModel;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.eventbus.RefreshShortDiscountEvent;
import com.startshorts.androidplayer.bean.eventbus.ShortDiscountUnLockEvent;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.shorts.ShortDiscountSku;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.ui.view.immersion.ShortDiscountView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.tencent.mmkv.MMKV;
import fk.z;
import java.util.Arrays;
import java.util.Locale;
import jk.b0;
import jk.g;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShortDiscountView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ShortDiscountView extends BaseConstraintLayout {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private ShortDiscountSku f47308b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private a f47309c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private CountDownTimer f47310d;

    /* compiled from: ShortDiscountView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface a {
        void a();

        void b();

        void c();

        void d();
    }

    /* compiled from: ShortDiscountView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends yd.d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            a mCallback = ShortDiscountView.this.getMCallback();
            if (mCallback != null) {
                mCallback.a();
            }
        }
    }

    /* compiled from: ShortDiscountView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            a mCallback = ShortDiscountView.this.getMCallback();
            if (mCallback != null) {
                mCallback.b();
            }
        }
    }

    /* compiled from: ShortDiscountView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends CountDownTimer {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f47313a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ShortDiscountView f47314b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(long j10, View view, ShortDiscountView shortDiscountView) {
            super(j10, 1000L);
            this.f47313a = view;
            this.f47314b = shortDiscountView;
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            ShortDiscountView.B(0L, this.f47313a);
            a mCallback = this.f47314b.getMCallback();
            if (mCallback != null) {
                mCallback.c();
            }
            this.f47314b.f47310d = null;
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j10) {
            ShortDiscountView.B(j10, this.f47313a);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortDiscountView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void A(ShortDiscountSku shortDiscountSku, View view) {
        long validStartTime = shortDiscountSku.getValidStartTime();
        long validEndTime = shortDiscountSku.getValidEndTime();
        DeviceUtil deviceUtil = DeviceUtil.f48146a;
        if (deviceUtil.K() >= validStartTime && deviceUtil.K() <= validEndTime) {
            long K = validEndTime - deviceUtil.K();
            CountDownTimer countDownTimer = this.f47310d;
            if (countDownTimer != null) {
                countDownTimer.cancel();
            }
            this.f47310d = null;
            if (K > 1000) {
                B(K, view);
                d dVar = new d(K, view, this);
                this.f47310d = dVar;
                dVar.start();
                return;
            }
            B(0L, view);
            a aVar = this.f47309c;
            if (aVar != null) {
                aVar.c();
                return;
            }
            return;
        }
        B(0L, view);
        a aVar2 = this.f47309c;
        if (aVar2 != null) {
            aVar2.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(long j10, View view) {
        long j11 = j10 / 1000;
        long j12 = (long) MMKV.ExpireInHour;
        long j13 = j11 / j12;
        long j14 = j11 % j12;
        long j15 = 60;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        Locale locale = Locale.ENGLISH;
        String format = String.format(locale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Arrays.copyOf(new Object[]{Long.valueOf(j13)}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        ((TextView) view.findViewById(R$id.hour_tv)).setText(format);
        String format2 = String.format(locale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Arrays.copyOf(new Object[]{Long.valueOf(j14 / j15)}, 1));
        Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
        ((TextView) view.findViewById(R$id.minute_tv)).setText(format2);
        String format3 = String.format(locale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Arrays.copyOf(new Object[]{Long.valueOf(j14 % j15)}, 1));
        Intrinsics.checkNotNullExpressionValue(format3, "format(...)");
        ((TextView) view.findViewById(R$id.second_tv)).setText(format3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(TextView textView) {
        textView.setSelected(true);
    }

    public final void C() {
        CountDownTimer countDownTimer = this.f47310d;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.f47310d = null;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_immersion_short_discount;
    }

    @Nullable
    public final a getMCallback() {
        return this.f47309c;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        au.c.d().p(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        au.c.d().r(this);
        C();
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void receiveShortDiscountUnLockEvent(@NotNull ShortDiscountUnLockEvent event) {
        a aVar;
        Intrinsics.checkNotNullParameter(event, "event");
        ShortDiscountSku shortDiscountSku = this.f47308b;
        if (shortDiscountSku != null && shortDiscountSku.getShortPlayId() == event.getShortsId() && (aVar = this.f47309c) != null) {
            aVar.d();
        }
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void receiverRefreshShortDiscountEvent(@NotNull RefreshShortDiscountEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ShortDiscountSku shortDiscountSku = this.f47308b;
        if (shortDiscountSku != null && shortDiscountSku.getShortPlayId() == event.getShortDiscountSku().getShortPlayId()) {
            String priceText = event.getShortDiscountSku().getPriceText();
            if (priceText == null || priceText.length() == 0) {
                priceText = "$ " + event.getShortDiscountSku().getRecharge();
            }
            TextView textView = (TextView) findViewById(R$id.discount_buy_tv);
            if (textView != null) {
                textView.setText(priceText);
            }
        }
    }

    public final void setMCallback(@Nullable a aVar) {
        this.f47309c = aVar;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public final void y(@Nullable ShortDiscountSku shortDiscountSku) {
        if (shortDiscountSku == null) {
            return;
        }
        this.f47308b = shortDiscountSku;
        ImageView imageView = (ImageView) findViewById(R$id.discount_close_iv);
        if (imageView != null) {
            b0.j(imageView, 12.0f);
            imageView.setOnClickListener(new b());
        }
        final TextView textView = (TextView) findViewById(R$id.discount_content_tv);
        if (textView != null) {
            String subscript = shortDiscountSku.getSubscript();
            if (subscript == null) {
                subscript = "";
            }
            textView.setText(subscript);
            textView.postDelayed(new Runnable() { // from class: mj.b
                @Override // java.lang.Runnable
                public final void run() {
                    ShortDiscountView.z(textView);
                }
            }, 1000L);
        }
        String priceText = shortDiscountSku.getPriceText();
        if (priceText == null || priceText.length() == 0) {
            priceText = "$ " + shortDiscountSku.getRecharge();
        }
        TextView textView2 = (TextView) findViewById(R$id.discount_buy_tv);
        if (textView2 != null) {
            textView2.setText(priceText);
        }
        FrescoConfig frescoConfig = new FrescoConfig();
        frescoConfig.setUrl(shortDiscountSku.getCoverUrl());
        frescoConfig.setOssWidth(g.a(68.0f));
        frescoConfig.setOssHeight(g.a(92.0f));
        frescoConfig.setResizeWidth(g.a(68.0f));
        frescoConfig.setResizeHeight(g.a(92.0f));
        frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
        frescoConfig.setBorderWidth(g.b(0.8f));
        frescoConfig.setBorderColor(getContext().getColor(R$color.color_immersion_short_discount_cover_border));
        frescoConfig.setCornerTransform(true);
        frescoConfig.setCornerRadius(z.f51786a.f());
        Unit unit = Unit.f60915a;
        f.f60747a.A((CustomFrescoView) findViewById(R$id.cover_iv), frescoConfig);
        TextView textView3 = (TextView) findViewById(R$id.discount_buy_tv);
        if (textView3 != null) {
            textView3.setOnClickListener(new c());
        }
        A(shortDiscountSku, this);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortDiscountView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortDiscountView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
