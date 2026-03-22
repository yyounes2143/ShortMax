package com.startshorts.androidplayer.ui.fragment.base;

import android.content.Context;
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
/* compiled from: PermisstionFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPermisstionFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PermisstionFragment.kt\ncom/startshorts/androidplayer/ui/fragment/base/PermissionFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,106:1\n1863#2,2:107\n*S KotlinDebug\n*F\n+ 1 PermisstionFragment.kt\ncom/startshorts/androidplayer/ui/fragment/base/PermissionFragment\n*L\n56#1:107,2\n*E\n"})
/* loaded from: classes7.dex */
public class PermissionFragment<VDB extends ViewDataBinding> extends BaseVDBFragment<VDB> implements PermissionCallbacks {
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public static final a f45765l = new a(null);
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private mk.b f45766i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private String[] f45767j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f45768k;

    /* compiled from: PermisstionFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: PermisstionFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends mk.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PermissionFragment<VDB> f45769a;

        b(PermissionFragment<VDB> permissionFragment) {
            this.f45769a = permissionFragment;
        }

        @Override // mk.b
        public void a(List<String> permissions) {
            Intrinsics.checkNotNullParameter(permissions, "permissions");
            super.a(permissions);
            mk.b bVar = ((PermissionFragment) this.f45769a).f45766i;
            if (bVar != null) {
                bVar.a(permissions);
            }
        }

        @Override // mk.b
        public void b(boolean z10, List<String> permissions) {
            Intrinsics.checkNotNullParameter(permissions, "permissions");
            mk.b bVar = ((PermissionFragment) this.f45769a).f45766i;
            if (bVar != null) {
                bVar.b(z10, permissions);
            }
        }
    }

    public static /* synthetic */ void F(PermissionFragment permissionFragment, String[] strArr, boolean z10, int i10, mk.b bVar, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 2) != 0) {
                z10 = true;
            }
            if ((i11 & 4) != 0) {
                i10 = -1;
            }
            permissionFragment.E(strArr, z10, i10, bVar);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: checkPermissions");
    }

    public final void E(@NotNull String[] permissions, boolean z10, int i10, @Nullable mk.b bVar) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        ArrayList arrayList = new ArrayList();
        c cVar = c.f62521a;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        for (CheckPermissionResult checkPermissionResult : cVar.b(requireContext, permissions)) {
            if (!checkPermissionResult.getGranted()) {
                arrayList.add(checkPermissionResult.getPermission());
            }
        }
        if (arrayList.isEmpty()) {
            if (bVar != null) {
                bVar.b(false, n.x1(permissions));
            }
        } else if (z10) {
            this.f45767j = permissions;
            this.f45766i = bVar;
            this.f45768k = c.f62521a.i(this, i10, permissions);
            if (bVar != null) {
                bVar.c();
            }
        }
    }

    @Override // com.startshorts.androidplayer.utils.permission.PermissionCallbacks
    public void c(int i10, @NotNull List<String> permissions) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        if (!permissions.isEmpty()) {
            r("onPermissionsDenied -> requestCode(" + i10 + ") permissions(" + permissions + ')');
            mk.b bVar = this.f45766i;
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
            r("onPermissionsGranted -> requestCode(" + i10 + ") permissions(" + permissions + ')');
            String[] strArr = this.f45767j;
            if (strArr != null && strArr.length == permissions.size() && (bVar = this.f45766i) != null) {
                bVar.b(true, permissions);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i10, @NotNull String[] permissions, @NotNull int[] grantResults) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(grantResults, "grantResults");
        super.onRequestPermissionsResult(i10, permissions, grantResults);
        c.f62521a.e(i10, permissions, grantResults, this);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.f45768k) {
            this.f45768k = false;
            String[] strArr = this.f45767j;
            if (strArr != null) {
                F(this, strArr, false, 0, new b(this), 4, null);
            }
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "PermissionFragment";
    }
}
