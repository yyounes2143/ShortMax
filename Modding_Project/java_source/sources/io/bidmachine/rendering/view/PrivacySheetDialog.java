package io.bidmachine.rendering.view;

import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import io.bidmachine.rendering.model.PrivacySheetParams;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import tp.s;
import yq.j;
@Metadata
/* loaded from: classes8.dex */
public final class PrivacySheetDialog extends Dialog {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final d f58589c = new d(null);
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static WeakReference<PrivacySheetDialog> f58590d = new WeakReference<>(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final PrivacySheetParams f58591a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final i f58592b;

    @Metadata
    /* loaded from: classes8.dex */
    static final class a extends Lambda implements Function0<Unit> {
        a() {
            super(0);
        }

        public final void a() {
            PrivacySheetDialog.this.dismiss();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    static final class b extends Lambda implements Function0<io.bidmachine.rendering.internal.view.privacy.b> {

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Context f58594d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Context context) {
            super(0);
            this.f58594d = context;
        }

        @Override // kotlin.jvm.functions.Function0
        @NotNull
        /* renamed from: b */
        public final io.bidmachine.rendering.internal.view.privacy.b invoke() {
            return new io.bidmachine.rendering.internal.view.privacy.b(this.f58594d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class c extends Lambda implements Function0<Unit> {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ PrivacySheetParams.a f58596e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(PrivacySheetParams.a aVar) {
            super(0);
            this.f58596e = aVar;
        }

        public final void a() {
            PrivacySheetDialog.this.d(this.f58596e);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    public static final class d {
        public /* synthetic */ d(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final PrivacySheetDialog a(@NotNull Context context, @NotNull PrivacySheetParams privacySheetParams) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(privacySheetParams, "privacySheetParams");
            PrivacySheetDialog privacySheetDialog = (PrivacySheetDialog) PrivacySheetDialog.f58590d.get();
            if (privacySheetDialog != null && privacySheetDialog.isShowing()) {
                if (Intrinsics.areEqual(privacySheetDialog.f58591a, privacySheetParams)) {
                    return privacySheetDialog;
                }
                privacySheetDialog.dismiss();
            }
            PrivacySheetDialog privacySheetDialog2 = new PrivacySheetDialog(context, privacySheetParams, null);
            PrivacySheetDialog.f58590d = new WeakReference(privacySheetDialog2);
            try {
                privacySheetDialog2.show();
            } catch (Throwable th2) {
                s.h(th2);
            }
            return privacySheetDialog2;
        }

        private d() {
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    public /* synthetic */ class e {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PrivacySheetParams.ActionType.values().length];
            try {
                iArr[PrivacySheetParams.ActionType.REDIRECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PrivacySheetParams.ActionType.COPY_TO_CLIPBOARD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ PrivacySheetDialog(Context context, PrivacySheetParams privacySheetParams, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, privacySheetParams);
    }

    private final io.bidmachine.rendering.internal.view.privacy.b a() {
        return (io.bidmachine.rendering.internal.view.privacy.b) this.f58592b.getValue();
    }

    private final Object b(String str) {
        try {
            Result.a aVar = Result.f60901b;
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            ClipboardManager n10 = yq.s.n(context);
            if (n10 != null) {
                n10.setPrimaryClip(ClipData.newPlainText("", str));
            }
            return Result.d(Unit.f60915a);
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            return Result.d(f.a(th2));
        }
    }

    private final void c(Window window) {
        if (Build.VERSION.SDK_INT >= 30) {
            window.setDecorFitsSystemWindows(false);
            return;
        }
        View decorView = window.getDecorView();
        decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 1792);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d(PrivacySheetParams.a aVar) {
        String a10 = aVar.a();
        int i10 = e.$EnumSwitchMapping$0[aVar.d().ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                b(a10);
                return;
            }
            return;
        }
        j(a10);
    }

    private final void e(PrivacySheetParams privacySheetParams) {
        BitmapDrawable bitmapDrawable;
        io.bidmachine.rendering.internal.view.privacy.b a10 = a();
        a10.d();
        a10.setTitle(privacySheetParams.c());
        a10.setSubtitle(privacySheetParams.b());
        for (PrivacySheetParams.a aVar : privacySheetParams.a()) {
            Bitmap b10 = aVar.b();
            if (b10 != null) {
                bitmapDrawable = new BitmapDrawable(a10.getResources(), b10);
            } else {
                bitmapDrawable = null;
            }
            a10.f(aVar.c(), bitmapDrawable, new c(aVar));
        }
    }

    private final Object j(String str) {
        try {
            Result.a aVar = Result.f60901b;
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            return Result.d(Boolean.valueOf(j.i(context, str)));
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            return Result.d(f.a(th2));
        }
    }

    @NotNull
    public static final PrivacySheetDialog k(@NotNull Context context, @NotNull PrivacySheetParams privacySheetParams) {
        return f58589c.a(context, privacySheetParams);
    }

    @Override // android.app.Dialog
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        io.bidmachine.rendering.internal.view.privacy.b a10 = a();
        a10.setOnCloseClickListener(new a());
        setContentView(a10);
        Window window = getWindow();
        if (window != null) {
            window.addFlags(Integer.MIN_VALUE);
            window.setLayout(-1, -1);
            c(window);
        }
        e(this.f58591a);
    }

    private PrivacySheetDialog(Context context, PrivacySheetParams privacySheetParams) {
        super(context, pp.e.f64977a);
        this.f58591a = privacySheetParams;
        this.f58592b = kotlin.c.b(new b(context));
        Window window = getWindow();
        if (window != null) {
            window.requestFeature(1);
        }
    }
}
