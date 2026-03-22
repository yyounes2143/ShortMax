package com.startshorts.androidplayer.ui.fragment.base;

import android.content.Context;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;
import com.startshorts.androidplayer.bean.permission.CheckPermissionResult;
import com.startshorts.androidplayer.log.Logger;
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
/* compiled from: PermissionBottomSheetDialogFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPermissionBottomSheetDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PermissionBottomSheetDialogFragment.kt\ncom/startshorts/androidplayer/ui/fragment/base/PermissionBottomSheetDialogFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,101:1\n1863#2,2:102\n*S KotlinDebug\n*F\n+ 1 PermissionBottomSheetDialogFragment.kt\ncom/startshorts/androidplayer/ui/fragment/base/PermissionBottomSheetDialogFragment\n*L\n52#1:102,2\n*E\n"})
/* loaded from: classes7.dex */
public class PermissionBottomSheetDialogFragment extends BottomSheetDialogFragment implements PermissionCallbacks {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f45755d = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private mk.b f45756a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private String[] f45757b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f45758c;

    /* compiled from: PermissionBottomSheetDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: PermissionBottomSheetDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends mk.b {
        b() {
        }

        @Override // mk.b
        public void a(List<String> permissions) {
            Intrinsics.checkNotNullParameter(permissions, "permissions");
            mk.b bVar = PermissionBottomSheetDialogFragment.this.f45756a;
            if (bVar != null) {
                bVar.a(permissions);
            }
        }

        @Override // mk.b
        public void b(boolean z10, List<String> permissions) {
            Intrinsics.checkNotNullParameter(permissions, "permissions");
            mk.b bVar = PermissionBottomSheetDialogFragment.this.f45756a;
            if (bVar != null) {
                bVar.b(z10, permissions);
            }
        }
    }

    public static /* synthetic */ void g(PermissionBottomSheetDialogFragment permissionBottomSheetDialogFragment, String[] strArr, boolean z10, int i10, mk.b bVar, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 2) != 0) {
                z10 = true;
            }
            if ((i11 & 4) != 0) {
                i10 = -1;
            }
            permissionBottomSheetDialogFragment.f(strArr, z10, i10, bVar);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: checkPermissions");
    }

    @Override // com.startshorts.androidplayer.utils.permission.PermissionCallbacks
    public void c(int i10, @NotNull List<String> permissions) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        if (!permissions.isEmpty()) {
            Logger logger = Logger.f41511a;
            logger.h("PermissionBottomSheetDialogFragment", "onPermissionsDenied -> requestCode(" + i10 + ") permissions(" + permissions + ')');
            mk.b bVar = this.f45756a;
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
            Logger logger = Logger.f41511a;
            logger.h("PermissionBottomSheetDialogFragment", "onPermissionsGranted -> requestCode(" + i10 + ") permissions(" + permissions + ')');
            String[] strArr = this.f45757b;
            if (strArr != null && strArr.length == permissions.size() && (bVar = this.f45756a) != null) {
                bVar.b(true, permissions);
            }
        }
    }

    protected final void f(@NotNull String[] permissions, boolean z10, int i10, @Nullable mk.b bVar) {
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
            this.f45757b = permissions;
            this.f45756a = bVar;
            this.f45758c = c.f62521a.i(this, i10, permissions);
            if (bVar != null) {
                bVar.c();
            }
        } else if (bVar != null) {
            bVar.a(arrayList);
        }
    }

    @Override // androidx.fragment.app.Fragment, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i10, @NotNull String[] permissions, @NotNull int[] grantResults) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(grantResults, "grantResults");
        super.onRequestPermissionsResult(i10, permissions, grantResults);
        c.f62521a.e(i10, permissions, grantResults, this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.f45758c) {
            this.f45758c = false;
            String[] strArr = this.f45757b;
            if (strArr != null) {
                g(this, strArr, false, 0, new b(), 4, null);
            }
        }
    }
}
