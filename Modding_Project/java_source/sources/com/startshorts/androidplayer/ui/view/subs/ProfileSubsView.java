package com.startshorts.androidplayer.ui.view.subs;

import android.content.Context;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.GradientTextView;
import com.startshorts.androidplayer.ui.view.subs.ProfileSubsView;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import fk.u;
import jk.b0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qf.h;
import yd.d;
/* compiled from: ProfileSubsView.kt */
@Metadata
@SourceDebugExtension({"SMAP\nProfileSubsView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProfileSubsView.kt\ncom/startshorts/androidplayer/ui/view/subs/ProfileSubsView\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,335:1\n470#2:336\n470#2:337\n*S KotlinDebug\n*F\n+ 1 ProfileSubsView.kt\ncom/startshorts/androidplayer/ui/view/subs/ProfileSubsView\n*L\n209#1:336\n210#1:337\n*E\n"})
/* loaded from: classes7.dex */
public final class ProfileSubsView extends BaseConstraintLayout {
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    public static final a f47921r = new a(null);
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private BaseTextView f47922b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private BaseTextView f47923c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private GradientTextView f47924d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private ImageView f47925e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private ImageView f47926f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private View f47927g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private View f47928h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private View f47929i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private TextView f47930j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private View f47931k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private TextView f47932l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private r f47933m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private b f47934n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private SubsSku f47935o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private String f47936p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private Function0<Unit> f47937q;

    /* compiled from: ProfileSubsView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: ProfileSubsView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
        void a();
    }

    /* compiled from: ProfileSubsView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            ProfileSubsView.this.B();
            b mListener = ProfileSubsView.this.getMListener();
            if (mListener != null) {
                mListener.a();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProfileSubsView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void A() {
        b0.d(this.f47929i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B() {
        String str;
        EventManager eventManager = EventManager.f42463a;
        SubsSku subsSku = this.f47935o;
        if (subsSku != null) {
            str = subsSku.getSkuId();
        } else {
            str = null;
        }
        EventManager.e0(eventManager, "profile", "sub_portal", null, null, str, 12, null);
    }

    private final void C() {
        String str;
        EventManager eventManager = EventManager.f42463a;
        SubsSku subsSku = this.f47935o;
        if (subsSku != null) {
            str = subsSku.getSkuId();
        } else {
            str = null;
        }
        EventManager.k0(eventManager, "profile", "sub_portal", null, str, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit E(ProfileSubsView profileSubsView, int i10) {
        profileSubsView.H(TimeUtil.f48175a.c(i10, true));
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit F(ProfileSubsView profileSubsView) {
        Function0<Unit> function0 = profileSubsView.f47937q;
        if (function0 != null) {
            function0.invoke();
        }
        return Unit.f60915a;
    }

    private final void H(String str) {
        if (str.length() == 0) {
            z();
            return;
        }
        TextView textView = this.f47932l;
        if (textView != null) {
            textView.setText(str);
        }
        TextView textView2 = this.f47932l;
        if (textView2 != null) {
            b0.l(textView2);
        }
        View view = this.f47931k;
        if (view != null) {
            b0.l(view);
        }
    }

    private final void I(int i10) {
        TextView textView = this.f47930j;
        if (textView != null) {
            textView.setText(u.f51776a.e(R$string.discount_label_off, String.valueOf(i10)));
        }
        TextView textView2 = this.f47930j;
        if (textView2 != null) {
            b0.l(textView2);
        }
        View view = this.f47929i;
        if (view != null) {
            b0.l(view);
        }
    }

    private final void z() {
        b0.d(this.f47932l);
        b0.d(this.f47931k);
    }

    public final void D() {
        ViewGroup.LayoutParams layoutParams;
        String string;
        float f10;
        TextPaint paint;
        TextPaint paint2;
        long j10;
        TextPaint paint3;
        AccountRepo accountRepo = AccountRepo.f43052a;
        boolean C0 = accountRepo.C0();
        int q02 = accountRepo.q0();
        long o02 = accountRepo.o0();
        boolean z02 = accountRepo.z0();
        s("refresh -> hasSubscribed(" + z02 + ") subsType(" + q02 + ") subsEndTime(" + o02 + ')');
        BaseTextView baseTextView = this.f47923c;
        if (baseTextView != null) {
            layoutParams = baseTextView.getLayoutParams();
        } else {
            layoutParams = null;
        }
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams;
        if (!z02) {
            ImageView imageView = this.f47926f;
            if (imageView != null) {
                imageView.setVisibility(8);
            }
            BaseTextView baseTextView2 = this.f47922b;
            if (baseTextView2 != null) {
                baseTextView2.setText(getContext().getString(R$string.profile_subscription_view_default_title));
            }
            BaseTextView baseTextView3 = this.f47922b;
            if (baseTextView3 != null && (paint3 = baseTextView3.getPaint()) != null) {
                paint3.setShader(null);
            }
            BaseTextView baseTextView4 = this.f47922b;
            if (baseTextView4 != null) {
                baseTextView4.setTextColor(-1);
            }
            Drawable drawable = ContextCompat.getDrawable(getContext(), R$drawable.ic_subscribe_vip_no);
            if (drawable != null) {
                int a10 = fc.a.a(getContext(), 2.0f);
                drawable.setBounds(0, a10, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight() + a10);
                BaseTextView baseTextView5 = this.f47922b;
                if (baseTextView5 != null) {
                    baseTextView5.setCompoundDrawablesRelative(drawable, null, null, null);
                }
            }
            BaseTextView baseTextView6 = this.f47923c;
            if (baseTextView6 != null) {
                baseTextView6.setTextSize(2, 10.0f);
            }
            BaseTextView baseTextView7 = this.f47923c;
            if (baseTextView7 != null) {
                baseTextView7.setTextColor(u.f51776a.a(R$color.color_profile_fragment_subs_content));
            }
            BaseTextView baseTextView8 = this.f47923c;
            if (baseTextView8 != null) {
                baseTextView8.setText(getContext().getString(R$string.profile_subscription_desc));
            }
            layoutParams2.setMarginStart(fc.a.a(getContext(), 32.0f));
            BaseTextView baseTextView9 = this.f47923c;
            if (baseTextView9 != null) {
                baseTextView9.setLayoutParams(layoutParams2);
            }
            GradientTextView gradientTextView = this.f47924d;
            if (gradientTextView != null) {
                b0.l(gradientTextView);
                u uVar = u.f51776a;
                gradientTextView.setColor(uVar.a(R$color.color_profile_subscription_view_pay_text_start), uVar.a(R$color.color_profile_subscription_view_pay_text_end));
            }
            J(R$drawable.bg_profile_subscription_view_bottom_unsubs2);
            View view = this.f47927g;
            if (view != null) {
                view.setBackgroundResource(R$drawable.bg_profile_subscription_view2);
            }
            b0.l(this.f47928h);
        } else {
            b0.d(this.f47924d);
            if (accountRepo.G0()) {
                string = getContext().getString(R$string.profile_subscription_view_shortmax_member);
            } else if (q02 != 1) {
                if (q02 != 2) {
                    if (q02 != 4) {
                        if (q02 != 5) {
                            if (q02 != 6) {
                                if (q02 != 7) {
                                    string = getContext().getString(R$string.profile_subscription_view_unsupport_product);
                                } else {
                                    string = getContext().getString(R$string.profile_subscription_view_annual_pro_card);
                                }
                            } else {
                                string = getContext().getString(R$string.profile_subscription_view_monthly_pro_card);
                            }
                        } else if (C0) {
                            string = getContext().getString(R$string.profile_subscription_view_weekly_pro_trial_card);
                        } else {
                            string = getContext().getString(R$string.profile_subscription_view_weekly_pro_card);
                        }
                    } else {
                        string = getContext().getString(R$string.profile_subscription_view_annual_card);
                    }
                } else {
                    string = getContext().getString(R$string.profile_subscription_view_monthly_card);
                }
            } else {
                string = getContext().getString(R$string.profile_subscription_view_weekly_card);
            }
            Intrinsics.checkNotNull(string);
            ImageView imageView2 = this.f47926f;
            if (imageView2 != null) {
                imageView2.setVisibility(0);
            }
            BaseTextView baseTextView10 = this.f47922b;
            if (baseTextView10 != null && (paint2 = baseTextView10.getPaint()) != null) {
                f10 = paint2.measureText(string);
            } else {
                f10 = 0.0f;
            }
            LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, f10, 0.0f, new int[]{Color.parseColor("#CD9057"), Color.parseColor("#652100")}, (float[]) null, Shader.TileMode.CLAMP);
            BaseTextView baseTextView11 = this.f47922b;
            if (baseTextView11 != null && (paint = baseTextView11.getPaint()) != null) {
                paint.setShader(linearGradient);
            }
            BaseTextView baseTextView12 = this.f47922b;
            if (baseTextView12 != null) {
                baseTextView12.setText(string);
            }
            BaseTextView baseTextView13 = this.f47922b;
            if (baseTextView13 != null) {
                baseTextView13.invalidate();
            }
            Drawable drawable2 = ContextCompat.getDrawable(getContext(), R$drawable.ic_subscribe_vip);
            if (drawable2 != null) {
                int a11 = fc.a.a(getContext(), 2.0f);
                drawable2.setBounds(0, a11, drawable2.getIntrinsicWidth(), drawable2.getIntrinsicHeight() + a11);
                BaseTextView baseTextView14 = this.f47922b;
                if (baseTextView14 != null) {
                    baseTextView14.setCompoundDrawablesRelative(drawable2, null, null, null);
                }
            }
            layoutParams2.setMarginStart(fc.a.a(getContext(), 7.0f));
            BaseTextView baseTextView15 = this.f47923c;
            if (baseTextView15 != null) {
                baseTextView15.setLayoutParams(layoutParams2);
            }
            BaseTextView baseTextView16 = this.f47923c;
            if (baseTextView16 != null) {
                baseTextView16.setTextSize(2, 12.0f);
            }
            BaseTextView baseTextView17 = this.f47923c;
            if (baseTextView17 != null) {
                baseTextView17.setText(getContext().getString(R$string.profile_subscription_view_expire_time, TimeUtil.e(TimeUtil.f48175a, o02, DeviceUtil.f48146a.e(), null, 4, null)));
            }
            BaseTextView baseTextView18 = this.f47923c;
            if (baseTextView18 != null) {
                baseTextView18.setTextColor(u.f51776a.a(R$color.color_profile_fragment_subs_content_subs));
            }
            J(R$drawable.bg_profile_subscription_view_bottom);
            View view2 = this.f47927g;
            if (view2 != null) {
                view2.setBackgroundResource(R$drawable.bg_profile_subscription_data);
            }
            b0.d(this.f47928h);
        }
        SubsSku subsSku = this.f47935o;
        if (subsSku == null) {
            r rVar = this.f47933m;
            if (rVar != null && rVar.isActive()) {
                y();
            }
            b0.d(this.f47929i);
        } else if (subsSku != null) {
            Long discountTime = subsSku.getDiscountTime();
            if (discountTime != null) {
                j10 = discountTime.longValue();
            } else {
                j10 = 0;
            }
            long K = (j10 - DeviceUtil.f48146a.K()) / 1000;
            if (K > 0) {
                y();
                this.f47933m = CoroutineUtil.f48072a.d((int) K, new Function1() { // from class: ck.a
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        Unit E;
                        E = ProfileSubsView.E(ProfileSubsView.this, ((Integer) obj).intValue());
                        return E;
                    }
                }, new Function0() { // from class: ck.b
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit F;
                        F = ProfileSubsView.F(ProfileSubsView.this);
                        return F;
                    }
                });
            } else {
                z();
            }
            int a12 = jk.u.a(subsSku);
            boolean o10 = h.f65328a.o(subsSku);
            if (a12 > 0) {
                if (o10) {
                    z();
                }
                I(a12);
                return;
            }
            A();
        }
    }

    public final void G(@Nullable SubsSku subsSku) {
        String str;
        this.f47935o = subsSku;
        D();
        String str2 = this.f47936p;
        SubsSku subsSku2 = this.f47935o;
        String str3 = null;
        if (subsSku2 != null) {
            str = subsSku2.getSkuId();
        } else {
            str = null;
        }
        if (!Intrinsics.areEqual(str2, str)) {
            C();
            SubsSku subsSku3 = this.f47935o;
            if (subsSku3 != null) {
                str3 = subsSku3.getSkuId();
            }
            this.f47936p = str3;
        }
    }

    public final void J(int i10) {
        ImageView imageView = this.f47925e;
        if (imageView != null) {
            imageView.setImageResource(i10);
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_profile_subs;
    }

    @Nullable
    public final b getMListener() {
        return this.f47934n;
    }

    @Nullable
    public final Function0<Unit> getMOnDiscountCountdownFinish() {
        return this.f47937q;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    @NotNull
    public String getSTag() {
        return "ProfileSubsView";
    }

    public final void setMListener(@Nullable b bVar) {
        this.f47934n = bVar;
    }

    public final void setMOnDiscountCountdownFinish(@Nullable Function0<Unit> function0) {
        this.f47937q = function0;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47922b = (BaseTextView) findViewById(R$id.title_tv);
        this.f47923c = (BaseTextView) findViewById(R$id.content_tv);
        this.f47924d = (GradientTextView) findViewById(R$id.goBtn);
        this.f47925e = (ImageView) findViewById(R$id.bottom_iv);
        this.f47926f = (ImageView) findViewById(R$id.ivDate);
        this.f47927g = findViewById(R$id.viewBg);
        this.f47928h = findViewById(R$id.unsubscribe_membership_benefits);
        this.f47929i = findViewById(R$id.discountRootView);
        this.f47930j = (TextView) findViewById(R$id.discountTv);
        this.f47931k = findViewById(R$id.discountDriver);
        this.f47932l = (TextView) findViewById(R$id.discountCountdownTv);
        getRootView().setOnClickListener(new c());
    }

    public final void y() {
        r rVar = this.f47933m;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        this.f47933m = null;
    }
}
