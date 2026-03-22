package com.startshorts.androidplayer.ui.fragment.unlock;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import androidx.lifecycle.ViewModelProvider;
import au.l;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.eventbus.EpisodeListUnlockedEvent;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.unlock.UnlockEpisodeAdMethod;
import com.startshorts.androidplayer.databinding.DialogFragmentPurePayingUserAdRetentionDbBinding;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.purchase.Ad2PayPresent;
import com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment;
import com.startshorts.androidplayer.ui.fragment.unlock.PurePayingUserAdRetentionDBDialogFragment;
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
/* compiled from: PurePayingUserAdRetentionDBDialogFragment.kt */
@Metadata
/* loaded from: classes7.dex */
public final class PurePayingUserAdRetentionDBDialogFragment extends BaseDialogFragment<DialogFragmentPurePayingUserAdRetentionDbBinding> {
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    public static final a f46923p = new a(null);

    /* renamed from: i  reason: collision with root package name */
    private boolean f46924i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private UnlockEpisodeAdMethod f46925j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private BaseEpisode f46926k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private String f46927l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private final i f46928m = kotlin.c.b(new Function0() { // from class: zi.k
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            UnlockViewModel K;
            K = PurePayingUserAdRetentionDBDialogFragment.K(PurePayingUserAdRetentionDBDialogFragment.this);
            return K;
        }
    });

    /* renamed from: n  reason: collision with root package name */
    private boolean f46929n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private b f46930o;

    /* compiled from: PurePayingUserAdRetentionDBDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: PurePayingUserAdRetentionDBDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
        void a(boolean z10, @Nullable UnlockEpisodeAdMethod unlockEpisodeAdMethod, boolean z11);
    }

    /* compiled from: PurePayingUserAdRetentionDBDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            PurePayingUserAdRetentionDBDialogFragment.this.dismiss();
        }
    }

    /* compiled from: PurePayingUserAdRetentionDBDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            PurePayingUserAdRetentionDBDialogFragment.this.Q();
        }
    }

    private final UnlockViewModel I() {
        return (UnlockViewModel) this.f46928m.getValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c5, code lost:
        if (r0 == null) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void J() {
        /*
            r5 = this;
            androidx.databinding.ViewDataBinding r0 = r5.m()
            com.startshorts.androidplayer.databinding.DialogFragmentPurePayingUserAdRetentionDbBinding r0 = (com.startshorts.androidplayer.databinding.DialogFragmentPurePayingUserAdRetentionDbBinding) r0
            android.widget.ImageView r0 = r0.f38989a
            com.startshorts.androidplayer.ui.fragment.unlock.PurePayingUserAdRetentionDBDialogFragment$c r1 = new com.startshorts.androidplayer.ui.fragment.unlock.PurePayingUserAdRetentionDBDialogFragment$c
            r1.<init>()
            r0.setOnClickListener(r1)
            com.startshorts.androidplayer.bean.shorts.BaseEpisode r0 = r5.f46926k
            r1 = 0
            if (r0 == 0) goto L1a
            java.lang.String r0 = r0.getCoverId()
            goto L1b
        L1a:
            r0 = r1
        L1b:
            if (r0 == 0) goto L23
            int r2 = r0.length()
            if (r2 != 0) goto L3a
        L23:
            com.startshorts.androidplayer.repo.immersion.ImmersionRepo r0 = com.startshorts.androidplayer.repo.immersion.ImmersionRepo.f44129a
            com.startshorts.androidplayer.bean.shorts.BaseEpisode r2 = r5.f46926k
            if (r2 == 0) goto L2e
            int r2 = r2.getShortPlayId()
            goto L2f
        L2e:
            r2 = -1
        L2f:
            com.startshorts.androidplayer.bean.shorts.ShortsDetail r0 = r0.m(r2)
            if (r0 == 0) goto L39
            java.lang.String r1 = r0.getPicUrl()
        L39:
            r0 = r1
        L3a:
            kk.f r1 = kk.f.f60747a
            androidx.databinding.ViewDataBinding r2 = r5.m()
            com.startshorts.androidplayer.databinding.DialogFragmentPurePayingUserAdRetentionDbBinding r2 = (com.startshorts.androidplayer.databinding.DialogFragmentPurePayingUserAdRetentionDbBinding) r2
            com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView r2 = r2.f38991c
            com.startshorts.androidplayer.bean.fresco.FrescoConfig r3 = new com.startshorts.androidplayer.bean.fresco.FrescoConfig
            r3.<init>()
            r3.setUrl(r0)
            id.c r0 = id.c.f53397a
            int r4 = r0.b()
            r3.setOssWidth(r4)
            int r0 = r0.a()
            r3.setOssHeight(r0)
            r0 = 1
            r3.setCornerTransform(r0)
            r4 = 1101004800(0x41a00000, float:20.0)
            float r4 = jk.g.b(r4)
            r3.setCornerRadius(r4)
            int r4 = com.startshorts.androidplayer.R$drawable.ic_cover_placeholder_no_corner
            r3.setPlaceholderResId(r4)
            kotlin.Unit r4 = kotlin.Unit.f60915a
            r1.A(r2, r3)
            androidx.databinding.ViewDataBinding r1 = r5.m()
            com.startshorts.androidplayer.databinding.DialogFragmentPurePayingUserAdRetentionDbBinding r1 = (com.startshorts.androidplayer.databinding.DialogFragmentPurePayingUserAdRetentionDbBinding) r1
            com.startshorts.androidplayer.ui.view.base.BaseTextView r1 = r1.f38990b
            com.startshorts.androidplayer.bean.shorts.BaseEpisode r2 = r5.f46926k
            if (r2 == 0) goto L97
            boolean r2 = r2.isIaaUserEpisode()
            if (r2 != r0) goto L97
            androidx.databinding.ViewDataBinding r0 = r5.m()
            com.startshorts.androidplayer.databinding.DialogFragmentPurePayingUserAdRetentionDbBinding r0 = (com.startshorts.androidplayer.databinding.DialogFragmentPurePayingUserAdRetentionDbBinding) r0
            com.startshorts.androidplayer.ui.view.base.BaseTextView r0 = r0.f38990b
            jk.b0.l(r0)
            int r0 = com.startshorts.androidplayer.R$string.iaa_watch_ad_unlock_dialog_btn_subtitle
            java.lang.String r0 = r5.getString(r0)
            goto Ld4
        L97:
            com.startshorts.androidplayer.bean.unlock.UnlockEpisodeAdMethod r0 = r5.f46925j
            if (r0 == 0) goto Lc7
            androidx.databinding.ViewDataBinding r2 = r5.m()
            com.startshorts.androidplayer.databinding.DialogFragmentPurePayingUserAdRetentionDbBinding r2 = (com.startshorts.androidplayer.databinding.DialogFragmentPurePayingUserAdRetentionDbBinding) r2
            com.startshorts.androidplayer.ui.view.base.BaseTextView r2 = r2.f38990b
            jk.b0.l(r2)
            int r2 = com.startshorts.androidplayer.R$string.pure_paying_user_ad_retention_dialog_fragment_unlocked_today
            int r3 = r0.getTotalWatchAdNum()
            int r4 = r0.getCanWatchAdNum()
            int r3 = r3 - r4
            java.lang.String r3 = java.lang.String.valueOf(r3)
            int r0 = r0.getTotalWatchAdNum()
            java.lang.String r0 = java.lang.String.valueOf(r0)
            java.lang.Object[] r0 = new java.lang.Object[]{r3, r0}
            java.lang.String r0 = r5.getString(r2, r0)
            if (r0 != 0) goto Ld4
        Lc7:
            androidx.databinding.ViewDataBinding r0 = r5.m()
            com.startshorts.androidplayer.databinding.DialogFragmentPurePayingUserAdRetentionDbBinding r0 = (com.startshorts.androidplayer.databinding.DialogFragmentPurePayingUserAdRetentionDbBinding) r0
            com.startshorts.androidplayer.ui.view.base.BaseTextView r0 = r0.f38990b
            jk.b0.d(r0)
            java.lang.String r0 = ""
        Ld4:
            r1.setText(r0)
            androidx.databinding.ViewDataBinding r0 = r5.m()
            com.startshorts.androidplayer.databinding.DialogFragmentPurePayingUserAdRetentionDbBinding r0 = (com.startshorts.androidplayer.databinding.DialogFragmentPurePayingUserAdRetentionDbBinding) r0
            androidx.constraintlayout.widget.ConstraintLayout r0 = r0.f38993e
            com.startshorts.androidplayer.ui.fragment.unlock.PurePayingUserAdRetentionDBDialogFragment$d r1 = new com.startshorts.androidplayer.ui.fragment.unlock.PurePayingUserAdRetentionDBDialogFragment$d
            r1.<init>()
            r0.setOnClickListener(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.fragment.unlock.PurePayingUserAdRetentionDBDialogFragment.J():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UnlockViewModel K(PurePayingUserAdRetentionDBDialogFragment purePayingUserAdRetentionDBDialogFragment) {
        return (UnlockViewModel) new ViewModelProvider(purePayingUserAdRetentionDBDialogFragment).get(UnlockViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Q() {
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("scene", "db_facsimile_pay");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "ad_retention_click", bundle, 0L, 4, null);
        Bundle C = eventManager.C(this.f46926k);
        C.putString("ad_active", "new_ad_retention");
        C.putString("type", "1");
        C.putString("scene", "db_facsimile_pay");
        EventManager.s0(eventManager, "watch_ad_click", C, 0L, 4, null);
        AdManager.f41600a.p0(this.f46927l, getActivity(), "new_ad_retention", this.f46926k, new Function1() { // from class: zi.l
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit R;
                R = PurePayingUserAdRetentionDBDialogFragment.R(PurePayingUserAdRetentionDBDialogFragment.this, ((Boolean) obj).booleanValue());
                return R;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit R(PurePayingUserAdRetentionDBDialogFragment purePayingUserAdRetentionDBDialogFragment, boolean z10) {
        if (z10) {
            Ad2PayPresent.f42733a.x();
            purePayingUserAdRetentionDBDialogFragment.E(0.0f);
            purePayingUserAdRetentionDBDialogFragment.I().j0(new e.l(purePayingUserAdRetentionDBDialogFragment.getContext(), purePayingUserAdRetentionDBDialogFragment.f46924i, null, 4, null));
        }
        return Unit.f60915a;
    }

    public final void L(boolean z10) {
        this.f46924i = z10;
    }

    public final void M(@Nullable BaseEpisode baseEpisode) {
        this.f46926k = baseEpisode;
    }

    public final void N(@Nullable String str) {
        this.f46927l = str;
    }

    public final void O(@Nullable b bVar) {
        this.f46930o = bVar;
    }

    public final void P(@Nullable UnlockEpisodeAdMethod unlockEpisodeAdMethod) {
        this.f46925j = unlockEpisodeAdMethod;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int j() {
        return -1;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int k() {
        return R$layout.dialog_fragment_pure_paying_user_ad_retention_db;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public boolean n() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    @NotNull
    public String o() {
        return "PurePayingUserAdRetentionDBDialogFragment";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NotNull DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        super.onDismiss(dialog);
        EventManager eventManager = EventManager.f42463a;
        eventManager.a1("PurePayingUserAdRetentionDBDialogFragment", null, this.f46926k, ud.a.f68411a.p(), false);
        Bundle bundle = new Bundle();
        bundle.putString("scene", "db_facsimile_pay");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "ad_retention_close", bundle, 0L, 4, null);
        b bVar = this.f46930o;
        if (bVar != null) {
            bVar.a(this.f46929n, this.f46925j, this.f46924i);
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        BaseEpisode baseEpisode = this.f46926k;
        if ((baseEpisode != null && !baseEpisode.isIaaUserEpisode() && this.f46925j == null) || this.f46926k == null) {
            g("dismiss for invalid arguments -> mMethod(" + this.f46925j + ") mEpisode(" + this.f46926k + ')');
            dismiss();
            return;
        }
        I().j0(new e.d(this.f46926k));
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setCanceledOnTouchOutside(false);
        }
        J();
        EventManager eventManager = EventManager.f42463a;
        EventManager.e1(eventManager, "PurePayingUserAdRetentionDBDialogFragment", null, this.f46926k, ud.a.f68411a.p(), false, null, null, 96, null);
        Bundle bundle2 = new Bundle();
        bundle2.putString("scene", "db_facsimile_pay");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "ad_retention_show", bundle2, 0L, 4, null);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int p() {
        return -1;
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void receiveEpisodeListUnlockedEvent(@NotNull EpisodeListUnlockedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        q("receive EpisodeListUnlockedEvent -> unlockType(" + event.getUnlockType() + ") userRecharged(" + event.getUserRecharged() + ") episodeId(" + event.getFirstUnlockedEpisodeId() + ')');
        BaseEpisode baseEpisode = this.f46926k;
        if (baseEpisode != null && baseEpisode.getId() == event.getFirstUnlockedEpisodeId()) {
            this.f46929n = true;
            dismiss();
        }
    }
}
