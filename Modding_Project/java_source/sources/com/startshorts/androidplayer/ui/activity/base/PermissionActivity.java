package com.startshorts.androidplayer.ui.activity.base;

import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.bean.permission.CheckPermissionResult;
import com.startshorts.androidplayer.utils.permission.PermissionCallbacks;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import mk.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PermissionActivity.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPermissionActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PermissionActivity.kt\ncom/startshorts/androidplayer/ui/activity/base/PermissionActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,106:1\n1863#2,2:107\n*S KotlinDebug\n*F\n+ 1 PermissionActivity.kt\ncom/startshorts/androidplayer/ui/activity/base/PermissionActivity\n*L\n56#1:107,2\n*E\n"})
/* loaded from: classes7.dex */
public class PermissionActivity<VDB extends ViewDataBinding> extends BaseVDBActivity<VDB> implements PermissionCallbacks {
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    public static final a f45017o = new a(null);
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private mk.b f45018l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private String[] f45019m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f45020n;

    /* compiled from: PermissionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: PermissionActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends mk.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PermissionActivity<VDB> f45021a;

        b(PermissionActivity<VDB> permissionActivity) {
            this.f45021a = permissionActivity;
        }

        @Override // mk.b
        public void a(List<String> permissions) {
            Intrinsics.checkNotNullParameter(permissions, "permissions");
            super.a(permissions);
            mk.b bVar = ((PermissionActivity) this.f45021a).f45018l;
            if (bVar != null) {
                bVar.a(permissions);
            }
        }

        @Override // mk.b
        public void b(boolean z10, List<String> permissions) {
            Intrinsics.checkNotNullParameter(permissions, "permissions");
            mk.b bVar = ((PermissionActivity) this.f45021a).f45018l;
            if (bVar != null) {
                bVar.b(z10, permissions);
            }
        }
    }

    public static /* synthetic */ void J(PermissionActivity permissionActivity, String[] strArr, boolean z10, int i10, mk.b bVar, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 2) != 0) {
                z10 = true;
            }
            if ((i11 & 4) != 0) {
                i10 = -1;
            }
            permissionActivity.I(strArr, z10, i10, bVar);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: checkPermissions");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void I(@NotNull String[] permissions, boolean z10, int i10, @Nullable mk.b bVar) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        ArrayList arrayList = new ArrayList();
        for (CheckPermissionResult checkPermissionResult : c.f62521a.b(this, permissions)) {
            if (!checkPermissionResult.getGranted()) {
                arrayList.add(checkPermissionResult.getPermission());
            }
        }
        if (arrayList.isEmpty()) {
            if (bVar != null) {
                bVar.b(false, n.x1(permissions));
            }
        } else if (z10) {
            this.f45019m = permissions;
            this.f45018l = bVar;
            this.f45020n = c.f62521a.i(this, i10, permissions);
            if (bVar != null) {
                bVar.c();
            }
        }
    }

    @Override // com.startshorts.androidplayer.utils.permission.PermissionCallbacks
    public void c(int i10, @NotNull List<String> permissions) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        if (!permissions.isEmpty()) {
            s("onPermissionsDenied -> requestCode(" + i10 + ") permissions(" + permissions + ')');
            mk.b bVar = this.f45018l;
            if (bVar != null) {
                bVar.a(permissions);
            }
        }
    }

    @Override // com.startshorts.androidplayer.utils.permission.PermissionCallbacks
    public void d(int i10, @NotNull List<String> permissions) {
        mk.b bVar;
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        if (!permissions.isEmpty()) {
            s("onPermissionsGranted -> requestCode(" + i10 + ") permissions(" + permissions + ')');
            String[] strArr = this.f45019m;
            if (strArr != null && strArr.length == permissions.size() && (bVar = this.f45018l) != null) {
                bVar.b(true, permissions);
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i10, @NotNull String[] permissions, @NotNull int[] grantResults) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(grantResults, "grantResults");
        super.onRequestPermissionsResult(i10, permissions, grantResults);
        c.f62521a.e(i10, permissions, grantResults, this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f45020n) {
            this.f45020n = false;
            String[] strArr = this.f45019m;
            if (strArr != null) {
                J(this, strArr, false, 0, new b(this), 4, null);
            }
        }
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    @NotNull
    public String r() {
        return "PermissionActivity";
    }
}
