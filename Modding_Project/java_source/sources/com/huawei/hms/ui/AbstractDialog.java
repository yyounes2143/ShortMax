package com.huawei.hms.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.KeyEvent;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.UIUtil;
/* loaded from: classes5.dex */
public abstract class AbstractDialog {

    /* renamed from: a  reason: collision with root package name */
    private Activity f22331a;

    /* renamed from: b  reason: collision with root package name */
    private AlertDialog f22332b;

    /* renamed from: c  reason: collision with root package name */
    private Callback f22333c;

    /* loaded from: classes5.dex */
    public interface Callback {
        void onCancel(AbstractDialog abstractDialog);

        void onDoWork(AbstractDialog abstractDialog);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements DialogInterface.OnClickListener {
        a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i10) {
            AbstractDialog.this.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b implements DialogInterface.OnClickListener {
        b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i10) {
            AbstractDialog.this.cancel();
        }
    }

    /* loaded from: classes5.dex */
    class c implements DialogInterface.OnCancelListener {
        c() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            AbstractDialog.this.a();
        }
    }

    /* loaded from: classes5.dex */
    class d implements DialogInterface.OnKeyListener {
        d() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i10, KeyEvent keyEvent) {
            if (4 == i10 && keyEvent.getAction() == 1) {
                AbstractDialog.this.cancel();
                return true;
            }
            return false;
        }
    }

    protected void a() {
        Callback callback = this.f22333c;
        if (callback != null) {
            callback.onCancel(this);
        }
    }

    protected void b() {
        Callback callback = this.f22333c;
        if (callback != null) {
            callback.onDoWork(this);
        }
    }

    protected Activity c() {
        return this.f22331a;
    }

    public void cancel() {
        AlertDialog alertDialog = this.f22332b;
        if (alertDialog != null) {
            alertDialog.cancel();
        }
    }

    protected int d() {
        return UIUtil.getDialogThemeId(c());
    }

    public void dismiss() {
        AlertDialog alertDialog = this.f22332b;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
    }

    protected AlertDialog e(Activity activity) {
        AlertDialog.Builder builder = new AlertDialog.Builder(c(), d());
        String onGetTitleString = onGetTitleString(activity);
        if (onGetTitleString != null) {
            builder.setTitle(onGetTitleString);
        }
        String onGetMessageString = onGetMessageString(activity);
        if (onGetMessageString != null) {
            builder.setMessage(onGetMessageString);
        }
        String onGetPositiveButtonString = onGetPositiveButtonString(activity);
        if (onGetPositiveButtonString != null) {
            builder.setPositiveButton(onGetPositiveButtonString, new a());
        }
        String f10 = f(activity);
        if (f10 != null) {
            builder.setNegativeButton(f10, new b());
        }
        return builder.create();
    }

    protected abstract String f(Context context);

    protected abstract String onGetMessageString(Context context);

    protected abstract String onGetPositiveButtonString(Context context);

    protected abstract String onGetTitleString(Context context);

    public void setMessage(CharSequence charSequence) {
        AlertDialog alertDialog = this.f22332b;
        if (alertDialog != null) {
            alertDialog.setMessage(charSequence);
        }
    }

    public void setTitle(CharSequence charSequence) {
        AlertDialog alertDialog = this.f22332b;
        if (alertDialog != null) {
            alertDialog.setTitle(charSequence);
        }
    }

    public void show(Activity activity, Callback callback) {
        this.f22331a = activity;
        this.f22333c = callback;
        if (activity != null && !activity.isFinishing()) {
            AlertDialog e10 = e(this.f22331a);
            this.f22332b = e10;
            e10.setCanceledOnTouchOutside(false);
            this.f22332b.setOnCancelListener(new c());
            this.f22332b.setOnKeyListener(new d());
            this.f22332b.show();
            return;
        }
        HMSLog.e("AbstractDialog", "In show, The activity is null or finishing.");
    }
}
