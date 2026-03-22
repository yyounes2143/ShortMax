package ii;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.configure.ServerConfig;
import com.startshorts.androidplayer.databinding.DialogMergeTouristSucceedBinding;
import com.startshorts.androidplayer.repo.config.ConfigRepo;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.z;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MergeTouristSucceedDialog.kt */
@Metadata
/* loaded from: classes7.dex */
public final class h extends fi.a<DialogMergeTouristSucceedBinding> {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f53431e = new a(null);
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private String f53432d;

    /* compiled from: MergeTouristSucceedDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: MergeTouristSucceedDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends yd.d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            h.this.dismiss();
        }
    }

    /* compiled from: MergeTouristSucceedDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            h.this.dismiss();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void u() {
        i().f39193c.setOnClickListener(new b());
        i().f39194d.setOnClickListener(new c());
        if (TextUtils.isEmpty(this.f53432d)) {
            i().f39197g.setText(m(R$string.account_merge_success_title_tip, v(this)));
            return;
        }
        i().f39197g.setText(this.f53432d);
    }

    private static final String v(h hVar) {
        int i10;
        ServerConfig t10 = ConfigRepo.f43771a.t();
        if (t10 != null) {
            i10 = t10.getUserAccountMergeBonus();
        } else {
            i10 = 0;
        }
        if (i10 <= 0) {
            String string = hVar.getContext().getString(R$string.facebook_login_dialog_fragment_huge);
            Intrinsics.checkNotNull(string);
            return string;
        }
        return String.valueOf(i10);
    }

    @Override // fi.a
    public int g() {
        return R$layout.dialog_merge_tourist_succeed;
    }

    @Override // fi.a
    @NotNull
    public String k() {
        return "MergeTouristSucceedDialog";
    }

    @Override // fi.a
    public int n() {
        return DeviceUtil.f48146a.G() - (z.f51786a.p() * 2);
    }

    @Override // fi.a
    public void p() {
        setCanceledOnTouchOutside(false);
        u();
    }
}
