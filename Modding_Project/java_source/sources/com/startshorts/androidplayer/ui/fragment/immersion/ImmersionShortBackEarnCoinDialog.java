package com.startshorts.androidplayer.ui.fragment.immersion;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.util.TypedValue;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.databinding.DialogFragmentImmersionBackShortsEarnCoinBinding;
import com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImmersionShortBackEarnCoinDialog.kt */
@Metadata
@SourceDebugExtension({"SMAP\nImmersionShortBackEarnCoinDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionShortBackEarnCoinDialog.kt\ncom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,140:1\n1317#2,2:141\n*S KotlinDebug\n*F\n+ 1 ImmersionShortBackEarnCoinDialog.kt\ncom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog\n*L\n89#1:141,2\n*E\n"})
/* loaded from: classes7.dex */
public final class ImmersionShortBackEarnCoinDialog extends BaseDialogFragment<DialogFragmentImmersionBackShortsEarnCoinBinding> {
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public static final b f46183l = new b(null);
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private a f46184i;

    /* renamed from: j  reason: collision with root package name */
    private int f46185j;

    /* renamed from: k  reason: collision with root package name */
    private final int f46186k = R$layout.dialog_fragment_immersion_back_shorts_earn_coin;

    /* compiled from: ImmersionShortBackEarnCoinDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface a {
        void a();

        void onClose();
    }

    /* compiled from: ImmersionShortBackEarnCoinDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ImmersionShortBackEarnCoinDialog a(@NotNull a listener) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            ImmersionShortBackEarnCoinDialog immersionShortBackEarnCoinDialog = new ImmersionShortBackEarnCoinDialog();
            immersionShortBackEarnCoinDialog.P(listener);
            return immersionShortBackEarnCoinDialog;
        }

        private b() {
        }
    }

    private final void J() {
        Window window;
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            window.getDecorView().setPadding(0, 0, 0, 0);
            WindowManager.LayoutParams attributes = window.getAttributes();
            if (attributes != null) {
                attributes.width = -1;
            }
            WindowManager.LayoutParams attributes2 = window.getAttributes();
            if (attributes2 != null) {
                attributes2.height = -2;
            }
            window.getDecorView().setBackgroundColor(0);
        }
    }

    @SuppressLint({"ResourceType"})
    private final void K() {
        m().f38856b.setOnClickListener(new View.OnClickListener() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.e0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ImmersionShortBackEarnCoinDialog.L(ImmersionShortBackEarnCoinDialog.this, view);
            }
        });
        m().f38855a.setOnClickListener(new View.OnClickListener() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.f0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ImmersionShortBackEarnCoinDialog.M(ImmersionShortBackEarnCoinDialog.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L(ImmersionShortBackEarnCoinDialog immersionShortBackEarnCoinDialog, View view) {
        immersionShortBackEarnCoinDialog.dismiss();
        a aVar = immersionShortBackEarnCoinDialog.f46184i;
        if (aVar != null) {
            aVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M(ImmersionShortBackEarnCoinDialog immersionShortBackEarnCoinDialog, View view) {
        immersionShortBackEarnCoinDialog.dismiss();
        a aVar = immersionShortBackEarnCoinDialog.f46184i;
        if (aVar != null) {
            aVar.onClose();
        }
    }

    private final void N() {
        CoroutineUtil.k(CoroutineUtil.f48072a, null, "queryQueryTodayBonusTotal", false, new ImmersionShortBackEarnCoinDialog$loadTodayAllBonus$1(this, null), new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.d0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit O;
                O = ImmersionShortBackEarnCoinDialog.O((String) obj);
                return O;
            }
        }, 5, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit O(String str) {
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void R() {
        BaseTextView baseTextView = m().f38858d;
        if (this.f46185j == 0) {
            baseTextView.setText(getString(R$string.immersion_retention_earn_bonus_default));
            return;
        }
        baseTextView.setVisibility(0);
        baseTextView.setText(String.valueOf(this.f46185j));
        String string = getString(R$string.immersion_retention_earn_bonus, String.valueOf(this.f46185j));
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string);
        for (MatchResult matchResult : Regex.h(new Regex("\\d+"), string, 0, 2, null)) {
            int c10 = matchResult.d().c();
            int d10 = matchResult.d().d() + 1;
            spannableStringBuilder.setSpan(new ForegroundColorSpan(requireContext().getColor(R$color.color_immersion_short_back_earn_coin_dialog_text)), c10, d10, 33);
            spannableStringBuilder.setSpan(new AbsoluteSizeSpan(S(13), true), c10, d10, 33);
        }
        m().f38858d.setText(spannableStringBuilder);
    }

    private final int S(int i10) {
        return (int) TypedValue.applyDimension(2, i10, requireContext().getResources().getDisplayMetrics());
    }

    public final void P(@Nullable a aVar) {
        this.f46184i = aVar;
    }

    public final void Q(int i10) {
        this.f46185j = i10;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int k() {
        return this.f46186k;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    @NotNull
    public String o() {
        return "ImmersionBackShortsFragment";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        setCancelable(false);
        J();
        N();
        K();
    }
}
