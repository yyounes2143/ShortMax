package gi;

import android.content.Context;
import android.view.View;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.databinding.DialogDisableSubsBinding;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.z;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DisableSubsDialog.kt */
@Metadata
/* loaded from: classes7.dex */
public final class c extends fi.a<DialogDisableSubsBinding> {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f52370d = new a(null);

    /* compiled from: DisableSubsDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: DisableSubsDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends yd.d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            c.this.dismiss();
        }
    }

    /* compiled from: DisableSubsDialog.kt */
    @Metadata
    /* renamed from: gi.c$c  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0756c extends yd.d {
        C0756c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            c.this.dismiss();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void u() {
        i().f38717a.setOnClickListener(new b());
    }

    private final void v() {
        i().f38718b.setOnClickListener(new C0756c());
    }

    @Override // fi.a
    public int g() {
        return R$layout.dialog_disable_subs;
    }

    @Override // fi.a
    @NotNull
    public String k() {
        return "DisableSubsDialog";
    }

    @Override // fi.a
    public int n() {
        return DeviceUtil.f48146a.G() - (z.f51786a.p() * 2);
    }

    @Override // fi.a
    public void p() {
        setCanceledOnTouchOutside(false);
        u();
        v();
    }
}
