package com.startshorts.androidplayer.ui.fragment.purchase;

import android.app.Dialog;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.adjust.sdk.Constants;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.discount.DiscountSubscribeInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.databinding.DialogDiscountSubscribeBinding;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.discount.DiscountSubscribeManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.GradientTextView;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import java.util.Date;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscountSubscribeDialog.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDiscountSubscribeDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscountSubscribeDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,196:1\n470#2:197\n470#2:198\n470#2:199\n470#2:200\n*S KotlinDebug\n*F\n+ 1 DiscountSubscribeDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/DiscountSubscribeDialog\n*L\n80#1:197\n108#1:198\n137#1:199\n139#1:200\n*E\n"})
/* loaded from: classes7.dex */
public final class DiscountSubscribeDialog extends BaseDialogFragment<DialogDiscountSubscribeBinding> {
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    public static final a f46451n = new a(null);
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private String f46452i = "";
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private Function0<Unit> f46453j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private DiscountSubscribeInfo f46454k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private BaseEpisode f46455l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private kotlinx.coroutines.r f46456m;

    /* compiled from: DiscountSubscribeDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final DiscountSubscribeDialog a(@NotNull String from) {
            Intrinsics.checkNotNullParameter(from, "from");
            DiscountSubscribeDialog discountSubscribeDialog = new DiscountSubscribeDialog();
            Bundle bundle = new Bundle();
            bundle.putString("from", from);
            discountSubscribeDialog.setArguments(bundle);
            return discountSubscribeDialog;
        }

        private a() {
        }
    }

    /* compiled from: DiscountSubscribeDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends yd.d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            DiscountSubscribeDialog.this.dismiss();
        }
    }

    private final void J() {
        kotlinx.coroutines.r rVar = this.f46456m;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
            Unit unit = Unit.f60915a;
            Logger.f41511a.h("ReproductionSubsView", "cancelCountDownJob");
        }
        this.f46456m = null;
    }

    private final String K(SubsSku subsSku) {
        return String.valueOf(jk.h.b(jk.u.c(subsSku)));
    }

    private final void L() {
        m().f38725a.setOnClickListener(new b());
    }

    private final void M(DiscountSubscribeInfo discountSubscribeInfo) {
        String str;
        long j10;
        if (discountSubscribeInfo == null) {
            return;
        }
        GradientTextView gradientTextView = m().f38735k;
        gradientTextView.setText(discountSubscribeInfo.getDiscountTitle());
        Pair<String, String> pair = null;
        gradientTextView.setColor(new int[]{Color.parseColor("#FFDEA9"), Color.parseColor("#FF5E40"), Color.parseColor("#FF4AF3")}, (float[]) null, 0);
        SubsSku subscribeSkuResponse = discountSubscribeInfo.getSubscribeSkuResponse();
        if (subscribeSkuResponse != null) {
            final String K = K(subscribeSkuResponse);
            BaseEpisode baseEpisode = this.f46455l;
            if (baseEpisode != null) {
                str = baseEpisode.getShortPlayCode();
            } else {
                str = null;
            }
            EventManager.f42463a.p0(this.f46452i, "current_membership_upgrade", K, str, subscribeSkuResponse.getSkuId());
            DiscountSubscribeManager discountSubscribeManager = DiscountSubscribeManager.f42447a;
            discountSubscribeManager.w(TimeUtil.f48175a.f(jk.f.a(new Date())), true);
            if (subscribeSkuResponse.getDiscountTime() == null) {
                subscribeSkuResponse.setDiscountTime(Long.valueOf(DeviceUtil.f48146a.K() + ((long) Constants.THIRTY_MINUTES)));
                discountSubscribeInfo.setSubscribeSkuResponse(subscribeSkuResponse);
                Logger.f41511a.h("DiscountSubscribeDialog", "saveDiscountSubscribe time");
                discountSubscribeManager.v(discountSubscribeInfo);
            }
            GradientTextView gradientTextView2 = m().f38734j;
            String originPriceText = subscribeSkuResponse.getOriginPriceText();
            if (originPriceText != null) {
                pair = jk.v.q(originPriceText);
            }
            if (pair != null) {
                gradientTextView2.setText(pair.e());
            }
            gradientTextView2.setColor(Color.parseColor("#FFFFFF"), Color.parseColor("#FFE5C3"));
            ConstraintLayout layContent = m().f38728d;
            Intrinsics.checkNotNullExpressionValue(layContent, "layContent");
            jk.b0.c(layContent, 0L, new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.k
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit N;
                    N = DiscountSubscribeDialog.N(DiscountSubscribeDialog.this, K, (View) obj);
                    return N;
                }
            }, 1, null);
            BaseTextView tvDiscountSubs = m().f38731g;
            Intrinsics.checkNotNullExpressionValue(tvDiscountSubs, "tvDiscountSubs");
            jk.b0.c(tvDiscountSubs, 0L, new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.l
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit O;
                    O = DiscountSubscribeDialog.O(DiscountSubscribeDialog.this, K, (View) obj);
                    return O;
                }
            }, 1, null);
            GradientTextView gradientTextView3 = m().f38730f;
            gradientTextView3.setText(String.valueOf(K));
            gradientTextView3.setColor(Color.parseColor("#FFFFFF"), Color.parseColor("#FFE5C3"));
            m().f38733i.setColor(Color.parseColor("#FFFFFF"), Color.parseColor("#FFE5C3"));
            Long discountTime = subscribeSkuResponse.getDiscountTime();
            if (discountTime != null) {
                j10 = discountTime.longValue();
            } else {
                j10 = 0;
            }
            long K2 = (j10 - DeviceUtil.f48146a.K()) / 1000;
            if (K2 <= 0) {
                dismiss();
                return;
            }
            J();
            this.f46456m = CoroutineUtil.f48072a.d((int) K2, new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.m
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit P;
                    P = DiscountSubscribeDialog.P(DiscountSubscribeDialog.this, ((Integer) obj).intValue());
                    return P;
                }
            }, new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.n
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit Q;
                    Q = DiscountSubscribeDialog.Q(DiscountSubscribeDialog.this);
                    return Q;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit N(DiscountSubscribeDialog discountSubscribeDialog, String str, View it) {
        SubsSku subsSku;
        Intrinsics.checkNotNullParameter(it, "it");
        DiscountSubscribeInfo discountSubscribeInfo = discountSubscribeDialog.f46454k;
        String str2 = null;
        if (discountSubscribeInfo != null) {
            subsSku = discountSubscribeInfo.getSubscribeSkuResponse();
        } else {
            subsSku = null;
        }
        if (subsSku != null) {
            BaseEpisode baseEpisode = discountSubscribeDialog.f46455l;
            if (baseEpisode != null) {
                str2 = baseEpisode.getShortPlayCode();
            }
            EventManager.f42463a.n0(discountSubscribeDialog.f46452i, "current_membership_upgrade", str, str2, subsSku.getSkuId(), "image");
        }
        discountSubscribeDialog.dismiss();
        Function0<Unit> function0 = discountSubscribeDialog.f46453j;
        if (function0 != null) {
            function0.invoke();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit O(DiscountSubscribeDialog discountSubscribeDialog, String str, View it) {
        SubsSku subsSku;
        Intrinsics.checkNotNullParameter(it, "it");
        DiscountSubscribeInfo discountSubscribeInfo = discountSubscribeDialog.f46454k;
        String str2 = null;
        if (discountSubscribeInfo != null) {
            subsSku = discountSubscribeInfo.getSubscribeSkuResponse();
        } else {
            subsSku = null;
        }
        if (subsSku != null) {
            BaseEpisode baseEpisode = discountSubscribeDialog.f46455l;
            if (baseEpisode != null) {
                str2 = baseEpisode.getShortPlayCode();
            }
            EventManager.f42463a.n0(discountSubscribeDialog.f46452i, "current_membership_upgrade", str, str2, subsSku.getSkuId(), "confirm_btn");
        }
        discountSubscribeDialog.dismiss();
        Function0<Unit> function0 = discountSubscribeDialog.f46453j;
        if (function0 != null) {
            function0.invoke();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit P(DiscountSubscribeDialog discountSubscribeDialog, int i10) {
        discountSubscribeDialog.m().f38732h.setText(TimeUtil.f48175a.c(i10, true));
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Q(DiscountSubscribeDialog discountSubscribeDialog) {
        discountSubscribeDialog.dismiss();
        return Unit.f60915a;
    }

    public final void R(@Nullable DiscountSubscribeInfo discountSubscribeInfo) {
        this.f46454k = discountSubscribeInfo;
    }

    public final void S(@Nullable BaseEpisode baseEpisode) {
        this.f46455l = baseEpisode;
    }

    public final void T(@Nullable Function0<Unit> function0) {
        this.f46453j = function0;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.DialogFragment
    public void dismiss() {
        SubsSku subsSku;
        DiscountSubscribeInfo discountSubscribeInfo = this.f46454k;
        String str = null;
        if (discountSubscribeInfo != null) {
            subsSku = discountSubscribeInfo.getSubscribeSkuResponse();
        } else {
            subsSku = null;
        }
        if (subsSku != null) {
            String K = K(subsSku);
            BaseEpisode baseEpisode = this.f46455l;
            if (baseEpisode != null) {
                str = baseEpisode.getShortPlayCode();
            }
            EventManager.f42463a.o0(this.f46452i, "current_membership_upgrade", K, str, subsSku.getSkuId());
        }
        super.dismiss();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public float i() {
        return 0.8f;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int k() {
        return R$layout.dialog_discount_subscribe;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    @NotNull
    public String o() {
        return "DiscountSubscribeDialog";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setCanceledOnTouchOutside(false);
        }
        Bundle arguments = getArguments();
        this.f46452i = (arguments == null || (r2 = arguments.getString("from")) == null) ? "" : "";
        L();
        M(this.f46454k);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int p() {
        int G;
        int o10;
        if (fk.v.f51778a.b()) {
            G = DeviceUtil.f48146a.G();
            o10 = fk.z.f51786a.o();
        } else {
            G = DeviceUtil.f48146a.G();
            o10 = fk.z.f51786a.o() * 2;
        }
        return G - o10;
    }
}
