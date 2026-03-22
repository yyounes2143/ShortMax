package com.huawei.hms.common;

import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.os.Bundle;
import com.huawei.hms.common.internal.Preconditions;
/* loaded from: classes5.dex */
public class ErrDlgFragmentForSupport extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private Dialog f21944a = null;

    /* renamed from: b  reason: collision with root package name */
    private DialogInterface.OnCancelListener f21945b = null;

    public static ErrDlgFragmentForSupport newInstance(Dialog dialog) {
        return newInstance(dialog, null);
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f21945b;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        if (this.f21944a == null) {
            setShowsDialog(false);
        }
        return this.f21944a;
    }

    @Override // android.app.DialogFragment
    public void show(FragmentManager fragmentManager, String str) {
        Preconditions.checkNotNull(fragmentManager, "FragmentManager cannot be null!");
        super.show(fragmentManager, str);
    }

    public static ErrDlgFragmentForSupport newInstance(Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        Preconditions.checkNotNull(dialog, "Dialog cannot be null!");
        ErrDlgFragmentForSupport errDlgFragmentForSupport = new ErrDlgFragmentForSupport();
        errDlgFragmentForSupport.f21944a = dialog;
        dialog.setOnCancelListener(null);
        errDlgFragmentForSupport.f21944a.setOnDismissListener(null);
        errDlgFragmentForSupport.f21945b = onCancelListener;
        return errDlgFragmentForSupport;
    }
}
