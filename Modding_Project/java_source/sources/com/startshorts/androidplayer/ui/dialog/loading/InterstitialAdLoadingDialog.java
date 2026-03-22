package com.startshorts.androidplayer.ui.dialog.loading;

import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentManager;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.databinding.DialogLoadingBinding;
import com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment;
import com.startshorts.androidplayer.utils.DeviceUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: InterstitialAdLoadingDialog.kt */
@Metadata
/* loaded from: classes7.dex */
public class InterstitialAdLoadingDialog extends BaseDialogFragment<DialogLoadingBinding> implements ha.a {
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public static final a f45567l = new a(null);

    /* renamed from: i  reason: collision with root package name */
    private boolean f45568i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private b f45569j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private FragmentManager f45570k;

    /* compiled from: InterstitialAdLoadingDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: InterstitialAdLoadingDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
        void b();

        void onDismiss();
    }

    public final void F(@Nullable FragmentManager fragmentManager) {
        this.f45570k = fragmentManager;
    }

    public final void G(@Nullable b bVar) {
        this.f45569j = bVar;
    }

    @Override // ha.a
    public void a() {
        if (this.f45568i) {
            this.f45568i = false;
            dismiss();
            b bVar = this.f45569j;
            if (bVar != null) {
                bVar.onDismiss();
            }
        }
    }

    @Override // ha.a
    public void b() {
        FragmentManager fragmentManager;
        if (!this.f45568i && (fragmentManager = this.f45570k) != null) {
            this.f45568i = true;
            x(fragmentManager);
            b bVar = this.f45569j;
            if (bVar != null) {
                bVar.b();
            }
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public float i() {
        return 0.0f;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int j() {
        DeviceUtil deviceUtil = DeviceUtil.f48146a;
        return deviceUtil.F() - deviceUtil.J();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int k() {
        return R$layout.dialog_interstitial_loading;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    @NotNull
    public String o() {
        return "InterstitialAdLoadingDialog";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        setCancelable(false);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int p() {
        return -1;
    }
}
