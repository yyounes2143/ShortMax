package com.startshorts.androidplayer.ui.fragment.unlock;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import androidx.lifecycle.ViewModelProvider;
import au.l;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.eventbus.EpisodeListUnlockedEvent;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.unlock.UnlockEpisodeAdMethod;
import com.startshorts.androidplayer.databinding.DialogFragmentAdRetentionBinding;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.purchase.Ad2PayPresent;
import com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment;
import com.startshorts.androidplayer.ui.fragment.unlock.AdRetentionDialogFragment;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
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
import kotlin.text.StringsKt;
import ms.i;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.d;
/* compiled from: AdRetentionDialogFragment.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AdRetentionDialogFragment extends BaseDialogFragment<DialogFragmentAdRetentionBinding> {
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    public static final a f46915n = new a(null);

    /* renamed from: i  reason: collision with root package name */
    private boolean f46916i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private UnlockEpisodeAdMethod f46917j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private BaseEpisode f46918k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private String f46919l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private final i f46920m = kotlin.c.b(new Function0() { // from class: zi.i
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            UnlockViewModel K;
            K = AdRetentionDialogFragment.K(AdRetentionDialogFragment.this);
            return K;
        }
    });

    /* compiled from: AdRetentionDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: AdRetentionDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            AdRetentionDialogFragment.this.dismiss();
        }
    }

    /* compiled from: AdRetentionDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            AdRetentionDialogFragment.this.P();
        }
    }

    private final UnlockViewModel I() {
        return (UnlockViewModel) this.f46920m.getValue();
    }

    private final void J() {
        UnlockEpisodeAdMethod unlockEpisodeAdMethod = this.f46917j;
        if (unlockEpisodeAdMethod == null) {
            return;
        }
        m().f38796a.setOnClickListener(new b());
        m().f38802g.setText(String.valueOf(unlockEpisodeAdMethod.getTotalWatchAdNum() - unlockEpisodeAdMethod.getCanWatchAdNum()));
        BaseTextView baseTextView = m().f38799d;
        StringBuilder sb2 = new StringBuilder();
        sb2.append('/');
        sb2.append(unlockEpisodeAdMethod.getTotalWatchAdNum());
        baseTextView.setText(sb2.toString());
        BaseTextView baseTextView2 = m().f38800e;
        String string = getString(R$string.ad_retention_dialog_fragment_unlocked_today);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        baseTextView2.setText(StringsKt.v1(string).toString());
        m().f38801f.setOnClickListener(new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UnlockViewModel K(AdRetentionDialogFragment adRetentionDialogFragment) {
        return (UnlockViewModel) new ViewModelProvider(adRetentionDialogFragment).get(UnlockViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void P() {
        EventManager eventManager = EventManager.f42463a;
        EventManager.s0(eventManager, "ad_retention_click", null, 0L, 6, null);
        Bundle C = eventManager.C(this.f46918k);
        C.putString("ad_active", "ad_retention");
        C.putString("type", "1");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "watch_ad_click", C, 0L, 4, null);
        AdManager.f41600a.p0(this.f46919l, getActivity(), "ad_retention", this.f46918k, new Function1() { // from class: zi.j
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit Q;
                Q = AdRetentionDialogFragment.Q(AdRetentionDialogFragment.this, ((Boolean) obj).booleanValue());
                return Q;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Q(AdRetentionDialogFragment adRetentionDialogFragment, boolean z10) {
        if (z10) {
            Ad2PayPresent.f42733a.x();
            adRetentionDialogFragment.E(0.0f);
            adRetentionDialogFragment.I().j0(new e.l(adRetentionDialogFragment.getContext(), adRetentionDialogFragment.f46916i, null, 4, null));
        }
        return Unit.f60915a;
    }

    public final void L(boolean z10) {
        this.f46916i = z10;
    }

    public final void M(@Nullable BaseEpisode baseEpisode) {
        this.f46918k = baseEpisode;
    }

    public final void N(@Nullable String str) {
        this.f46919l = str;
    }

    public final void O(@Nullable UnlockEpisodeAdMethod unlockEpisodeAdMethod) {
        this.f46917j = unlockEpisodeAdMethod;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int j() {
        return -1;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int k() {
        return R$layout.dialog_fragment_ad_retention;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public boolean n() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    @NotNull
    public String o() {
        return "AdRetentionDialogFragment";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NotNull DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        super.onDismiss(dialog);
        EventManager eventManager = EventManager.f42463a;
        eventManager.a1("SubsExpansionDialog", null, this.f46918k, ud.a.f68411a.p(), false);
        EventManager.s0(eventManager, "ad_retention_close", null, 0L, 6, null);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        if (this.f46917j != null && this.f46918k != null) {
            I().j0(new e.d(this.f46918k));
            Dialog dialog = getDialog();
            if (dialog != null) {
                dialog.setCanceledOnTouchOutside(false);
            }
            J();
            EventManager eventManager = EventManager.f42463a;
            eventManager.a1("SubsExpansionDialog", null, this.f46918k, ud.a.f68411a.p(), false);
            EventManager.s0(eventManager, "ad_retention_show", null, 0L, 6, null);
            return;
        }
        g("dismiss for invalid arguments -> mMethod(" + this.f46917j + ") mEpisode(" + this.f46918k + ')');
        dismiss();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int p() {
        return DeviceUtil.f48146a.G() - (z.f51786a.p() * 2);
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void receiveEpisodeListUnlockedEvent(@NotNull EpisodeListUnlockedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        q("receive EpisodeListUnlockedEvent -> unlockType(" + event.getUnlockType() + ") userRecharged(" + event.getUserRecharged() + ") episodeId(" + event.getFirstUnlockedEpisodeId() + ')');
        BaseEpisode baseEpisode = this.f46918k;
        if (baseEpisode != null && baseEpisode.getId() == event.getFirstUnlockedEpisodeId()) {
            dismiss();
        }
    }
}
