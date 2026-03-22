package com.startshorts.androidplayer.ui.fragment.unlock;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import androidx.lifecycle.ViewModelProvider;
import au.l;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.eventbus.EpisodeListUnlockedEvent;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.ShortsDetail;
import com.startshorts.androidplayer.bean.unlock.UnlockEpisodeAdMethod;
import com.startshorts.androidplayer.databinding.DialogFragmentPurePayingUserAdRetentionBinding;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.purchase.Ad2PayPresent;
import com.startshorts.androidplayer.repo.immersion.ImmersionRepo;
import com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment;
import com.startshorts.androidplayer.ui.fragment.unlock.PurePayingUserAdRetentionDialogFragment;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.viewmodel.immersion.UnlockViewModel;
import com.startshorts.androidplayer.viewmodel.immersion.e;
import jk.g;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PurePayingUserAdRetentionDialogFragment.kt */
@Metadata
/* loaded from: classes7.dex */
public final class PurePayingUserAdRetentionDialogFragment extends BaseDialogFragment<DialogFragmentPurePayingUserAdRetentionBinding> {
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    public static final a f46933p = new a(null);

    /* renamed from: i  reason: collision with root package name */
    private boolean f46934i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private UnlockEpisodeAdMethod f46935j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private BaseEpisode f46936k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private String f46937l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private final i f46938m = kotlin.c.b(new Function0() { // from class: zi.m
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            UnlockViewModel K;
            K = PurePayingUserAdRetentionDialogFragment.K(PurePayingUserAdRetentionDialogFragment.this);
            return K;
        }
    });

    /* renamed from: n  reason: collision with root package name */
    private boolean f46939n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private b f46940o;

    /* compiled from: PurePayingUserAdRetentionDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: PurePayingUserAdRetentionDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
        void a(boolean z10, @Nullable UnlockEpisodeAdMethod unlockEpisodeAdMethod, boolean z11);
    }

    /* compiled from: PurePayingUserAdRetentionDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            PurePayingUserAdRetentionDialogFragment.this.dismiss();
        }
    }

    /* compiled from: PurePayingUserAdRetentionDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            PurePayingUserAdRetentionDialogFragment.this.Q();
        }
    }

    private final UnlockViewModel I() {
        return (UnlockViewModel) this.f46938m.getValue();
    }

    private final void J() {
        String str;
        int i10;
        UnlockEpisodeAdMethod unlockEpisodeAdMethod = this.f46935j;
        if (unlockEpisodeAdMethod == null) {
            return;
        }
        m().f38979a.setOnClickListener(new c());
        BaseEpisode baseEpisode = this.f46936k;
        String str2 = null;
        if (baseEpisode != null) {
            str = baseEpisode.getCoverId();
        } else {
            str = null;
        }
        if (str == null || str.length() == 0) {
            ImmersionRepo immersionRepo = ImmersionRepo.f44129a;
            BaseEpisode baseEpisode2 = this.f46936k;
            if (baseEpisode2 != null) {
                i10 = baseEpisode2.getShortPlayId();
            } else {
                i10 = -1;
            }
            ShortsDetail m10 = immersionRepo.m(i10);
            if (m10 != null) {
                str2 = m10.getPicUrl();
            }
            str = str2;
        }
        f fVar = f.f60747a;
        CustomFrescoView customFrescoView = m().f38981c;
        FrescoConfig frescoConfig = new FrescoConfig();
        frescoConfig.setUrl(str);
        id.c cVar = id.c.f53397a;
        frescoConfig.setOssWidth(cVar.b());
        frescoConfig.setOssHeight(cVar.a());
        frescoConfig.setCornerTransform(true);
        frescoConfig.setCornerRadius(g.b(20.0f));
        frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder_no_corner);
        Unit unit = Unit.f60915a;
        fVar.A(customFrescoView, frescoConfig);
        m().f38980b.setText(getString(R$string.pure_paying_user_ad_retention_dialog_fragment_unlocked_today, String.valueOf(unlockEpisodeAdMethod.getTotalWatchAdNum() - unlockEpisodeAdMethod.getCanWatchAdNum()), String.valueOf(unlockEpisodeAdMethod.getTotalWatchAdNum())));
        m().f38983e.setOnClickListener(new d());
        if (CollectionsKt.t("es", DownloadCommon.DOWNLOAD_REPORT_DOWNLOAD_ERROR).contains(DeviceUtil.f48146a.e())) {
            m().f38984f.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UnlockViewModel K(PurePayingUserAdRetentionDialogFragment purePayingUserAdRetentionDialogFragment) {
        return (UnlockViewModel) new ViewModelProvider(purePayingUserAdRetentionDialogFragment).get(UnlockViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Q() {
        EventManager eventManager = EventManager.f42463a;
        EventManager.s0(eventManager, "ad_retention_click", null, 0L, 6, null);
        Bundle C = eventManager.C(this.f46936k);
        C.putString("ad_active", "new_ad_retention");
        C.putString("type", "1");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "watch_ad_click", C, 0L, 4, null);
        AdManager.f41600a.p0(this.f46937l, getActivity(), "new_ad_retention", this.f46936k, new Function1() { // from class: zi.n
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit R;
                R = PurePayingUserAdRetentionDialogFragment.R(PurePayingUserAdRetentionDialogFragment.this, ((Boolean) obj).booleanValue());
                return R;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit R(PurePayingUserAdRetentionDialogFragment purePayingUserAdRetentionDialogFragment, boolean z10) {
        if (z10) {
            Ad2PayPresent.f42733a.x();
            purePayingUserAdRetentionDialogFragment.E(0.0f);
            purePayingUserAdRetentionDialogFragment.I().j0(new e.l(purePayingUserAdRetentionDialogFragment.getContext(), purePayingUserAdRetentionDialogFragment.f46934i, null, 4, null));
        }
        return Unit.f60915a;
    }

    public final void L(boolean z10) {
        this.f46934i = z10;
    }

    public final void M(@Nullable BaseEpisode baseEpisode) {
        this.f46936k = baseEpisode;
    }

    public final void N(@Nullable String str) {
        this.f46937l = str;
    }

    public final void O(@Nullable b bVar) {
        this.f46940o = bVar;
    }

    public final void P(@Nullable UnlockEpisodeAdMethod unlockEpisodeAdMethod) {
        this.f46935j = unlockEpisodeAdMethod;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int j() {
        return -1;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int k() {
        return R$layout.dialog_fragment_pure_paying_user_ad_retention;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public boolean n() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    @NotNull
    public String o() {
        return "PurePayingUserAdRetentionDialogFragment";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NotNull DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        super.onDismiss(dialog);
        EventManager eventManager = EventManager.f42463a;
        EventManager.s0(eventManager, "ad_retention_close", null, 0L, 6, null);
        eventManager.a1("AdRetentionDialogFragment", null, this.f46936k, ud.a.f68411a.p(), false);
        b bVar = this.f46940o;
        if (bVar != null) {
            bVar.a(this.f46939n, this.f46935j, this.f46934i);
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        if (this.f46935j != null && this.f46936k != null) {
            I().j0(new e.d(this.f46936k));
            Dialog dialog = getDialog();
            if (dialog != null) {
                dialog.setCanceledOnTouchOutside(false);
            }
            J();
            EventManager eventManager = EventManager.f42463a;
            EventManager.e1(eventManager, "AdRetentionDialogFragment", null, this.f46936k, ud.a.f68411a.p(), false, null, null, 96, null);
            EventManager.s0(eventManager, "ad_retention_show", null, 0L, 6, null);
            return;
        }
        g("dismiss for invalid arguments -> mMethod(" + this.f46935j + ") mEpisode(" + this.f46936k + ')');
        dismiss();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int p() {
        return -1;
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void receiveEpisodeListUnlockedEvent(@NotNull EpisodeListUnlockedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        q("receive EpisodeListUnlockedEvent -> unlockType(" + event.getUnlockType() + ") userRecharged(" + event.getUserRecharged() + ") episodeId(" + event.getFirstUnlockedEpisodeId() + ')');
        BaseEpisode baseEpisode = this.f46936k;
        if (baseEpisode != null && baseEpisode.getId() == event.getFirstUnlockedEpisodeId()) {
            this.f46939n = true;
            dismiss();
        }
    }
}
