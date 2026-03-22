package ii;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.ss.texturerender.TextureRenderKeys;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.databinding.DialogLogoutTipBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.utils.DeviceUtil;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LogoutTipDialog.kt */
@Metadata
/* loaded from: classes7.dex */
public final class b extends fi.a<DialogLogoutTipBinding> {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f53417f = new a(null);
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private InterfaceC0778b f53418d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f53419e;

    /* compiled from: LogoutTipDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: LogoutTipDialog.kt */
    @Metadata
    /* renamed from: ii.b$b  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public interface InterfaceC0778b {
        void a();
    }

    /* compiled from: LogoutTipDialog.kt */
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

    /* compiled from: LogoutTipDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            b.this.dismiss();
        }
    }

    /* compiled from: LogoutTipDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends yd.d {
        e() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            b.this.f53419e = true;
            b.this.dismiss();
            InterfaceC0778b v11 = b.this.v();
            if (v11 != null) {
                v11.a();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void w() {
        i().f39160a.setOnClickListener(new c());
    }

    private final void x() {
        i().f39165f.setOnClickListener(new d());
    }

    private final void y() {
        i().f39166g.setOnClickListener(new e());
    }

    @Override // fi.a, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        String str;
        super.dismiss();
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        if (this.f53419e) {
            str = "button";
        } else {
            str = "close";
        }
        bundle.putString(TextureRenderKeys.KEY_IS_ACTION, str);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "logout_window_click", bundle, 0L, 4, null);
    }

    @Override // fi.a
    public int g() {
        return R$layout.dialog_logout_tip;
    }

    @Override // fi.a
    @NotNull
    public String k() {
        return "LogoutTipDialog";
    }

    @Override // fi.a
    public int n() {
        return DeviceUtil.f48146a.G() - (jk.g.a(38.0f) * 2);
    }

    @Override // fi.a
    public void p() {
        w();
        y();
        x();
        EventManager.s0(EventManager.f42463a, "logout_window_show", null, 0L, 6, null);
    }

    @Nullable
    public final InterfaceC0778b v() {
        return this.f53418d;
    }

    public final void z(@Nullable InterfaceC0778b interfaceC0778b) {
        this.f53418d = interfaceC0778b;
    }
}
