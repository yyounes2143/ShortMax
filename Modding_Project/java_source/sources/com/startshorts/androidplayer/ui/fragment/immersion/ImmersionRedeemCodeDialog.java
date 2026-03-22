package com.startshorts.androidplayer.ui.fragment.immersion;

import android.app.Dialog;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import androidx.databinding.DataBindingUtil;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.search.RedeemCode;
import com.startshorts.androidplayer.bean.search.RedeemCodeEquity;
import com.startshorts.androidplayer.databinding.DialogFragmentImmersionRedeemCodeBinding;
import com.startshorts.androidplayer.databinding.ItemDialogFragmentEpisodeRedeemCodeEquityBinding;
import com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImmersionRedeemCodeDialog.kt */
@Metadata
@SourceDebugExtension({"SMAP\nImmersionRedeemCodeDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionRedeemCodeDialog.kt\ncom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,137:1\n1863#2,2:138\n*S KotlinDebug\n*F\n+ 1 ImmersionRedeemCodeDialog.kt\ncom/startshorts/androidplayer/ui/fragment/immersion/ImmersionRedeemCodeDialog\n*L\n61#1:138,2\n*E\n"})
/* loaded from: classes7.dex */
public final class ImmersionRedeemCodeDialog extends BaseDialogFragment<DialogFragmentImmersionRedeemCodeBinding> {
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public static final a f46177k = new a(null);

    /* renamed from: i  reason: collision with root package name */
    private RedeemCode f46178i;

    /* renamed from: j  reason: collision with root package name */
    private final int f46179j = R$layout.dialog_fragment_immersion_redeem_code;

    /* compiled from: ImmersionRedeemCodeDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ImmersionRedeemCodeDialog a(@NotNull RedeemCode redeemCode, @Nullable BaseDialogFragment.b bVar) {
            Intrinsics.checkNotNullParameter(redeemCode, "redeemCode");
            ImmersionRedeemCodeDialog immersionRedeemCodeDialog = new ImmersionRedeemCodeDialog();
            immersionRedeemCodeDialog.w(bVar);
            immersionRedeemCodeDialog.f46178i = redeemCode;
            return immersionRedeemCodeDialog;
        }

        private a() {
        }
    }

    /* compiled from: ImmersionRedeemCodeDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends yd.d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            ImmersionRedeemCodeDialog.this.dismiss();
        }
    }

    /* compiled from: ImmersionRedeemCodeDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            ImmersionRedeemCodeDialog.this.dismiss();
        }
    }

    /* compiled from: ImmersionRedeemCodeDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            ImmersionRedeemCodeDialog.this.dismiss();
        }
    }

    private final View H(RedeemCodeEquity redeemCodeEquity) {
        int i10;
        ItemDialogFragmentEpisodeRedeemCodeEquityBinding itemDialogFragmentEpisodeRedeemCodeEquityBinding = (ItemDialogFragmentEpisodeRedeemCodeEquityBinding) DataBindingUtil.inflate(LayoutInflater.from(requireActivity()), R$layout.item_dialog_fragment_episode_redeem_code_equity, null, false);
        ImageView imageView = itemDialogFragmentEpisodeRedeemCodeEquityBinding.f39910e;
        Integer type = redeemCodeEquity.getType();
        if (type != null && type.intValue() == 11) {
            i10 = R$drawable.ic_redeem_code_coin_1;
        } else {
            i10 = R$drawable.ic_redeem_code_bonus_1;
        }
        imageView.setImageResource(i10);
        BaseTextView baseTextView = itemDialogFragmentEpisodeRedeemCodeEquityBinding.f39909d;
        StringBuilder sb2 = new StringBuilder();
        sb2.append('+');
        sb2.append(redeemCodeEquity.getValue());
        baseTextView.setText(sb2.toString());
        itemDialogFragmentEpisodeRedeemCodeEquityBinding.f39908c.setText(String.valueOf(redeemCodeEquity.getText()));
        View root = itemDialogFragmentEpisodeRedeemCodeEquityBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    private final void I() {
        int a10;
        int i10;
        ImageView imageView = m().f38898b;
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        RedeemCode redeemCode = this.f46178i;
        RedeemCode redeemCode2 = null;
        if (redeemCode == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mRedeemCode");
            redeemCode = null;
        }
        if (redeemCode.getEquity().size() == 1) {
            a10 = jk.g.a(210.0f);
        } else {
            a10 = jk.g.a(260.0f);
        }
        layoutParams.height = a10;
        imageView.setLayoutParams(layoutParams);
        RedeemCode redeemCode3 = this.f46178i;
        if (redeemCode3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mRedeemCode");
            redeemCode3 = null;
        }
        for (RedeemCodeEquity redeemCodeEquity : redeemCode3.getEquity()) {
            m().f38900d.addView(H(redeemCodeEquity));
        }
        BaseTextView baseTextView = m().f38902f;
        RedeemCode redeemCode4 = this.f46178i;
        if (redeemCode4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mRedeemCode");
            redeemCode4 = null;
        }
        if (redeemCode4.getStatus() == 5) {
            i10 = R$string.redeem_code_dialog_fragment_received;
        } else {
            i10 = R$string.redeem_code_dialog_fragment_receive_benefits;
        }
        baseTextView.setText(i10);
        final ImageView imageView2 = m().f38897a;
        imageView2.post(new Runnable() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.c0
            @Override // java.lang.Runnable
            public final void run() {
                ImmersionRedeemCodeDialog.J(imageView2);
            }
        });
        imageView2.setOnClickListener(new b());
        RedeemCode redeemCode5 = this.f46178i;
        if (redeemCode5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mRedeemCode");
        } else {
            redeemCode2 = redeemCode5;
        }
        if (redeemCode2.getStatus() == 5) {
            BaseTextView baseTextView2 = m().f38902f;
            baseTextView2.setText(R$string.redeem_code_dialog_fragment_received);
            baseTextView2.setTextColor(requireActivity().getColor(R$color.color_redeem_code_dialog_fragment_disable_btn));
            baseTextView2.setBackgroundResource(R$drawable.bg_redeem_code_disable_btn_1);
            baseTextView2.setOnClickListener(new c());
            return;
        }
        BaseTextView baseTextView3 = m().f38902f;
        baseTextView3.setText(R$string.redeem_code_dialog_fragment_receive_benefits);
        baseTextView3.setTextColor(-1);
        baseTextView3.setBackgroundResource(R$drawable.bg_redeem_code_btn_1);
        baseTextView3.setOnClickListener(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J(ImageView imageView) {
        View view;
        Rect rect = new Rect();
        imageView.getHitRect(rect);
        int a10 = jk.g.a(16.0f);
        rect.left -= a10;
        rect.top -= a10;
        rect.right += a10;
        rect.bottom += a10;
        TouchDelegate touchDelegate = new TouchDelegate(rect, imageView);
        ViewParent parent = imageView.getParent();
        if (parent instanceof View) {
            view = (View) parent;
        } else {
            view = null;
        }
        if (view != null) {
            view.setTouchDelegate(touchDelegate);
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int k() {
        return this.f46179j;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    @NotNull
    public String o() {
        return "ImmersionRedeemCodeDialog";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        if (this.f46178i == null) {
            dismiss();
            return;
        }
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setCanceledOnTouchOutside(false);
        }
        I();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int p() {
        return -1;
    }
}
