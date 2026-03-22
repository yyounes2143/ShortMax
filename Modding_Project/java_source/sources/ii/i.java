package ii;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import androidx.core.content.ContextCompat;
import au.l;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.eventbus.RefreshAccountEvent;
import com.startshorts.androidplayer.databinding.DialogNormalLoginGuideBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.activity.auth.LoginActivity;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.z;
import jk.y;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NormalLoginGuideDialog.kt */
@Metadata
/* loaded from: classes7.dex */
public final class i extends fi.a<DialogNormalLoginGuideBinding> {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f53435e = new a(null);
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private String f53436d;

    /* compiled from: NormalLoginGuideDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: NormalLoginGuideDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends yd.d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            i.this.dismiss();
        }
    }

    /* compiled from: NormalLoginGuideDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            EventManager.s0(EventManager.f42463a, "login_guide_click", null, 0L, 6, null);
            if (!AccountRepo.f43052a.J0()) {
                Context context = i.this.getContext();
                Intent intent = new Intent(i.this.getContext(), LoginActivity.class);
                intent.putExtra("from", i.this.u());
                context.startActivity(intent);
            }
            i.this.dismiss();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void v() {
        i().f39202a.setOnClickListener(new b());
    }

    private final void w() {
        BaseTextView descTv = i().f39204c;
        Intrinsics.checkNotNullExpressionValue(descTv, "descTv");
        y.l(descTv, l(R$string.normal_login_guide_dialog_fragment_desc), new String[]{l(R$string.normal_login_guide_dialog_fragment_protect_your_property)}, ContextCompat.getColor(getContext(), R$color.colorPrimary), yf.a.f70794a.g(), 0.0f, false, null, 112, null);
    }

    private final void x() {
        i().f39206e.setOnClickListener(new c());
    }

    @Override // fi.a
    public int g() {
        return R$layout.dialog_normal_login_guide;
    }

    @Override // fi.a
    public boolean j() {
        return true;
    }

    @Override // fi.a
    @NotNull
    public String k() {
        return "NormalLoginGuideDialog";
    }

    @Override // fi.a
    public int n() {
        return DeviceUtil.f48146a.G() - (z.f51786a.p() * 2);
    }

    @Override // fi.a
    public void p() {
        w();
        x();
        v();
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshAccountEvent(@NotNull RefreshAccountEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        o("receiveRefreshAccountEvent");
        if (AccountRepo.f43052a.J0()) {
            dismiss();
        }
    }

    @Nullable
    public final String u() {
        return this.f53436d;
    }

    public final void y(@Nullable String str) {
        this.f53436d = str;
    }
}
