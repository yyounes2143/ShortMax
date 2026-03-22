package com.facebook.internal;

import android.app.Dialog;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.facebook.FacebookException;
import com.facebook.internal.WebDialog;
import com.facebook.internal.l;
import com.ss.texturerender.TextureRenderKeys;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FacebookDialogFragment.kt */
@Metadata
/* loaded from: classes3.dex */
public final class FacebookDialogFragment extends DialogFragment {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f16093b = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private Dialog f16094a;

    /* compiled from: FacebookDialogFragment.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(FacebookDialogFragment this$0, Bundle bundle, FacebookException facebookException) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.j(bundle, facebookException);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(FacebookDialogFragment this$0, Bundle bundle, FacebookException facebookException) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.k(bundle);
    }

    private final void j(Bundle bundle, FacebookException facebookException) {
        int i10;
        FragmentActivity activity = getActivity();
        if (activity == null) {
            return;
        }
        Intent intent = activity.getIntent();
        Intrinsics.checkNotNullExpressionValue(intent, "fragmentActivity.intent");
        Intent m10 = l0.m(intent, bundle, facebookException);
        if (facebookException == null) {
            i10 = -1;
        } else {
            i10 = 0;
        }
        activity.setResult(i10, m10);
        activity.finish();
    }

    private final void k(Bundle bundle) {
        FragmentActivity activity = getActivity();
        if (activity == null) {
            return;
        }
        Intent intent = new Intent();
        if (bundle == null) {
            bundle = new Bundle();
        }
        intent.putExtras(bundle);
        activity.setResult(-1, intent);
        activity.finish();
    }

    @VisibleForTesting
    public final void g() {
        FragmentActivity activity;
        WebDialog a10;
        String str;
        if (this.f16094a != null || (activity = getActivity()) == null) {
            return;
        }
        Intent intent = activity.getIntent();
        Intrinsics.checkNotNullExpressionValue(intent, "intent");
        Bundle v10 = l0.v(intent);
        boolean z10 = false;
        if (v10 != null) {
            z10 = v10.getBoolean("is_fallback", false);
        }
        String str2 = null;
        Bundle bundle = null;
        if (!z10) {
            if (v10 != null) {
                str = v10.getString(TextureRenderKeys.KEY_IS_ACTION);
            } else {
                str = null;
            }
            if (v10 != null) {
                bundle = v10.getBundle(MetricsSQLiteCacheKt.METRICS_PARAMS);
            }
            if (u0.d0(str)) {
                u0.k0("FacebookDialogFragment", "Cannot start a WebDialog with an empty/missing 'actionName'");
                activity.finish();
                return;
            }
            Intrinsics.checkNotNull(str, "null cannot be cast to non-null type kotlin.String");
            a10 = new WebDialog.a(activity, str, bundle).h(new WebDialog.d() { // from class: com.facebook.internal.g
                @Override // com.facebook.internal.WebDialog.d
                public final void a(Bundle bundle2, FacebookException facebookException) {
                    FacebookDialogFragment.h(FacebookDialogFragment.this, bundle2, facebookException);
                }
            }).a();
        } else {
            if (v10 != null) {
                str2 = v10.getString("url");
            }
            if (u0.d0(str2)) {
                u0.k0("FacebookDialogFragment", "Cannot start a fallback WebDialog with an empty/missing 'url'");
                activity.finish();
                return;
            }
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format("fb%s://bridge/", Arrays.copyOf(new Object[]{com.facebook.v.m()}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
            l.a aVar = l.f16232q;
            Intrinsics.checkNotNull(str2, "null cannot be cast to non-null type kotlin.String");
            a10 = aVar.a(activity, str2, format);
            a10.B(new WebDialog.d() { // from class: com.facebook.internal.h
                @Override // com.facebook.internal.WebDialog.d
                public final void a(Bundle bundle2, FacebookException facebookException) {
                    FacebookDialogFragment.i(FacebookDialogFragment.this, bundle2, facebookException);
                }
            });
        }
        this.f16094a = a10;
    }

    public final void l(@Nullable Dialog dialog) {
        this.f16094a = dialog;
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NotNull Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        if ((this.f16094a instanceof WebDialog) && isResumed()) {
            Dialog dialog = this.f16094a;
            Intrinsics.checkNotNull(dialog, "null cannot be cast to non-null type com.facebook.internal.WebDialog");
            ((WebDialog) dialog).x();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        g();
    }

    @Override // androidx.fragment.app.DialogFragment
    @NotNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog dialog = this.f16094a;
        if (dialog == null) {
            j(null, null);
            setShowsDialog(false);
            Dialog onCreateDialog = super.onCreateDialog(bundle);
            Intrinsics.checkNotNullExpressionValue(onCreateDialog, "super.onCreateDialog(savedInstanceState)");
            return onCreateDialog;
        }
        Intrinsics.checkNotNull(dialog, "null cannot be cast to non-null type android.app.Dialog");
        return dialog;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        Dialog dialog = getDialog();
        if (dialog != null && getRetainInstance()) {
            dialog.setDismissMessage(null);
        }
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        Dialog dialog = this.f16094a;
        if (dialog instanceof WebDialog) {
            Intrinsics.checkNotNull(dialog, "null cannot be cast to non-null type com.facebook.internal.WebDialog");
            ((WebDialog) dialog).x();
        }
    }
}
