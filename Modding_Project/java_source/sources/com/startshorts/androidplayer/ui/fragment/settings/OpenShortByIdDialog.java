package com.startshorts.androidplayer.ui.fragment.settings;

import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ClipboardManager;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.Spanned;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.webkit.internal.AssetHelper;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.databinding.DialogOpenShortByIdBinding;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import com.startshorts.androidplayer.ui.fragment.settings.OpenShortByIdDialog;
import jk.b0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: OpenShortByIdDialog.kt */
@Metadata
/* loaded from: classes7.dex */
public final class OpenShortByIdDialog extends DialogFragment {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f46778b = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private DialogOpenShortByIdBinding f46779a;

    /* compiled from: OpenShortByIdDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final OpenShortByIdDialog a() {
            return new OpenShortByIdDialog();
        }

        private a() {
        }
    }

    private final DialogOpenShortByIdBinding i() {
        DialogOpenShortByIdBinding dialogOpenShortByIdBinding = this.f46779a;
        Intrinsics.checkNotNull(dialogOpenShortByIdBinding);
        return dialogOpenShortByIdBinding;
    }

    private final void j() {
        String obj = i().f39210a.getText().toString();
        obj.length();
        try {
            int parseInt = Integer.parseInt(obj);
            ImmersionActivity.a aVar = ImmersionActivity.V0;
            FragmentActivity requireActivity = requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
            ImmersionParams immersionParams = new ImmersionParams();
            immersionParams.setType(3);
            ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
            immersionShortsInfo.setShortsId(parseInt);
            immersionParams.setShortsInfo(immersionShortsInfo);
            Unit unit = Unit.f60915a;
            aVar.a(requireActivity, immersionParams);
            dismiss();
        } catch (Exception unused) {
            i().f39210a.setText("");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence k(CharSequence charSequence, int i10, int i11, Spanned spanned, int i12, int i13) {
        Intrinsics.checkNotNull(charSequence);
        if (new Regex("[0-9]*").k(charSequence)) {
            return null;
        }
        return charSequence;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean l(OpenShortByIdDialog openShortByIdDialog, TextView textView, int i10, KeyEvent keyEvent) {
        if (i10 != 6 && (keyEvent == null || keyEvent.getKeyCode() != 66 || keyEvent.getAction() != 0)) {
            return false;
        }
        openShortByIdDialog.j();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m(OpenShortByIdDialog openShortByIdDialog, View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        openShortByIdDialog.j();
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit n(OpenShortByIdDialog openShortByIdDialog, View it) {
        ClipDescription primaryClipDescription;
        ClipData.Item item;
        CharSequence text;
        Intrinsics.checkNotNullParameter(it, "it");
        Object systemService = openShortByIdDialog.requireContext().getSystemService("clipboard");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
        ClipboardManager clipboardManager = (ClipboardManager) systemService;
        if (clipboardManager.hasPrimaryClip() && (primaryClipDescription = clipboardManager.getPrimaryClipDescription()) != null && primaryClipDescription.hasMimeType(AssetHelper.DEFAULT_MIME_TYPE)) {
            ClipData primaryClip = clipboardManager.getPrimaryClip();
            String str = null;
            if (primaryClip != null) {
                item = primaryClip.getItemAt(0);
            } else {
                item = null;
            }
            if (item != null && (text = item.getText()) != null) {
                str = text.toString();
            }
            if (str != null && str.length() != 0 && new Regex("[0-9]+").k(str)) {
                openShortByIdDialog.i().f39210a.setText(str);
                openShortByIdDialog.i().f39210a.setSelection(str.length());
            } else {
                Toast.makeText(openShortByIdDialog.requireContext(), "剪切板内容为空或不是数字", 0).show();
            }
        } else {
            Toast.makeText(openShortByIdDialog.requireContext(), "剪切板无有效文本", 0).show();
        }
        return Unit.f60915a;
    }

    @Override // androidx.fragment.app.DialogFragment
    @NotNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        this.f46779a = DialogOpenShortByIdBinding.b(getLayoutInflater());
        i().f39210a.setFilters(new InputFilter[]{new InputFilter() { // from class: wi.g
            @Override // android.text.InputFilter
            public final CharSequence filter(CharSequence charSequence, int i10, int i11, Spanned spanned, int i12, int i13) {
                CharSequence k10;
                k10 = OpenShortByIdDialog.k(charSequence, i10, i11, spanned, i12, i13);
                return k10;
            }
        }});
        i().f39210a.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: wi.h
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
                boolean l10;
                l10 = OpenShortByIdDialog.l(OpenShortByIdDialog.this, textView, i10, keyEvent);
                return l10;
            }
        });
        TextView go2 = i().f39211b;
        Intrinsics.checkNotNullExpressionValue(go2, "go");
        b0.c(go2, 0L, new Function1() { // from class: wi.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit m10;
                m10 = OpenShortByIdDialog.m(OpenShortByIdDialog.this, (View) obj);
                return m10;
            }
        }, 1, null);
        TextView readCopy = i().f39212c;
        Intrinsics.checkNotNullExpressionValue(readCopy, "readCopy");
        b0.c(readCopy, 0L, new Function1() { // from class: wi.j
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit n10;
                n10 = OpenShortByIdDialog.n(OpenShortByIdDialog.this, (View) obj);
                return n10;
            }
        }, 1, null);
        Dialog dialog = new Dialog(requireContext());
        dialog.requestWindowFeature(1);
        dialog.setContentView(i().getRoot());
        return dialog;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        Window window;
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            window.setLayout(800, -2);
        }
    }
}
