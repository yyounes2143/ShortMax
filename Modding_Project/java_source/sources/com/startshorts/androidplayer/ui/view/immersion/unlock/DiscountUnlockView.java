package com.startshorts.androidplayer.ui.view.immersion.unlock;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.CountDownTimer;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import au.l;
import com.google.android.material.timepicker.TimeModel;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.eventbus.RefreshShortDiscountEvent;
import com.startshorts.androidplayer.bean.eventbus.ShortDiscountUnLockEvent;
import com.startshorts.androidplayer.bean.shorts.ShortDiscountSku;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.tencent.mmkv.MMKV;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscountUnlockView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class DiscountUnlockView extends BaseConstraintLayout implements pj.a {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final ShortDiscountSku f47391b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private View f47392c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private View f47393d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private CountDownTimer f47394e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private a f47395f;

    /* compiled from: DiscountUnlockView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface a {
        void a();

        void b();

        void c();
    }

    /* compiled from: DiscountUnlockView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends yd.d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            a mCallBack = DiscountUnlockView.this.getMCallBack();
            if (mCallBack != null) {
                mCallBack.b();
            }
        }
    }

    /* compiled from: DiscountUnlockView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(1500L);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            a mCallBack = DiscountUnlockView.this.getMCallBack();
            if (mCallBack != null) {
                mCallBack.a();
            }
        }
    }

    /* compiled from: DiscountUnlockView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends CountDownTimer {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f47398a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ DiscountUnlockView f47399b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(long j10, View view, DiscountUnlockView discountUnlockView) {
            super(j10, 1000L);
            this.f47398a = view;
            this.f47399b = discountUnlockView;
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            DiscountUnlockView.A(0L, this.f47398a);
            this.f47399b.f47394e = null;
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j10) {
            DiscountUnlockView.A(j10, this.f47398a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscountUnlockView(@NotNull Context context, @Nullable ShortDiscountSku shortDiscountSku) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47391b = shortDiscountSku;
        this.f47393d = findViewById(R$id.discount_unlock_layout);
        x();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(long j10, View view) {
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

    private final void B() {
        CountDownTimer countDownTimer = this.f47394e;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.f47394e = null;
    }

    @SuppressLint({"SetTextI18n"})
    private final void x() {
        ShortDiscountSku shortDiscountSku = this.f47391b;
        if (shortDiscountSku != null) {
            View view = this.f47393d;
            if (view != null) {
                view.setOnClickListener(new b());
            }
            BaseTextView baseTextView = (BaseTextView) findViewById(R$id.title_tv);
            if (baseTextView != null) {
                String priceText = shortDiscountSku.getPriceText();
                if (priceText == null || priceText.length() == 0) {
                    priceText = "$ " + shortDiscountSku.getRecharge();
                }
                baseTextView.setText(baseTextView.getContext().getString(R$string.immersion_activity_purchase_all_episode) + '\n' + priceText);
            }
            z(shortDiscountSku, this);
        }
    }

    private final void y() {
        View view = this.f47392c;
        if (view != null) {
            view.setOnClickListener(new c());
        }
    }

    private final void z(ShortDiscountSku shortDiscountSku, View view) {
        long validStartTime = shortDiscountSku.getValidStartTime();
        long validEndTime = shortDiscountSku.getValidEndTime();
        DeviceUtil deviceUtil = DeviceUtil.f48146a;
        if (deviceUtil.K() >= validStartTime && deviceUtil.K() <= validEndTime) {
            long K = validEndTime - deviceUtil.K();
            CountDownTimer countDownTimer = this.f47394e;
            if (countDownTimer != null) {
                countDownTimer.cancel();
            }
            this.f47394e = null;
            if (K > 1000) {
                A(K, view);
                d dVar = new d(K, view, this);
                this.f47394e = dVar;
                dVar.start();
                return;
            }
            A(0L, view);
            return;
        }
        A(0L, view);
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_immersion_discount_unlock;
    }

    @Nullable
    public final a getMCallBack() {
        return this.f47395f;
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
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void receiveShortDiscountUnLockEvent(@NotNull ShortDiscountUnLockEvent event) {
        a aVar;
        Intrinsics.checkNotNullParameter(event, "event");
        ShortDiscountSku shortDiscountSku = this.f47391b;
        if (shortDiscountSku != null && shortDiscountSku.getShortPlayId() == event.getShortsId() && (aVar = this.f47395f) != null) {
            aVar.c();
        }
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void receiverRefreshShortDiscountEvent(@NotNull RefreshShortDiscountEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ShortDiscountSku shortDiscountSku = this.f47391b;
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

    @Override // pj.a
    public void release() {
        B();
    }

    public final void setMCallBack(@Nullable a aVar) {
        this.f47395f = aVar;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        setBackgroundColor(ContextCompat.getColor(context, R$color.color_immersion_activity_bg_unlock_view));
        this.f47392c = findViewById(R$id.normal_unlock_layout);
        y();
    }
}
