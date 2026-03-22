package com.huawei.hms.common;

import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.os.Bundle;
import com.huawei.hms.common.internal.Preconditions;
/* loaded from: classes5.dex */
public class ErrorDialogFragment extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private Dialog f21946a = null;

    /* renamed from: b  reason: collision with root package name */
    private DialogInterface.OnCancelListener f21947b = null;

    public static ErrorDialogFragment newInstance(Dialog dialog) {
        return newInstance(dialog, null);
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f21947b;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        if (this.f21946a == null) {
            setShowsDialog(false);
        }
        return this.f21946a;
    }

    @Override // android.app.DialogFragment
    public void show(FragmentManager fragmentManager, String str) {
        Preconditions.checkNotNull(fragmentManager, "FragmentManager cannot be null!");
        super.show(fragmentManager, str);
    }

    public static ErrorDialogFragment newInstance(Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        Preconditions.checkNotNull(dialog, "Dialog cannot be null!");
        ErrorDialogFragment errorDialogFragment = new ErrorDialogFragment();
        errorDialogFragment.f21946a = dialog;
        dialog.setOnCancelListener(null);
        errorDialogFragment.f21946a.setOnDismissListener(null);
        if (onCancelListener != null) {
            errorDialogFragment.f21947b = onCancelListener;
        }
        return errorDialogFragment;
    }
}
