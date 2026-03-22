package fi;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.LayoutRes;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import au.c;
import com.startshorts.androidplayer.R$style;
import com.startshorts.androidplayer.log.Logger;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BaseDialog.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class a<VDB extends ViewDataBinding> extends Dialog {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final C0744a f51698c = new C0744a(null);

    /* renamed from: a  reason: collision with root package name */
    private boolean f51699a;

    /* renamed from: b  reason: collision with root package name */
    protected VDB f51700b;

    /* compiled from: BaseDialog.kt */
    @Metadata
    /* renamed from: fi.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0744a {
        public /* synthetic */ C0744a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0744a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(@NotNull Context context) {
        super(context, R$style.BaseDialog);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void q() {
        if (!this.f51699a) {
            c("registerEventBus");
            this.f51699a = true;
            c.d().p(this);
        }
    }

    private final void t() {
        if (this.f51699a) {
            c("unregisterEventBus");
            this.f51699a = false;
            c.d().r(this);
        }
    }

    public final void c(@Nullable String str) {
        if (id.a.f53392a.c()) {
            Logger.f41511a.h(k(), str);
        }
    }

    public final void d(@NotNull String error) {
        Intrinsics.checkNotNullParameter(error, "error");
        Logger.f41511a.e(k(), error);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        try {
            super.dismiss();
        } catch (Exception e10) {
            d("dismiss exception -> " + e10.getMessage());
        }
    }

    public float e() {
        return 0.7f;
    }

    public int f() {
        return -2;
    }

    @LayoutRes
    public int g() {
        return 0;
    }

    public int h() {
        return 17;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final VDB i() {
        VDB vdb = this.f51700b;
        if (vdb != null) {
            return vdb;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mBinding");
        return null;
    }

    public boolean j() {
        return false;
    }

    @NotNull
    public String k() {
        return "BaseDialog";
    }

    @NotNull
    public final String l(int i10) {
        String string = getContext().getString(i10);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return string;
    }

    @NotNull
    public final String m(int i10, @NotNull Object... param) {
        Intrinsics.checkNotNullParameter(param, "param");
        String string = getContext().getString(i10, Arrays.copyOf(param, param.length));
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return string;
    }

    public int n() {
        return -2;
    }

    public final void o(@NotNull String info) {
        Intrinsics.checkNotNullParameter(info, "info");
        Logger.f41511a.h(k(), info);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.app.Dialog
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        s(DataBindingUtil.inflate(LayoutInflater.from(getContext()), g(), null, false));
        setContentView(i().getRoot());
        r();
        p();
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        if (j()) {
            q();
        }
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
        t();
    }

    public abstract void p();

    public void r() {
        Window window = getWindow();
        if (window != null) {
            window.setGravity(h());
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.dimAmount = e();
            attributes.width = n();
            attributes.height = f();
            window.setAttributes(attributes);
        }
    }

    protected final void s(@NotNull VDB vdb) {
        Intrinsics.checkNotNullParameter(vdb, "<set-?>");
        this.f51700b = vdb;
    }

    @Override // android.app.Dialog
    public void show() {
        try {
            super.show();
        } catch (Exception e10) {
            d("show exception -> " + e10.getMessage());
        }
    }
}
