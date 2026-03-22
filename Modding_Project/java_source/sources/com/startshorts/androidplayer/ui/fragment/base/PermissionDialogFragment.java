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
/* compiled from: PermissionDialogFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPermissionDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PermissionDialogFragment.kt\ncom/startshorts/androidplayer/ui/fragment/base/PermissionDialogFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,108:1\n1863#2,2:109\n*S KotlinDebug\n*F\n+ 1 PermissionDialogFragment.kt\ncom/startshorts/androidplayer/ui/fragment/base/PermissionDialogFragment\n*L\n56#1:109,2\n*E\n"})
/* loaded from: classes7.dex */
public class PermissionDialogFragment<VDB extends ViewDataBinding> extends BaseDialogFragment<VDB> implements PermissionCallbacks {
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public static final a f45760l = new a(null);
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private mk.b f45761i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private String[] f45762j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f45763k;

    /* compiled from: PermissionDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: PermissionDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends mk.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PermissionDialogFragment<VDB> f45764a;

        b(PermissionDialogFragment<VDB> permissionDialogFragment) {
            this.f45764a = permissionDialogFragment;
        }

        @Override // mk.b
        public void a(List<String> permissions) {
            Intrinsics.checkNotNullParameter(permissions, "permissions");
            mk.b bVar = ((PermissionDialogFragment) this.f45764a).f45761i;
            if (bVar != null) {
                bVar.a(permissions);
            }
        }

        @Override // mk.b
        public void b(boolean z10, List<String> permissions) {
            Intrinsics.checkNotNullParameter(permissions, "permissions");
            mk.b bVar = ((PermissionDialogFragment) this.f45764a).f45761i;
            if (bVar != null) {
                bVar.b(z10, permissions);
            }
        }
    }

    public static /* synthetic */ void H(PermissionDialogFragment permissionDialogFragment, String[] strArr, boolean z10, int i10, mk.b bVar, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 2) != 0) {
                z10 = true;
            }
            if ((i11 & 4) != 0) {
                i10 = -1;
            }
            permissionDialogFragment.G(strArr, z10, i10, bVar);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: checkPermissions");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void G(@NotNull String[] permissions, boolean z10, int i10, @Nullable mk.b bVar) {
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
            this.f45762j = permissions;
            this.f45761i = bVar;
            this.f45763k = c.f62521a.i(this, i10, permissions);
            if (bVar != null) {
                bVar.c();
            }
        } else if (bVar != null) {
            bVar.a(arrayList);
        }
    }

    @Override // com.startshorts.androidplayer.utils.permission.PermissionCallbacks
    public void c(int i10, @NotNull List<String> permissions) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        if (!permissions.isEmpty()) {
            q("onPermissionsDenied -> requestCode(" + i10 + ") permissions(" + permissions + ')');
            mk.b bVar = this.f45761i;
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
            q("onPermissionsGranted -> requestCode(" + i10 + ") permissions(" + permissions + ')');
            String[] strArr = this.f45762j;
            if (strArr != null && strArr.length == permissions.size() && (bVar = this.f45761i) != null) {
                bVar.b(true, permissions);
            }
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    @NotNull
    public String o() {
        return "PermissionDialogFragment";
    }

    @Override // androidx.fragment.app.Fragment, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i10, @NotNull String[] permissions, @NotNull int[] grantResults) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(grantResults, "grantResults");
        super.onRequestPermissionsResult(i10, permissions, grantResults);
        c.f62521a.e(i10, permissions, grantResults, this);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.f45763k) {
            this.f45763k = false;
            String[] strArr = this.f45762j;
            if (strArr != null) {
                H(this, strArr, false, 0, new b(this), 4, null);
            }
        }
    }
}
