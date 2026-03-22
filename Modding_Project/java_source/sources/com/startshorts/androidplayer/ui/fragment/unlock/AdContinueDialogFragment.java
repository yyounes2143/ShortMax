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
import com.startshorts.androidplayer.databinding.DialogFragmentAdContinueBinding;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.immersion.feature.w;
import com.startshorts.androidplayer.manager.purchase.Ad2PayPresent;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment;
import com.startshorts.androidplayer.ui.fragment.unlock.AdContinueDialogFragment;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.viewmodel.immersion.UnlockViewModel;
import com.startshorts.androidplayer.viewmodel.immersion.e;
import fk.z;
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
/* compiled from: AdContinueDialogFragment.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AdContinueDialogFragment extends BaseDialogFragment<DialogFragmentAdContinueBinding> {
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    public static final a f46889o = new a(null);
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private BaseEpisode f46890i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private String f46891j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private b f46892k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private final i f46893l = kotlin.c.b(new Function0() { // from class: zi.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            UnlockViewModel K;
            K = AdContinueDialogFragment.K(AdContinueDialogFragment.this);
            return K;
        }
    });

    /* renamed from: m  reason: collision with root package name */
    private boolean f46894m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private EpisodeListUnlockedEvent f46895n;

    /* compiled from: AdContinueDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: AdContinueDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
        void a(int i10, @NotNull EpisodeListUnlockedEvent episodeListUnlockedEvent);

        void b();
    }

    /* compiled from: AdContinueDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            AdContinueDialogFragment.this.dismiss();
        }
    }

    /* compiled from: AdContinueDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            AdContinueDialogFragment.this.dismiss();
        }
    }

    /* compiled from: AdContinueDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends yd.d {
        e() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            AdContinueDialogFragment.this.O();
            AdManager.f41600a.a0(AdScene.MEDIA_VIDEO);
        }
    }

    private final UnlockViewModel I() {
        return (UnlockViewModel) this.f46893l.getValue();
    }

    private final void J() {
        BaseEpisode baseEpisode = this.f46890i;
        if (baseEpisode == null) {
            return;
        }
        m().f38767b.setOnClickListener(new c());
        m().f38766a.setOnClickListener(new d());
        m().f38768c.setText(getString(R$string.ad_continue_dialog_fragment_content, String.valueOf(baseEpisode.getEpisodeNum())));
        m().f38771f.setOnClickListener(new e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UnlockViewModel K(AdContinueDialogFragment adContinueDialogFragment) {
        return (UnlockViewModel) new ViewModelProvider(adContinueDialogFragment).get(UnlockViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void O() {
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(this.f46890i);
        C.putString("ad_active", "continuous_ad_pop");
        C.putString("type", "1");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "watch_ad_click", C, 0L, 4, null);
        AdManager.f41600a.p0(this.f46891j, getActivity(), "continuous_ad_pop", this.f46890i, new Function1() { // from class: zi.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit P;
                P = AdContinueDialogFragment.P(AdContinueDialogFragment.this, ((Boolean) obj).booleanValue());
                return P;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit P(AdContinueDialogFragment adContinueDialogFragment, boolean z10) {
        if (z10) {
            adContinueDialogFragment.E(0.0f);
            Ad2PayPresent.f42733a.x();
            adContinueDialogFragment.I().j0(new e.l(adContinueDialogFragment.getContext(), AccountRepo.f43052a.P(), "continuous_ad_pop"));
        }
        return Unit.f60915a;
    }

    public final void L(@Nullable BaseEpisode baseEpisode) {
        this.f46890i = baseEpisode;
    }

    public final void M(@Nullable String str) {
        this.f46891j = str;
    }

    public final void N(@Nullable b bVar) {
        this.f46892k = bVar;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int j() {
        return -1;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int k() {
        return R$layout.dialog_fragment_ad_continue;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public boolean n() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    @NotNull
    public String o() {
        return "AdContinueDialogFragment";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NotNull DialogInterface dialog) {
        b bVar;
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        super.onDismiss(dialog);
        BaseEpisode baseEpisode = this.f46890i;
        if (baseEpisode == null) {
            return;
        }
        if (!this.f46894m) {
            b bVar2 = this.f46892k;
            if (bVar2 != null) {
                bVar2.b();
            }
        } else {
            EpisodeListUnlockedEvent episodeListUnlockedEvent = this.f46895n;
            if (episodeListUnlockedEvent != null && episodeListUnlockedEvent.getNextDrama() != null && w.f42667e.a(episodeListUnlockedEvent.getCanWatchAd(), episodeListUnlockedEvent.getNextDrama().isUnlockByOnlyCoins()) && (bVar = this.f46892k) != null) {
                bVar.a(baseEpisode.getEpisodeNum(), episodeListUnlockedEvent);
            }
        }
        EventManager eventManager = EventManager.f42463a;
        EventManager.s0(eventManager, "continuous_ad_pop_close", eventManager.C(this.f46890i), 0L, 4, null);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        if (this.f46890i == null) {
            dismiss();
            return;
        }
        I().j0(new e.d(this.f46890i));
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setCanceledOnTouchOutside(false);
        }
        J();
        EventManager eventManager = EventManager.f42463a;
        EventManager.s0(eventManager, "continuous_ad_pop_show", eventManager.C(this.f46890i), 0L, 4, null);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int p() {
        return DeviceUtil.f48146a.G() - (z.f51786a.p() * 2);
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void receiveEpisodeListUnlockedEvent(@NotNull EpisodeListUnlockedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        q("receive EpisodeListUnlockedEvent -> unlockType(" + event.getUnlockType() + ") userRecharged(" + event.getUserRecharged() + ") episodeId(" + event.getFirstUnlockedEpisodeId() + ')');
        BaseEpisode baseEpisode = this.f46890i;
        if (baseEpisode != null && baseEpisode.getId() == event.getFirstUnlockedEpisodeId()) {
            this.f46894m = true;
            this.f46895n = event;
            dismiss();
        }
    }
}
