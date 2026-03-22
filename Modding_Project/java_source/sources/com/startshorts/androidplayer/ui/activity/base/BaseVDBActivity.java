package com.startshorts.androidplayer.ui.activity.base;

import android.os.Bundle;
import android.view.View;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ud.a;
/* compiled from: BaseVDBActivity.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBaseVDBActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseVDBActivity.kt\ncom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,54:1\n157#2,8:55\n*S KotlinDebug\n*F\n+ 1 BaseVDBActivity.kt\ncom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity\n*L\n37#1:55,8\n*E\n"})
/* loaded from: classes7.dex */
public class BaseVDBActivity<VDB extends ViewDataBinding> extends BaseActivity {

    /* renamed from: k  reason: collision with root package name */
    protected VDB f45005k;

    private final void C() {
        View root = E().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        WindowCompat.setDecorFitsSystemWindows(getWindow(), false);
        ViewCompat.setOnApplyWindowInsetsListener(root, new OnApplyWindowInsetsListener() { // from class: th.b
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                WindowInsetsCompat D;
                D = BaseVDBActivity.D(view, windowInsetsCompat);
                return D;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WindowInsetsCompat D(View view, WindowInsetsCompat insets) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(insets, "insets");
        Insets insets2 = insets.getInsets(WindowInsetsCompat.Type.systemBars());
        Intrinsics.checkNotNullExpressionValue(insets2, "getInsets(...)");
        a aVar = a.f68411a;
        aVar.O0(insets2.top);
        int i10 = insets2.bottom;
        aVar.N0(i10);
        view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), i10);
        return insets;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final VDB E() {
        VDB vdb = this.f45005k;
        if (vdb != null) {
            return vdb;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mBinding");
        return null;
    }

    public final boolean F() {
        if (this.f45005k != null) {
            return true;
        }
        return false;
    }

    protected final void G(@NotNull VDB vdb) {
        Intrinsics.checkNotNullParameter(vdb, "<set-?>");
        this.f45005k = vdb;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity, com.hades.aar.activity.IDActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (o() != 0) {
            G(DataBindingUtil.setContentView(this, o()));
            C();
        }
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public void v() {
        super.v();
        if (F()) {
            E().unbind();
        }
    }
}
