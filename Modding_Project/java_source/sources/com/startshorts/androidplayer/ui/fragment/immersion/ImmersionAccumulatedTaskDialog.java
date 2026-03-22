package com.startshorts.androidplayer.ui.fragment.immersion;

import android.os.Bundle;
import android.view.View;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.databinding.DialogFragmentImmersionAccumulatedTaskBinding;
import com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImmersionAccumulatedTaskDialog.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ImmersionAccumulatedTaskDialog extends BottomSheetPageStateFragment<DialogFragmentImmersionAccumulatedTaskBinding> {
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    public static final a f46093o = new a(null);

    /* compiled from: ImmersionAccumulatedTaskDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public float l() {
        return 0.0f;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public int m() {
        return R$layout.dialog_fragment_immersion_accumulated_task;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    @NotNull
    public String p() {
        return "ImmersionAccumulatedTaskDialog";
    }
}
