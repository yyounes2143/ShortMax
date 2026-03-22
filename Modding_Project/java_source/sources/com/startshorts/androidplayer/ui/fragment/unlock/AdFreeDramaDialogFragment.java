package com.startshorts.androidplayer.ui.fragment.unlock;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateDecelerateInterpolator;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.databinding.DialogAdFreeDramaBinding;
import com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment;
import com.startshorts.androidplayer.ui.fragment.unlock.AdFreeDramaDialogFragment;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.z;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdFreeDramaDialogFragment.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AdFreeDramaDialogFragment extends BaseDialogFragment<DialogAdFreeDramaBinding> {
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    public static final a f46907n = new a(null);
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private Integer f46908i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private Integer f46909j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final Handler f46910k = new Handler(Looper.getMainLooper());
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private final Runnable f46911l = new Runnable() { // from class: zi.f
        @Override // java.lang.Runnable
        public final void run() {
            AdFreeDramaDialogFragment.L(AdFreeDramaDialogFragment.this);
        }
    };
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private final Runnable f46912m = new Runnable() { // from class: zi.g
        @Override // java.lang.Runnable
        public final void run() {
            AdFreeDramaDialogFragment.K(AdFreeDramaDialogFragment.this);
        }
    };

    /* compiled from: AdFreeDramaDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: AdFreeDramaDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f46913a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ AdFreeDramaDialogFragment f46914b;

        b(View view, AdFreeDramaDialogFragment adFreeDramaDialogFragment) {
            this.f46913a = view;
            this.f46914b = adFreeDramaDialogFragment;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            this.f46913a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            this.f46914b.O();
        }
    }

    private final void J() {
        ConstraintLayout constraintLayout = m().f38620b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K(AdFreeDramaDialogFragment adFreeDramaDialogFragment) {
        adFreeDramaDialogFragment.M();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L(AdFreeDramaDialogFragment adFreeDramaDialogFragment) {
        adFreeDramaDialogFragment.dismiss();
    }

    private final void M() {
        final ConstraintLayout dialogContainer = m().f38620b;
        Intrinsics.checkNotNullExpressionValue(dialogContainer, "dialogContainer");
        dialogContainer.post(new Runnable() { // from class: zi.h
            @Override // java.lang.Runnable
            public final void run() {
                AdFreeDramaDialogFragment.N(AdFreeDramaDialogFragment.this, dialogContainer);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N(AdFreeDramaDialogFragment adFreeDramaDialogFragment, ConstraintLayout constraintLayout) {
        DisplayMetrics displayMetrics = adFreeDramaDialogFragment.getResources().getDisplayMetrics();
        int i10 = displayMetrics.widthPixels;
        Integer num = adFreeDramaDialogFragment.f46908i;
        Intrinsics.checkNotNull(num);
        int intValue = num.intValue() - (i10 / 2);
        Integer num2 = adFreeDramaDialogFragment.f46909j;
        Intrinsics.checkNotNull(num2);
        int intValue2 = num2.intValue();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(constraintLayout, "scaleX", 1.0f, 0.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(constraintLayout, "scaleY", 1.0f, 0.0f);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(constraintLayout, "translationX", 0.0f, intValue);
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(constraintLayout, "translationY", 0.0f, intValue2 - (displayMetrics.heightPixels / 2));
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofFloat, ofFloat2, ofFloat3, ofFloat4);
        animatorSet.setDuration(1000L);
        animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        animatorSet.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void O() {
        this.f46910k.postDelayed(this.f46912m, 3000L);
        this.f46910k.postDelayed(this.f46911l, 4000L);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int j() {
        return -1;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int k() {
        return R$layout.dialog_ad_free_drama;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    @NotNull
    public String o() {
        return "AdFreeDramaDialogFragment";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NotNull DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        super.onDismiss(dialog);
        this.f46910k.removeCallbacks(this.f46911l);
        this.f46910k.removeCallbacks(this.f46912m);
        m().f38620b.clearAnimation();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        if (this.f46908i != null && this.f46909j != null) {
            Dialog dialog = getDialog();
            if (dialog != null) {
                dialog.setCanceledOnTouchOutside(false);
            }
            J();
            view.getViewTreeObserver().addOnGlobalLayoutListener(new b(view, this));
            return;
        }
        dismiss();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int p() {
        return DeviceUtil.f48146a.G() - (z.f51786a.p() * 2);
    }
}
