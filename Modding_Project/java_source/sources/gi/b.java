package gi;

import android.content.Context;
import android.view.View;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.databinding.DialogDeleteTipBinding;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.z;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DeleteConfirmDialog.kt */
@Metadata
/* loaded from: classes7.dex */
public final class b extends fi.a<DialogDeleteTipBinding> {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f52364f = new a(null);
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final String f52365d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private Function0<Unit> f52366e;

    /* compiled from: DeleteConfirmDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: DeleteConfirmDialog.kt */
    @Metadata
    /* renamed from: gi.b$b  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0755b extends yd.d {
        C0755b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            b.this.dismiss();
        }
    }

    /* compiled from: DeleteConfirmDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            b.this.dismiss();
        }
    }

    /* compiled from: DeleteConfirmDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            Function0<Unit> u10 = b.this.u();
            if (u10 != null) {
                u10.invoke();
            }
            b.this.dismiss();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(@NotNull Context context, @NotNull String tip) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(tip, "tip");
        this.f52365d = tip;
    }

    private final void v() {
        i().f38711c.setOnClickListener(new C0755b());
        i().f38709a.setOnClickListener(new c());
    }

    private final void w() {
        i().f38710b.setOnClickListener(new d());
    }

    private final void x() {
        i().f38712d.setText(this.f52365d);
    }

    @Override // fi.a
    public int g() {
        return R$layout.dialog_delete_tip;
    }

    @Override // fi.a
    @NotNull
    public String k() {
        return "DeleteConfirmDialog";
    }

    @Override // fi.a
    public int n() {
        return DeviceUtil.f48146a.G() - (z.f51786a.p() * 2);
    }

    @Override // fi.a
    public void p() {
        setCanceledOnTouchOutside(false);
        x();
        v();
        w();
    }

    @Nullable
    public final Function0<Unit> u() {
        return this.f52366e;
    }

    public final void y(@Nullable Function0<Unit> function0) {
        this.f52366e = function0;
    }
}
