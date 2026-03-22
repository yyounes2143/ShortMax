package com.startshorts.androidplayer.ui.fragment.reward;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.style.ForegroundColorSpan;
import android.text.style.MetricAffectingSpan;
import android.text.style.RelativeSizeSpan;
import android.util.TypedValue;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import androidx.core.content.ContextCompat;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.checkin.NewbieWatchBonus;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.shorts.BaseShorts;
import com.startshorts.androidplayer.bean.shorts.DailyWatchPopResult;
import com.startshorts.androidplayer.databinding.DialogFragmentAccumulativeaWatchBinding;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment;
import com.startshorts.androidplayer.ui.fragment.reward.AccumulativeaWatchDialog;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.ui.view.reward.DisplayRewardForAccumulativeaView;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import jk.g;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AccumulativeaWatchDialog.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAccumulativeaWatchDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccumulativeaWatchDialog.kt\ncom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,246:1\n1010#2,2:247\n1872#2,3:249\n1317#3,2:252\n*S KotlinDebug\n*F\n+ 1 AccumulativeaWatchDialog.kt\ncom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog\n*L\n117#1:247,2\n126#1:249,3\n136#1:252,2\n*E\n"})
/* loaded from: classes7.dex */
public final class AccumulativeaWatchDialog extends BaseDialogFragment<DialogFragmentAccumulativeaWatchBinding> {
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public static final a f46661m = new a(null);

    /* renamed from: i  reason: collision with root package name */
    public b f46662i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private AnimatorSet f46663j;

    /* renamed from: k  reason: collision with root package name */
    public DailyWatchPopResult f46664k;

    /* renamed from: l  reason: collision with root package name */
    private final int f46665l = R$layout.dialog_fragment_accumulativea_watch;

    /* compiled from: AccumulativeaWatchDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final AccumulativeaWatchDialog a(@NotNull DailyWatchPopResult data, @NotNull b listener) {
            Intrinsics.checkNotNullParameter(data, "data");
            Intrinsics.checkNotNullParameter(listener, "listener");
            Logger.f41511a.h("AccumulativeaWatchDialog", "AccumulativeaWatchDialog show");
            AccumulativeaWatchDialog accumulativeaWatchDialog = new AccumulativeaWatchDialog();
            accumulativeaWatchDialog.S(listener);
            accumulativeaWatchDialog.R(data);
            return accumulativeaWatchDialog;
        }

        private a() {
        }
    }

    /* compiled from: AccumulativeaWatchDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
        void a(@NotNull BaseShorts baseShorts);

        void onClose();
    }

    /* compiled from: AccumulativeaWatchDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends MetricAffectingSpan {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Typeface f46666a;

        c(Typeface typeface) {
            this.f46666a = typeface;
        }

        @Override // android.text.style.CharacterStyle
        public void updateDrawState(TextPaint paint) {
            Intrinsics.checkNotNullParameter(paint, "paint");
            paint.setTypeface(this.f46666a);
        }

        @Override // android.text.style.MetricAffectingSpan
        public void updateMeasureState(TextPaint paint) {
            Intrinsics.checkNotNullParameter(paint, "paint");
            paint.setTypeface(this.f46666a);
        }
    }

    /* compiled from: Comparisons.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 AccumulativeaWatchDialog.kt\ncom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog\n*L\n1#1,102:1\n117#2:103\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class d<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return ps.a.a(Integer.valueOf(((NewbieWatchBonus) t10).getPayTime()), Integer.valueOf(((NewbieWatchBonus) t11).getPayTime()));
        }
    }

    private final String I(int i10) {
        if (i10 < 60) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(i10);
            sb2.append('s');
            return sb2.toString();
        }
        return (i10 / 60) + "min";
    }

    private final void J(int i10) {
        String string = getString(R$string.accumulativea_watch_tip_get_coin, String.valueOf(i10));
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string);
        for (MatchResult matchResult : Regex.h(new Regex("\\d+"), string, 0, 2, null)) {
            int c10 = matchResult.d().c();
            int d10 = matchResult.d().d() + 1;
            Typeface g10 = yf.a.f70794a.g();
            if (g10 == null) {
                g10 = Typeface.DEFAULT_BOLD;
            }
            if (Build.VERSION.SDK_INT >= 28) {
                spannableStringBuilder.setSpan(vi.a.a(g10), c10, d10, 33);
            } else {
                spannableStringBuilder.setSpan(new c(g10), c10, d10, 33);
            }
            spannableStringBuilder.setSpan(new ForegroundColorSpan(requireContext().getColor(R$color.colorPrimary)), c10, d10, 33);
            spannableStringBuilder.setSpan(new RelativeSizeSpan(1.3f), c10, d10, 33);
        }
        m().f38755g.setText(spannableStringBuilder);
    }

    private final void K() {
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

    private final void N() {
        String str;
        f fVar = f.f60747a;
        CustomFrescoView customFrescoView = m().f38753e;
        FrescoConfig frescoConfig = new FrescoConfig();
        BaseShorts shortPlay = L().getShortPlay();
        if (shortPlay != null) {
            str = shortPlay.getPicUrl();
        } else {
            str = null;
        }
        frescoConfig.setUrl(str);
        frescoConfig.setPlaceholderResId(R$drawable.ic_banner_placeholder);
        frescoConfig.setCornerTransform(true);
        frescoConfig.setCornerRadius(g.a(8.0f));
        Unit unit = Unit.f60915a;
        fVar.A(customFrescoView, frescoConfig);
        m().f38749a.setOnClickListener(new View.OnClickListener() { // from class: vi.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AccumulativeaWatchDialog.O(AccumulativeaWatchDialog.this, view);
            }
        });
        m().f38751c.setOnClickListener(new View.OnClickListener() { // from class: vi.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AccumulativeaWatchDialog.P(AccumulativeaWatchDialog.this, view);
            }
        });
        FrameLayout frameLayout = m().f38752d;
        int applyDimension = (int) TypedValue.applyDimension(1, 21.0f, frameLayout.getResources().getDisplayMetrics());
        BaseTextView baseTextView = m().f38754f;
        Drawable drawable = ContextCompat.getDrawable(requireContext(), R$drawable.ic_discover_play);
        if (drawable != null) {
            drawable.setBounds(0, 0, applyDimension, applyDimension);
        }
        baseTextView.setCompoundDrawablesRelative(drawable, null, null, null);
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: vi.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AccumulativeaWatchDialog.Q(AccumulativeaWatchDialog.this, view);
            }
        });
        Intrinsics.checkNotNull(frameLayout);
        U(frameLayout);
        T();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O(AccumulativeaWatchDialog accumulativeaWatchDialog, View view) {
        accumulativeaWatchDialog.dismiss();
        accumulativeaWatchDialog.M().onClose();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P(AccumulativeaWatchDialog accumulativeaWatchDialog, View view) {
        accumulativeaWatchDialog.dismiss();
        b M = accumulativeaWatchDialog.M();
        BaseShorts shortPlay = accumulativeaWatchDialog.L().getShortPlay();
        Intrinsics.checkNotNull(shortPlay);
        M.a(shortPlay);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q(AccumulativeaWatchDialog accumulativeaWatchDialog, View view) {
        accumulativeaWatchDialog.dismiss();
        b M = accumulativeaWatchDialog.M();
        BaseShorts shortPlay = accumulativeaWatchDialog.L().getShortPlay();
        Intrinsics.checkNotNull(shortPlay);
        M.a(shortPlay);
    }

    private final void T() {
        if (L().getList().isEmpty()) {
            return;
        }
        List<NewbieWatchBonus> list = L().getList();
        if (list.size() > 1) {
            CollectionsKt.D(list, new d());
        }
        J(L().getList().get(4).getCumsumBonus());
        ArrayList arrayList = new ArrayList();
        arrayList.add(m().f38757i);
        arrayList.add(m().f38758j);
        arrayList.add(m().f38759k);
        arrayList.add(m().f38760l);
        arrayList.add(m().f38761m);
        int i10 = 0;
        for (Object obj : arrayList) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.y();
            }
            NewbieWatchBonus newbieWatchBonus = L().getList().get(i10);
            ((DisplayRewardForAccumulativeaView) obj).setData(I(newbieWatchBonus.getPayTime()), String.valueOf(newbieWatchBonus.getCumsumBonus()));
            i10 = i11;
        }
    }

    private final void U(View view) {
        V(view);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, View.SCALE_X, 0.95f, 1.05f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, View.SCALE_Y, 0.95f, 1.05f);
        ofFloat.setRepeatCount(-1);
        ofFloat.setRepeatMode(2);
        ofFloat2.setRepeatCount(-1);
        ofFloat2.setRepeatMode(2);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofFloat, ofFloat2);
        animatorSet.setDuration(600L);
        animatorSet.start();
        this.f46663j = animatorSet;
    }

    @NotNull
    public final DailyWatchPopResult L() {
        DailyWatchPopResult dailyWatchPopResult = this.f46664k;
        if (dailyWatchPopResult != null) {
            return dailyWatchPopResult;
        }
        Intrinsics.throwUninitializedPropertyAccessException("data");
        return null;
    }

    @NotNull
    public final b M() {
        b bVar = this.f46662i;
        if (bVar != null) {
            return bVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException(ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        return null;
    }

    public final void R(@NotNull DailyWatchPopResult dailyWatchPopResult) {
        Intrinsics.checkNotNullParameter(dailyWatchPopResult, "<set-?>");
        this.f46664k = dailyWatchPopResult;
    }

    public final void S(@NotNull b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<set-?>");
        this.f46662i = bVar;
    }

    public final void V(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        AnimatorSet animatorSet = this.f46663j;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.f46663j = null;
        view.clearAnimation();
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        view.setAlpha(1.0f);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int k() {
        return this.f46665l;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    @NotNull
    public String o() {
        return "AccumulativeaWatchDialog";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NotNull DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        FrameLayout layoutPlay = m().f38752d;
        Intrinsics.checkNotNullExpressionValue(layoutPlay, "layoutPlay");
        V(layoutPlay);
        super.onDismiss(dialog);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        FrameLayout layoutPlay = m().f38752d;
        Intrinsics.checkNotNullExpressionValue(layoutPlay, "layoutPlay");
        V(layoutPlay);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        FrameLayout layoutPlay = m().f38752d;
        Intrinsics.checkNotNullExpressionValue(layoutPlay, "layoutPlay");
        U(layoutPlay);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        setCancelable(true);
        K();
        N();
    }
}
