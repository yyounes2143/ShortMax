package ii;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import au.l;
import com.ss.texturerender.TextureRenderKeys;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.eventbus.RefreshAccountEvent;
import com.startshorts.androidplayer.databinding.DialogHomeLoginGuideBinding;
import com.startshorts.androidplayer.manager.account.AccountManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.activity.auth.LoginActivity;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.z;
import jk.b0;
import jk.v;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
/* compiled from: HomeLoginGuideDialog.kt */
@Metadata
/* loaded from: classes7.dex */
public final class a extends fi.a<DialogHomeLoginGuideBinding> {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final C0777a f53412e = new C0777a(null);

    /* renamed from: d  reason: collision with root package name */
    private boolean f53413d;

    /* compiled from: HomeLoginGuideDialog.kt */
    @Metadata
    /* renamed from: ii.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0777a {
        public /* synthetic */ C0777a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0777a() {
        }
    }

    /* compiled from: HomeLoginGuideDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends yd.d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            a.this.dismiss();
        }
    }

    /* compiled from: HomeLoginGuideDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
        }
    }

    /* compiled from: HomeLoginGuideDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            a.this.f53413d = true;
            if (!AccountRepo.f43052a.J0()) {
                Context context = a.this.getContext();
                Intent intent = new Intent(a.this.getContext(), LoginActivity.class);
                intent.putExtra("from", "discover");
                context.startActivity(intent);
            }
            a.this.dismiss();
        }
    }

    /* compiled from: HomeLoginGuideDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends yd.d {
        e() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            a.this.dismiss();
        }
    }

    /* compiled from: HomeLoginGuideDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f extends yd.d {
        f() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void A() {
        BaseTextView titleTv = i().f39146h;
        Intrinsics.checkNotNullExpressionValue(titleTv, "titleTv");
        b0.g(titleTv, (int) (n() * 0.85714287f));
    }

    private final void B() {
        i().f39147i.setOnClickListener(new f());
    }

    @SuppressLint({"SetTextI18n"})
    private final void v() {
        BaseTextView baseTextView = i().f39140b;
        baseTextView.setText(v.a('+' + AccountManager.f41533a.h()));
    }

    private final void w() {
        i().f39142d.setOnClickListener(new b());
    }

    private final void x() {
        View view = i().f39143e;
        Intrinsics.checkNotNull(view);
        b0.g(view, (int) (n() * 0.5714286f));
        view.setOnClickListener(new c());
    }

    private final void y() {
        i().f39144f.setOnClickListener(new d());
    }

    private final void z() {
        i().f39145g.setOnClickListener(new e());
    }

    @Override // fi.a, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        String str;
        super.dismiss();
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        if (this.f53413d) {
            str = "button";
        } else {
            str = "close";
        }
        bundle.putString(TextureRenderKeys.KEY_IS_ACTION, str);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "login_gift_click", bundle, 0L, 4, null);
    }

    @Override // fi.a
    public int f() {
        return -1;
    }

    @Override // fi.a
    public int g() {
        return R$layout.dialog_home_login_guide;
    }

    @Override // fi.a
    public boolean j() {
        return true;
    }

    @Override // fi.a
    @NotNull
    public String k() {
        return "HomeLoginGuideDialog";
    }

    @Override // fi.a
    public int n() {
        int p10;
        DeviceUtil deviceUtil = DeviceUtil.f48146a;
        boolean areEqual = Intrinsics.areEqual(deviceUtil.e(), "vi");
        int G = deviceUtil.G();
        if (areEqual) {
            z zVar = z.f51786a;
            G -= zVar.p();
            p10 = zVar.g();
        } else {
            p10 = z.f51786a.p() * 2;
        }
        return G - p10;
    }

    @Override // fi.a
    public void p() {
        z();
        w();
        x();
        B();
        A();
        v();
        y();
        EventManager.s0(EventManager.f42463a, "login_gift_show", null, 0L, 6, null);
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshAccountEvent(@NotNull RefreshAccountEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        o("receiveRefreshAccountEvent");
        if (AccountRepo.f43052a.J0()) {
            dismiss();
        }
    }
}
