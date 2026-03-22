package com.startshorts.androidplayer.ui.fragment.unlock;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import androidx.lifecycle.ViewModelProvider;
import au.l;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.ad.AdScene;
import com.startshorts.androidplayer.bean.eventbus.EpisodeListUnlockedEvent;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.databinding.DialogFragmentAdContinueRetentionBinding;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.immersion.feature.w;
import com.startshorts.androidplayer.manager.purchase.Ad2PayPresent;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment;
import com.startshorts.androidplayer.ui.fragment.unlock.AdContinueRetentionDialogFragment;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.viewmodel.immersion.UnlockViewModel;
import com.startshorts.androidplayer.viewmodel.immersion.e;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.d;
/* compiled from: AdContinueRetentionDialogFragment.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AdContinueRetentionDialogFragment extends BaseBottomSheetDialogFragment<DialogFragmentAdContinueRetentionBinding> {
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    public static final a f46899s = new a(null);
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private BaseEpisode f46901n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private String f46902o;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private b f46904q;

    /* renamed from: r  reason: collision with root package name */
    private int f46905r;

    /* renamed from: m  reason: collision with root package name */
    private int f46900m = -1;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private final i f46903p = kotlin.c.b(new Function0() { // from class: zi.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            UnlockViewModel J;
            J = AdContinueRetentionDialogFragment.J(AdContinueRetentionDialogFragment.this);
            return J;
        }
    });

    /* compiled from: AdContinueRetentionDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final AdContinueRetentionDialogFragment a(int i10, @Nullable BaseEpisode baseEpisode, @Nullable b bVar) {
            AdContinueRetentionDialogFragment adContinueRetentionDialogFragment = new AdContinueRetentionDialogFragment();
            adContinueRetentionDialogFragment.f46900m = i10;
            adContinueRetentionDialogFragment.f46901n = baseEpisode;
            adContinueRetentionDialogFragment.f46904q = bVar;
            return adContinueRetentionDialogFragment;
        }

        private a() {
        }
    }

    /* compiled from: AdContinueRetentionDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
        void a(int i10, boolean z10);
    }

    /* compiled from: AdContinueRetentionDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            AdContinueRetentionDialogFragment.this.L();
            AdManager.f41600a.a0(AdScene.MEDIA_VIDEO);
        }
    }

    private final UnlockViewModel I() {
        return (UnlockViewModel) this.f46903p.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UnlockViewModel J(AdContinueRetentionDialogFragment adContinueRetentionDialogFragment) {
        return (UnlockViewModel) new ViewModelProvider(adContinueRetentionDialogFragment).get(UnlockViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K(AdContinueRetentionDialogFragment adContinueRetentionDialogFragment, View view) {
        adContinueRetentionDialogFragment.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void L() {
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(this.f46901n);
        C.putString("ad_active", "continuous_ad_retention_pop");
        C.putString("type", "1");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "watch_ad_click", C, 0L, 4, null);
        AdManager.f41600a.p0(this.f46902o, getActivity(), "continuous_ad_retention_pop", this.f46901n, new Function1() { // from class: zi.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit M;
                M = AdContinueRetentionDialogFragment.M(AdContinueRetentionDialogFragment.this, ((Boolean) obj).booleanValue());
                return M;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit M(AdContinueRetentionDialogFragment adContinueRetentionDialogFragment, boolean z10) {
        if (z10 && !adContinueRetentionDialogFragment.isDetached()) {
            adContinueRetentionDialogFragment.A(0.0f);
            Ad2PayPresent.f42733a.x();
            adContinueRetentionDialogFragment.I().j0(new e.d(adContinueRetentionDialogFragment.f46901n));
            adContinueRetentionDialogFragment.I().j0(new e.l(adContinueRetentionDialogFragment.getContext(), AccountRepo.f43052a.P(), "continuous_ad_retention_pop"));
        }
        return Unit.f60915a;
    }

    private final void N() {
        Integer num;
        n().f38788l.setText(getString(R$string.ad_continue_retention_dialog_fragment_unlocked_episode, String.valueOf(this.f46900m)));
        BaseTextView baseTextView = n().f38784h;
        int i10 = R$string.ad_continue_retention_dialog_fragment_locked_episode;
        BaseEpisode baseEpisode = this.f46901n;
        if (baseEpisode != null) {
            num = Integer.valueOf(baseEpisode.getEpisodeNum());
        } else {
            num = null;
        }
        baseTextView.setText(getString(i10, String.valueOf(num)));
        EventManager eventManager = EventManager.f42463a;
        EventManager.s0(eventManager, "continuous_ad_retention_pop_show", eventManager.C(this.f46901n), 0L, 4, null);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public int m() {
        return R$layout.dialog_fragment_ad_continue_retention;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public boolean o() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NotNull DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        super.onDismiss(dialog);
        BaseEpisode baseEpisode = this.f46901n;
        if (baseEpisode == null) {
            return;
        }
        EventManager eventManager = EventManager.f42463a;
        EventManager.s0(eventManager, "continuous_ad_retention_pop_close", eventManager.C(baseEpisode), 0L, 4, null);
        b bVar = this.f46904q;
        if (bVar != null) {
            int i10 = this.f46900m;
            boolean z10 = true;
            if (this.f46905r <= 1) {
                z10 = false;
            }
            bVar.a(i10, z10);
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        if (this.f46901n == null) {
            dismiss();
            return;
        }
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setCanceledOnTouchOutside(false);
        }
        N();
        n().f38777a.setOnClickListener(new View.OnClickListener() { // from class: zi.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                AdContinueRetentionDialogFragment.K(AdContinueRetentionDialogFragment.this, view2);
            }
        });
        n().f38789m.setOnClickListener(new c());
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    @NotNull
    public String p() {
        return "AdContinueRetentionDialogFragment";
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void receiveEpisodeListUnlockedEvent(@NotNull EpisodeListUnlockedEvent event) {
        int i10;
        Intrinsics.checkNotNullParameter(event, "event");
        q("receive EpisodeListUnlockedEvent -> unlockType(" + event.getUnlockType() + ") userRecharged(" + event.getUserRecharged() + ") episodeId(" + event.getFirstUnlockedEpisodeId() + ')');
        BaseEpisode baseEpisode = this.f46901n;
        if (baseEpisode != null && baseEpisode.getId() == event.getFirstUnlockedEpisodeId()) {
            this.f46905r++;
            BaseEpisode baseEpisode2 = this.f46901n;
            if (baseEpisode2 != null) {
                i10 = baseEpisode2.getEpisodeNum();
            } else {
                i10 = -1;
            }
            this.f46900m = i10;
            if (event.getNextDrama() != null && w.f42667e.a(event.getCanWatchAd(), event.getNextDrama().isUnlockByOnlyCoins())) {
                EventManager eventManager = EventManager.f42463a;
                EventManager.s0(eventManager, "continuous_ad_retention_pop_close", eventManager.C(this.f46901n), 0L, 4, null);
                this.f46901n = event.getNextDrama();
                N();
                return;
            }
            this.f46905r++;
            dismiss();
        }
    }
}
